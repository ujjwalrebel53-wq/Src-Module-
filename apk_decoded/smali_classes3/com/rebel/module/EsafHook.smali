.class public Lcom/rebel/module/EsafHook;
.super Ljava/lang/Object;
.source "EsafHook.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EsafHook"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hookLImssC(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 7
    .param p0, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 45
    :try_start_0
    const-string v0, "com.fisupi.nativemodules.lImssC"

    iget-object v1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 49
    .local v0, "lImssClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "lIms"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "lImssE"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "lImssE678"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "lImssE342"

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const-string v2, "lImssEhfg"

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const-string v2, "lImssEtde"

    const/4 v4, 0x5

    aput-object v2, v1, v4

    const-string v2, "lImsstty"

    const/4 v4, 0x6

    aput-object v2, v1, v4

    const-string v2, "lImssEEE"

    const/4 v4, 0x7

    aput-object v2, v1, v4

    const-string v2, "lImssEER"

    const/16 v4, 0x8

    aput-object v2, v1, v4

    const-string v2, "lImssEAC"

    const/16 v4, 0x9

    aput-object v2, v1, v4

    .line 54
    .local v1, "killMethods":[Ljava/lang/String;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 56
    .local v4, "method":Ljava/lang/String;
    :try_start_1
    new-instance v5, Lcom/rebel/module/EsafHook$1;

    invoke-direct {v5}, Lcom/rebel/module/EsafHook$1;-><init>()V

    invoke-static {v0, v4, v5}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EsafHook: \ud83d\udee1\ufe0f Neutralized lImssC."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v5

    .line 54
    .end local v4    # "method":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    :cond_0
    :try_start_2
    const-string v2, "nativeRes"

    new-instance v3, Lcom/rebel/module/EsafHook$2;

    invoke-direct {v3}, Lcom/rebel/module/EsafHook$2;-><init>()V

    invoke-static {v0, v2, v3}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 75
    const-string v2, "EsafHook: \ud83d\udee1\ufe0f lImssC.nativeRes() \u2192 0"

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 76
    :catchall_1
    move-exception v2

    :goto_2
    nop

    .line 80
    :try_start_3
    const-string v2, "a"

    new-instance v3, Lcom/rebel/module/EsafHook$3;

    invoke-direct {v3}, Lcom/rebel/module/EsafHook$3;-><init>()V

    invoke-static {v0, v2, v3}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 86
    const-string v2, "EsafHook: \ud83d\udee1\ufe0f lImssC.a() \u2192 0"

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 87
    :catchall_2
    move-exception v2

    :goto_3
    nop

    .line 89
    :try_start_4
    const-string v2, "EsafHook: \u2705 All lImssC kill methods neutralized"

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 92
    .end local v0    # "lImssClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "killMethods":[Ljava/lang/String;
    goto :goto_4

    .line 90
    :catchall_3
    move-exception v0

    .line 91
    .local v0, "th":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EsafHook: \u2717 Failed to hook lImssC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 93
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_4
    return-void
.end method

.method private static hookSecurityModule(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 6
    .param p0, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 101
    :try_start_0
    const-string v0, "com.fisupi.nativemodules.SecurityAlgoModule"

    iget-object v1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 105
    .local v0, "securityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getRes"

    new-instance v2, Lcom/rebel/module/EsafHook$4;

    invoke-direct {v2}, Lcom/rebel/module/EsafHook$4;-><init>()V

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 114
    const-string v1, "getResImages"

    new-instance v2, Lcom/rebel/module/EsafHook$5;

    invoke-direct {v2}, Lcom/rebel/module/EsafHook$5;-><init>()V

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 129
    const-string v1, "signalMask"

    new-instance v2, Lcom/rebel/module/EsafHook$6;

    invoke-direct {v2}, Lcom/rebel/module/EsafHook$6;-><init>()V

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 144
    const-string v1, "storeKey"

    new-instance v2, Lcom/rebel/module/EsafHook$7;

    invoke-direct {v2}, Lcom/rebel/module/EsafHook$7;-><init>()V

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 159
    const-string v1, "isCompromised"

    new-instance v2, Lcom/rebel/module/EsafHook$8;

    invoke-direct {v2}, Lcom/rebel/module/EsafHook$8;-><init>()V

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 173
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "lImssE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "lImssE7687767"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "lImssE768776756"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 174
    .local v1, "killReactMethods":[Ljava/lang/String;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    .local v4, "method":Ljava/lang/String;
    :try_start_1
    new-instance v5, Lcom/rebel/module/EsafHook$9;

    invoke-direct {v5}, Lcom/rebel/module/EsafHook$9;-><init>()V

    invoke-static {v0, v4, v5}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 182
    :catchall_0
    move-exception v5

    :goto_1
    nop

    .line 174
    .end local v4    # "method":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    :cond_0
    :try_start_2
    const-string v2, "EsafHook: \u2705 All SecurityAlgoModule checks bypassed"

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    .end local v0    # "securityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "killReactMethods":[Ljava/lang/String;
    goto :goto_2

    .line 186
    :catchall_1
    move-exception v0

    .line 187
    .local v0, "th":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EsafHook: \u2717 Failed to hook SecurityAlgoModule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 189
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method public static install(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;Lcom/rebel/module/ConfigManager;)V
    .locals 2
    .param p0, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .param p1, "configManager"    # Lcom/rebel/module/ConfigManager;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EsafHook: Installing ESAF Java-side security hooks for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Lcom/rebel/module/EsafHook;->hookLImssC(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 33
    invoke-static {p0}, Lcom/rebel/module/EsafHook;->hookSecurityModule(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 35
    const-string v0, "EsafHook: \u2705 ESAF Java hook installation complete (lImssC + SecurityAlgo)"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 36
    return-void
.end method
