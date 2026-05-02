.class Lcom/rebel/module/XposedHook$14;
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

    .line 1706
    iput-object p1, p0, Lcom/rebel/module/XposedHook$14;->this$0:Lcom/rebel/module/XposedHook;

    iput-object p2, p0, Lcom/rebel/module/XposedHook$14;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 1709
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 1710
    .local v0, "key":Ljava/lang/String;
    const-string v1, "android_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rebel/module/XposedHook$14;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v1, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1711
    iget-object v1, p0, Lcom/rebel/module/XposedHook$14;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v1, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 1712
    :cond_0
    const-string v1, "google_services_framework_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rebel/module/XposedHook$14;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v1, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->gsfId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1713
    iget-object v1, p0, Lcom/rebel/module/XposedHook$14;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v1, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->gsfId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 1715
    :cond_1
    :goto_0
    return-void
.end method
