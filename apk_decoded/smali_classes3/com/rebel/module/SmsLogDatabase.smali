.class public Lcom/rebel/module/SmsLogDatabase;
.super Ljava/lang/Object;
.source "SmsLogDatabase.java"


# static fields
.field private static final COL_BATCH_ID:Ljava/lang/String; = "batch_id"

.field private static final COL_BLOCKED:Ljava/lang/String; = "blocked"

.field private static final COL_DEST_NUMBER:Ljava/lang/String; = "dest_number"

.field private static final COL_ID:Ljava/lang/String; = "_id"

.field private static final COL_MESSAGE:Ljava/lang/String; = "message"

.field private static final COL_SOURCE_APP:Ljava/lang/String; = "source_app"

.field private static final COL_TELEGRAM_STATUS:Ljava/lang/String; = "telegram_status"

.field private static final COL_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final DB_NAME:Ljava/lang/String; = "sms_logs.db"

.field private static final SHARED_DB_DIR:Ljava/lang/String; = "/data/local/tmp"

.field private static final SHARED_DB_PATH:Ljava/lang/String; = "/data/local/tmp/sms_logs.db"

.field private static final TABLE_LOGS:Ljava/lang/String; = "sms_logs"

.field private static final TAG:Ljava/lang/String; = "SmsLogDatabase"

.field private static volatile instance:Lcom/rebel/module/SmsLogDatabase;

.field private static isXposedContext:Z


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/rebel/module/SmsLogDatabase;->isXposedContext:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, "Constructing SmsLogDatabase..."

    invoke-static {v0}, Lcom/rebel/module/SmsLogDatabase;->log(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/rebel/module/SmsLogDatabase;->ensureDirectoryAndPermissions()V

    .line 85
    invoke-direct {p0}, Lcom/rebel/module/SmsLogDatabase;->openDatabase()V

    .line 86
    return-void
.end method

.method private chmodDbFiles()V
    .locals 5

    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/local/tmp/sms_logs.db"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 202
    invoke-virtual {v2, v1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 204
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/local/tmp/sms_logs.db-journal"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v3, "journal":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    invoke-virtual {v3, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 207
    invoke-virtual {v3, v1, v0}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "journal":Ljava/io/File;
    :catch_0
    move-exception v2

    :cond_0
    :goto_0
    nop

    .line 213
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "su"

    aput-object v4, v3, v0

    const-string v0, "-c"

    aput-object v0, v3, v1

    const-string v0, "chmod 666 /data/local/tmp/sms_logs.db ; chmod 666 /data/local/tmp/sms_logs.db-journal 2>/dev/null"

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 217
    :catch_1
    move-exception v0

    :goto_1
    nop

    .line 218
    return-void
.end method

.method private createTableIfNeeded()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/rebel/module/SmsLogDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/rebel/module/SmsLogDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS sms_logs (_id INTEGER PRIMARY KEY AUTOINCREMENT, timestamp INTEGER NOT NULL, dest_number TEXT NOT NULL, message TEXT, source_app TEXT DEFAULT \'unknown\', telegram_status TEXT DEFAULT \'PENDING\', batch_id TEXT DEFAULT \'\', blocked INTEGER DEFAULT 0)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/SmsLogDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS idx_timestamp ON sms_logs (timestamp DESC)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 193
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/rebel/module/SmsLogDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS idx_source_app ON sms_logs (source_app)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 194
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/rebel/module/SmsLogDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS idx_status ON sms_logs (telegram_status)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 195
    :goto_2
    return-void
.end method

.method private cursorToEntry(Landroid/database/Cursor;)Lcom/rebel/module/SmsLogEntry;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 316
    new-instance v0, Lcom/rebel/module/SmsLogEntry;

    invoke-direct {v0}, Lcom/rebel/module/SmsLogEntry;-><init>()V

    .line 317
    .local v0, "entry":Lcom/rebel/module/SmsLogEntry;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/rebel/module/SmsLogEntry;->setId(J)V

    .line 318
    const-string v1, "timestamp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/rebel/module/SmsLogEntry;->setTimestamp(J)V

    .line 319
    const-string v1, "dest_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rebel/module/SmsLogEntry;->setDestNumber(Ljava/lang/String;)V

    .line 320
    const-string v1, "message"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rebel/module/SmsLogEntry;->setMessage(Ljava/lang/String;)V

    .line 321
    const-string v1, "source_app"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rebel/module/SmsLogEntry;->setSourceApp(Ljava/lang/String;)V

    .line 322
    const-string v1, "telegram_status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rebel/module/SmsLogEntry;->setTelegramStatus(Ljava/lang/String;)V

    .line 323
    const-string v1, "batch_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rebel/module/SmsLogEntry;->setBatchId(Ljava/lang/String;)V

    .line 324
    const-string v1, "blocked"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/rebel/module/SmsLogEntry;->setBlocked(Z)V

    .line 325
    return-object v0
.end method

.method private ensureDirectoryAndPermissions()V
    .locals 7

    .line 94
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/tmp/sms_logs.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, "dbFile":Ljava/io/File;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 101
    .local v4, "created":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mkdirs /data/local/tmp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/rebel/module/SmsLogDatabase;->log(Ljava/lang/String;)V

    .line 103
    .end local v4    # "created":Z
    :cond_0
    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 104
    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 105
    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v4

    .line 109
    .restart local v4    # "created":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createNewFile /data/local/tmp/sms_logs.db = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/rebel/module/SmsLogDatabase;->log(Ljava/lang/String;)V

    .line 111
    .end local v4    # "created":Z
    :cond_1
    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 112
    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 113
    const-string v4, "Direct permission set succeeded"

    invoke-static {v4}, Lcom/rebel/module/SmsLogDatabase;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v4

    .line 115
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Direct permission set failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/rebel/module/SmsLogDatabase;->log(Ljava/lang/String;)V

    .line 120
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "su"

    aput-object v6, v5, v2

    const-string v2, "-c"

    aput-object v2, v5, v3

    const-string v2, "mkdir -p /data/local/tmp && chmod 777 /data/local/tmp && touch /data/local/tmp/sms_logs.db && chmod 666 /data/local/tmp/sms_logs.db"

    const/4 v3, 0x2

    aput-object v2, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 128
    .local v2, "p":Ljava/lang/Process;
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3

    invoke-virtual {v2, v4, v5, v3}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    .line 129
    .local v3, "finished":Z
    if-eqz v3, :cond_2

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "su chmod completed, exit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rebel/module/SmsLogDatabase;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_2
    const-string v4, "su chmod timed out (3s), destroying process"

    invoke-static {v4}, Lcom/rebel/module/SmsLogDatabase;->log(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "finished":Z
    :goto_1
    goto :goto_2

    .line 135
    :catch_1
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "su chmod failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rebel/module/SmsLogDatabase;->log(Ljava/lang/String;)V

    .line 140
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dir exists="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " canRead="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " canWrite="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/rebel/module/SmsLogDatabase;->log(Ljava/lang/String;)V

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB exists="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/rebel/module/SmsLogDatabase;->log(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private escapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 473
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 474
    :cond_0
    const-string v0, "\""

    const-string v1, "\"\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCount(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 365
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/rebel/module/SmsLogDatabase;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 366
    .local v1, "d":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    return v0

    .line 367
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT COUNT(*) FROM sms_logs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 369
    if-eqz p1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-virtual {v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 372
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 373
    .local v3, "count":I
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 374
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v3, v4

    .line 376
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    return v3

    .line 378
    .end local v1    # "d":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "count":I
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCount error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/rebel/module/SmsLogDatabase;->logError(Ljava/lang/String;)V

    .line 380
    return v0
.end method

.method private getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/rebel/module/SmsLogDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rebel/module/SmsLogDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    const-string v0, "DB was null or closed, re-opening..."

    invoke-static {v0}, Lcom/rebel/module/SmsLogDatabase;->log(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/rebel/module/SmsLogDatabase;->openDatabase()V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/rebel/module/SmsLogDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/rebel/module/SmsLogDatabase;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 72
    sget-object v0, Lcom/rebel/module/SmsLogDatabase;->instance:Lcom/rebel/module/SmsLogDatabase;

    if-nez v0, :cond_1

    .line 73
    const-class v0, Lcom/rebel/module/SmsLogDatabase;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/rebel/module/SmsLogDatabase;->instance:Lcom/rebel/module/SmsLogDatabase;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/rebel/module/SmsLogDatabase;

    invoke-direct {v1}, Lcom/rebel/module/SmsLogDatabase;-><init>()V

    sput-object v1, Lcom/rebel/module/SmsLogDatabase;->instance:Lcom/rebel/module/SmsLogDatabase;

    .line 77
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 79
    :cond_1
    :goto_0
    sget-object v0, Lcom/rebel/module/SmsLogDatabase;->instance:Lcom/rebel/module/SmsLogDatabase;

    return-object v0
.end method

.method private getTodayStartMillis()J
    .locals 3

    .line 478
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 479
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 480
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 481
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 482
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 483
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 55
    sget-boolean v0, Lcom/rebel/module/SmsLogDatabase;->isXposedContext:Z

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsLogDatabase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 60
    :cond_0
    return-void
.end method

.method private static logError(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 64
    sget-boolean v0, Lcom/rebel/module/SmsLogDatabase;->isXposedContext:Z

    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsLogDatabase ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 69
    :cond_0
    return-void
.end method

.method private openDatabase()V
    .locals 4

    .line 151
    const-string v0, "/data/local/tmp/sms_logs.db"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, "dbFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    const-string v0, "DB file does not exist at /data/local/tmp/sms_logs.db \u2014 cannot open"

    invoke-static {v0}, Lcom/rebel/module/SmsLogDatabase;->logError(Ljava/lang/String;)V

    .line 154
    iput-object v1, p0, Lcom/rebel/module/SmsLogDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 155
    return-void

    .line 158
    :cond_0
    const v3, 0x10000010

    invoke-static {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/rebel/module/SmsLogDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 167
    iget-object v0, p0, Lcom/rebel/module/SmsLogDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "PRAGMA journal_mode=DELETE"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/rebel/module/SmsLogDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 171
    invoke-direct {p0}, Lcom/rebel/module/SmsLogDatabase;->createTableIfNeeded()V

    .line 172
    invoke-direct {p0}, Lcom/rebel/module/SmsLogDatabase;->chmodDbFiles()V

    .line 173
    const-string v0, "Database opened successfully at /data/local/tmp/sms_logs.db, journal_mode=DELETE"

    invoke-static {v0}, Lcom/rebel/module/SmsLogDatabase;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v2    # "dbFile":Ljava/io/File;
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/rebel/module/SmsLogDatabase;->logError(Ljava/lang/String;)V

    .line 176
    iput-object v1, p0, Lcom/rebel/module/SmsLogDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private queryLogs(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .param p4, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/rebel/module/SmsLogEntry;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 302
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/SmsLogEntry;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/rebel/module/SmsLogDatabase;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v2, v0

    .line 303
    .local v2, "d":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_0

    return-object v1

    .line 304
    :cond_0
    const-string v3, "sms_logs"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v5, p1

    move-object v6, p2

    move-object v9, p3

    move-object v10, p4

    .end local p1    # "selection":Ljava/lang/String;
    .end local p2    # "selectionArgs":[Ljava/lang/String;
    .end local p3    # "orderBy":Ljava/lang/String;
    .end local p4    # "limit":Ljava/lang/String;
    .local v5, "selection":Ljava/lang/String;
    .local v6, "selectionArgs":[Ljava/lang/String;
    .local v9, "orderBy":Ljava/lang/String;
    .local v10, "limit":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 305
    .local p1, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 306
    invoke-direct {p0, p1}, Lcom/rebel/module/SmsLogDatabase;->cursorToEntry(Landroid/database/Cursor;)Lcom/rebel/module/SmsLogEntry;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
    .end local v2    # "d":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "cursor":Landroid/database/Cursor;
    goto :goto_2

    .line 309
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v10    # "limit":Ljava/lang/String;
    .local p1, "selection":Ljava/lang/String;
    .restart local p2    # "selectionArgs":[Ljava/lang/String;
    .restart local p3    # "orderBy":Ljava/lang/String;
    .restart local p4    # "limit":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move-object v9, p3

    move-object v10, p4

    move-object p1, v0

    .line 310
    .end local p2    # "selectionArgs":[Ljava/lang/String;
    .end local p3    # "orderBy":Ljava/lang/String;
    .end local p4    # "limit":Ljava/lang/String;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v9    # "orderBy":Ljava/lang/String;
    .restart local v10    # "limit":Ljava/lang/String;
    .local p1, "e":Ljava/lang/Exception;
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "queryLogs error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/rebel/module/SmsLogDatabase;->logError(Ljava/lang/String;)V

    .line 312
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v1
.end method

.method public static setXposedContext(Z)V
    .locals 0
    .param p0, "xposed"    # Z

    .line 50
    sput-boolean p0, Lcom/rebel/module/SmsLogDatabase;->isXposedContext:Z

    .line 51
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 3

    .line 430
    :try_start_0
    invoke-direct {p0}, Lcom/rebel/module/SmsLogDatabase;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 431
    .local v0, "d":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    const-string v1, "sms_logs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .end local v0    # "d":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAll error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rebel/module/SmsLogDatabase;->logError(Ljava/lang/String;)V

    .line 435
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public exportAsCsv()Ljava/lang/String;
    .locals 23

    .line 440
    move-object/from16 v1, p0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd_HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v2, v0

    .line 441
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v3, v0

    .line 442
    .local v3, "dateFmt":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms_logs_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".csv"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "filename":Ljava/lang/String;
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 445
    .local v5, "dir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 446
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v0

    .line 448
    .local v6, "file":Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v0

    .line 449
    .local v7, "writer":Ljava/io/FileWriter;
    :try_start_1
    const-string v0, "ID,Timestamp,Destination,Message,SourceApp,TelegramStatus,BatchID,Blocked\n"

    invoke-virtual {v7, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v1}, Lcom/rebel/module/SmsLogDatabase;->getAllLogs()Ljava/util/List;

    move-result-object v0

    .line 452
    .local v0, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/SmsLogEntry;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/rebel/module/SmsLogEntry;

    .line 453
    .local v9, "entry":Lcom/rebel/module/SmsLogEntry;
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%d,\"%s\",\"%s\",\"%s\",\"%s\",\"%s\",\"%s\",%b\n"

    .line 455
    invoke-virtual {v9}, Lcom/rebel/module/SmsLogEntry;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    new-instance v12, Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 456
    move-object v13, v4

    move-object/from16 v22, v5

    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "dir":Ljava/io/File;
    .local v13, "filename":Ljava/lang/String;
    .local v22, "dir":Ljava/io/File;
    :try_start_2
    invoke-virtual {v9}, Lcom/rebel/module/SmsLogEntry;->getTimestamp()J

    move-result-wide v4

    invoke-direct {v12, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 457
    invoke-virtual {v9}, Lcom/rebel/module/SmsLogEntry;->getDestNumber()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/rebel/module/SmsLogDatabase;->escapeCsv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 458
    invoke-virtual {v9}, Lcom/rebel/module/SmsLogEntry;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/rebel/module/SmsLogDatabase;->escapeCsv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 459
    invoke-virtual {v9}, Lcom/rebel/module/SmsLogEntry;->getSourceApp()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/rebel/module/SmsLogDatabase;->escapeCsv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 460
    invoke-virtual {v9}, Lcom/rebel/module/SmsLogEntry;->getTelegramStatus()Ljava/lang/String;

    move-result-object v19

    .line 461
    invoke-virtual {v9}, Lcom/rebel/module/SmsLogEntry;->getBatchId()Ljava/lang/String;

    move-result-object v20

    .line 462
    invoke-virtual {v9}, Lcom/rebel/module/SmsLogEntry;->isBlocked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    filled-new-array/range {v14 .. v21}, [Ljava/lang/Object;

    move-result-object v4

    .line 453
    invoke-static {v10, v11, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 464
    .end local v9    # "entry":Lcom/rebel/module/SmsLogEntry;
    move-object v4, v13

    move-object/from16 v5, v22

    goto :goto_0

    .line 465
    .end local v13    # "filename":Ljava/lang/String;
    .end local v22    # "dir":Ljava/io/File;
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v5    # "dir":Ljava/io/File;
    :cond_1
    move-object v13, v4

    move-object/from16 v22, v5

    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "dir":Ljava/io/File;
    .restart local v13    # "filename":Ljava/lang/String;
    .restart local v22    # "dir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 466
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 465
    return-object v4

    .line 448
    .end local v0    # "logs":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/SmsLogEntry;>;"
    :catchall_0
    move-exception v0

    move-object v4, v0

    goto :goto_1

    .end local v13    # "filename":Ljava/lang/String;
    .end local v22    # "dir":Ljava/io/File;
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v5    # "dir":Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object v13, v4

    move-object/from16 v22, v5

    move-object v4, v0

    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "dir":Ljava/io/File;
    .restart local v13    # "filename":Ljava/lang/String;
    .restart local v22    # "dir":Ljava/io/File;
    :goto_1
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v3    # "dateFmt":Ljava/text/SimpleDateFormat;
    .end local v6    # "file":Ljava/io/File;
    .end local v13    # "filename":Ljava/lang/String;
    .end local v22    # "dir":Ljava/io/File;
    :goto_2
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 466
    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v3    # "dateFmt":Ljava/text/SimpleDateFormat;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v13    # "filename":Ljava/lang/String;
    .restart local v22    # "dir":Ljava/io/File;
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v13    # "filename":Ljava/lang/String;
    .end local v22    # "dir":Ljava/io/File;
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v5    # "dir":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v13, v4

    move-object/from16 v22, v5

    .line 467
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "dir":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v13    # "filename":Ljava/lang/String;
    .restart local v22    # "dir":Ljava/io/File;
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exportAsCsv error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rebel/module/SmsLogDatabase;->logError(Ljava/lang/String;)V

    .line 468
    const/4 v4, 0x0

    return-object v4
.end method

.method public getAllLogs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rebel/module/SmsLogEntry;",
            ">;"
        }
    .end annotation

    .line 274
    const-string v0, "timestamp DESC"

    const-string v1, "500"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/rebel/module/SmsLogDatabase;->queryLogs(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBlockedCount()I
    .locals 2

    .line 353
    const-string v0, "blocked=1"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/rebel/module/SmsLogDatabase;->getCount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBlockedLogs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rebel/module/SmsLogEntry;",
            ">;"
        }
    .end annotation

    .line 286
    const-string v0, "timestamp DESC"

    const-string v1, "500"

    const-string v2, "blocked=1"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/rebel/module/SmsLogDatabase;->queryLogs(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCountThisWeek()I
    .locals 5

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    .line 341
    .local v0, "weekStart":J
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "timestamp>=?"

    invoke-direct {p0, v3, v2}, Lcom/rebel/module/SmsLogDatabase;->getCount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getCountToday()I
    .locals 5

    .line 335
    invoke-direct {p0}, Lcom/rebel/module/SmsLogDatabase;->getTodayStartMillis()J

    move-result-wide v0

    .line 336
    .local v0, "todayStart":J
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "timestamp>=?"

    invoke-direct {p0, v3, v2}, Lcom/rebel/module/SmsLogDatabase;->getCount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getLogsByStatus(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/rebel/module/SmsLogEntry;",
            ">;"
        }
    .end annotation

    .line 282
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "timestamp DESC"

    const-string v2, "500"

    const-string v3, "telegram_status=?"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/rebel/module/SmsLogDatabase;->queryLogs(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPerAppStats()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 387
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 389
    .local v0, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/rebel/module/SmsLogDatabase;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 390
    .local v1, "d":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    return-object v0

    .line 391
    :cond_0
    const-string v2, "SELECT source_app, COUNT(*) as cnt FROM sms_logs GROUP BY source_app ORDER BY cnt DESC LIMIT 20"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 396
    .local v2, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 399
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v1    # "d":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "cursor":Landroid/database/Cursor;
    goto :goto_1

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPerAppStats error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/rebel/module/SmsLogDatabase;->logError(Ljava/lang/String;)V

    .line 403
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public getRecentLogs(I)Ljava/util/List;
    .locals 3
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/rebel/module/SmsLogEntry;",
            ">;"
        }
    .end annotation

    .line 278
    const-string v0, "timestamp DESC"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/rebel/module/SmsLogDatabase;->queryLogs(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTelegramFailedCount()I
    .locals 3

    .line 349
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FAILED"

    aput-object v2, v0, v1

    const-string v1, "telegram_status=?"

    invoke-direct {p0, v1, v0}, Lcom/rebel/module/SmsLogDatabase;->getCount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTelegramSentCount()I
    .locals 3

    .line 345
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SENT"

    aput-object v2, v0, v1

    const-string v1, "telegram_status=?"

    invoke-direct {p0, v1, v0}, Lcom/rebel/module/SmsLogDatabase;->getCount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTelegramSuccessRate()F
    .locals 4

    .line 357
    invoke-virtual {p0}, Lcom/rebel/module/SmsLogDatabase;->getTotalCount()I

    move-result v0

    .line 358
    .local v0, "total":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/rebel/module/SmsLogDatabase;->getTelegramSentCount()I

    move-result v1

    .line 360
    .local v1, "sent":I
    int-to-float v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    return v2
.end method

.method public getTopNumbers()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 409
    .local v0, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/rebel/module/SmsLogDatabase;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 410
    .local v1, "d":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    return-object v0

    .line 411
    :cond_0
    const-string v2, "SELECT dest_number, COUNT(*) as cnt FROM sms_logs GROUP BY dest_number ORDER BY cnt DESC LIMIT 15"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 416
    .local v2, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 417
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 419
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v1    # "d":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "cursor":Landroid/database/Cursor;
    goto :goto_1

    .line 420
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopNumbers error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/rebel/module/SmsLogDatabase;->logError(Ljava/lang/String;)V

    .line 423
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/rebel/module/SmsLogDatabase;->getCount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insertLog(Lcom/rebel/module/SmsLogEntry;)J
    .locals 8
    .param p1, "entry"    # Lcom/rebel/module/SmsLogEntry;

    .line 232
    const-wide/16 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/rebel/module/SmsLogDatabase;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 233
    .local v2, "d":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_0

    .line 234
    const-string v3, "insertLog: DB is null, cannot insert"

    invoke-static {v3}, Lcom/rebel/module/SmsLogDatabase;->logError(Ljava/lang/String;)V

    .line 235
    return-wide v0

    .line 237
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 238
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "timestamp"

    invoke-virtual {p1}, Lcom/rebel/module/SmsLogEntry;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 239
    const-string v4, "dest_number"

    invoke-virtual {p1}, Lcom/rebel/module/SmsLogEntry;->getDestNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v4, "message"

    invoke-virtual {p1}, Lcom/rebel/module/SmsLogEntry;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v4, "source_app"

    invoke-virtual {p1}, Lcom/rebel/module/SmsLogEntry;->getSourceApp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v4, "telegram_status"

    invoke-virtual {p1}, Lcom/rebel/module/SmsLogEntry;->getTelegramStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v4, "batch_id"

    invoke-virtual {p1}, Lcom/rebel/module/SmsLogEntry;->getBatchId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v4, "blocked"

    invoke-virtual {p1}, Lcom/rebel/module/SmsLogEntry;->isBlocked()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    const-string v4, "sms_logs"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 246
    .local v4, "id":J
    invoke-virtual {p1, v4, v5}, Lcom/rebel/module/SmsLogEntry;->setId(J)V

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertLog: inserted id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dest="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/rebel/module/SmsLogEntry;->getDestNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rebel/module/SmsLogDatabase;->log(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/rebel/module/SmsLogDatabase;->chmodDbFiles()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    return-wide v4

    .line 250
    .end local v2    # "d":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v4    # "id":J
    :catch_0
    move-exception v2

    .line 251
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rebel/module/SmsLogDatabase;->logError(Ljava/lang/String;)V

    .line 252
    return-wide v0
.end method

.method public searchLogs(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/rebel/module/SmsLogEntry;",
            ">;"
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "like":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v2, "timestamp DESC"

    const-string v3, "200"

    const-string v4, "dest_number LIKE ? OR message LIKE ? OR source_app LIKE ?"

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/rebel/module/SmsLogDatabase;->queryLogs(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public updateTelegramStatus(JLjava/lang/String;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "status"    # Ljava/lang/String;

    .line 260
    :try_start_0
    invoke-direct {p0}, Lcom/rebel/module/SmsLogDatabase;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 261
    .local v0, "d":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 263
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "telegram_status"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v2, "sms_logs"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTelegramStatus: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/rebel/module/SmsLogDatabase;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v0    # "d":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTelegramStatus error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rebel/module/SmsLogDatabase;->logError(Ljava/lang/String;)V

    .line 269
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
