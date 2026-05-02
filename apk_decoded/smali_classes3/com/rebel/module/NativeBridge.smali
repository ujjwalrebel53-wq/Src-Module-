.class public Lcom/rebel/module/NativeBridge;
.super Ljava/lang/Object;
.source "NativeBridge.java"


# static fields
.field private static loaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/rebel/module/NativeBridge;->loaded:Z

    .line 18
    invoke-static {}, Lcom/rebel/module/NativeBridge;->tryLoadLibrary()V

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assembleKey()[B
    .locals 7

    .line 220
    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 231
    .local v1, "a":[B
    new-array v2, v0, [B

    fill-array-data v2, :array_1

    .line 241
    .local v2, "b":[B
    new-array v3, v0, [B

    .line 242
    .local v3, "key":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 243
    aget-byte v5, v1, v4

    aget-byte v6, v2, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 245
    .end local v4    # "i":I
    :cond_0
    return-object v3

    nop

    :array_0
    .array-data 1
        -0x5dt
        0x5ft
        0x12t
        -0x19t
        -0x75t
        0x3dt
        -0x3ft
        0x76t
        -0x6ct
        0xet
        -0x8t
        0x2at
        0x6dt
        -0x4bt
        0x43t
        -0x6ft
        -0x2et
        0x7et
        0x6t
        -0x37t
        0x5at
        -0x1dt
        0x1ft
        -0x78t
        0x4bt
        -0x60t
        0x67t
        -0x2ct
        0x3et
        -0xft
        0x25t
        -0x64t
    .end array-data

    :array_1
    .array-data 1
        0x64t
        0x45t
        0x5dt
        0x75t
        0x6bt
        0x65t
        0x67t
        0x45t
        0x65t
        0x65t
        0x65t
        0x64t
        0x45t
        0x65t
        0x35t
        0x35t
        0x67t
        0x40t
        0x47t
        0x45t
        0x25t
        0x25t
        0x4dt
        0x65t
        0x41t
        0x73t
        0x7ft
        0x63t
        0x61t
        0x67t
        0x65t
        0x7dt
    .end array-data
.end method

.method public static callNvLogin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 143
    invoke-static {p0}, Lcom/rebel/module/NativeBridge;->nvLogin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native clearSession()V
.end method

.method public static native decryptAndStore(Ljava/lang/String;)Z
.end method

.method public static decryptToJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "encryptedBase64"    # Ljava/lang/String;

    .line 179
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/rebel/module/NativeBridge;->assembleKey()[B

    move-result-object v1

    .line 180
    .local v1, "key":[B
    if-eqz v1, :cond_2

    array-length v2, v1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 185
    .local v3, "encrypted":[B
    array-length v4, v3

    const/16 v5, 0x10

    if-ge v4, v5, :cond_1

    .line 186
    return-object v0

    .line 189
    :cond_1
    new-array v4, v5, [B

    .line 190
    .local v4, "iv":[B
    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    array-length v6, v3

    sub-int/2addr v6, v5

    new-array v6, v6, [B

    .line 194
    .local v6, "ciphertext":[B
    array-length v7, v6

    invoke-static {v3, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 198
    .local v5, "cipher":Ljavax/crypto/Cipher;
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v1, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 199
    .local v7, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 200
    .local v8, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v9, 0x2

    invoke-virtual {v5, v9, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 202
    invoke-virtual {v5, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    .line 203
    .local v9, "plaintext":[B
    new-instance v10, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v10, v9, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 206
    .local v10, "json":Ljava/lang/String;
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    return-object v10

    .line 181
    .end local v3    # "encrypted":[B
    .end local v4    # "iv":[B
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "ciphertext":[B
    .end local v7    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v9    # "plaintext":[B
    .end local v10    # "json":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0

    .line 209
    .end local v1    # "key":[B
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static ensureLoaded()Z
    .locals 1

    .line 148
    sget-boolean v0, Lcom/rebel/module/NativeBridge;->loaded:Z

    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Lcom/rebel/module/NativeBridge;->tryLoadLibrary()V

    .line 151
    :cond_0
    sget-boolean v0, Lcom/rebel/module/NativeBridge;->loaded:Z

    return v0
.end method

.method public static native extractOtp(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native formatBatch([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public static native formatNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getConfigFilePath()Ljava/lang/String;
.end method

.method public static native getDecryptionKey()[B
.end method

.method public static native getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getTelegramApiBase()Ljava/lang/String;
.end method

.method public static native getTelegramEndpoint()Ljava/lang/String;
.end method

.method public static isLoaded()Z
    .locals 1

    .line 155
    sget-boolean v0, Lcom/rebel/module/NativeBridge;->loaded:Z

    return v0
.end method

.method public static native isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public static native isSessionValid()Z
.end method

.method public static native n0x7f3a2e1b()Ljava/lang/String;
.end method

.method public static native n0x9c4d5f8a()Ljava/lang/String;
.end method

.method public static native n0xnv(I)Ljava/lang/String;
.end method

.method public static native n0xpp(I)Ljava/lang/String;
.end method

.method public static native nativeAirtelIsKeyValid()Z
.end method

.method public static native nativeAirtelSetKeyValid(Z)V
.end method

.method public static native nativeClearSpoof()V
.end method

.method public static native nativeHookAirtel(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public static native nativeHookEsaf(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public static native nativeHookGrow(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public static native nativeHookKBAdbBypass(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public static native nativeHookKBPin(Ljava/lang/Class;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public static native nativeHookKreditBee(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public static native nativeHookNaviPin(Ljava/lang/Class;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public static native nativeHookSmsRetrieval(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public static native nativeHookZagg(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public static native nativeHookZet(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public static native nativeOnAirtelHook(ILjava/lang/Object;)V
.end method

.method public static native nativeOnEsafHook(ILjava/lang/Object;)V
.end method

.method public static native nativeOnGrowHook(ILjava/lang/Object;)V
.end method

.method public static native nativeOnHook(ILjava/lang/Object;)V
.end method

.method public static native nativeOnKBHook(ILjava/lang/Object;)V
.end method

.method public static native nativeOnKBPinHook(Ljava/lang/Object;)V
.end method

.method public static native nativeOnNaviPinHook(Ljava/lang/Object;)V
.end method

.method public static native nativeOnZaggHook(ILjava/lang/Object;)V
.end method

.method public static native nativeOnZetHook(ILjava/lang/Object;)V
.end method

.method public static native nativeSendTelegram(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native nativeSetFixGroww(Z)V
.end method

.method public static native nativeSetPresetDirect(Ljava/lang/String;)V
.end method

.method public static native nativeSetSpoof(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeValidateKBPin(Ljava/lang/String;)Z
.end method

.method public static native nativeValidateNaviPin(Ljava/lang/String;)Z
.end method

.method public static native nativeVerifyTelegram(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native nativeZaggIsKeyValid()Z
.end method

.method public static native nativeZaggValidateKey(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native nativeZetIsKeyValid()Z
.end method

.method public static native nativeZetValidateKey(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native nvFetchStrings()Z
.end method

.method public static native nvIsLoggedIn()Z
.end method

.method public static native nvLoadCache()Z
.end method

.method public static native nvLogDevice(Ljava/lang/String;)V
.end method

.method public static native nvLogin(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nvSetAuth(Z)V
.end method

.method public static native resolveTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native storePayload(Ljava/lang/String;)Z
.end method

.method private static declared-synchronized tryLoadLibrary()V
    .locals 24

    const-class v1, Lcom/rebel/module/NativeBridge;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-boolean v0, Lcom/rebel/module/NativeBridge;->loaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 23
    monitor-exit v1

    return-void

    .line 25
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    const-string v0, "rebelcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    sput-boolean v2, Lcom/rebel/module/NativeBridge;->loaded:Z

    .line 27
    const-string v0, "NativeBridge"

    const-string v3, "librebelcore.so loaded successfully"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    move-object v15, v1

    goto/16 :goto_8

    .line 28
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 29
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 30
    .local v4, "msg":Ljava/lang/String;
    const-string v0, "NativeBridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System.loadLibrary failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v5, 0x0

    if-eqz v4, :cond_9

    const-string v0, "already opened"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 34
    const-string v0, "NativeBridge"

    const-string v6, "Copying .so to temp path to bypass \'already opened\'..."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "ctx":Landroid/content/Context;
    :try_start_3
    const-string v6, "android.app.ActivityThread"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 38
    .local v6, "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "currentApplication"

    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 39
    .local v7, "currentApp":Ljava/lang/reflect/Method;
    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    .line 41
    .end local v0    # "ctx":Landroid/content/Context;
    .local v8, "ctx":Landroid/content/Context;
    if-eqz v8, :cond_8

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "srcFile":Ljava/io/File;
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 44
    .local v9, "appDir":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    .line 47
    .local v10, "appBase":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    const-string v12, "lib/arm64/librebelcore.so"

    invoke-direct {v11, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .local v11, "extractedLib":Ljava/io/File;
    const-string v12, "NativeBridge"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Checking extracted: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " exists="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 49
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 48
    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_1

    .line 51
    move-object v0, v11

    .line 55
    :cond_1
    if-nez v0, :cond_2

    .line 56
    :try_start_4
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 57
    .local v12, "nativeDir":Ljava/lang/String;
    if-eqz v12, :cond_2

    const-string v13, "!"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 58
    new-instance v13, Ljava/io/File;

    const-string v14, "librebelcore.so"

    invoke-direct {v13, v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v13, "ndFile":Ljava/io/File;
    const-string v14, "NativeBridge"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking nativeDir: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " exists="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 60
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {v14, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_2

    .line 62
    move-object v0, v13

    goto :goto_0

    .line 125
    .end local v0    # "srcFile":Ljava/io/File;
    .end local v6    # "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "currentApp":Ljava/lang/reflect/Method;
    .end local v8    # "ctx":Landroid/content/Context;
    .end local v9    # "appDir":Ljava/lang/String;
    .end local v10    # "appBase":Ljava/io/File;
    .end local v11    # "extractedLib":Ljava/io/File;
    .end local v12    # "nativeDir":Ljava/lang/String;
    .end local v13    # "ndFile":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v15, v1

    move-object/from16 v19, v3

    goto/16 :goto_5

    .line 122
    :catch_2
    move-exception v0

    move-object v15, v1

    move-object/from16 v19, v3

    goto/16 :goto_6

    .line 67
    .restart local v0    # "srcFile":Ljava/io/File;
    .restart local v6    # "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "currentApp":Ljava/lang/reflect/Method;
    .restart local v8    # "ctx":Landroid/content/Context;
    .restart local v9    # "appDir":Ljava/lang/String;
    .restart local v10    # "appBase":Ljava/io/File;
    .restart local v11    # "extractedLib":Ljava/io/File;
    :cond_2
    :goto_0
    if-nez v0, :cond_5

    .line 68
    :try_start_5
    const-string v12, "NativeBridge"

    const-string v13, "Extracting from APK..."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v12, Ljava/util/zip/ZipFile;

    invoke-direct {v12, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 70
    .local v12, "apk":Ljava/util/zip/ZipFile;
    const-string v13, "lib/arm64-v8a/librebelcore.so"

    invoke-virtual {v12, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v13

    .line 71
    .local v13, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v13, :cond_4

    .line 72
    new-instance v14, Ljava/io/File;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v15

    const-string v5, "native_tmp"

    invoke-direct {v14, v15, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .local v14, "tempDir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 74
    new-instance v5, Ljava/io/File;

    const-string v15, "librebelcore_ui.so"

    invoke-direct {v5, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .local v5, "tempSo":Ljava/io/File;
    invoke-virtual {v12, v13}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v15

    .line 77
    .local v15, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 78
    .local v2, "fos":Ljava/io/FileOutputStream;
    move-object/from16 v19, v3

    const/16 v3, 0x2000

    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    .local v19, "e":Ljava/lang/UnsatisfiedLinkError;
    :try_start_6
    new-array v3, v3, [B

    .line 80
    .local v3, "buf":[B
    :goto_1
    invoke-virtual {v15, v3}, Ljava/io/InputStream;->read([B)I

    move-result v18

    move/from16 v20, v18

    .local v20, "len":I
    if-lez v18, :cond_3

    .line 81
    move-object/from16 v21, v6

    move/from16 v6, v20

    move-object/from16 v20, v7

    const/4 v7, 0x0

    .end local v7    # "currentApp":Ljava/lang/reflect/Method;
    .local v6, "len":I
    .local v20, "currentApp":Ljava/lang/reflect/Method;
    .local v21, "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v3, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v7, v20

    move-object/from16 v6, v21

    goto :goto_1

    .line 82
    .end local v21    # "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v6, "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "currentApp":Ljava/lang/reflect/Method;
    .local v20, "len":I
    :cond_3
    move-object/from16 v21, v6

    move/from16 v6, v20

    move-object/from16 v20, v7

    .end local v7    # "currentApp":Ljava/lang/reflect/Method;
    .local v6, "len":I
    .local v20, "currentApp":Ljava/lang/reflect/Method;
    .restart local v21    # "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 83
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 84
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V

    .line 85
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/io/File;->setExecutable(Z)Z

    .line 87
    const-string v7, "NativeBridge"

    move-object/from16 v18, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v18, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v3

    .end local v3    # "buf":[B
    .local v22, "buf":[B
    const-string v3, "Extracted to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 88
    move-object v3, v5

    move/from16 v23, v6

    .end local v5    # "tempSo":Ljava/io/File;
    .end local v6    # "len":I
    .local v3, "tempSo":Ljava/io/File;
    .local v23, "len":I
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " bytes)"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 90
    const/16 v16, 0x1

    sput-boolean v16, Lcom/rebel/module/NativeBridge;->loaded:Z

    .line 91
    const-string v2, "NativeBridge"

    const-string v5, "librebelcore.so loaded from APK extract!"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 92
    monitor-exit v1

    return-void

    .line 94
    .end local v14    # "tempDir":Ljava/io/File;
    .end local v15    # "is":Ljava/io/InputStream;
    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .end local v19    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local v20    # "currentApp":Ljava/lang/reflect/Method;
    .end local v21    # "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "buf":[B
    .end local v23    # "len":I
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
    .local v6, "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "currentApp":Ljava/lang/reflect/Method;
    :cond_4
    move-object/from16 v19, v3

    move-object/from16 v21, v6

    move-object/from16 v20, v7

    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local v6    # "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "currentApp":Ljava/lang/reflect/Method;
    .restart local v19    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v20    # "currentApp":Ljava/lang/reflect/Method;
    .restart local v21    # "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_7
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_2

    .line 125
    .end local v0    # "srcFile":Ljava/io/File;
    .end local v8    # "ctx":Landroid/content/Context;
    .end local v9    # "appDir":Ljava/lang/String;
    .end local v10    # "appBase":Ljava/io/File;
    .end local v11    # "extractedLib":Ljava/io/File;
    .end local v12    # "apk":Ljava/util/zip/ZipFile;
    .end local v13    # "entry":Ljava/util/zip/ZipEntry;
    .end local v19    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local v20    # "currentApp":Ljava/lang/reflect/Method;
    .end local v21    # "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_3
    move-exception v0

    move-object/from16 v19, v3

    move-object v15, v1

    goto/16 :goto_5

    .line 122
    :catch_4
    move-exception v0

    move-object/from16 v19, v3

    move-object v15, v1

    goto/16 :goto_6

    .line 67
    .restart local v0    # "srcFile":Ljava/io/File;
    .restart local v6    # "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "currentApp":Ljava/lang/reflect/Method;
    .restart local v8    # "ctx":Landroid/content/Context;
    .restart local v9    # "appDir":Ljava/lang/String;
    .restart local v10    # "appBase":Ljava/io/File;
    .restart local v11    # "extractedLib":Ljava/io/File;
    :cond_5
    move-object/from16 v19, v3

    move-object/from16 v21, v6

    move-object/from16 v20, v7

    .line 97
    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local v6    # "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "currentApp":Ljava/lang/reflect/Method;
    .restart local v19    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v20    # "currentApp":Ljava/lang/reflect/Method;
    .restart local v21    # "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-eqz v0, :cond_7

    .line 98
    new-instance v2, Ljava/io/File;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v5, "native_tmp"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    .local v2, "tempDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 100
    new-instance v3, Ljava/io/File;

    const-string v5, "librebelcore_ui.so"

    invoke-direct {v3, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    .local v3, "tempSo":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 103
    .local v5, "fis":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 104
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/16 v7, 0x2000

    new-array v7, v7, [B

    .line 106
    .local v7, "buf":[B
    :goto_3
    invoke-virtual {v5, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    move v13, v12

    .local v13, "len":I
    if-lez v12, :cond_6

    .line 107
    const/4 v12, 0x0

    invoke-virtual {v6, v7, v12, v13}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 108
    :cond_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 109
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 110
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/io/File;->setExecutable(Z)Z

    .line 112
    const-string v12, "NativeBridge"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Copied to: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 113
    move-object/from16 v18, v0

    move-object v15, v1

    .end local v0    # "srcFile":Ljava/io/File;
    .local v18, "srcFile":Ljava/io/File;
    :try_start_8
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 115
    const/16 v16, 0x1

    sput-boolean v16, Lcom/rebel/module/NativeBridge;->loaded:Z

    .line 116
    const-string v0, "NativeBridge"

    const-string v1, "librebelcore.so loaded via temp copy!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 117
    monitor-exit v15

    return-void

    .line 125
    .end local v2    # "tempDir":Ljava/io/File;
    .end local v3    # "tempSo":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "buf":[B
    .end local v8    # "ctx":Landroid/content/Context;
    .end local v9    # "appDir":Ljava/lang/String;
    .end local v10    # "appBase":Ljava/io/File;
    .end local v11    # "extractedLib":Ljava/io/File;
    .end local v13    # "len":I
    .end local v18    # "srcFile":Ljava/io/File;
    .end local v20    # "currentApp":Ljava/lang/reflect/Method;
    .end local v21    # "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_5
    move-exception v0

    move-object v15, v1

    goto :goto_5

    .line 122
    :catch_6
    move-exception v0

    move-object v15, v1

    goto :goto_6

    .line 120
    .restart local v0    # "srcFile":Ljava/io/File;
    .restart local v8    # "ctx":Landroid/content/Context;
    .restart local v9    # "appDir":Ljava/lang/String;
    .restart local v10    # "appBase":Ljava/io/File;
    .restart local v11    # "extractedLib":Ljava/io/File;
    .restart local v20    # "currentApp":Ljava/lang/reflect/Method;
    .restart local v21    # "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    move-object/from16 v18, v0

    move-object v15, v1

    .end local v0    # "srcFile":Ljava/io/File;
    .restart local v18    # "srcFile":Ljava/io/File;
    :try_start_9
    const-string v0, "NativeBridge"

    const-string v1, "Could not find .so anywhere"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    .line 125
    .end local v8    # "ctx":Landroid/content/Context;
    .end local v9    # "appDir":Ljava/lang/String;
    .end local v10    # "appBase":Ljava/io/File;
    .end local v11    # "extractedLib":Ljava/io/File;
    .end local v18    # "srcFile":Ljava/io/File;
    .end local v20    # "currentApp":Ljava/lang/reflect/Method;
    .end local v21    # "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_7
    move-exception v0

    goto :goto_5

    .line 122
    :catch_8
    move-exception v0

    goto :goto_6

    .line 41
    .end local v19    # "e":Ljava/lang/UnsatisfiedLinkError;
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
    .local v6, "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v7, "currentApp":Ljava/lang/reflect/Method;
    .restart local v8    # "ctx":Landroid/content/Context;
    :cond_8
    move-object v15, v1

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    move-object/from16 v20, v7

    .line 127
    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local v6    # "atClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "currentApp":Ljava/lang/reflect/Method;
    .end local v8    # "ctx":Landroid/content/Context;
    .restart local v19    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_4
    goto :goto_7

    .line 125
    .end local v19    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_9
    move-exception v0

    move-object v15, v1

    move-object/from16 v19, v3

    .line 126
    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    .local v0, "e2":Ljava/lang/UnsatisfiedLinkError;
    .restart local v19    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_5
    :try_start_a
    const-string v1, "NativeBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Temp .so load failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 122
    .end local v0    # "e2":Ljava/lang/UnsatisfiedLinkError;
    .end local v19    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_a
    move-exception v0

    move-object v15, v1

    move-object/from16 v19, v3

    .line 123
    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v19    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_6
    const-string v1, "NativeBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Temp copy load failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_4

    .line 129
    :goto_7
    const/16 v17, 0x0

    sput-boolean v17, Lcom/rebel/module/NativeBridge;->loaded:Z

    .line 130
    const-string v0, "NativeBridge"

    const-string v1, "All load attempts failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 32
    .end local v19    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_9
    move-object v15, v1

    move-object/from16 v19, v3

    .line 132
    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v19    # "e":Ljava/lang/UnsatisfiedLinkError;
    const/16 v17, 0x0

    sput-boolean v17, Lcom/rebel/module/NativeBridge;->loaded:Z

    .line 133
    const-string v0, "NativeBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load librebelcore.so: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 136
    .end local v4    # "msg":Ljava/lang/String;
    .end local v19    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_8
    monitor-exit v15

    return-void

    .line 21
    :catchall_0
    move-exception v0

    move-object v15, v1

    :goto_9
    :try_start_b
    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_9
.end method

.method public static native verifyIntegrity()Z
.end method
