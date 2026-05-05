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

### Caveats

- `jadx` exits with code 1 and reports ~17 errors on this APK due to obfuscated code; this is expected and the output is still usable.
- The `Src Module.zip` is a repackaged APK (contains `classes.dex`, not Java/Kotlin source), so treat `apk_decoded/` smali as the canonical editable source.
- The APK targets `arm64-v8a` and includes a native library `librebelcore.so`; native code analysis requires separate tools (e.g., Ghidra, IDA).
- There are no automated tests, linting, or CI in this repository.
