.class Lcom/rebel/module/XposedHook$49;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XposedHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rebel/module/XposedHook;->hookDeviceFaker(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rebel/module/XposedHook;

.field final synthetic val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;


# direct methods
.method constructor <init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rebel/module/XposedHook;

    .line 2366
    iput-object p1, p0, Lcom/rebel/module/XposedHook$49;->this$0:Lcom/rebel/module/XposedHook;

    iput-object p2, p0, Lcom/rebel/module/XposedHook$49;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 2369
    iget-object v0, p0, Lcom/rebel/module/XposedHook$49;->this$0:Lcom/rebel/module/XposedHook;

    iget-object v1, p0, Lcom/rebel/module/XposedHook$49;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    invoke-static {v0, p1, v1}, Lcom/rebel/module/XposedHook;->-$$Nest$mspoofGsfCursor(Lcom/rebel/module/XposedHook;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    .line 2370
    return-void
.end method
