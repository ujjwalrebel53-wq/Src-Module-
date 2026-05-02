.class public Lcom/rebel/module/DeviceFakerManager;
.super Ljava/lang/Object;
.source "DeviceFakerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    }
.end annotation


# static fields
.field private static final BACKUP_PATH:Ljava/lang/String; = "/sdcard/Download/src_device_faker_backup.json"

.field private static final BOARDS:[Ljava/lang/String;

.field private static final BRANDS:[Ljava/lang/String;

.field private static final BT_NAMES:[Ljava/lang/String;

.field private static final BUILD_TYPES:[Ljava/lang/String;

.field private static final CARRIERS:[Ljava/lang/String;

.field private static final CARRIER_CODES:[Ljava/lang/String;

.field private static final CONFIG_PATH:Ljava/lang/String; = "/data/local/tmp/src_device_faker.json"

.field private static final DEVICES:[Ljava/lang/String;

.field private static final GL_RENDERERS:[Ljava/lang/String;

.field private static final GL_VENDORS:[Ljava/lang/String;

.field private static final MANUFACTURERS:[Ljava/lang/String;

.field private static final MODELS:[Ljava/lang/String;

.field private static final PRODUCTS:[Ljava/lang/String;

.field private static final SSIDS:[Ljava/lang/String;

.field private static instance:Lcom/rebel/module/DeviceFakerManager;


# instance fields
.field private enabled:Z

.field private final profiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/rebel/module/DeviceFakerManager$DeviceProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 127
    const/16 v0, 0xf

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Samsung"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Xiaomi"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "OnePlus"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "Realme"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "Oppo"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "Vivo"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "Huawei"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "Motorola"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "Nokia"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "Google"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "LG"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "Sony"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "Asus"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "Lenovo"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "HTC"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    sput-object v1, Lcom/rebel/module/DeviceFakerManager;->MANUFACTURERS:[Ljava/lang/String;

    .line 129
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "SM-G991B"

    aput-object v2, v1, v3

    const-string v2, "SM-A525F"

    aput-object v2, v1, v4

    const-string v2, "M2101K6G"

    aput-object v2, v1, v5

    const-string v2, "RMX3085"

    aput-object v2, v1, v6

    const-string v2, "CPH2127"

    aput-object v2, v1, v7

    const-string v2, "V2111"

    aput-object v2, v1, v8

    const-string v2, "IN2011"

    aput-object v2, v1, v9

    const-string v2, "LE2111"

    aput-object v2, v1, v10

    const-string v2, "Pixel 6"

    aput-object v2, v1, v11

    const-string v2, "Pixel 7a"

    aput-object v2, v1, v12

    const-string v2, "Moto G82"

    aput-object v2, v1, v13

    const-string v2, "Nokia G21"

    aput-object v2, v1, v14

    const-string v2, "Xperia 5 III"

    aput-object v2, v1, v15

    const-string v2, "ROG Phone 5"

    aput-object v2, v1, v16

    const-string v2, "A12"

    aput-object v2, v1, v17

    sput-object v1, Lcom/rebel/module/DeviceFakerManager;->MODELS:[Ljava/lang/String;

    .line 131
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "samsung"

    aput-object v2, v1, v3

    const-string v2, "xiaomi"

    aput-object v2, v1, v4

    const-string v2, "oneplus"

    aput-object v2, v1, v5

    const-string v2, "realme"

    aput-object v2, v1, v6

    const-string v2, "oppo"

    aput-object v2, v1, v7

    const-string v2, "vivo"

    aput-object v2, v1, v8

    const-string v2, "huawei"

    aput-object v2, v1, v9

    const-string v2, "motorola"

    aput-object v2, v1, v10

    const-string v2, "nokia"

    aput-object v2, v1, v11

    const-string v2, "google"

    aput-object v2, v1, v12

    const-string v2, "lg"

    aput-object v2, v1, v13

    const-string v2, "sony"

    aput-object v2, v1, v14

    const-string v2, "asus"

    aput-object v2, v1, v15

    const-string v2, "lenovo"

    aput-object v2, v1, v16

    const-string v2, "htc"

    aput-object v2, v1, v17

    sput-object v1, Lcom/rebel/module/DeviceFakerManager;->BRANDS:[Ljava/lang/String;

    .line 133
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "lahaina"

    aput-object v2, v1, v3

    const-string v18, "raven"

    aput-object v18, v1, v4

    const-string v19, "oriole"

    aput-object v19, v1, v5

    const-string v20, "sweet"

    aput-object v20, v1, v6

    const-string v20, "lemon"

    aput-object v20, v1, v7

    const-string v20, "chopin"

    aput-object v20, v1, v8

    const-string v20, "holi"

    aput-object v20, v1, v9

    const-string v21, "cedric"

    aput-object v21, v1, v10

    const-string v21, "potter"

    aput-object v21, v1, v11

    const-string v21, "surya"

    aput-object v21, v1, v12

    const-string v21, "kona"

    aput-object v21, v1, v13

    const-string v22, "taro"

    aput-object v22, v1, v14

    const-string v23, "kalama"

    aput-object v23, v1, v15

    const-string v23, "dubai"

    aput-object v23, v1, v16

    const-string v23, "star"

    aput-object v23, v1, v17

    sput-object v1, Lcom/rebel/module/DeviceFakerManager;->DEVICES:[Ljava/lang/String;

    .line 135
    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v18, v1, v4

    const-string v23, "oriole_beta"

    aput-object v23, v1, v5

    const-string v23, "sweet_global"

    aput-object v23, v1, v6

    const-string v23, "lemon_global"

    aput-object v23, v1, v7

    const-string v23, "chopin_global"

    aput-object v23, v1, v8

    aput-object v20, v1, v9

    const-string v23, "cedric"

    aput-object v23, v1, v10

    const-string v23, "potter"

    aput-object v23, v1, v11

    const-string v23, "surya_global"

    aput-object v23, v1, v12

    aput-object v21, v1, v13

    aput-object v22, v1, v14

    const-string v23, "R5X"

    aput-object v23, v1, v15

    const-string v23, "X660"

    aput-object v23, v1, v16

    const-string v23, "star"

    aput-object v23, v1, v17

    sput-object v1, Lcom/rebel/module/DeviceFakerManager;->PRODUCTS:[Ljava/lang/String;

    .line 137
    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v18, v0, v4

    aput-object v19, v0, v5

    const-string v1, "sweet"

    aput-object v1, v0, v6

    const-string v1, "lemon"

    aput-object v1, v0, v7

    const-string v1, "chopin"

    aput-object v1, v0, v8

    aput-object v20, v0, v9

    const-string v1, "msm8937"

    aput-object v1, v0, v10

    const-string v1, "msm8953"

    aput-object v1, v0, v11

    const-string v1, "sm6150"

    aput-object v1, v0, v12

    aput-object v21, v0, v13

    aput-object v22, v0, v14

    const-string v1, "kalama"

    aput-object v1, v0, v15

    const-string v1, "mt6768"

    aput-object v1, v0, v16

    const-string v1, "mt6853"

    aput-object v1, v0, v17

    sput-object v0, Lcom/rebel/module/DeviceFakerManager;->BOARDS:[Ljava/lang/String;

    .line 139
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "Jio"

    aput-object v1, v0, v3

    const-string v1, "Airtel"

    aput-object v1, v0, v4

    const-string v1, "Vi"

    aput-object v1, v0, v5

    const-string v1, "BSNL"

    aput-object v1, v0, v6

    const-string v1, "Vodafone"

    aput-object v1, v0, v7

    const-string v1, "T-Mobile"

    aput-object v1, v0, v8

    const-string v1, "AT&T"

    aput-object v1, v0, v9

    const-string v1, "Verizon"

    aput-object v1, v0, v10

    const-string v1, "Sprint"

    aput-object v1, v0, v11

    sput-object v0, Lcom/rebel/module/DeviceFakerManager;->CARRIERS:[Ljava/lang/String;

    .line 141
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "40553"

    aput-object v1, v0, v3

    const-string v1, "40445"

    aput-object v1, v0, v4

    const-string v1, "40411"

    aput-object v1, v0, v5

    const-string v1, "40438"

    aput-object v1, v0, v6

    const-string v1, "40488"

    aput-object v1, v0, v7

    const-string v1, "310260"

    aput-object v1, v0, v8

    const-string v1, "310410"

    aput-object v1, v0, v9

    const-string v1, "311480"

    aput-object v1, v0, v10

    const-string v1, "312530"

    aput-object v1, v0, v11

    sput-object v0, Lcom/rebel/module/DeviceFakerManager;->CARRIER_CODES:[Ljava/lang/String;

    .line 143
    new-array v0, v13, [Ljava/lang/String;

    const-string v1, "HOME-WIFI"

    aput-object v1, v0, v3

    const-string v1, "TP-LINK_5G"

    aput-object v1, v0, v4

    const-string v1, "Airtel-WiFi"

    aput-object v1, v0, v5

    const-string v1, "Jio-Fiber"

    aput-object v1, v0, v6

    const-string v1, "NETGEAR88"

    aput-object v1, v0, v7

    const-string v1, "MyWiFi"

    aput-object v1, v0, v8

    const-string v1, "AndroidAP"

    aput-object v1, v0, v9

    const-string v1, "DIRECT-wifi"

    aput-object v1, v0, v10

    const-string v1, "OnePlus_5G"

    aput-object v1, v0, v11

    const-string v1, "ASUS_RT"

    aput-object v1, v0, v12

    sput-object v0, Lcom/rebel/module/DeviceFakerManager;->SSIDS:[Ljava/lang/String;

    .line 145
    new-array v0, v13, [Ljava/lang/String;

    const-string v1, "Galaxy Buds Pro"

    aput-object v1, v0, v3

    const-string v1, "AirPods Pro"

    aput-object v1, v0, v4

    const-string v1, "JBL Flip 5"

    aput-object v1, v0, v5

    const-string v1, "Mi Band 6"

    aput-object v1, v0, v6

    const-string v1, "Noise ColorFit"

    aput-object v1, v0, v7

    const-string v1, "OnePlus Buds Z"

    aput-object v1, v0, v8

    const-string v1, "Sony WH-1000XM4"

    aput-object v1, v0, v9

    const-string v1, "Boat Airdopes"

    aput-object v1, v0, v10

    const-string v1, "Realme Buds Air"

    aput-object v1, v0, v11

    const-string v1, "Fire-Boltt Ring"

    aput-object v1, v0, v12

    sput-object v0, Lcom/rebel/module/DeviceFakerManager;->BT_NAMES:[Ljava/lang/String;

    .line 148
    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "Adreno (TM) 660"

    aput-object v1, v0, v3

    const-string v1, "Adreno (TM) 640"

    aput-object v1, v0, v4

    const-string v1, "Mali-G78 MP24"

    aput-object v1, v0, v5

    const-string v1, "Mali-G77 MC9"

    aput-object v1, v0, v6

    const-string v1, "Adreno (TM) 730"

    aput-object v1, v0, v7

    const-string v1, "Mali-G710 MC10"

    aput-object v1, v0, v8

    const-string v1, "Adreno (TM) 620"

    aput-object v1, v0, v9

    const-string v1, "PowerVR GE8320"

    aput-object v1, v0, v10

    sput-object v0, Lcom/rebel/module/DeviceFakerManager;->GL_RENDERERS:[Ljava/lang/String;

    .line 150
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "Qualcomm"

    aput-object v1, v0, v3

    const-string v1, "ARM"

    aput-object v1, v0, v4

    const-string v1, "Imagination Technologies"

    aput-object v1, v0, v5

    const-string v1, "Qualcomm"

    aput-object v1, v0, v6

    const-string v1, "ARM"

    aput-object v1, v0, v7

    sput-object v0, Lcom/rebel/module/DeviceFakerManager;->GL_VENDORS:[Ljava/lang/String;

    .line 151
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "user"

    aput-object v1, v0, v3

    const-string v1, "userdebug"

    aput-object v1, v0, v4

    sput-object v0, Lcom/rebel/module/DeviceFakerManager;->BUILD_TYPES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rebel/module/DeviceFakerManager;->enabled:Z

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/DeviceFakerManager;->profiles:Ljava/util/Map;

    .line 86
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerManager;->loadFromFile()V

    .line 87
    return-void
.end method

.method private ensureFileExists()V
    .locals 8

    .line 357
    const-string v0, "DeviceFaker"

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/tmp/src_device_faker.json"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    return-void

    .line 363
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "su"

    aput-object v6, v5, v3

    const-string v6, "-c"

    aput-object v6, v5, v2

    const-string v6, "touch /data/local/tmp/src_device_faker.json && chmod 666 /data/local/tmp/src_device_faker.json && chcon u:object_r:shell_data_file:s0 /data/local/tmp/src_device_faker.json"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 366
    .local v4, "p":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 367
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ensureFileExists: created via su, exists="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    nop

    .end local v4    # "p":Ljava/lang/Process;
    goto :goto_0

    .line 369
    :catch_0
    move-exception v4

    .line 370
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ensureFileExists via su failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 375
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 376
    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 377
    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 380
    goto :goto_1

    .line 378
    :catch_1
    move-exception v2

    .line 379
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureFileExists direct also failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/rebel/module/DeviceFakerManager;
    .locals 2

    const-class v0, Lcom/rebel/module/DeviceFakerManager;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/rebel/module/DeviceFakerManager;->instance:Lcom/rebel/module/DeviceFakerManager;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Lcom/rebel/module/DeviceFakerManager;

    invoke-direct {v1}, Lcom/rebel/module/DeviceFakerManager;-><init>()V

    sput-object v1, Lcom/rebel/module/DeviceFakerManager;->instance:Lcom/rebel/module/DeviceFakerManager;

    .line 93
    :cond_0
    sget-object v1, Lcom/rebel/module/DeviceFakerManager;->instance:Lcom/rebel/module/DeviceFakerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 89
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isGloballyEnabled()Z
    .locals 6

    .line 884
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/tmp/src_device_faker.json"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 885
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    .line 886
    return v0

    .line 889
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 892
    .local v2, "jr":Landroid/util/JsonReader;
    nop

    .line 893
    const/4 v3, 0x0

    .line 894
    .local v3, "enabled":Z
    :try_start_2
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    .line 895
    :goto_0
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 896
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 897
    .local v4, "name":Ljava/lang/String;
    const-string v5, "enabled"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 898
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v5

    move v3, v5

    .end local v3    # "enabled":Z
    .local v5, "enabled":Z
    goto :goto_1

    .line 900
    .end local v5    # "enabled":Z
    .restart local v3    # "enabled":Z
    :cond_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->skipValue()V

    .line 902
    .end local v4    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 903
    :cond_2
    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V

    .line 904
    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 905
    return v3

    .line 890
    .end local v2    # "jr":Landroid/util/JsonReader;
    .end local v3    # "enabled":Z
    :catch_0
    move-exception v2

    .line 891
    .local v2, "fnf":Ljava/io/FileNotFoundException;
    return v0

    .line 906
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fnf":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 907
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private static randomAlphaNum(Ljava/util/Random;I)Ljava/lang/String;
    .locals 4
    .param p0, "r"    # Ljava/util/Random;
    .param p1, "len"    # I

    .line 277
    const-string v0, "abcdefghijklmnopqrstuvwxyz0123456789"

    .line 278
    .local v0, "chars":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static randomDigits(Ljava/util/Random;I)Ljava/lang/String;
    .locals 3
    .param p0, "r"    # Ljava/util/Random;
    .param p1, "len"    # I

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 272
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static randomHex(Ljava/util/Random;I)Ljava/lang/String;
    .locals 3
    .param p0, "r"    # Ljava/util/Random;
    .param p1, "len"    # I

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 265
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static randomMac(Ljava/util/Random;)Ljava/lang/String;
    .locals 8
    .param p0, "r"    # Ljava/util/Random;

    .line 285
    nop

    .line 286
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 287
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 285
    const-string v1, "%02x:%02x:%02x:%02x:%02x:%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readProfile(Landroid/util/JsonReader;)Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    .locals 3
    .param p1, "jr"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    new-instance v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    invoke-direct {v0}, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;-><init>()V

    .line 535
    .local v0, "p":Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 536
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "n":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v2, "mediaDrmId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "wifiBssid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "typeAllocationCode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "androidId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_2

    :sswitch_4
    const-string v2, "simOperator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_2

    :sswitch_5
    const-string v2, "buildDisplay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x22

    goto/16 :goto_2

    :sswitch_6
    const-string v2, "subscriberId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_2

    :sswitch_7
    const-string v2, "userAgent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x28

    goto/16 :goto_2

    :sswitch_8
    const-string v2, "buildId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x21

    goto/16 :goto_2

    :sswitch_9
    const-string v2, "hardware"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1e

    goto/16 :goto_2

    :sswitch_a
    const-string v2, "model"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_2

    :sswitch_b
    const-string v2, "iccId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_2

    :sswitch_c
    const-string v2, "gsfId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto/16 :goto_2

    :sswitch_d
    const-string v2, "brand"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1a

    goto/16 :goto_2

    :sswitch_e
    const-string v2, "board"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1d

    goto/16 :goto_2

    :sswitch_f
    const-string v2, "serialNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1f

    goto/16 :goto_2

    :sswitch_10
    const-string v2, "manufacturerCode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto/16 :goto_2

    :sswitch_11
    const-string v2, "meid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto/16 :goto_2

    :sswitch_12
    const-string v2, "imei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_2

    :sswitch_13
    const-string v2, "advertisingId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_2

    :sswitch_14
    const-string v2, "bluetoothName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_2

    :sswitch_15
    const-string v2, "product"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1c

    goto/16 :goto_2

    :sswitch_16
    const-string v2, "bluetoothScanList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto/16 :goto_2

    :sswitch_17
    const-string v2, "wifiMacAddress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_2

    :sswitch_18
    const-string v2, "glRenderer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x26

    goto/16 :goto_2

    :sswitch_19
    const-string v2, "phoneNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_2

    :sswitch_1a
    const-string v2, "glVendor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x27

    goto/16 :goto_2

    :sswitch_1b
    const-string v2, "device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1b

    goto/16 :goto_2

    :sswitch_1c
    const-string v2, "wifiSsid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_2

    :sswitch_1d
    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    goto/16 :goto_2

    :sswitch_1e
    const-string v2, "bluetoothMac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_2

    :sswitch_1f
    const-string v2, "buildType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x23

    goto/16 :goto_2

    :sswitch_20
    const-string v2, "buildTags"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x24

    goto :goto_2

    :sswitch_21
    const-string v2, "simSerialNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto :goto_2

    :sswitch_22
    const-string v2, "wifiScanList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    goto :goto_2

    :sswitch_23
    const-string v2, "networkOperator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto :goto_2

    :sswitch_24
    const-string v2, "networkOperatorName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_2

    :sswitch_25
    const-string v2, "simOperatorName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto :goto_2

    :sswitch_26
    const-string v2, "voicemailNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto :goto_2

    :sswitch_27
    const-string v2, "bootloader"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x25

    goto :goto_2

    :sswitch_28
    const-string v2, "manufacturer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x18

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 663
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_3

    .line 660
    :pswitch_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->userAgent:Ljava/lang/String;

    .line 661
    goto/16 :goto_3

    .line 657
    :pswitch_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->glVendor:Ljava/lang/String;

    .line 658
    goto/16 :goto_3

    .line 654
    :pswitch_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->glRenderer:Ljava/lang/String;

    .line 655
    goto/16 :goto_3

    .line 651
    :pswitch_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bootloader:Ljava/lang/String;

    .line 652
    goto/16 :goto_3

    .line 648
    :pswitch_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildTags:Ljava/lang/String;

    .line 649
    goto/16 :goto_3

    .line 645
    :pswitch_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildType:Ljava/lang/String;

    .line 646
    goto/16 :goto_3

    .line 642
    :pswitch_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildDisplay:Ljava/lang/String;

    .line 643
    goto/16 :goto_3

    .line 639
    :pswitch_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildId:Ljava/lang/String;

    .line 640
    goto/16 :goto_3

    .line 636
    :pswitch_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->fingerprint:Ljava/lang/String;

    .line 637
    goto/16 :goto_3

    .line 633
    :pswitch_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->serialNumber:Ljava/lang/String;

    .line 634
    goto/16 :goto_3

    .line 630
    :pswitch_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->hardware:Ljava/lang/String;

    .line 631
    goto/16 :goto_3

    .line 627
    :pswitch_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->board:Ljava/lang/String;

    .line 628
    goto/16 :goto_3

    .line 624
    :pswitch_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->product:Ljava/lang/String;

    .line 625
    goto/16 :goto_3

    .line 621
    :pswitch_d
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->device:Ljava/lang/String;

    .line 622
    goto/16 :goto_3

    .line 618
    :pswitch_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->brand:Ljava/lang/String;

    .line 619
    goto/16 :goto_3

    .line 615
    :pswitch_f
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->model:Ljava/lang/String;

    .line 616
    goto/16 :goto_3

    .line 612
    :pswitch_10
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->manufacturer:Ljava/lang/String;

    .line 613
    goto/16 :goto_3

    .line 609
    :pswitch_11
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bluetoothScanList:Ljava/lang/String;

    .line 610
    goto/16 :goto_3

    .line 606
    :pswitch_12
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bluetoothName:Ljava/lang/String;

    .line 607
    goto/16 :goto_3

    .line 603
    :pswitch_13
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bluetoothMac:Ljava/lang/String;

    .line 604
    goto/16 :goto_3

    .line 600
    :pswitch_14
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiScanList:Ljava/lang/String;

    .line 601
    goto/16 :goto_3

    .line 597
    :pswitch_15
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiSsid:Ljava/lang/String;

    .line 598
    goto/16 :goto_3

    .line 594
    :pswitch_16
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiBssid:Ljava/lang/String;

    .line 595
    goto/16 :goto_3

    .line 591
    :pswitch_17
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiMacAddress:Ljava/lang/String;

    .line 592
    goto/16 :goto_3

    .line 588
    :pswitch_18
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->iccId:Ljava/lang/String;

    .line 589
    goto/16 :goto_3

    .line 585
    :pswitch_19
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->subscriberId:Ljava/lang/String;

    .line 586
    goto/16 :goto_3

    .line 582
    :pswitch_1a
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->simSerialNumber:Ljava/lang/String;

    .line 583
    goto :goto_3

    .line 579
    :pswitch_1b
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->simOperatorName:Ljava/lang/String;

    .line 580
    goto :goto_3

    .line 576
    :pswitch_1c
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->simOperator:Ljava/lang/String;

    .line 577
    goto :goto_3

    .line 573
    :pswitch_1d
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->networkOperatorName:Ljava/lang/String;

    .line 574
    goto :goto_3

    .line 570
    :pswitch_1e
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->networkOperator:Ljava/lang/String;

    .line 571
    goto :goto_3

    .line 567
    :pswitch_1f
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->voicemailNumber:Ljava/lang/String;

    .line 568
    goto :goto_3

    .line 564
    :pswitch_20
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->phoneNumber:Ljava/lang/String;

    .line 565
    goto :goto_3

    .line 561
    :pswitch_21
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->typeAllocationCode:Ljava/lang/String;

    .line 562
    goto :goto_3

    .line 558
    :pswitch_22
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->manufacturerCode:Ljava/lang/String;

    .line 559
    goto :goto_3

    .line 555
    :pswitch_23
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->meid:Ljava/lang/String;

    .line 556
    goto :goto_3

    .line 552
    :pswitch_24
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->imei:Ljava/lang/String;

    .line 553
    goto :goto_3

    .line 549
    :pswitch_25
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->mediaDrmId:Ljava/lang/String;

    .line 550
    goto :goto_3

    .line 546
    :pswitch_26
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->advertisingId:Ljava/lang/String;

    .line 547
    goto :goto_3

    .line 543
    :pswitch_27
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->gsfId:Ljava/lang/String;

    .line 544
    goto :goto_3

    .line 540
    :pswitch_28
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    .line 541
    nop

    .line 666
    .end local v1    # "n":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 667
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 668
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7561dc2f -> :sswitch_28
        -0x70ac127b -> :sswitch_27
        -0x709a0d6e -> :sswitch_26
        -0x6ce0543a -> :sswitch_25
        -0x6bfd0163 -> :sswitch_24
        -0x69c8270e -> :sswitch_23
        -0x66876d10 -> :sswitch_22
        -0x61e3fb2c -> :sswitch_21
        -0x53817859 -> :sswitch_20
        -0x53811d38 -> :sswitch_1f
        -0x5319bc3f -> :sswitch_1e
        -0x5203171c -> :sswitch_1d
        -0x4fe86bd0 -> :sswitch_1c
        -0x4f94e1aa -> :sswitch_1b
        -0x4ac26173 -> :sswitch_1a
        -0x471b45a9 -> :sswitch_19
        -0x43390338 -> :sswitch_18
        -0x18aac366 -> :sswitch_17
        -0x13410277 -> :sswitch_16
        -0x12723311 -> :sswitch_15
        -0x101d55a7 -> :sswitch_14
        -0x76958a1 -> :sswitch_13
        0x3160c8 -> :sswitch_12
        0x3314b3 -> :sswitch_11
        0x475f55e -> :sswitch_10
        0x4fe7e5d -> :sswitch_f
        0x598eee6 -> :sswitch_e
        0x59a4b87 -> :sswitch_d
        0x5e143b5 -> :sswitch_c
        0x5f62184 -> :sswitch_b
        0x633fb29 -> :sswitch_a
        0x6f7e5e8 -> :sswitch_9
        0xdc3ec29 -> :sswitch_8
        0x12900dfa -> :sswitch_7
        0x138a5ba3 -> :sswitch_6
        0x18587274 -> :sswitch_5
        0x1c03829b -> :sswitch_4
        0x43745fea -> :sswitch_3
        0x4adc30c7 -> :sswitch_2
        0x51eb88c8 -> :sswitch_1
        0x72229196 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readProfileForPackage(Ljava/lang/String;)Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    .locals 12
    .param p0, "packageName"    # Ljava/lang/String;

    .line 688
    const-string v0, "/data/local/tmp/src_device_faker.json"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 691
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 693
    .local v3, "jr":Landroid/util/JsonReader;
    :try_start_1
    new-instance v4, Landroid/util/JsonReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 708
    .end local v3    # "jr":Landroid/util/JsonReader;
    .local v4, "jr":Landroid/util/JsonReader;
    goto :goto_0

    .line 694
    .end local v4    # "jr":Landroid/util/JsonReader;
    .restart local v3    # "jr":Landroid/util/JsonReader;
    :catch_0
    move-exception v4

    .line 697
    .local v4, "e1":Ljava/lang/Exception;
    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "su"

    aput-object v10, v9, v7

    const-string v10, "-c"

    aput-object v10, v9, v5

    const-string v10, "cat /data/local/tmp/src_device_faker.json"

    aput-object v10, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 698
    .local v8, "p":Ljava/lang/Process;
    new-instance v9, Landroid/util/JsonReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 707
    .end local v3    # "jr":Landroid/util/JsonReader;
    .end local v8    # "p":Ljava/lang/Process;
    .local v9, "jr":Landroid/util/JsonReader;
    move-object v4, v9

    goto :goto_0

    .line 699
    .end local v9    # "jr":Landroid/util/JsonReader;
    .restart local v3    # "jr":Landroid/util/JsonReader;
    :catch_1
    move-exception v8

    .line 702
    .local v8, "e2":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/String;

    const-string v10, "cat"

    aput-object v10, v6, v7

    aput-object v0, v6, v5

    invoke-virtual {v9, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 703
    .local v0, "p":Ljava/lang/Process;
    new-instance v5, Landroid/util/JsonReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 706
    .end local v0    # "p":Ljava/lang/Process;
    .end local v3    # "jr":Landroid/util/JsonReader;
    .local v5, "jr":Landroid/util/JsonReader;
    move-object v4, v5

    .line 710
    .end local v5    # "jr":Landroid/util/JsonReader;
    .end local v8    # "e2":Ljava/lang/Exception;
    .local v4, "jr":Landroid/util/JsonReader;
    :goto_0
    const/4 v0, 0x0

    .line 711
    .local v0, "globalEnabled":Z
    const/4 v3, 0x0

    .line 712
    .local v3, "result":Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    :try_start_4
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginObject()V

    .line 713
    :goto_1
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 714
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 715
    .local v5, "name":Ljava/lang/String;
    const-string v6, "enabled"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 716
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v6

    move v0, v6

    .end local v0    # "globalEnabled":Z
    .local v6, "globalEnabled":Z
    goto :goto_4

    .line 717
    .end local v6    # "globalEnabled":Z
    .restart local v0    # "globalEnabled":Z
    :cond_0
    const-string v6, "profiles"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 718
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginObject()V

    .line 719
    :goto_2
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 720
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    .line 721
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 722
    invoke-static {v4}, Lcom/rebel/module/DeviceFakerManager;->readProfileStatic(Landroid/util/JsonReader;)Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    move-result-object v7

    move-object v3, v7

    .end local v3    # "result":Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    .local v7, "result":Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    goto :goto_3

    .line 724
    .end local v7    # "result":Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    .restart local v3    # "result":Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    :cond_1
    invoke-virtual {v4}, Landroid/util/JsonReader;->skipValue()V

    .line 726
    .end local v6    # "pkg":Ljava/lang/String;
    :goto_3
    goto :goto_2

    .line 727
    :cond_2
    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V

    goto :goto_4

    .line 729
    :cond_3
    invoke-virtual {v4}, Landroid/util/JsonReader;->skipValue()V

    .line 731
    .end local v5    # "name":Ljava/lang/String;
    :goto_4
    goto :goto_1

    .line 732
    :cond_4
    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V

    .line 733
    invoke-virtual {v4}, Landroid/util/JsonReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 734
    if-eqz v0, :cond_5

    move-object v1, v3

    :cond_5
    return-object v1

    .line 704
    .end local v0    # "globalEnabled":Z
    .local v3, "jr":Landroid/util/JsonReader;
    .local v4, "e1":Ljava/lang/Exception;
    .restart local v8    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 705
    .local v0, "e3":Ljava/lang/Exception;
    return-object v1

    .line 735
    .end local v0    # "e3":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "jr":Landroid/util/JsonReader;
    .end local v4    # "e1":Ljava/lang/Exception;
    .end local v8    # "e2":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private readProfileInstance(Landroid/util/JsonReader;)Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    .locals 1
    .param p1, "jr"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 879
    invoke-static {p1}, Lcom/rebel/module/DeviceFakerManager;->readProfileStatic(Landroid/util/JsonReader;)Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    move-result-object v0

    return-object v0
.end method

.method private static readProfileStatic(Landroid/util/JsonReader;)Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    .locals 3
    .param p0, "jr"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 741
    new-instance v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    invoke-direct {v0}, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;-><init>()V

    .line 742
    .local v0, "p":Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 743
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 744
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, "n":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v2, "mediaDrmId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "wifiBssid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "typeAllocationCode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "androidId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_2

    :sswitch_4
    const-string v2, "simOperator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_2

    :sswitch_5
    const-string v2, "buildDisplay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x22

    goto/16 :goto_2

    :sswitch_6
    const-string v2, "subscriberId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_2

    :sswitch_7
    const-string v2, "userAgent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x28

    goto/16 :goto_2

    :sswitch_8
    const-string v2, "buildId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x21

    goto/16 :goto_2

    :sswitch_9
    const-string v2, "hardware"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1e

    goto/16 :goto_2

    :sswitch_a
    const-string v2, "model"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_2

    :sswitch_b
    const-string v2, "iccId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_2

    :sswitch_c
    const-string v2, "gsfId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto/16 :goto_2

    :sswitch_d
    const-string v2, "brand"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1a

    goto/16 :goto_2

    :sswitch_e
    const-string v2, "board"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1d

    goto/16 :goto_2

    :sswitch_f
    const-string v2, "serialNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1f

    goto/16 :goto_2

    :sswitch_10
    const-string v2, "manufacturerCode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto/16 :goto_2

    :sswitch_11
    const-string v2, "meid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto/16 :goto_2

    :sswitch_12
    const-string v2, "imei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_2

    :sswitch_13
    const-string v2, "advertisingId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_2

    :sswitch_14
    const-string v2, "bluetoothName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_2

    :sswitch_15
    const-string v2, "product"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1c

    goto/16 :goto_2

    :sswitch_16
    const-string v2, "bluetoothScanList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto/16 :goto_2

    :sswitch_17
    const-string v2, "wifiMacAddress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_2

    :sswitch_18
    const-string v2, "glRenderer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x26

    goto/16 :goto_2

    :sswitch_19
    const-string v2, "phoneNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_2

    :sswitch_1a
    const-string v2, "glVendor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x27

    goto/16 :goto_2

    :sswitch_1b
    const-string v2, "device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1b

    goto/16 :goto_2

    :sswitch_1c
    const-string v2, "wifiSsid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_2

    :sswitch_1d
    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    goto/16 :goto_2

    :sswitch_1e
    const-string v2, "bluetoothMac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_2

    :sswitch_1f
    const-string v2, "buildType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x23

    goto/16 :goto_2

    :sswitch_20
    const-string v2, "buildTags"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x24

    goto :goto_2

    :sswitch_21
    const-string v2, "simSerialNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto :goto_2

    :sswitch_22
    const-string v2, "wifiScanList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    goto :goto_2

    :sswitch_23
    const-string v2, "networkOperator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto :goto_2

    :sswitch_24
    const-string v2, "networkOperatorName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_2

    :sswitch_25
    const-string v2, "simOperatorName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto :goto_2

    :sswitch_26
    const-string v2, "voicemailNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto :goto_2

    :sswitch_27
    const-string v2, "bootloader"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x25

    goto :goto_2

    :sswitch_28
    const-string v2, "manufacturer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x18

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 870
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_3

    .line 867
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->userAgent:Ljava/lang/String;

    .line 868
    goto/16 :goto_3

    .line 864
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->glVendor:Ljava/lang/String;

    .line 865
    goto/16 :goto_3

    .line 861
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->glRenderer:Ljava/lang/String;

    .line 862
    goto/16 :goto_3

    .line 858
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bootloader:Ljava/lang/String;

    .line 859
    goto/16 :goto_3

    .line 855
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildTags:Ljava/lang/String;

    .line 856
    goto/16 :goto_3

    .line 852
    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildType:Ljava/lang/String;

    .line 853
    goto/16 :goto_3

    .line 849
    :pswitch_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildDisplay:Ljava/lang/String;

    .line 850
    goto/16 :goto_3

    .line 846
    :pswitch_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildId:Ljava/lang/String;

    .line 847
    goto/16 :goto_3

    .line 843
    :pswitch_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->fingerprint:Ljava/lang/String;

    .line 844
    goto/16 :goto_3

    .line 840
    :pswitch_9
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->serialNumber:Ljava/lang/String;

    .line 841
    goto/16 :goto_3

    .line 837
    :pswitch_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->hardware:Ljava/lang/String;

    .line 838
    goto/16 :goto_3

    .line 834
    :pswitch_b
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->board:Ljava/lang/String;

    .line 835
    goto/16 :goto_3

    .line 831
    :pswitch_c
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->product:Ljava/lang/String;

    .line 832
    goto/16 :goto_3

    .line 828
    :pswitch_d
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->device:Ljava/lang/String;

    .line 829
    goto/16 :goto_3

    .line 825
    :pswitch_e
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->brand:Ljava/lang/String;

    .line 826
    goto/16 :goto_3

    .line 822
    :pswitch_f
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->model:Ljava/lang/String;

    .line 823
    goto/16 :goto_3

    .line 819
    :pswitch_10
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->manufacturer:Ljava/lang/String;

    .line 820
    goto/16 :goto_3

    .line 816
    :pswitch_11
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bluetoothScanList:Ljava/lang/String;

    .line 817
    goto/16 :goto_3

    .line 813
    :pswitch_12
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bluetoothName:Ljava/lang/String;

    .line 814
    goto/16 :goto_3

    .line 810
    :pswitch_13
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bluetoothMac:Ljava/lang/String;

    .line 811
    goto/16 :goto_3

    .line 807
    :pswitch_14
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiScanList:Ljava/lang/String;

    .line 808
    goto/16 :goto_3

    .line 804
    :pswitch_15
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiSsid:Ljava/lang/String;

    .line 805
    goto/16 :goto_3

    .line 801
    :pswitch_16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiBssid:Ljava/lang/String;

    .line 802
    goto/16 :goto_3

    .line 798
    :pswitch_17
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiMacAddress:Ljava/lang/String;

    .line 799
    goto/16 :goto_3

    .line 795
    :pswitch_18
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->iccId:Ljava/lang/String;

    .line 796
    goto/16 :goto_3

    .line 792
    :pswitch_19
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->subscriberId:Ljava/lang/String;

    .line 793
    goto/16 :goto_3

    .line 789
    :pswitch_1a
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->simSerialNumber:Ljava/lang/String;

    .line 790
    goto :goto_3

    .line 786
    :pswitch_1b
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->simOperatorName:Ljava/lang/String;

    .line 787
    goto :goto_3

    .line 783
    :pswitch_1c
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->simOperator:Ljava/lang/String;

    .line 784
    goto :goto_3

    .line 780
    :pswitch_1d
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->networkOperatorName:Ljava/lang/String;

    .line 781
    goto :goto_3

    .line 777
    :pswitch_1e
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->networkOperator:Ljava/lang/String;

    .line 778
    goto :goto_3

    .line 774
    :pswitch_1f
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->voicemailNumber:Ljava/lang/String;

    .line 775
    goto :goto_3

    .line 771
    :pswitch_20
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->phoneNumber:Ljava/lang/String;

    .line 772
    goto :goto_3

    .line 768
    :pswitch_21
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->typeAllocationCode:Ljava/lang/String;

    .line 769
    goto :goto_3

    .line 765
    :pswitch_22
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->manufacturerCode:Ljava/lang/String;

    .line 766
    goto :goto_3

    .line 762
    :pswitch_23
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->meid:Ljava/lang/String;

    .line 763
    goto :goto_3

    .line 759
    :pswitch_24
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->imei:Ljava/lang/String;

    .line 760
    goto :goto_3

    .line 756
    :pswitch_25
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->mediaDrmId:Ljava/lang/String;

    .line 757
    goto :goto_3

    .line 753
    :pswitch_26
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->advertisingId:Ljava/lang/String;

    .line 754
    goto :goto_3

    .line 750
    :pswitch_27
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->gsfId:Ljava/lang/String;

    .line 751
    goto :goto_3

    .line 747
    :pswitch_28
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    .line 748
    nop

    .line 873
    .end local v1    # "n":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 874
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 875
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7561dc2f -> :sswitch_28
        -0x70ac127b -> :sswitch_27
        -0x709a0d6e -> :sswitch_26
        -0x6ce0543a -> :sswitch_25
        -0x6bfd0163 -> :sswitch_24
        -0x69c8270e -> :sswitch_23
        -0x66876d10 -> :sswitch_22
        -0x61e3fb2c -> :sswitch_21
        -0x53817859 -> :sswitch_20
        -0x53811d38 -> :sswitch_1f
        -0x5319bc3f -> :sswitch_1e
        -0x5203171c -> :sswitch_1d
        -0x4fe86bd0 -> :sswitch_1c
        -0x4f94e1aa -> :sswitch_1b
        -0x4ac26173 -> :sswitch_1a
        -0x471b45a9 -> :sswitch_19
        -0x43390338 -> :sswitch_18
        -0x18aac366 -> :sswitch_17
        -0x13410277 -> :sswitch_16
        -0x12723311 -> :sswitch_15
        -0x101d55a7 -> :sswitch_14
        -0x76958a1 -> :sswitch_13
        0x3160c8 -> :sswitch_12
        0x3314b3 -> :sswitch_11
        0x475f55e -> :sswitch_10
        0x4fe7e5d -> :sswitch_f
        0x598eee6 -> :sswitch_e
        0x59a4b87 -> :sswitch_d
        0x5e143b5 -> :sswitch_c
        0x5f62184 -> :sswitch_b
        0x633fb29 -> :sswitch_a
        0x6f7e5e8 -> :sswitch_9
        0xdc3ec29 -> :sswitch_8
        0x12900dfa -> :sswitch_7
        0x138a5ba3 -> :sswitch_6
        0x18587274 -> :sswitch_5
        0x1c03829b -> :sswitch_4
        0x43745fea -> :sswitch_3
        0x4adc30c7 -> :sswitch_2
        0x51eb88c8 -> :sswitch_1
        0x72229196 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized resetInstance()V
    .locals 2

    const-class v0, Lcom/rebel/module/DeviceFakerManager;

    monitor-enter v0

    .line 97
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/rebel/module/DeviceFakerManager;->instance:Lcom/rebel/module/DeviceFakerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit v0

    return-void

    .line 96
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private runAsRoot(Ljava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 677
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "-c"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 678
    .local v0, "p":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 679
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .end local v0    # "p":Ljava/lang/Process;
    goto :goto_0

    .line 680
    :catch_0
    move-exception v0

    .line 682
    :goto_0
    return-void
.end method

.method private static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 672
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private setFilePermissions()V
    .locals 6

    .line 386
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "su"

    aput-object v4, v3, v1

    const-string v4, "-c"

    aput-object v4, v3, v0

    const-string v4, "chmod 666 /data/local/tmp/src_device_faker.json && chcon u:object_r:shell_data_file:s0 /data/local/tmp/src_device_faker.json"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 389
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 390
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v2    # "p":Ljava/lang/Process;
    goto :goto_0

    .line 391
    :catch_0
    move-exception v2

    .line 394
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/local/tmp/src_device_faker.json"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 396
    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 398
    nop

    .end local v2    # "f":Ljava/io/File;
    goto :goto_1

    .line 397
    :catch_1
    move-exception v0

    .line 399
    :goto_1
    return-void
.end method

.method private writeProfile(Landroid/util/JsonWriter;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V
    .locals 2
    .param p1, "jw"    # Landroid/util/JsonWriter;
    .param p2, "p"    # Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 489
    const-string v0, "androidId"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 490
    const-string v0, "gsfId"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->gsfId:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 491
    const-string v0, "advertisingId"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->advertisingId:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 492
    const-string v0, "mediaDrmId"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->mediaDrmId:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 493
    const-string v0, "imei"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->imei:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 494
    const-string v0, "meid"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->meid:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 495
    const-string v0, "manufacturerCode"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->manufacturerCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 496
    const-string v0, "typeAllocationCode"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->typeAllocationCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 497
    const-string v0, "phoneNumber"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 498
    const-string v0, "voicemailNumber"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->voicemailNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 499
    const-string v0, "networkOperator"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->networkOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 500
    const-string v0, "networkOperatorName"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->networkOperatorName:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 501
    const-string v0, "simOperator"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->simOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 502
    const-string v0, "simOperatorName"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->simOperatorName:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 503
    const-string v0, "simSerialNumber"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->simSerialNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 504
    const-string v0, "subscriberId"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->subscriberId:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 505
    const-string v0, "iccId"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->iccId:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 506
    const-string v0, "wifiMacAddress"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiMacAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 507
    const-string v0, "wifiBssid"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiBssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 508
    const-string v0, "wifiSsid"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiSsid:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 509
    const-string v0, "wifiScanList"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiScanList:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 510
    const-string v0, "bluetoothMac"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bluetoothMac:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 511
    const-string v0, "bluetoothName"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bluetoothName:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 512
    const-string v0, "bluetoothScanList"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bluetoothScanList:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 513
    const-string v0, "manufacturer"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->manufacturer:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 514
    const-string v0, "model"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->model:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 515
    const-string v0, "brand"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->brand:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 516
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->device:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 517
    const-string v0, "product"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->product:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 518
    const-string v0, "board"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->board:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 519
    const-string v0, "hardware"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->hardware:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 520
    const-string v0, "serialNumber"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->serialNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 521
    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->fingerprint:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 522
    const-string v0, "buildId"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildId:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 523
    const-string v0, "buildDisplay"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildDisplay:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 524
    const-string v0, "buildType"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildType:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 525
    const-string v0, "buildTags"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildTags:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 526
    const-string v0, "bootloader"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bootloader:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 527
    const-string v0, "glRenderer"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->glRenderer:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 528
    const-string v0, "glVendor"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->glVendor:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 529
    const-string v0, "userAgent"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->userAgent:Ljava/lang/String;

    invoke-static {v1}, Lcom/rebel/module/DeviceFakerManager;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 530
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 531
    return-void
.end method


# virtual methods
.method public backupToFile()Z
    .locals 8

    .line 434
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/tmp/src_device_faker.json"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, "src":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/Download/src_device_faker_backup.json"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    .local v2, "dst":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 437
    return v0

    .line 439
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 440
    .local v3, "br":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 443
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 446
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 447
    .local v5, "fw":Ljava/io/FileWriter;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    const/4 v0, 0x1

    return v0

    .line 450
    .end local v1    # "src":Ljava/io/File;
    .end local v2    # "dst":Ljava/io/File;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public clearAll()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerManager;->profiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 257
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerManager;->saveToFile()V

    .line 258
    return-void
.end method

.method public clearProfile(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerManager;->profiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerManager;->saveToFile()V

    .line 253
    return-void
.end method

.method public generateRandomProfile(Ljava/lang/String;)Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 155
    .local v0, "r":Ljava/util/Random;
    new-instance v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    invoke-direct {v1}, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;-><init>()V

    .line 158
    .local v1, "p":Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    const/16 v2, 0x10

    invoke-static {v0, v2}, Lcom/rebel/module/DeviceFakerManager;->randomHex(Ljava/util/Random;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    .line 159
    invoke-static {v0, v2}, Lcom/rebel/module/DeviceFakerManager;->randomHex(Ljava/util/Random;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->gsfId:Ljava/lang/String;

    .line 160
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->advertisingId:Ljava/lang/String;

    .line 161
    const/16 v3, 0x20

    invoke-static {v0, v3}, Lcom/rebel/module/DeviceFakerManager;->randomHex(Ljava/util/Random;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->mediaDrmId:Ljava/lang/String;

    .line 164
    const/16 v3, 0x8

    invoke-static {v0, v3}, Lcom/rebel/module/DeviceFakerManager;->randomDigits(Ljava/util/Random;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->typeAllocationCode:Ljava/lang/String;

    .line 165
    iget-object v3, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->typeAllocationCode:Ljava/lang/String;

    iput-object v3, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->manufacturerCode:Ljava/lang/String;

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->typeAllocationCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v0, v4}, Lcom/rebel/module/DeviceFakerManager;->randomDigits(Ljava/util/Random;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/rebel/module/DeviceFakerManager;->randomDigits(Ljava/util/Random;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->imei:Ljava/lang/String;

    .line 167
    const/16 v3, 0xe

    invoke-static {v0, v3}, Lcom/rebel/module/DeviceFakerManager;->randomHex(Ljava/util/Random;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->meid:Ljava/lang/String;

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+91"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    invoke-static {v0, v4}, Lcom/rebel/module/DeviceFakerManager;->randomDigits(Ljava/util/Random;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->phoneNumber:Ljava/lang/String;

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lcom/rebel/module/DeviceFakerManager;->randomDigits(Ljava/util/Random;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->voicemailNumber:Ljava/lang/String;

    .line 174
    sget-object v3, Lcom/rebel/module/DeviceFakerManager;->CARRIER_CODES:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 175
    .local v3, "ci":I
    sget-object v4, Lcom/rebel/module/DeviceFakerManager;->CARRIER_CODES:[Ljava/lang/String;

    aget-object v4, v4, v3

    iput-object v4, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->networkOperator:Ljava/lang/String;

    .line 176
    sget-object v4, Lcom/rebel/module/DeviceFakerManager;->CARRIERS:[Ljava/lang/String;

    aget-object v4, v4, v3

    iput-object v4, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->networkOperatorName:Ljava/lang/String;

    .line 177
    sget-object v4, Lcom/rebel/module/DeviceFakerManager;->CARRIER_CODES:[Ljava/lang/String;

    aget-object v4, v4, v3

    iput-object v4, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->simOperator:Ljava/lang/String;

    .line 178
    sget-object v4, Lcom/rebel/module/DeviceFakerManager;->CARRIERS:[Ljava/lang/String;

    aget-object v4, v4, v3

    iput-object v4, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->simOperatorName:Ljava/lang/String;

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "8991"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v2}, Lcom/rebel/module/DeviceFakerManager;->randomDigits(Ljava/util/Random;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->simSerialNumber:Ljava/lang/String;

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "404"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0xc

    invoke-static {v0, v7}, Lcom/rebel/module/DeviceFakerManager;->randomDigits(Ljava/util/Random;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->subscriberId:Ljava/lang/String;

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v2}, Lcom/rebel/module/DeviceFakerManager;->randomDigits(Ljava/util/Random;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->iccId:Ljava/lang/String;

    .line 184
    invoke-static {v0}, Lcom/rebel/module/DeviceFakerManager;->randomMac(Ljava/util/Random;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiMacAddress:Ljava/lang/String;

    .line 185
    invoke-static {v0}, Lcom/rebel/module/DeviceFakerManager;->randomMac(Ljava/util/Random;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiBssid:Ljava/lang/String;

    .line 186
    sget-object v2, Lcom/rebel/module/DeviceFakerManager;->SSIDS:[Ljava/lang/String;

    sget-object v4, Lcom/rebel/module/DeviceFakerManager;->SSIDS:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-object v2, v2, v4

    iput-object v2, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiSsid:Ljava/lang/String;

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .local v2, "wsl":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const-string v7, "}"

    const/16 v8, 0x32

    const-string v9, ","

    const/4 v10, 0x5

    if-ge v5, v10, :cond_2

    .line 189
    if-lez v5, :cond_0

    .line 190
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_0
    const-string v9, "{\"ssid\":\""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Lcom/rebel/module/DeviceFakerManager;->SSIDS:[Ljava/lang/String;

    sget-object v12, Lcom/rebel/module/DeviceFakerManager;->SSIDS:[Ljava/lang/String;

    array-length v12, v12

    invoke-virtual {v0, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 192
    const-string v11, "\",\"bssid\":\""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Lcom/rebel/module/DeviceFakerManager;->randomMac(Ljava/util/Random;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 193
    const-string v11, "\",\"level\":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v11, 0x3c

    invoke-virtual {v0, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    const/16 v12, 0x1e

    add-int/2addr v11, v12

    neg-int v11, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 194
    const-string v11, ",\"freq\":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    mul-int/2addr v8, v10

    add-int/lit16 v8, v8, 0x96c

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    mul-int/2addr v8, v10

    add-int/lit16 v8, v8, 0x143c

    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 195
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 197
    .end local v5    # "i":I
    :cond_2
    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiScanList:Ljava/lang/String;

    .line 201
    invoke-static {v0}, Lcom/rebel/module/DeviceFakerManager;->randomMac(Ljava/util/Random;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bluetoothMac:Ljava/lang/String;

    .line 202
    sget-object v11, Lcom/rebel/module/DeviceFakerManager;->DEVICES:[Ljava/lang/String;

    sget-object v12, Lcom/rebel/module/DeviceFakerManager;->DEVICES:[Ljava/lang/String;

    array-length v12, v12

    invoke-virtual {v0, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    aget-object v11, v11, v12

    iput-object v11, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bluetoothName:Ljava/lang/String;

    .line 203
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .local v11, "bsl":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v10, :cond_4

    .line 205
    if-lez v4, :cond_3

    .line 206
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_3
    const-string v12, "{\"name\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/rebel/module/DeviceFakerManager;->BT_NAMES:[Ljava/lang/String;

    sget-object v14, Lcom/rebel/module/DeviceFakerManager;->BT_NAMES:[Ljava/lang/String;

    array-length v14, v14

    invoke-virtual {v0, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 208
    const-string v13, "\",\"address\":\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v0}, Lcom/rebel/module/DeviceFakerManager;->randomMac(Ljava/util/Random;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 209
    const-string v13, "\",\"rssi\":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x28

    neg-int v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 210
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 212
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bluetoothScanList:Ljava/lang/String;

    .line 216
    sget-object v4, Lcom/rebel/module/DeviceFakerManager;->MANUFACTURERS:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 217
    .local v4, "mi":I
    sget-object v5, Lcom/rebel/module/DeviceFakerManager;->MANUFACTURERS:[Ljava/lang/String;

    aget-object v5, v5, v4

    iput-object v5, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->manufacturer:Ljava/lang/String;

    .line 218
    sget-object v5, Lcom/rebel/module/DeviceFakerManager;->MODELS:[Ljava/lang/String;

    sget-object v7, Lcom/rebel/module/DeviceFakerManager;->MODELS:[Ljava/lang/String;

    array-length v7, v7

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aget-object v5, v5, v7

    iput-object v5, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->model:Ljava/lang/String;

    .line 219
    sget-object v5, Lcom/rebel/module/DeviceFakerManager;->BRANDS:[Ljava/lang/String;

    aget-object v5, v5, v4

    iput-object v5, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->brand:Ljava/lang/String;

    .line 220
    sget-object v5, Lcom/rebel/module/DeviceFakerManager;->DEVICES:[Ljava/lang/String;

    sget-object v7, Lcom/rebel/module/DeviceFakerManager;->DEVICES:[Ljava/lang/String;

    array-length v7, v7

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aget-object v5, v5, v7

    iput-object v5, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->device:Ljava/lang/String;

    .line 221
    sget-object v5, Lcom/rebel/module/DeviceFakerManager;->PRODUCTS:[Ljava/lang/String;

    sget-object v7, Lcom/rebel/module/DeviceFakerManager;->PRODUCTS:[Ljava/lang/String;

    array-length v7, v7

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aget-object v5, v5, v7

    iput-object v5, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->product:Ljava/lang/String;

    .line 222
    sget-object v5, Lcom/rebel/module/DeviceFakerManager;->BOARDS:[Ljava/lang/String;

    sget-object v7, Lcom/rebel/module/DeviceFakerManager;->BOARDS:[Ljava/lang/String;

    array-length v7, v7

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aget-object v5, v5, v7

    iput-object v5, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->board:Ljava/lang/String;

    .line 223
    iget-object v5, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->board:Ljava/lang/String;

    iput-object v5, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->hardware:Ljava/lang/String;

    .line 224
    const/16 v5, 0xb

    invoke-static {v0, v5}, Lcom/rebel/module/DeviceFakerManager;->randomAlphaNum(Ljava/util/Random;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->serialNumber:Ljava/lang/String;

    .line 225
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TP1A."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x7530

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    const v10, 0x30da5

    add-int/2addr v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v12, 0x3e7

    invoke-virtual {v0, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "%03d"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildId:Ljava/lang/String;

    .line 226
    iget-object v7, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildId:Ljava/lang/String;

    iput-object v7, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildDisplay:Ljava/lang/String;

    .line 227
    sget-object v7, Lcom/rebel/module/DeviceFakerManager;->BUILD_TYPES:[Ljava/lang/String;

    sget-object v13, Lcom/rebel/module/DeviceFakerManager;->BUILD_TYPES:[Ljava/lang/String;

    array-length v13, v13

    invoke-virtual {v0, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    aget-object v7, v7, v13

    iput-object v7, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildType:Ljava/lang/String;

    .line 228
    const-string v7, "release-keys"

    iput-object v7, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildTags:Ljava/lang/String;

    .line 229
    const-string v7, "unknown"

    iput-object v7, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bootloader:Ljava/lang/String;

    .line 230
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->brand:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, "/"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v15, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->product:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v15, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->device:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, ":13/TP1A."

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 231
    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/2addr v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v14, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 232
    const v8, 0x2dc6c0

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    const v10, 0x6acfc0

    add-int/2addr v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/release-keys"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->fingerprint:Ljava/lang/String;

    .line 235
    sget-object v7, Lcom/rebel/module/DeviceFakerManager;->GL_RENDERERS:[Ljava/lang/String;

    sget-object v8, Lcom/rebel/module/DeviceFakerManager;->GL_RENDERERS:[Ljava/lang/String;

    array-length v8, v8

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    aget-object v7, v7, v8

    iput-object v7, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->glRenderer:Ljava/lang/String;

    .line 236
    sget-object v7, Lcom/rebel/module/DeviceFakerManager;->GL_VENDORS:[Ljava/lang/String;

    sget-object v8, Lcom/rebel/module/DeviceFakerManager;->GL_VENDORS:[Ljava/lang/String;

    array-length v8, v8

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    aget-object v7, v7, v8

    iput-object v7, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->glVendor:Ljava/lang/String;

    .line 239
    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v5

    .line 240
    .local v6, "uaAndroid":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mozilla/5.0 (Linux; Android "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->model:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " Build/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->buildId:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") AppleWebKit/537.36 (KHTML, like Gecko) Chrome/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 242
    const/16 v7, 0x14

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x64

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".0."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x7d0

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit16 v7, v7, 0xfa0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 243
    const/16 v7, 0xc8

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " Mobile Safari/537.36"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->userAgent:Ljava/lang/String;

    .line 245
    move-object/from16 v5, p0

    iget-object v7, v5, Lcom/rebel/module/DeviceFakerManager;->profiles:Ljava/util/Map;

    move-object/from16 v8, p1

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-virtual {v5}, Lcom/rebel/module/DeviceFakerManager;->saveToFile()V

    .line 247
    return-object v1
.end method

.method public getActiveCount()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerManager;->profiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getAllProfiles()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/rebel/module/DeviceFakerManager$DeviceProfile;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/rebel/module/DeviceFakerManager;->profiles:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getBackupPath()Ljava/lang/String;
    .locals 1

    .line 482
    const-string v0, "/sdcard/Download/src_device_faker_backup.json"

    return-object v0
.end method

.method public getProfile(Ljava/lang/String;)Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerManager;->profiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    return-object v0
.end method

.method public hasProfile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerManager;->profiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public importFromFile()Z
    .locals 7

    .line 457
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/Download/src_device_faker_backup.json"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .local v1, "src":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 459
    return v0

    .line 461
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 462
    .local v2, "br":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 465
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 468
    new-instance v4, Ljava/io/FileWriter;

    const-string v6, "/data/local/tmp/src_device_faker.json"

    invoke-direct {v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 469
    .local v4, "fw":Ljava/io/FileWriter;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    .line 473
    iget-object v6, p0, Lcom/rebel/module/DeviceFakerManager;->profiles:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 474
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerManager;->loadFromFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    const/4 v0, 0x1

    return v0

    .line 476
    .end local v1    # "src":Ljava/io/File;
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "fw":Ljava/io/FileWriter;
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 477
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/rebel/module/DeviceFakerManager;->enabled:Z

    return v0
.end method

.method public loadFromFile()V
    .locals 6

    .line 403
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/src_device_faker.json"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 406
    :cond_0
    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 407
    .local v1, "jr":Landroid/util/JsonReader;
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 408
    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 409
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "name":Ljava/lang/String;
    const-string v3, "enabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lcom/rebel/module/DeviceFakerManager;->enabled:Z

    goto :goto_2

    .line 412
    :cond_1
    const-string v3, "profiles"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 413
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 414
    :goto_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 415
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, "pkg":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/rebel/module/DeviceFakerManager;->readProfile(Landroid/util/JsonReader;)Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    move-result-object v4

    .line 417
    .local v4, "p":Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    iget-object v5, p0, Lcom/rebel/module/DeviceFakerManager;->profiles:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    nop

    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "p":Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    goto :goto_1

    .line 419
    :cond_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    goto :goto_2

    .line 421
    :cond_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    .line 423
    .end local v2    # "name":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 424
    :cond_4
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    .line 425
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "jr":Landroid/util/JsonReader;
    goto :goto_4

    .line 405
    .restart local v0    # "file":Ljava/io/File;
    :cond_5
    :goto_3
    return-void

    .line 426
    .end local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 428
    :goto_4
    return-void
.end method

.method public saveToFile()V
    .locals 13

    .line 295
    const-string v0, "/data/local/tmp/src_device_faker.json"

    const-string v1, "DeviceFaker"

    :try_start_0
    invoke-direct {p0}, Lcom/rebel/module/DeviceFakerManager;->ensureFileExists()V

    .line 297
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 301
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v4, Landroid/util/JsonWriter;

    invoke-direct {v4, v3}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 302
    .local v4, "jw":Landroid/util/JsonWriter;
    const-string v5, "  "

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 304
    const-string v5, "enabled"

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    iget-boolean v6, p0, Lcom/rebel/module/DeviceFakerManager;->enabled:Z

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 305
    const-string v5, "profiles"

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 306
    iget-object v5, p0, Lcom/rebel/module/DeviceFakerManager;->profiles:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 307
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 308
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    invoke-direct {p0, v4, v7}, Lcom/rebel/module/DeviceFakerManager;->writeProfile(Landroid/util/JsonWriter;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V

    .line 309
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;>;"
    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 311
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 312
    invoke-virtual {v4}, Landroid/util/JsonWriter;->flush()V

    .line 313
    invoke-virtual {v4}, Landroid/util/JsonWriter;->close()V

    .line 314
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 317
    .local v5, "jsonContent":Ljava/lang/String;
    const/4 v6, 0x0

    .line 319
    .local v6, "written":Z
    :try_start_1
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 320
    .local v7, "fw":Ljava/io/FileWriter;
    invoke-virtual {v7, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    const/4 v6, 0x1

    .line 325
    .end local v7    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .line 323
    :catch_0
    move-exception v7

    .line 324
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Direct FileWriter failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 328
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    if-nez v6, :cond_1

    .line 331
    :try_start_3
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/local/tmp/src_device_faker_tmp.json"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v7, "tmpFile":Ljava/io/File;
    const-string v8, "\'"

    const-string v9, "\'\"\'\"\'"

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 334
    .local v8, "escaped":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "su"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string v11, "-c"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "echo \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x2

    aput-object v0, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 336
    .local v0, "p":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 337
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 338
    const/4 v6, 0x1

    .line 341
    .end local v0    # "p":Ljava/lang/Process;
    .end local v7    # "tmpFile":Ljava/io/File;
    .end local v8    # "escaped":Ljava/lang/String;
    goto :goto_2

    .line 339
    :catch_1
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "su write also failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/rebel/module/DeviceFakerManager;->setFilePermissions()V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveToFile: written="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " size="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 348
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " readable="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 349
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " enabled="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v7, p0, Lcom/rebel/module/DeviceFakerManager;->enabled:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " profileCount="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/rebel/module/DeviceFakerManager;->profiles:Ljava/util/Map;

    .line 350
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 353
    nop

    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "sw":Ljava/io/StringWriter;
    .end local v4    # "jw":Landroid/util/JsonWriter;
    .end local v5    # "jsonContent":Ljava/lang/String;
    .end local v6    # "written":Z
    goto :goto_3

    .line 351
    :catch_2
    move-exception v0

    .line 352
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveToFile FAILED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 105
    iput-boolean p1, p0, Lcom/rebel/module/DeviceFakerManager;->enabled:Z

    .line 106
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerManager;->saveToFile()V

    .line 107
    return-void
.end method
