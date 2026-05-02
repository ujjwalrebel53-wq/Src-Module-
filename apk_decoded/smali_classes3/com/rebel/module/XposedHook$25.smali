.class Lcom/rebel/module/XposedHook$25;
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

    .line 1810
    iput-object p1, p0, Lcom/rebel/module/XposedHook$25;->this$0:Lcom/rebel/module/XposedHook;

    iput-object p2, p0, Lcom/rebel/module/XposedHook$25;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 1813
    iget-object v0, p0, Lcom/rebel/module/XposedHook$25;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v0, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->subscriberId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1814
    iget-object v0, p0, Lcom/rebel/module/XposedHook$25;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v0, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->subscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 1815
    :cond_0
    return-void
.end method
