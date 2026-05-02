.class public Lcom/rebel/module/SmsInjectService;
.super Landroid/app/Service;
.source "SmsInjectService.java"


# static fields
.field private static final INJECT_CMD_FILE:Ljava/lang/String; = "/data/local/tmp/src_sms_inject.json"

.field private static final TAG:Ljava/lang/String; = "SmsInjectService"


# instance fields
.field private handler:Landroid/os/Handler;

.field private running:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rebel/module/SmsInjectService;->running:Z

    return-void
.end method

.method private processInjectCommand()V
    .locals 13

    .line 61
    const-string v0, ""

    const-string v1, "{}"

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/local/tmp/src_sms_inject.json"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, "cmdFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x3

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    goto/16 :goto_4

    .line 65
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 68
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 69
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "content":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 78
    :cond_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    .local v7, "cmd":Lorg/json/JSONObject;
    const-string v8, "sender"

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "sender":Ljava/lang/String;
    const-string v9, "message"

    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v9, :cond_3

    goto :goto_2

    .line 89
    :cond_3
    :try_start_1
    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 90
    .local v9, "fw":Ljava/io/FileWriter;
    invoke-virtual {v9, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    .end local v9    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
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

    const-string v11, "echo \'{}\' > /data/local/tmp/src_sms_inject.json"

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0}, Lcom/rebel/module/SmsInjectService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8, v0}, Lcom/rebel/module/ServiceCallSmsInjector;->injectSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 102
    .end local v0    # "message":Ljava/lang/String;
    .end local v2    # "cmdFile":Ljava/io/File;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "content":Ljava/lang/String;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "cmd":Lorg/json/JSONObject;
    .end local v8    # "sender":Ljava/lang/String;
    goto :goto_5

    .line 84
    .restart local v0    # "message":Ljava/lang/String;
    .restart local v2    # "cmdFile":Ljava/io/File;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "content":Ljava/lang/String;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "cmd":Lorg/json/JSONObject;
    .restart local v8    # "sender":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .line 74
    .end local v0    # "message":Ljava/lang/String;
    .end local v7    # "cmd":Lorg/json/JSONObject;
    .end local v8    # "sender":Ljava/lang/String;
    :cond_5
    :goto_3
    return-void

    .line 62
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "content":Ljava/lang/String;
    .end local v6    # "line":Ljava/lang/String;
    :cond_6
    :goto_4
    return-void

    .line 100
    .end local v2    # "cmdFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 103
    :goto_5
    return-void
.end method

.method private startMonitoring()V
    .locals 3

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rebel/module/SmsInjectService;->running:Z

    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rebel/module/SmsInjectService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/rebel/module/SmsInjectService$$ExternalSyntheticLambda0;-><init>(Lcom/rebel/module/SmsInjectService;)V

    const-string v2, "SmsInjectMonitor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 57
    return-void
.end method


# virtual methods
.method synthetic lambda$startMonitoring$0$com-src-module-SmsInjectService()V
    .locals 7

    .line 39
    const-wide/16 v0, 0x0

    .line 41
    .local v0, "lastModified":J
    :goto_0
    iget-boolean v2, p0, Lcom/rebel/module/SmsInjectService;->running:Z

    if-eqz v2, :cond_1

    .line 43
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/local/tmp/src_sms_inject.json"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v2, "cmdFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    .line 46
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 47
    .end local v0    # "lastModified":J
    .local v3, "lastModified":J
    :try_start_1
    invoke-direct {p0}, Lcom/rebel/module/SmsInjectService;->processInjectCommand()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v0, v3

    goto :goto_1

    .line 52
    .end local v2    # "cmdFile":Ljava/io/File;
    :catch_0
    move-exception v0

    move-wide v0, v3

    goto :goto_2

    .line 50
    :catch_1
    move-exception v0

    goto :goto_3

    .line 49
    .end local v3    # "lastModified":J
    .restart local v0    # "lastModified":J
    .restart local v2    # "cmdFile":Ljava/io/File;
    :cond_0
    :goto_1
    const-wide/16 v3, 0x3e8

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v2    # "cmdFile":Ljava/io/File;
    goto :goto_2

    .line 52
    :catch_2
    move-exception v2

    .line 54
    :goto_2
    goto :goto_0

    .line 50
    :catch_3
    move-exception v2

    move-wide v3, v0

    move-object v0, v2

    .line 51
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v3    # "lastModified":J
    :goto_3
    move-wide v0, v3

    .line 56
    .end local v3    # "lastModified":J
    .local v0, "lastModified":J
    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/rebel/module/SmsInjectService;->handler:Landroid/os/Handler;

    .line 28
    invoke-direct {p0}, Lcom/rebel/module/SmsInjectService;->startMonitoring()V

    .line 29
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rebel/module/SmsInjectService;->running:Z

    .line 113
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 114
    return-void
.end method
