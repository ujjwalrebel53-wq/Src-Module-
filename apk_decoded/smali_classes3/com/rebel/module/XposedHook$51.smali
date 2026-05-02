.class Lcom/rebel/module/XposedHook$51;
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

    .line 2417
    iput-object p1, p0, Lcom/rebel/module/XposedHook$51;->this$0:Lcom/rebel/module/XposedHook;

    iput-object p2, p0, Lcom/rebel/module/XposedHook$51;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 2420
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2421
    return-void

    .line 2422
    :cond_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 2423
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "deviceUniqueId"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rebel/module/XposedHook$51;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v1, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->mediaDrmId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2424
    iget-object v1, p0, Lcom/rebel/module/XposedHook$51;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v1, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->mediaDrmId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 2426
    :cond_1
    return-void
.end method
