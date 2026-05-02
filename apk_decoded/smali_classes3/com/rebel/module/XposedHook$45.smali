.class Lcom/rebel/module/XposedHook$45;
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

    .line 2266
    iput-object p1, p0, Lcom/rebel/module/XposedHook$45;->this$0:Lcom/rebel/module/XposedHook;

    iput-object p2, p0, Lcom/rebel/module/XposedHook$45;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 7
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 2270
    :try_start_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/net/Uri;

    .line 2271
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 2272
    return-void

    .line 2273
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2274
    .local v1, "uriStr":Ljava/lang/String;
    const-string v2, "settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2275
    return-void

    .line 2277
    :cond_1
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    .line 2278
    .local v2, "method":Ljava/lang/String;
    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    .line 2279
    .local v3, "arg":Ljava/lang/String;
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 2280
    .local v4, "result":Landroid/os/Bundle;
    if-nez v4, :cond_2

    .line 2281
    return-void

    .line 2284
    :cond_2
    if-eqz v2, :cond_6

    const-string v5, "GET_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "GET"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2285
    :cond_3
    const-string v5, "android_id"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "value"

    if-eqz v5, :cond_4

    :try_start_1
    iget-object v5, p0, Lcom/rebel/module/XposedHook$45;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v5, v5, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 2286
    iget-object v5, p0, Lcom/rebel/module/XposedHook$45;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v5, v5, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    invoke-virtual {p1, v4}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 2288
    :cond_4
    const-string v5, "device_name"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/rebel/module/XposedHook$45;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v5, v5, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->model:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 2289
    iget-object v5, p0, Lcom/rebel/module/XposedHook$45;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v5, v5, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->model:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    invoke-virtual {p1, v4}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 2291
    :cond_5
    const-string v5, "bluetooth_name"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/rebel/module/XposedHook$45;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v5, v5, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bluetoothName:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 2292
    iget-object v5, p0, Lcom/rebel/module/XposedHook$45;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v5, v5, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bluetoothName:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    invoke-virtual {p1, v4}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2297
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "uriStr":Ljava/lang/String;
    .end local v2    # "method":Ljava/lang/String;
    .end local v3    # "arg":Ljava/lang/String;
    .end local v4    # "result":Landroid/os/Bundle;
    :cond_6
    :goto_0
    goto :goto_1

    .line 2296
    :catchall_0
    move-exception v0

    .line 2298
    :goto_1
    return-void
.end method
