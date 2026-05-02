.class public Lcom/rebel/module/GrowHook;
.super Ljava/lang/Object;
.source "GrowHook.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GrowHook"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;Lcom/rebel/module/ConfigManager;)V
    .locals 6
    .param p0, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .param p1, "configManager"    # Lcom/rebel/module/ConfigManager;

    .line 26
    const-string v0, "GrowHook: Installing Groww SIM number spoofing hooks..."

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 28
    move-object v0, p1

    .line 33
    .local v0, "cm":Lcom/rebel/module/ConfigManager;
    :try_start_0
    const-string v1, "android.telephony.SubscriptionInfo"

    iget-object v2, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 34
    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getNumber"

    new-instance v3, Lcom/rebel/module/GrowHook$1;

    invoke-direct {v3, v0}, Lcom/rebel/module/GrowHook$1;-><init>(Lcom/rebel/module/ConfigManager;)V

    .line 33
    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 49
    const-string v1, "GrowHook: \u2713 Hooked SubscriptionInfo.getNumber()"

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    .local v1, "th":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GrowHook: \u2717 Failed to hook SubscriptionInfo.getNumber(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 56
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 58
    :try_start_1
    const-string v1, "android.telephony.SubscriptionManager"

    iget-object v2, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v3, "getPhoneNumber"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v5, Lcom/rebel/module/GrowHook$2;

    invoke-direct {v5, v0}, Lcom/rebel/module/GrowHook$2;-><init>(Lcom/rebel/module/ConfigManager;)V

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 74
    const-string v1, "GrowHook: \u2713 Hooked SubscriptionManager.getPhoneNumber(int)"

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    goto :goto_1

    .line 75
    :catchall_1
    move-exception v1

    .line 76
    .restart local v1    # "th":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GrowHook: \u2717 Failed to hook SubscriptionManager.getPhoneNumber(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 83
    .end local v1    # "th":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    :try_start_2
    const-string v1, "android.telephony.TelephonyManager"

    iget-object v2, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 84
    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLine1Number"

    new-instance v3, Lcom/rebel/module/GrowHook$3;

    invoke-direct {v3, v0}, Lcom/rebel/module/GrowHook$3;-><init>(Lcom/rebel/module/ConfigManager;)V

    .line 83
    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 99
    const-string v1, "GrowHook: \u2713 Hooked TelephonyManager.getLine1Number()"

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102
    goto :goto_2

    .line 100
    :catchall_2
    move-exception v1

    .line 101
    .restart local v1    # "th":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GrowHook: \u2717 Failed to hook TelephonyManager.getLine1Number(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 104
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_2
    const-string v1, "GrowHook: \u2705 All Groww SIM spoofing hooks installed successfully"

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 105
    return-void
.end method
