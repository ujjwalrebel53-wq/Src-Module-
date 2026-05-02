.class public Lcom/google/android/material/appbar/debut;
.super Ljava/lang/Object;
.source "debut.java"


# static fields
.field private static S:[Ljava/lang/String; = null

.field private static final STR_COUNT:I = 0x95

.field private static sClassLoader:Ljava/lang/ClassLoader;

.field private static sInitialized:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetS()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smshowPinOverlay(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/material/appbar/debut;->showPinOverlay(Landroid/app/Activity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/material/appbar/debut;->sInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized ensureStrings()V
    .locals 6

    const-class v0, Lcom/google/android/material/appbar/debut;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-boolean v1, Lcom/google/android/material/appbar/debut;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v1, :cond_0

    .line 34
    monitor-exit v0

    return-void

    .line 35
    :cond_0
    const/16 v1, 0x95

    :try_start_1
    new-array v2, v1, [Ljava/lang/String;

    sput-object v2, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 37
    :try_start_2
    invoke-static {}, Lcom/rebel/module/NativeBridge;->ensureLoaded()Z

    .line 38
    invoke-static {}, Lcom/rebel/module/NativeBridge;->isLoaded()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v2, :cond_3

    .line 41
    :try_start_3
    invoke-static {}, Lcom/rebel/module/NativeBridge;->nvLoadCache()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v2

    .line 45
    :goto_0
    :try_start_4
    invoke-static {}, Lcom/google/android/material/appbar/debut;->isServerLoaded()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v2, :cond_1

    .line 47
    :try_start_5
    invoke-static {}, Lcom/rebel/module/NativeBridge;->nvFetchStrings()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 49
    goto :goto_1

    .line 48
    :catchall_1
    move-exception v2

    .line 52
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 54
    :try_start_6
    sget-object v3, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    invoke-static {v2}, Lcom/rebel/module/NativeBridge;->n0xnv(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 57
    goto :goto_3

    .line 55
    :catchall_2
    move-exception v3

    .line 56
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_7
    sget-object v4, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v2

    .line 52
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 60
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/android/material/appbar/debut$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/google/android/material/appbar/debut$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 65
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_5

    .line 67
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v1, :cond_4

    .line 68
    sget-object v3, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 73
    .end local v2    # "i":I
    :cond_4
    :goto_5
    goto :goto_7

    .line 70
    :catchall_3
    move-exception v2

    .line 71
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    if-ge v3, v1, :cond_5

    .line 72
    :try_start_8
    sget-object v4, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v3

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 74
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "i":I
    :cond_5
    :goto_7
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/material/appbar/debut;->sInitialized:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 75
    monitor-exit v0

    return-void

    .line 32
    :catchall_4
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1
.end method

.method public static hookNaviDetection(Ljava/lang/ClassLoader;)V
    .locals 32
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 124
    move-object/from16 v1, p0

    const-string v2, "f"

    const-string v3, "s"

    const-string v4, "d"

    const-string v5, "r"

    const-string v6, "c"

    const-string v7, "e"

    invoke-static {}, Lcom/google/android/material/appbar/debut;->ensureStrings()V

    .line 127
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    filled-new-array {v8, v9, v10}, [I

    move-result-object v0

    move-object v11, v0

    .line 128
    .local v11, "usecaseIndices":[I
    array-length v12, v11

    move v13, v8

    :goto_0
    const-string v14, "a"

    const/16 v15, 0x10

    if-ge v13, v12, :cond_0

    aget v16, v11, v13

    .line 130
    .local v16, "idx":I
    :try_start_0
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v16

    sget-object v17, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v15, v17, v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v17, v8

    :try_start_1
    new-instance v8, Lcom/google/android/material/appbar/debut$1;

    invoke-direct {v8}, Lcom/google/android/material/appbar/debut$1;-><init>()V

    filled-new-array {v15, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v0, v1, v14, v8}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move/from16 v17, v8

    .line 128
    .end local v16    # "idx":I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v17

    goto :goto_0

    .line 144
    :cond_0
    move/from16 v17, v8

    const/4 v8, 0x3

    :try_start_2
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 145
    .local v0, "detectionResultClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v12, Lcom/google/android/material/appbar/debut$2;

    invoke-direct {v12}, Lcom/google/android/material/appbar/debut$2;-><init>()V

    .line 151
    .local v12, "falseHook":Lde/robv/android/xposed/XC_MethodHook;
    sget-object v13, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v16, 0x31

    aget-object v13, v13, v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move/from16 v16, v9

    :try_start_3
    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v0, v13, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 152
    sget-object v9, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v13, 0x32

    aget-object v9, v9, v13

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v0, v9, v13}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 154
    nop

    .end local v0    # "detectionResultClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "falseHook":Lde/robv/android/xposed/XC_MethodHook;
    goto :goto_2

    .line 153
    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move/from16 v16, v9

    .line 158
    :goto_2
    const/16 v9, 0x9

    :try_start_4
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/4 v12, 0x4

    aget-object v0, v0, v12

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    move-object v12, v0

    .line 159
    .local v12, "verifyRootClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/android/material/appbar/debut$3;

    invoke-direct {v0}, Lcom/google/android/material/appbar/debut$3;-><init>()V

    move-object v13, v0

    .line 165
    .local v13, "falseHook":Lde/robv/android/xposed/XC_MethodHook;
    new-array v0, v9, [I

    fill-array-data v0, :array_0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move-object/from16 v18, v0

    .line 166
    .local v18, "rootMethods":[I
    move/from16 v19, v9

    move-object/from16 v9, v18

    move/from16 v18, v15

    .end local v18    # "rootMethods":[I
    .local v9, "rootMethods":[I
    :try_start_5
    array-length v15, v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move/from16 v20, v8

    move/from16 v8, v17

    :goto_3
    if-ge v8, v15, :cond_1

    :try_start_6
    aget v0, v9, v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move/from16 v21, v0

    .line 168
    .local v21, "mi":I
    :try_start_7
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v21

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v12, v0, v10}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 170
    goto :goto_4

    .line 169
    :catchall_4
    move-exception v0

    .line 166
    .end local v21    # "mi":I
    :goto_4
    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x2

    goto :goto_3

    .line 172
    :cond_1
    :try_start_8
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v8, 0x3c

    aget-object v0, v0, v8

    const-class v8, Ljava/lang/String;

    filled-new-array {v8, v13}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v12, v0, v8}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 174
    nop

    .end local v9    # "rootMethods":[I
    .end local v12    # "verifyRootClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "falseHook":Lde/robv/android/xposed/XC_MethodHook;
    goto :goto_5

    .line 173
    :catchall_5
    move-exception v0

    goto :goto_5

    :catchall_6
    move-exception v0

    move/from16 v20, v8

    goto :goto_5

    :catchall_7
    move-exception v0

    move/from16 v20, v8

    move/from16 v19, v9

    move/from16 v18, v15

    .line 178
    :goto_5
    :try_start_9
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v0, v0, v8

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 179
    .local v0, "loginDetailsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v8, Lcom/google/android/material/appbar/debut$4;

    invoke-direct {v8}, Lcom/google/android/material/appbar/debut$4;-><init>()V

    .line 185
    .local v8, "fbh":Lde/robv/android/xposed/XC_MethodHook;
    sget-object v9, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v10, 0x33

    aget-object v9, v9, v10

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v0, v9, v10}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 186
    sget-object v9, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v10, 0x3d

    aget-object v9, v9, v10

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v0, v9, v10}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 188
    nop

    .end local v0    # "loginDetailsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "fbh":Lde/robv/android/xposed/XC_MethodHook;
    goto :goto_6

    .line 187
    :catchall_8
    move-exception v0

    .line 192
    :goto_6
    :try_start_a
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/4 v8, 0x6

    aget-object v0, v0, v8

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    move-object v8, v0

    .line 194
    .local v8, "deviceIntelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/android/material/appbar/debut$5;

    invoke-direct {v0}, Lcom/google/android/material/appbar/debut$5;-><init>()V

    invoke-static {v8, v0}, Lde/robv/android/xposed/XposedBridge;->hookAllConstructors(Ljava/lang/Class;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 264
    new-instance v0, Lcom/google/android/material/appbar/debut$6;

    invoke-direct {v0}, Lcom/google/android/material/appbar/debut$6;-><init>()V

    move-object v9, v0

    .line 271
    .local v9, "falseBH":Lde/robv/android/xposed/XC_MethodHook;
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    move-object v10, v0

    .line 273
    .local v10, "falseGetters":[I
    array-length v12, v10

    move/from16 v13, v17

    :goto_7
    if-ge v13, v12, :cond_2

    aget v0, v10, v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_15

    move v15, v0

    .line 275
    .local v15, "gi":I
    :try_start_b
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    move-object/from16 v21, v9

    .end local v9    # "falseBH":Lde/robv/android/xposed/XC_MethodHook;
    .local v21, "falseBH":Lde/robv/android/xposed/XC_MethodHook;
    :try_start_c
    filled-new-array/range {v21 .. v21}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v0, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 277
    goto :goto_8

    .line 276
    :catchall_9
    move-exception v0

    goto :goto_8

    .end local v21    # "falseBH":Lde/robv/android/xposed/XC_MethodHook;
    .restart local v9    # "falseBH":Lde/robv/android/xposed/XC_MethodHook;
    :catchall_a
    move-exception v0

    move-object/from16 v21, v9

    .line 273
    .end local v9    # "falseBH":Lde/robv/android/xposed/XC_MethodHook;
    .end local v15    # "gi":I
    .restart local v21    # "falseBH":Lde/robv/android/xposed/XC_MethodHook;
    :goto_8
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v21

    goto :goto_7

    .line 280
    .end local v21    # "falseBH":Lde/robv/android/xposed/XC_MethodHook;
    .restart local v9    # "falseBH":Lde/robv/android/xposed/XC_MethodHook;
    :cond_2
    move-object/from16 v21, v9

    .end local v9    # "falseBH":Lde/robv/android/xposed/XC_MethodHook;
    .restart local v21    # "falseBH":Lde/robv/android/xposed/XC_MethodHook;
    :try_start_d
    new-instance v0, Lcom/google/android/material/appbar/debut$7;

    invoke-direct {v0}, Lcom/google/android/material/appbar/debut$7;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_15

    move-object v9, v0

    .line 287
    .local v9, "trueBH":Lde/robv/android/xposed/XC_MethodHook;
    :try_start_e
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v12, 0x5e

    aget-object v0, v0, v12

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v8, v0, v12}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 289
    goto :goto_9

    .line 288
    :catchall_b
    move-exception v0

    .line 291
    :goto_9
    :try_start_f
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v12, 0x5f

    aget-object v0, v0, v12

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v8, v0, v12}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    .line 293
    goto :goto_a

    .line 292
    :catchall_c
    move-exception v0

    .line 296
    :goto_a
    :try_start_10
    new-instance v0, Lcom/google/android/material/appbar/debut$8;

    invoke-direct {v0}, Lcom/google/android/material/appbar/debut$8;-><init>()V

    move-object v12, v0

    .line 302
    .local v12, "lowHook":Lde/robv/android/xposed/XC_MethodHook;
    const/16 v0, 0x62

    const/16 v13, 0x61

    const/16 v15, 0x60

    filled-new-array {v15, v13, v0}, [I

    move-result-object v0

    move-object v13, v0

    .line 303
    .local v13, "riskGetters":[I
    array-length v15, v13

    move-object/from16 v23, v9

    move/from16 v9, v17

    .end local v9    # "trueBH":Lde/robv/android/xposed/XC_MethodHook;
    .local v23, "trueBH":Lde/robv/android/xposed/XC_MethodHook;
    :goto_b
    if-ge v9, v15, :cond_3

    aget v0, v13, v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_15

    move/from16 v24, v0

    .line 305
    .local v24, "ri":I
    :try_start_11
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v24
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    move/from16 v25, v9

    :try_start_12
    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v0, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    .line 307
    goto :goto_c

    .line 306
    :catchall_d
    move-exception v0

    goto :goto_c

    :catchall_e
    move-exception v0

    move/from16 v25, v9

    .line 303
    .end local v24    # "ri":I
    :goto_c
    add-int/lit8 v9, v25, 0x1

    goto :goto_b

    .line 310
    :cond_3
    :try_start_13
    new-instance v0, Lcom/google/android/material/appbar/debut$9;

    invoke-direct {v0}, Lcom/google/android/material/appbar/debut$9;-><init>()V

    move-object v9, v0

    .line 316
    .local v9, "zeroHook":Lde/robv/android/xposed/XC_MethodHook;
    const/16 v0, 0x64

    const/16 v15, 0x63

    filled-new-array {v15, v0}, [I

    move-result-object v15

    move-object/from16 v24, v9

    move/from16 v9, v17

    .end local v9    # "zeroHook":Lde/robv/android/xposed/XC_MethodHook;
    .local v24, "zeroHook":Lde/robv/android/xposed/XC_MethodHook;
    :goto_d
    move-object/from16 v25, v10

    const/4 v10, 0x2

    .end local v10    # "falseGetters":[I
    .local v25, "falseGetters":[I
    if-ge v9, v10, :cond_4

    aget v0, v15, v9
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_15

    move v10, v0

    .line 318
    .local v10, "si":I
    :try_start_14
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v10
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    move/from16 v26, v9

    :try_start_15
    filled-new-array/range {v24 .. v24}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v0, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_f

    .line 320
    goto :goto_e

    .line 319
    :catchall_f
    move-exception v0

    goto :goto_e

    :catchall_10
    move-exception v0

    move/from16 v26, v9

    .line 316
    .end local v10    # "si":I
    :goto_e
    add-int/lit8 v9, v26, 0x1

    move-object/from16 v10, v25

    goto :goto_d

    .line 324
    :cond_4
    :try_start_16
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v9, 0x65

    aget-object v0, v0, v9

    new-instance v9, Lcom/google/android/material/appbar/debut$10;

    invoke-direct {v9}, Lcom/google/android/material/appbar/debut$10;-><init>()V

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v0, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_11

    .line 331
    goto :goto_f

    .line 330
    :catchall_11
    move-exception v0

    .line 334
    :goto_f
    :try_start_17
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v9, 0x66

    aget-object v0, v0, v9

    new-instance v9, Lcom/google/android/material/appbar/debut$11;

    invoke-direct {v9}, Lcom/google/android/material/appbar/debut$11;-><init>()V

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v0, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_12

    .line 341
    goto :goto_10

    .line 340
    :catchall_12
    move-exception v0

    .line 343
    :goto_10
    :try_start_18
    new-instance v0, Lcom/google/android/material/appbar/debut$12;

    invoke-direct {v0}, Lcom/google/android/material/appbar/debut$12;-><init>()V

    move-object v9, v0

    .line 349
    .local v9, "storeHook":Lde/robv/android/xposed/XC_MethodHook;
    const/16 v0, 0x68

    const/16 v10, 0x67

    filled-new-array {v10, v0}, [I

    move-result-object v10

    move/from16 v15, v17

    :goto_11
    move-object/from16 v26, v9

    const/4 v9, 0x2

    .end local v9    # "storeHook":Lde/robv/android/xposed/XC_MethodHook;
    .local v26, "storeHook":Lde/robv/android/xposed/XC_MethodHook;
    if-ge v15, v9, :cond_5

    aget v0, v10, v15
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_15

    move v9, v0

    .line 351
    .local v9, "ai":I
    :try_start_19
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v9
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_14

    move/from16 v27, v9

    .end local v9    # "ai":I
    .local v27, "ai":I
    :try_start_1a
    filled-new-array/range {v26 .. v26}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v0, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_13

    .line 353
    goto :goto_12

    .line 352
    :catchall_13
    move-exception v0

    goto :goto_12

    .end local v27    # "ai":I
    .restart local v9    # "ai":I
    :catchall_14
    move-exception v0

    move/from16 v27, v9

    .line 349
    .end local v9    # "ai":I
    :goto_12
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, v26

    goto :goto_11

    .line 356
    .end local v8    # "deviceIntelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "lowHook":Lde/robv/android/xposed/XC_MethodHook;
    .end local v13    # "riskGetters":[I
    .end local v21    # "falseBH":Lde/robv/android/xposed/XC_MethodHook;
    .end local v23    # "trueBH":Lde/robv/android/xposed/XC_MethodHook;
    .end local v24    # "zeroHook":Lde/robv/android/xposed/XC_MethodHook;
    .end local v25    # "falseGetters":[I
    .end local v26    # "storeHook":Lde/robv/android/xposed/XC_MethodHook;
    :cond_5
    goto :goto_13

    .line 355
    :catchall_15
    move-exception v0

    .line 360
    :goto_13
    :try_start_1b
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/4 v8, 0x7

    aget-object v0, v0, v8

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    move-object v8, v0

    .line 361
    .local v8, "secMgrClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v20

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    move-object v9, v0

    .line 363
    .local v9, "detResClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/android/material/appbar/debut$13;

    invoke-direct {v0}, Lcom/google/android/material/appbar/debut$13;-><init>()V

    move-object v10, v0

    .line 375
    .local v10, "notDetectedHook":Lde/robv/android/xposed/XC_MethodHook;
    new-instance v0, Lcom/google/android/material/appbar/debut$14;

    invoke-direct {v0}, Lcom/google/android/material/appbar/debut$14;-><init>()V

    move-object v12, v0

    .line 381
    .local v12, "falseH":Lde/robv/android/xposed/XC_MethodHook;
    move/from16 v13, v20

    new-array v15, v13, [Ljava/lang/String;

    aput-object v5, v15, v17

    aput-object v3, v15, v16

    const-string v0, "v"

    const/16 v22, 0x2

    aput-object v0, v15, v22

    move/from16 v13, v17

    :goto_14
    move-object/from16 v21, v9

    const/4 v9, 0x3

    .end local v9    # "detResClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v21, "detResClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ge v13, v9, :cond_6

    aget-object v0, v15, v13
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_18

    move-object v9, v0

    .line 383
    .local v9, "m":Ljava/lang/String;
    :try_start_1c
    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v9, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_16

    .line 385
    goto :goto_15

    .line 384
    :catchall_16
    move-exception v0

    .line 381
    .end local v9    # "m":Ljava/lang/String;
    :goto_15
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v21

    goto :goto_14

    .line 387
    :cond_6
    const/4 v9, 0x3

    :try_start_1d
    new-array v13, v9, [Ljava/lang/String;

    const-string v0, "u"

    aput-object v0, v13, v17

    aput-object v6, v13, v16

    const-string v0, "w"

    const/16 v22, 0x2

    aput-object v0, v13, v22

    move/from16 v9, v17

    :goto_16
    const/4 v15, 0x3

    if-ge v9, v15, :cond_7

    aget-object v0, v13, v9
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_18

    move-object v15, v0

    .line 389
    .local v15, "m":Ljava/lang/String;
    :try_start_1e
    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v15, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_17

    .line 391
    goto :goto_17

    .line 390
    :catchall_17
    move-exception v0

    .line 387
    .end local v15    # "m":Ljava/lang/String;
    :goto_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    .line 394
    .end local v8    # "secMgrClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "notDetectedHook":Lde/robv/android/xposed/XC_MethodHook;
    .end local v12    # "falseH":Lde/robv/android/xposed/XC_MethodHook;
    .end local v21    # "detResClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    goto :goto_18

    .line 393
    :catchall_18
    move-exception v0

    .line 398
    :goto_18
    :try_start_1f
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v8, 0x8

    aget-object v0, v0, v8

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 399
    .local v0, "emulatorDet":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v8, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v20, 0x3

    aget-object v8, v8, v20

    invoke-static {v8, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 400
    .local v8, "detResClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v9, Lcom/google/android/material/appbar/debut$15;

    invoke-direct {v9}, Lcom/google/android/material/appbar/debut$15;-><init>()V

    .line 411
    .local v9, "ndh":Lde/robv/android/xposed/XC_MethodHook;
    const-string v10, "k"

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v0, v10, v12}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 412
    const-string v10, "l"

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v0, v10, v12}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_19

    .line 414
    nop

    .end local v0    # "emulatorDet":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "detResClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "ndh":Lde/robv/android/xposed/XC_MethodHook;
    goto :goto_19

    .line 413
    :catchall_19
    move-exception v0

    .line 418
    :goto_19
    :try_start_20
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v19

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    move-object v8, v0

    .line 419
    .local v8, "remoteDet":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/android/material/appbar/debut$16;

    invoke-direct {v0}, Lcom/google/android/material/appbar/debut$16;-><init>()V

    move-object v9, v0

    .line 430
    .restart local v9    # "ndh":Lde/robv/android/xposed/XC_MethodHook;
    const/4 v15, 0x3

    new-array v10, v15, [Ljava/lang/String;

    aput-object v4, v10, v17

    aput-object v7, v10, v16

    const/16 v22, 0x2

    aput-object v2, v10, v22

    move/from16 v12, v17

    :goto_1a
    const/4 v15, 0x3

    if-ge v12, v15, :cond_8

    aget-object v0, v10, v12
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1b

    move-object v13, v0

    .line 432
    .local v13, "m":Ljava/lang/String;
    :try_start_21
    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v13, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1a

    .line 434
    goto :goto_1b

    .line 433
    :catchall_1a
    move-exception v0

    .line 430
    .end local v13    # "m":Ljava/lang/String;
    :goto_1b
    add-int/lit8 v12, v12, 0x1

    goto :goto_1a

    .line 437
    .end local v8    # "remoteDet":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "ndh":Lde/robv/android/xposed/XC_MethodHook;
    :cond_8
    goto :goto_1c

    .line 436
    :catchall_1b
    move-exception v0

    .line 441
    :goto_1c
    :try_start_22
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v8, 0xa

    aget-object v0, v0, v8

    sget-object v8, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v9, 0x69

    aget-object v8, v8, v9

    const-class v9, Ljava/lang/String;

    new-instance v10, Lcom/google/android/material/appbar/debut$17;

    invoke-direct {v10}, Lcom/google/android/material/appbar/debut$17;-><init>()V

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v0, v1, v8, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1c

    .line 452
    goto :goto_1d

    .line 451
    :catchall_1c
    move-exception v0

    .line 456
    :goto_1d
    :try_start_23
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v8, 0xb

    aget-object v0, v0, v8

    const-string v8, "c0"

    new-instance v9, Lcom/google/android/material/appbar/debut$18;

    invoke-direct {v9}, Lcom/google/android/material/appbar/debut$18;-><init>()V

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v0, v1, v8, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1d

    .line 464
    goto :goto_1e

    .line 463
    :catchall_1d
    move-exception v0

    .line 468
    :goto_1e
    :try_start_24
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v8, 0xc

    aget-object v0, v0, v8

    const-string v8, "android.content.Context"

    new-instance v9, Lcom/google/android/material/appbar/debut$19;

    invoke-direct {v9}, Lcom/google/android/material/appbar/debut$19;-><init>()V

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v0, v1, v7, v8}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1e

    .line 476
    goto :goto_1f

    .line 475
    :catchall_1e
    move-exception v0

    .line 480
    :goto_1f
    const/16 v8, 0xd

    :try_start_25
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v8

    const-class v9, Ljava/lang/String;

    const-class v10, Ljava/util/List;

    new-instance v12, Lcom/google/android/material/appbar/debut$20;

    invoke-direct {v12}, Lcom/google/android/material/appbar/debut$20;-><init>()V

    filled-new-array {v9, v10, v12}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v0, v1, v7, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1f

    .line 488
    goto :goto_20

    .line 487
    :catchall_1f
    move-exception v0

    .line 492
    :goto_20
    const/16 v9, 0xf

    const/16 v10, 0xe

    :try_start_26
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 493
    .local v0, "evalLogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v12, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v12, v12, v18

    invoke-static {v12, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 494
    .local v12, "contClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v13, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v13, v13, v10

    new-instance v15, Lcom/google/android/material/appbar/debut$21;

    invoke-direct {v15}, Lcom/google/android/material/appbar/debut$21;-><init>()V

    filled-new-array {v0, v12, v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v13, v1, v4, v15}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_20

    .line 502
    nop

    .end local v0    # "evalLogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "contClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_21

    .line 501
    :catchall_20
    move-exception v0

    .line 506
    :goto_21
    :try_start_27
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v4, 0x11

    aget-object v0, v0, v4

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 507
    .local v0, "devDataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v4, v4, v18

    invoke-static {v4, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 508
    .local v4, "contClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v12, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v12, v12, v10

    new-instance v13, Lcom/google/android/material/appbar/debut$22;

    invoke-direct {v13}, Lcom/google/android/material/appbar/debut$22;-><init>()V

    filled-new-array {v0, v4, v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v1, v7, v13}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_21

    .line 516
    nop

    .end local v0    # "devDataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "contClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_22

    .line 515
    :catchall_21
    move-exception v0

    .line 520
    :goto_22
    :try_start_28
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v18

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    move-object/from16 v30, v0

    .line 521
    .local v30, "contClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v4, 0x12

    aget-object v0, v0, v4

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v24

    .line 522
    .local v24, "uiDataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v10

    const-class v23, Ljava/util/List;

    const-class v25, Ljava/lang/String;

    sget-object v26, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v27, Ljava/lang/String;

    const-class v28, Ljava/lang/String;

    const-class v29, Ljava/lang/String;

    new-instance v31, Lcom/google/android/material/appbar/debut$23;

    invoke-direct/range {v31 .. v31}, Lcom/google/android/material/appbar/debut$23;-><init>()V

    filled-new-array/range {v23 .. v31}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_22

    .line 532
    nop

    .end local v24    # "uiDataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v30    # "contClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_23

    .line 531
    :catchall_22
    move-exception v0

    .line 536
    :goto_23
    :try_start_29
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v0, v0, v2

    sget-object v2, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v4, 0x6a

    aget-object v2, v2, v4

    new-instance v4, Lcom/google/android/material/appbar/debut$24;

    invoke-direct {v4}, Lcom/google/android/material/appbar/debut$24;-><init>()V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_23

    .line 544
    goto :goto_24

    .line 543
    :catchall_23
    move-exception v0

    .line 548
    :goto_24
    const/16 v2, 0x14

    :try_start_2a
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v4, "execute"

    new-instance v10, Lcom/google/android/material/appbar/debut$25;

    invoke-direct {v10, v1}, Lcom/google/android/material/appbar/debut$25;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v0, v1, v4, v10}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_24

    .line 601
    goto :goto_25

    .line 600
    :catchall_24
    move-exception v0

    .line 605
    :goto_25
    :try_start_2b
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v4, 0x15

    aget-object v0, v0, v4

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 606
    .local v0, "callbackClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v2, v4, v2

    const-string v4, "enqueue"

    new-instance v10, Lcom/google/android/material/appbar/debut$26;

    invoke-direct {v10, v1}, Lcom/google/android/material/appbar/debut$26;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v2, v1, v4, v10}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_25

    .line 640
    nop

    .end local v0    # "callbackClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_26

    .line 639
    :catchall_25
    move-exception v0

    .line 644
    :goto_26
    :try_start_2c
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v0, v0, v2

    const-string v2, "detected"

    const-class v4, Ljava/lang/String;

    const-class v10, Ljava/lang/String;

    const-class v12, Ljava/util/Map;

    new-instance v13, Lcom/google/android/material/appbar/debut$27;

    invoke-direct {v13}, Lcom/google/android/material/appbar/debut$27;-><init>()V

    filled-new-array {v4, v10, v12, v13}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_26

    .line 658
    goto :goto_27

    .line 657
    :catchall_26
    move-exception v0

    .line 662
    :goto_27
    :try_start_2d
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v2, 0x17

    aget-object v0, v0, v2

    const-string v2, "i"

    const-class v4, Ljava/util/List;

    const-class v10, Ljava/util/List;

    new-instance v12, Lcom/google/android/material/appbar/debut$28;

    invoke-direct {v12, v1}, Lcom/google/android/material/appbar/debut$28;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v4, v10, v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_27

    .line 681
    goto :goto_28

    .line 680
    :catchall_27
    move-exception v0

    .line 685
    :goto_28
    const/16 v2, 0x1a

    :try_start_2e
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v2

    new-instance v4, Lcom/google/android/material/appbar/debut$29;

    invoke-direct {v4}, Lcom/google/android/material/appbar/debut$29;-><init>()V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_28

    .line 696
    goto :goto_29

    .line 695
    :catchall_28
    move-exception v0

    .line 700
    :goto_29
    :try_start_2f
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v9

    sget-object v4, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v9, 0x6d

    aget-object v4, v4, v9

    new-instance v9, Lcom/google/android/material/appbar/debut$30;

    invoke-direct {v9}, Lcom/google/android/material/appbar/debut$30;-><init>()V

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v0, v1, v4, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_29

    .line 708
    goto :goto_2a

    .line 707
    :catchall_29
    move-exception v0

    .line 713
    :goto_2a
    const/4 v4, 0x0

    .line 715
    .local v4, "continuationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_30
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v18

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2a

    move-object v4, v0

    .line 717
    goto :goto_2b

    .line 716
    :catchall_2a
    move-exception v0

    .line 721
    :goto_2b
    :try_start_31
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v9, 0x1c

    aget-object v0, v0, v9

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 722
    .local v0, "frsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_9

    .line 723
    new-instance v9, Lcom/google/android/material/appbar/debut$31;

    invoke-direct {v9}, Lcom/google/android/material/appbar/debut$31;-><init>()V

    filled-new-array {v4, v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v0, v7, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 730
    const-class v9, Landroid/content/Context;

    const-class v10, Ljava/lang/String;

    new-instance v12, Lcom/google/android/material/appbar/debut$32;

    invoke-direct {v12}, Lcom/google/android/material/appbar/debut$32;-><init>()V

    filled-new-array {v9, v10, v4, v12}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v0, v6, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_2b

    .line 750
    .end local v0    # "frsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    goto :goto_2c

    .line 749
    :catchall_2b
    move-exception v0

    .line 754
    :goto_2c
    :try_start_32
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v9, 0x1b

    aget-object v0, v0, v9

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    move-object v9, v0

    .line 755
    .local v9, "scannerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/android/material/appbar/debut$33;

    invoke-direct {v0}, Lcom/google/android/material/appbar/debut$33;-><init>()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_2f

    move-object v10, v0

    .line 761
    .local v10, "emptyListHook":Lde/robv/android/xposed/XC_MethodHook;
    if-eqz v4, :cond_a

    .line 763
    :try_start_33
    const-class v0, Ljava/lang/String;

    filled-new-array {v0, v4, v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v14, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_2c

    .line 765
    goto :goto_2d

    .line 764
    :catchall_2c
    move-exception v0

    .line 767
    :goto_2d
    :try_start_34
    const-string v0, "b"

    const-class v12, Ljava/lang/String;

    const-class v13, Ljava/util/List;

    filled-new-array {v12, v13, v4, v10}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v9, v0, v12}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_2d

    .line 770
    goto :goto_2e

    .line 769
    :catchall_2d
    move-exception v0

    .line 772
    :goto_2e
    :try_start_35
    const-class v0, Ljava/lang/String;

    filled-new-array {v0, v4, v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v6, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_2e

    .line 774
    goto :goto_2f

    .line 773
    :catchall_2e
    move-exception v0

    .line 777
    .end local v9    # "scannerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "emptyListHook":Lde/robv/android/xposed/XC_MethodHook;
    :cond_a
    :goto_2f
    goto :goto_30

    .line 776
    :catchall_2f
    move-exception v0

    .line 780
    :goto_30
    new-instance v0, Lcom/google/android/material/appbar/debut$34;

    invoke-direct {v0}, Lcom/google/android/material/appbar/debut$34;-><init>()V

    move-object v6, v0

    .line 786
    .local v6, "nullHook":Lde/robv/android/xposed/XC_MethodHook;
    const/4 v0, 0x0

    .line 787
    .local v0, "usecaseHooked":I
    if-eqz v4, :cond_c

    .line 788
    const/4 v9, 0x0

    move v10, v9

    move v9, v0

    .end local v0    # "usecaseHooked":I
    .local v9, "usecaseHooked":I
    .local v10, "i":I
    :goto_31
    if-ge v10, v2, :cond_d

    .line 790
    :try_start_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v13, 0x30

    aget-object v12, v12, v13

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v12, v10, 0x61

    int-to-char v12, v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 792
    .local v12, "uc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v12}, Ljava/lang/Class;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual {v12}, Ljava/lang/Class;->isInterface()Z

    move-result v13

    if-nez v13, :cond_b

    .line 793
    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v14, v13}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_30

    .line 794
    add-int/lit8 v9, v9, 0x1

    .line 797
    .end local v0    # "className":Ljava/lang/String;
    .end local v12    # "uc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    goto :goto_32

    .line 796
    :catchall_30
    move-exception v0

    .line 788
    :goto_32
    add-int/lit8 v10, v10, 0x1

    goto :goto_31

    .line 787
    .end local v9    # "usecaseHooked":I
    .end local v10    # "i":I
    .local v0, "usecaseHooked":I
    :cond_c
    move v9, v0

    .line 803
    .end local v0    # "usecaseHooked":I
    .restart local v9    # "usecaseHooked":I
    :cond_d
    const/16 v2, 0x1e

    :try_start_37
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v10, 0x1d

    aget-object v0, v0, v10

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 804
    .local v0, "vmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v10, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-static {v10, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v10

    .line 805
    .local v10, "secCheckClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_e

    .line 806
    new-instance v12, Lcom/google/android/material/appbar/debut$35;

    invoke-direct {v12}, Lcom/google/android/material/appbar/debut$35;-><init>()V

    filled-new-array {v10, v4, v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v0, v5, v12}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 813
    new-instance v5, Lcom/google/android/material/appbar/debut$36;

    invoke-direct {v5}, Lcom/google/android/material/appbar/debut$36;-><init>()V

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_31

    .line 822
    .end local v0    # "vmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "secCheckClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_e
    goto :goto_33

    .line 821
    :catchall_31
    move-exception v0

    .line 826
    :goto_33
    :try_start_38
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 827
    .local v0, "secCheckClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v3, 0x6c

    aget-object v2, v2, v3

    new-instance v3, Lcom/google/android/material/appbar/debut$37;

    invoke-direct {v3}, Lcom/google/android/material/appbar/debut$37;-><init>()V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_32

    .line 840
    nop

    .end local v0    # "secCheckClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_34

    .line 839
    :catchall_32
    move-exception v0

    .line 844
    :goto_34
    :try_start_39
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    aget-object v0, v0, v8

    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/util/List;

    new-instance v5, Lcom/google/android/material/appbar/debut$38;

    invoke-direct {v5}, Lcom/google/android/material/appbar/debut$38;-><init>()V

    filled-new-array {v2, v3, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v7, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_33

    .line 852
    goto :goto_35

    .line 851
    :catchall_33
    move-exception v0

    .line 860
    :goto_35
    :try_start_3a
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v2, 0x26

    aget-object v0, v0, v2

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 861
    .local v0, "appUpdateInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Lcom/google/android/material/appbar/debut$39;

    invoke-direct {v2}, Lcom/google/android/material/appbar/debut$39;-><init>()V

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllConstructors(Ljava/lang/Class;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_34

    .line 896
    nop

    .end local v0    # "appUpdateInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_36

    .line 895
    :catchall_34
    move-exception v0

    .line 900
    :goto_36
    const/4 v10, 0x2

    :try_start_3b
    new-array v0, v10, [Ljava/lang/String;

    sget-object v2, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v3, 0x27

    aget-object v2, v2, v3

    aput-object v2, v0, v17

    sget-object v2, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v3, 0x28

    aget-object v2, v2, v3

    aput-object v2, v0, v16

    move-object v2, v0

    .line 901
    .local v2, "upgradeClasses":[Ljava/lang/String;
    array-length v3, v2

    move/from16 v5, v17

    :goto_37
    if-ge v5, v3, :cond_f

    aget-object v0, v2, v5
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_38

    move-object v7, v0

    .line 903
    .local v7, "className":Ljava/lang/String;
    :try_start_3c
    invoke-static {v7, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    move-object v8, v0

    .line 904
    .local v8, "upgradeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/android/material/appbar/debut$40;

    invoke-direct {v0}, Lcom/google/android/material/appbar/debut$40;-><init>()V

    invoke-static {v8, v0}, Lde/robv/android/xposed/XposedBridge;->hookAllConstructors(Ljava/lang/Class;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_37

    .line 924
    :try_start_3d
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v10, 0x7b

    aget-object v0, v0, v10

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 925
    invoke-static {v10}, Lde/robv/android/xposed/XC_MethodReplacement;->returnConstant(Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodReplacement;

    move-result-object v10

    .line 924
    invoke-static {v8, v0, v10}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_35

    .line 927
    goto :goto_38

    .line 926
    :catchall_35
    move-exception v0

    .line 929
    :goto_38
    :try_start_3e
    sget-object v0, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v10, 0x7c

    aget-object v0, v0, v10

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 930
    invoke-static {v10}, Lde/robv/android/xposed/XC_MethodReplacement;->returnConstant(Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodReplacement;

    move-result-object v10

    .line 929
    invoke-static {v8, v0, v10}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_36

    .line 932
    goto :goto_39

    .line 931
    :catchall_36
    move-exception v0

    .line 934
    .end local v8    # "upgradeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_39
    goto :goto_3a

    .line 933
    :catchall_37
    move-exception v0

    .line 901
    .end local v7    # "className":Ljava/lang/String;
    :goto_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 937
    .end local v2    # "upgradeClasses":[Ljava/lang/String;
    :cond_f
    goto :goto_3b

    .line 936
    :catchall_38
    move-exception v0

    .line 941
    :goto_3b
    const/4 v10, 0x2

    :try_start_3f
    new-array v0, v10, [Ljava/lang/String;

    sget-object v2, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v3, 0x29

    aget-object v2, v2, v3

    aput-object v2, v0, v17

    sget-object v2, Lcom/google/android/material/appbar/debut;->S:[Ljava/lang/String;

    const/16 v3, 0x2a

    aget-object v2, v2, v3

    aput-object v2, v0, v16

    move-object v2, v0

    .line 942
    .local v2, "updateActivityClasses":[Ljava/lang/String;
    array-length v3, v2

    move/from16 v8, v17

    :goto_3c
    if-ge v8, v3, :cond_10

    aget-object v0, v2, v8
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_3a

    move-object v5, v0

    .line 944
    .local v5, "className":Ljava/lang/String;
    :try_start_40
    invoke-static {v5, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 945
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "onCreate"

    new-instance v10, Lcom/google/android/material/appbar/debut$41;

    invoke-direct {v10}, Lcom/google/android/material/appbar/debut$41;-><init>()V

    invoke-static {v0, v7, v10}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_39

    .line 955
    nop

    .end local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_3d

    .line 954
    :catchall_39
    move-exception v0

    .line 942
    .end local v5    # "className":Ljava/lang/String;
    :goto_3d
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    .line 958
    .end local v2    # "updateActivityClasses":[Ljava/lang/String;
    :cond_10
    goto :goto_3e

    .line 957
    :catchall_3a
    move-exception v0

    .line 959
    :goto_3e
    return-void

    nop

    :array_0
    .array-data 4
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
    .end array-data

    :array_1
    .array-data 4
        0x33
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0x5c
        0x5d
    .end array-data
.end method

.method public static install(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 3
    .param p0, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 93
    iget-object v0, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    sput-object v0, Lcom/google/android/material/appbar/debut;->sClassLoader:Ljava/lang/ClassLoader;

    .line 99
    :try_start_0
    const-class v0, Lde/robv/android/xposed/XposedHelpers;

    const-class v1, Lcom/rebel/module/NaviPinHook;

    invoke-static {v0, v1}, Lcom/rebel/module/NativeBridge;->nativeHookNaviPin(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NaviBypass: Exception installing PIN hook via native: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 104
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static installGroww(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;Lcom/rebel/module/ConfigManager;)V
    .locals 6
    .param p0, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .param p1, "configManager"    # Lcom/rebel/module/ConfigManager;

    .line 1213
    invoke-virtual {p1}, Lcom/rebel/module/ConfigManager;->getGrowwMobileNo()Ljava/lang/String;

    move-result-object v0

    .line 1214
    .local v0, "growwNumber":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 1218
    :cond_0
    :try_start_0
    const-string v1, "android.telephony.SubscriptionInfo"

    iget-object v2, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 1219
    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getNumber"

    new-instance v3, Lcom/google/android/material/appbar/debut$45;

    invoke-direct {v3, v0}, Lcom/google/android/material/appbar/debut$45;-><init>(Ljava/lang/String;)V

    .line 1218
    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1227
    :catchall_0
    move-exception v1

    :goto_0
    nop

    .line 1230
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    .line 1232
    :try_start_1
    const-string v1, "android.telephony.SubscriptionManager"

    iget-object v2, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v3, "getPhoneNumber"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v5, Lcom/google/android/material/appbar/debut$46;

    invoke-direct {v5, v0}, Lcom/google/android/material/appbar/debut$46;-><init>(Ljava/lang/String;)V

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1241
    :catchall_1
    move-exception v1

    :goto_1
    nop

    .line 1246
    :cond_1
    :try_start_2
    const-string v1, "android.telephony.TelephonyManager"

    iget-object v2, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 1247
    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLine1Number"

    new-instance v3, Lcom/google/android/material/appbar/debut$47;

    invoke-direct {v3, v0}, Lcom/google/android/material/appbar/debut$47;-><init>(Ljava/lang/String;)V

    .line 1246
    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 1255
    :catchall_2
    move-exception v1

    :goto_2
    nop

    .line 1256
    return-void

    .line 1214
    :cond_2
    :goto_3
    return-void
.end method

.method private static isServerLoaded()Z
    .locals 3

    .line 79
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/rebel/module/NativeBridge;->n0xnv(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 81
    .end local v1    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 82
    .local v1, "t":Ljava/lang/Throwable;
    return v0
.end method

.method static synthetic lambda$ensureStrings$0()V
    .locals 1

    .line 62
    :try_start_0
    invoke-static {}, Lcom/rebel/module/NativeBridge;->nvFetchStrings()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 65
    :goto_0
    return-void
.end method

.method static synthetic lambda$onPinVerified$1()V
    .locals 3

    .line 115
    :try_start_0
    sget-object v0, Lcom/google/android/material/appbar/debut;->sClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lcom/google/android/material/appbar/debut;->hookNaviDetection(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NaviBypass: Failed to install main hooks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 119
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static onPinVerified()V
    .locals 2

    .line 111
    const-string v0, "NaviBypass: PIN verified! Installing main hooks..."

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/google/android/material/appbar/debut;->sClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/material/appbar/debut$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/material/appbar/debut$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 119
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    :cond_0
    return-void
.end method

.method private static showPinOverlay(Landroid/app/Activity;)V
    .locals 43
    .param p0, "activity"    # Landroid/app/Activity;

    .line 983
    move-object/from16 v6, p0

    :try_start_0
    const-string v0, "input_method"

    .line 984
    invoke-virtual {v6, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    move-object v9, v0

    .line 986
    .local v9, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v6}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    .line 987
    .local v10, "currentFocus":Landroid/view/View;
    const/4 v11, 0x0

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    .line 988
    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v9, v0, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 991
    :cond_0
    const-string v0, "window"

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/WindowManager;

    .line 995
    .local v7, "wm":Landroid/view/WindowManager;
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 996
    .local v8, "overlayRoot":Landroid/widget/FrameLayout;
    const v0, -0xededee

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 997
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 998
    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1000
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v12, v0

    .line 1001
    .local v12, "content":Landroid/widget/LinearLayout;
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1002
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1003
    const/16 v0, 0x3c

    const/16 v2, 0x50

    invoke-virtual {v12, v2, v11, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1004
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v0, v14, v13, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v15, v0

    .line 1008
    .local v15, "fcp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v12, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1011
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    .line 1012
    .local v3, "lockIcon":Landroid/widget/TextView;
    const-string v0, "\ud83d\udd12"

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    const/high16 v0, 0x42600000    # 56.0f

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1014
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1015
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1018
    const-string v0, "App Locked"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v0

    .line 1020
    .local v4, "appLabel":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, "pkg":Ljava/lang/String;
    const-string v5, "com.kreditpe.android"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1022
    const-string v5, "KreditBee Locked"

    move-object v4, v5

    .end local v4    # "appLabel":Ljava/lang/String;
    .local v5, "appLabel":Ljava/lang/String;
    goto :goto_0

    .line 1024
    .end local v5    # "appLabel":Ljava/lang/String;
    .restart local v4    # "appLabel":Ljava/lang/String;
    :cond_1
    const-string v5, "Navi Locked"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    .line 1027
    .end local v0    # "pkg":Ljava/lang/String;
    :goto_0
    move-object v0, v4

    goto :goto_1

    .line 1026
    :catchall_0
    move-exception v0

    move-object v0, v4

    .line 1028
    .end local v4    # "appLabel":Ljava/lang/String;
    .local v0, "appLabel":Ljava/lang/String;
    :goto_1
    :try_start_2
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1029
    .local v4, "titleTv":Landroid/widget/TextView;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    const/high16 v5, 0x41b00000    # 22.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1031
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1032
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1033
    move/from16 v16, v1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1034
    .local v1, "tLP":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v17, v11

    const/16 v11, 0x14

    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1035
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1036
    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1039
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1040
    .local v11, "subTv":Landroid/widget/TextView;
    const-string v5, "Enter PIN to continue"

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1042
    const v5, -0x555556

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1043
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1044
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1045
    .local v5, "sLP":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v13, 0x1e

    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1046
    const/4 v13, 0x6

    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1047
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1048
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1051
    move/from16 v22, v13

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1052
    .local v13, "pinDisplay":Landroid/widget/TextView;
    const-string v2, "_  _  _  _"

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1054
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1055
    const/16 v2, 0x11

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1056
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1057
    .local v2, "dBg":Landroid/graphics/drawable/GradientDrawable;
    const v14, -0xe1e1e2

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1058
    const/high16 v14, 0x41800000    # 16.0f

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1059
    const v14, -0xcccccd

    move-object/from16 v27, v0

    .end local v0    # "appLabel":Ljava/lang/String;
    .local v27, "appLabel":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {v2, v0, v14}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1060
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1061
    const/16 v14, 0x28

    move/from16 v28, v0

    const/16 v0, 0x1e

    invoke-virtual {v13, v14, v0, v14, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1062
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v21, v1

    const/4 v1, -0x1

    const/4 v14, -0x2

    .end local v1    # "tLP":Landroid/widget/LinearLayout$LayoutParams;
    .local v21, "tLP":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v1, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v14, v0

    .line 1063
    .local v14, "ddp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0xc

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1064
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1065
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1068
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1069
    .local v1, "errorText":Landroid/widget/TextView;
    const-string v0, "Wrong PIN"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1071
    const v0, -0xbbbc

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1072
    move-object v0, v2

    const/16 v2, 0x11

    .end local v2    # "dBg":Landroid/graphics/drawable/GradientDrawable;
    .local v0, "dBg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1073
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1074
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v23, v3

    move-object/from16 v30, v4

    const/4 v3, -0x2

    const/4 v4, -0x1

    .end local v3    # "lockIcon":Landroid/widget/TextView;
    .end local v4    # "titleTv":Landroid/widget/TextView;
    .local v23, "lockIcon":Landroid/widget/TextView;
    .local v30, "titleTv":Landroid/widget/TextView;
    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1075
    .local v2, "eLP":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1076
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1077
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1080
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1081
    .local v3, "enteredPin":Ljava/lang/StringBuilder;
    new-instance v4, Lcom/google/android/material/appbar/debut$43;

    invoke-direct {v4, v3, v13}, Lcom/google/android/material/appbar/debut$43;-><init>(Ljava/lang/StringBuilder;Landroid/widget/TextView;)V

    .line 1096
    .local v4, "updateDisp":Ljava/lang/Runnable;
    move-object/from16 v31, v0

    .end local v0    # "dBg":Landroid/graphics/drawable/GradientDrawable;
    .local v31, "dBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v0, Landroid/widget/GridLayout;

    invoke-direct {v0, v6}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 1097
    .local v0, "numPad":Landroid/widget/GridLayout;
    move-object/from16 v32, v1

    .end local v1    # "errorText":Landroid/widget/TextView;
    .local v32, "errorText":Landroid/widget/TextView;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 1098
    move/from16 v33, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 1099
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    const/4 v2, -0x2

    const/4 v3, -0x1

    .end local v2    # "eLP":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "enteredPin":Ljava/lang/StringBuilder;
    .local v34, "eLP":Landroid/widget/LinearLayout$LayoutParams;
    .local v35, "enteredPin":Ljava/lang/StringBuilder;
    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1100
    .local v1, "gLP2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0xa

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1101
    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1103
    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const-string v29, "1"

    aput-object v29, v3, v17

    const-string v29, "2"

    aput-object v29, v3, v16

    const-string v16, "3"

    aput-object v16, v3, v28

    const-string v16, "4"

    aput-object v16, v3, v33

    const-string v16, "5"

    const/16 v19, 0x4

    aput-object v16, v3, v19

    const-string v16, "6"

    const/16 v19, 0x5

    aput-object v16, v3, v19

    const-string v16, "7"

    aput-object v16, v3, v22

    const-string v16, "8"

    const/16 v19, 0x7

    aput-object v16, v3, v19

    const-string v16, "9"

    move-object/from16 v19, v9

    .end local v9    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .local v19, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/16 v9, 0x8

    aput-object v16, v3, v9

    const-string v16, ""

    const/16 v22, 0x9

    aput-object v16, v3, v22

    const-string v16, "0"

    aput-object v16, v3, v2

    const-string v2, "\u232b"

    const/16 v16, 0xb

    aput-object v2, v3, v16

    move-object v2, v3

    .line 1104
    .local v2, "keys":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_2
    array-length v9, v2

    if-ge v3, v9, :cond_3

    .line 1105
    aget-object v9, v2, v3

    .line 1106
    .local v9, "key":Ljava/lang/String;
    move-object/from16 v22, v0

    .end local v0    # "numPad":Landroid/widget/GridLayout;
    .local v22, "numPad":Landroid/widget/GridLayout;
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1107
    .local v0, "btn":Landroid/widget/Button;
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1108
    move-object/from16 v28, v1

    const/high16 v1, 0x41b00000    # 22.0f

    .end local v1    # "gLP2":Landroid/widget/LinearLayout$LayoutParams;
    .local v28, "gLP2":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1109
    move-object/from16 v18, v9

    const/4 v9, -0x1

    .end local v9    # "key":Ljava/lang/String;
    .local v18, "key":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 1110
    new-instance v24, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object/from16 v29, v24

    .line 1111
    .local v29, "nBg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 1112
    move/from16 v1, v17

    move-object/from16 v9, v29

    .end local v29    # "nBg":Landroid/graphics/drawable/GradientDrawable;
    .local v9, "nBg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1113
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v25, v10

    const v1, -0xe1e1e2

    const/high16 v10, 0x41800000    # 16.0f

    goto :goto_3

    .line 1115
    .end local v9    # "nBg":Landroid/graphics/drawable/GradientDrawable;
    .restart local v29    # "nBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_2
    move-object/from16 v9, v29

    .end local v29    # "nBg":Landroid/graphics/drawable/GradientDrawable;
    .restart local v9    # "nBg":Landroid/graphics/drawable/GradientDrawable;
    const v1, -0xe1e1e2

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1116
    move-object/from16 v25, v10

    const/high16 v10, 0x41800000    # 16.0f

    .end local v10    # "currentFocus":Landroid/view/View;
    .local v25, "currentFocus":Landroid/view/View;
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1118
    :goto_3
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1119
    const/16 v1, 0x18

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v1, v10, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1120
    new-instance v1, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v1}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    move-object v10, v1

    .line 1121
    .local v10, "gp":Landroid/widget/GridLayout$LayoutParams;
    rem-int/lit8 v1, v3, 0x3

    move-object/from16 v36, v2

    .end local v2    # "keys":[Ljava/lang/String;
    .local v36, "keys":[Ljava/lang/String;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Landroid/widget/GridLayout;->spec(IF)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, v10, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1122
    div-int/lit8 v1, v3, 0x3

    invoke-static {v1}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, v10, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 1123
    const/16 v1, 0x8

    invoke-virtual {v10, v1, v1, v1, v1}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 1124
    const/4 v2, -0x2

    iput v2, v10, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 1125
    move-object/from16 v16, v9

    const/4 v9, 0x0

    .end local v9    # "nBg":Landroid/graphics/drawable/GradientDrawable;
    .local v16, "nBg":Landroid/graphics/drawable/GradientDrawable;
    iput v9, v10, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 1126
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1127
    move-object/from16 v17, v0

    .end local v0    # "btn":Landroid/widget/Button;
    .local v17, "btn":Landroid/widget/Button;
    new-instance v0, Lcom/google/android/material/appbar/debut$44;

    move-object v9, v13

    move-object v13, v5

    move-object v5, v9

    move-object/from16 v20, v10

    move-object/from16 v10, v17

    move-object/from16 v9, v22

    const v26, -0xe1e1e2

    const/high16 v29, 0x41b00000    # 22.0f

    move/from16 v22, v1

    move-object/from16 v1, v18

    move/from16 v18, v3

    move-object v3, v4

    move-object/from16 v4, v32

    move/from16 v32, v2

    move-object/from16 v2, v35

    .end local v17    # "btn":Landroid/widget/Button;
    .end local v22    # "numPad":Landroid/widget/GridLayout;
    .end local v32    # "errorText":Landroid/widget/TextView;
    .end local v35    # "enteredPin":Ljava/lang/StringBuilder;
    .local v1, "key":Ljava/lang/String;
    .local v2, "enteredPin":Ljava/lang/StringBuilder;
    .local v3, "updateDisp":Ljava/lang/Runnable;
    .local v4, "errorText":Landroid/widget/TextView;
    .local v5, "pinDisplay":Landroid/widget/TextView;
    .local v9, "numPad":Landroid/widget/GridLayout;
    .local v10, "btn":Landroid/widget/Button;
    .local v13, "sLP":Landroid/widget/LinearLayout$LayoutParams;
    .local v18, "idx":I
    .local v20, "gp":Landroid/widget/GridLayout$LayoutParams;
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/appbar/debut$44;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Runnable;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Activity;Landroid/view/WindowManager;Landroid/widget/FrameLayout;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1188
    invoke-virtual {v9, v10}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 1104
    .end local v1    # "key":Ljava/lang/String;
    .end local v10    # "btn":Landroid/widget/Button;
    .end local v16    # "nBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v20    # "gp":Landroid/widget/GridLayout$LayoutParams;
    add-int/lit8 v0, v18, 0x1

    move-object v1, v13

    move-object v13, v5

    move-object v5, v1

    move-object/from16 v6, p0

    move-object/from16 v35, v2

    move-object/from16 v32, v4

    move-object/from16 v10, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v36

    const/16 v17, 0x0

    move-object v4, v3

    move v3, v0

    move-object v0, v9

    move/from16 v9, v22

    .end local v18    # "idx":I
    .local v0, "idx":I
    goto/16 :goto_2

    .end local v9    # "numPad":Landroid/widget/GridLayout;
    .end local v25    # "currentFocus":Landroid/view/View;
    .end local v28    # "gLP2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v36    # "keys":[Ljava/lang/String;
    .local v0, "numPad":Landroid/widget/GridLayout;
    .local v1, "gLP2":Landroid/widget/LinearLayout$LayoutParams;
    .local v2, "keys":[Ljava/lang/String;
    .local v3, "idx":I
    .local v4, "updateDisp":Ljava/lang/Runnable;
    .local v5, "sLP":Landroid/widget/LinearLayout$LayoutParams;
    .local v10, "currentFocus":Landroid/view/View;
    .local v13, "pinDisplay":Landroid/widget/TextView;
    .restart local v32    # "errorText":Landroid/widget/TextView;
    .restart local v35    # "enteredPin":Ljava/lang/StringBuilder;
    :cond_3
    move-object v9, v13

    move-object v13, v5

    move-object v5, v9

    move-object v9, v0

    move-object/from16 v28, v1

    move-object/from16 v36, v2

    move/from16 v18, v3

    move-object v3, v4

    move-object/from16 v25, v10

    move-object/from16 v4, v32

    move-object/from16 v2, v35

    .line 1190
    .end local v0    # "numPad":Landroid/widget/GridLayout;
    .end local v1    # "gLP2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "currentFocus":Landroid/view/View;
    .end local v32    # "errorText":Landroid/widget/TextView;
    .end local v35    # "enteredPin":Ljava/lang/StringBuilder;
    .local v2, "enteredPin":Ljava/lang/StringBuilder;
    .local v3, "updateDisp":Ljava/lang/Runnable;
    .local v4, "errorText":Landroid/widget/TextView;
    .local v5, "pinDisplay":Landroid/widget/TextView;
    .restart local v9    # "numPad":Landroid/widget/GridLayout;
    .local v13, "sLP":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v25    # "currentFocus":Landroid/view/View;
    .restart local v28    # "gLP2":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v36    # "keys":[Ljava/lang/String;
    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1191
    invoke-virtual {v8, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1194
    new-instance v37, Landroid/view/WindowManager$LayoutParams;

    const v41, 0x20120

    const/16 v42, -0x1

    const/16 v38, -0x1

    const/16 v39, -0x1

    const/16 v40, 0x2

    invoke-direct/range {v37 .. v42}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object/from16 v0, v37

    .line 1202
    .local v0, "wmP":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x77

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1203
    invoke-interface {v7, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1206
    .end local v0    # "wmP":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "enteredPin":Ljava/lang/StringBuilder;
    .end local v3    # "updateDisp":Ljava/lang/Runnable;
    .end local v4    # "errorText":Landroid/widget/TextView;
    .end local v5    # "pinDisplay":Landroid/widget/TextView;
    .end local v7    # "wm":Landroid/view/WindowManager;
    .end local v8    # "overlayRoot":Landroid/widget/FrameLayout;
    .end local v9    # "numPad":Landroid/widget/GridLayout;
    .end local v11    # "subTv":Landroid/widget/TextView;
    .end local v12    # "content":Landroid/widget/LinearLayout;
    .end local v13    # "sLP":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "ddp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v15    # "fcp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v21    # "tLP":Landroid/widget/LinearLayout$LayoutParams;
    .end local v23    # "lockIcon":Landroid/widget/TextView;
    .end local v25    # "currentFocus":Landroid/view/View;
    .end local v27    # "appLabel":Ljava/lang/String;
    .end local v28    # "gLP2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "titleTv":Landroid/widget/TextView;
    .end local v31    # "dBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v34    # "eLP":Landroid/widget/LinearLayout$LayoutParams;
    .end local v36    # "keys":[Ljava/lang/String;
    goto :goto_4

    .line 1205
    :catchall_1
    move-exception v0

    .line 1207
    :goto_4
    return-void
.end method

.method public static triggerPinOverlay(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 966
    if-nez p0, :cond_0

    .line 967
    return-void

    .line 968
    :cond_0
    new-instance v0, Lcom/google/android/material/appbar/debut$42;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/debut$42;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 974
    return-void
.end method
