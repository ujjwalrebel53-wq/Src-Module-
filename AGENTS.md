# AGENTS.md

## Cursor Cloud specific instructions

### Repository overview

This repository contains a decoded Android APK (`Rebel Module.apk`) analyzed with `apktool v2.9.3`. The primary development workflow is **Android reverse engineering**: analyzing, modifying smali bytecode, and rebuilding the APK. There is no standard build system (no Gradle, no `package.json`, no Makefile).

### Key tools

| Tool | Version | Purpose |
|------|---------|---------|
| `apktool` | 2.9.3 | Decode/rebuild APK from smali bytecode |
| `jadx` | 1.5.1 | Decompile APK to readable Java source |
| `java` | 21 | Required runtime for both tools above |

### Common commands

- **Rebuild APK from decoded smali**: `apktool b apk_decoded -o /tmp/rebuilt.apk`
- **Decompile APK to Java**: `jadx -d /tmp/jadx_output "Rebel Module.apk"`
- **Decode APK fresh**: `apktool d "Rebel Module.apk" -o apk_decoded -f`

### Running the APK on an emulator

The APK can be run on an Android emulator, but with caveats:

1. **No KVM**: The Cloud VM lacks `/dev/kvm`, so emulation runs in software mode (`-accel off`). Boot takes ~3-5 minutes.
2. **Signing**: The original APK is unsigned. To install, rebuild with `apktool b`, then sign with `apksigner` (v2 signing required). The manifest's `extractNativeLibs="false"` must be changed to `true` for emulator installs.
3. **GPU rendering**: The emulator's display rendering is unreliable in the Cloud VM (black screen). Use ADB commands (`adb shell dumpsys activity`) to verify the app state rather than relying on visual output.
4. **Install method**: Use `adb push <apk> /data/local/tmp/app.apk && adb shell pm install -t /data/local/tmp/app.apk` rather than `adb install` for reliability.

Quick install flow:
```bash
export PATH="/opt/android-sdk/platform-tools:/opt/android-sdk/build-tools/30.0.3:$PATH"
# Rebuild (from temp copy to avoid modifying repo)
cp -r apk_decoded /tmp/apk_tmp
sed -i 's/extractNativeLibs="false"/extractNativeLibs="true"/' /tmp/apk_tmp/AndroidManifest.xml
apktool b /tmp/apk_tmp -o /tmp/app_unsigned.apk
# Sign (v2)
apksigner sign --ks /tmp/debug.keystore --ks-pass pass:android --ks-key-alias androiddebugkey --key-pass pass:android /tmp/app_unsigned.apk
# Install
adb push /tmp/app_unsigned.apk /data/local/tmp/app.apk
adb shell pm install -t /data/local/tmp/app.apk
# Launch
adb shell am start -n com.rebel.module/.ZetLoginActivity
```

### Caveats

- `jadx` exits with code 1 and reports ~17 errors on this APK due to obfuscated code; this is expected and the output is still usable.
- The `Src Module.zip` is a repackaged APK (contains `classes.dex`, not Java/Kotlin source), so treat `apk_decoded/` smali as the canonical editable source.
- The APK targets `arm64-v8a` and includes a native library `librebelcore.so`; native code analysis requires separate tools (e.g., Ghidra, IDA).
- There are no automated tests, linting, or CI in this repository.
