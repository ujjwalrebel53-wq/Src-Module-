.class Lcom/rebel/module/XposedHook$39;
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

    .line 2087
    iput-object p1, p0, Lcom/rebel/module/XposedHook$39;->this$0:Lcom/rebel/module/XposedHook;

    iput-object p2, p0, Lcom/rebel/module/XposedHook$39;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 6
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 2091
    :try_start_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/net/Uri;

    .line 2092
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    .line 2093
    .local v1, "method":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "settings/secure"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GET_secure"

    .line 2094
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2095
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 2096
    .local v2, "result":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 2097
    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    .line 2098
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "android_id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/rebel/module/XposedHook$39;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v4, v4, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2099
    const-string v4, "value"

    iget-object v5, p0, Lcom/rebel/module/XposedHook$39;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v5, v5, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    invoke-virtual {p1, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2105
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "method":Ljava/lang/String;
    .end local v2    # "result":Landroid/os/Bundle;
    .end local v3    # "arg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 2104
    :catchall_0
    move-exception v0

    .line 2106
    :goto_0
    return-void
.end method
