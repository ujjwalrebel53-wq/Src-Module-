.class Lcom/rebel/module/XposedHook$44;
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

    .line 2243
    iput-object p1, p0, Lcom/rebel/module/XposedHook$44;->this$0:Lcom/rebel/module/XposedHook;

    iput-object p2, p0, Lcom/rebel/module/XposedHook$44;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 2246
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2247
    .local v0, "name":I
    const/16 v1, 0x1f01

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/rebel/module/XposedHook$44;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v1, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->glVendor:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2248
    iget-object v1, p0, Lcom/rebel/module/XposedHook$44;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v1, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->glVendor:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 2249
    :cond_0
    const/16 v1, 0x1f00

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/rebel/module/XposedHook$44;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v1, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->glRenderer:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2250
    iget-object v1, p0, Lcom/rebel/module/XposedHook$44;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v1, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->glRenderer:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 2252
    :cond_1
    :goto_0
    return-void
.end method
