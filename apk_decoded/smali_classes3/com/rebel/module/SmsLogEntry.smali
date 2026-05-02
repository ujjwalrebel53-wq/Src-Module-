.class public Lcom/rebel/module/SmsLogEntry;
.super Ljava/lang/Object;
.source "SmsLogEntry.java"


# instance fields
.field private batchId:Ljava/lang/String;

.field private blocked:Z

.field private destNumber:Ljava/lang/String;

.field private id:J

.field private message:Ljava/lang/String;

.field private sourceApp:Ljava/lang/String;

.field private telegramStatus:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rebel/module/SmsLogEntry;->timestamp:J

    .line 15
    const-string v0, "PENDING"

    iput-object v0, p0, Lcom/rebel/module/SmsLogEntry;->telegramStatus:Ljava/lang/String;

    .line 16
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/rebel/module/SmsLogEntry;->sourceApp:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/rebel/module/SmsLogEntry;->batchId:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rebel/module/SmsLogEntry;->blocked:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "destNumber"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "sourceApp"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lcom/rebel/module/SmsLogEntry;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/rebel/module/SmsLogEntry;->destNumber:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/rebel/module/SmsLogEntry;->message:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/rebel/module/SmsLogEntry;->sourceApp:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getBatchId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/rebel/module/SmsLogEntry;->batchId:Ljava/lang/String;

    return-object v0
.end method

.method public getCleanNumber()Ljava/lang/String;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/rebel/module/SmsLogEntry;->destNumber:Ljava/lang/String;

    const-string v1, "[^0-9]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "clean":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 54
    :cond_0
    return-object v0
.end method

.method public getDestNumber()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/rebel/module/SmsLogEntry;->destNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/rebel/module/SmsLogEntry;->id:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/rebel/module/SmsLogEntry;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceApp()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/rebel/module/SmsLogEntry;->sourceApp:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusEmoji()Ljava/lang/String;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/rebel/module/SmsLogEntry;->telegramStatus:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "PENDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "SENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "\u23f3"

    packed-switch v0, :pswitch_data_0

    .line 63
    iget-boolean v0, p0, Lcom/rebel/module/SmsLogEntry;->blocked:Z

    if-eqz v0, :cond_1

    const-string v1, "\ud83d\udeab"

    goto :goto_2

    .line 62
    :pswitch_0
    return-object v1

    .line 61
    :pswitch_1
    const-string v0, "\u274c"

    return-object v0

    .line 60
    :pswitch_2
    const-string v0, "\u2705"

    return-object v0

    .line 63
    :cond_1
    :goto_2
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x26c798 -> :sswitch_2
        0x21c1577 -> :sswitch_1
        0x7b29883d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTelegramStatus()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/rebel/module/SmsLogEntry;->telegramStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/rebel/module/SmsLogEntry;->timestamp:J

    return-wide v0
.end method

.method public isBlocked()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/rebel/module/SmsLogEntry;->blocked:Z

    return v0
.end method

.method public setBatchId(Ljava/lang/String;)V
    .locals 0
    .param p1, "batchId"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/rebel/module/SmsLogEntry;->batchId:Ljava/lang/String;

    return-void
.end method

.method public setBlocked(Z)V
    .locals 0
    .param p1, "blocked"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/rebel/module/SmsLogEntry;->blocked:Z

    return-void
.end method

.method public setDestNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "destNumber"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/rebel/module/SmsLogEntry;->destNumber:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .line 39
    iput-wide p1, p0, Lcom/rebel/module/SmsLogEntry;->id:J

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/rebel/module/SmsLogEntry;->message:Ljava/lang/String;

    return-void
.end method

.method public setSourceApp(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceApp"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/rebel/module/SmsLogEntry;->sourceApp:Ljava/lang/String;

    return-void
.end method

.method public setTelegramStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "telegramStatus"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/rebel/module/SmsLogEntry;->telegramStatus:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 40
    iput-wide p1, p0, Lcom/rebel/module/SmsLogEntry;->timestamp:J

    return-void
.end method
