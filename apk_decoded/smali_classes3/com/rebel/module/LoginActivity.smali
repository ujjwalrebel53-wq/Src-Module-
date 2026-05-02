.class public Lcom/rebel/module/LoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LoginActivity.java"


# static fields
.field private static final MODULE_EXPIRY_MS:J = 0x19dd5641418L

.field private static final PREFS_NAME:Ljava/lang/String; = "src_login"

.field private static final PREF_LOGGED_IN:Ljava/lang/String; = "logged_in"

.field private static final PREF_SESSION_DATA:Ljava/lang/String; = "session_data"


# instance fields
.field private errorText:Landroid/widget/TextView;

.field private keyInput:Lcom/google/android/material/textfield/TextInputEditText;

.field private loginButton:Lcom/google/android/material/button/MaterialButton;

.field private progressBar:Landroid/widget/ProgressBar;

.field private statusText:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$e7NhVDU9h3rXxwYZhlUB2RdxPh0(Lcom/rebel/module/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rebel/module/LoginActivity;->launchMain()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private attemptLogin()V
    .locals 7

    .line 133
    iget-object v0, p0, Lcom/rebel/module/LoginActivity;->keyInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rebel/module/LoginActivity;->keyInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 134
    .local v0, "key":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/rebel/module/LoginActivity;->errorText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/rebel/module/LoginActivity;->errorText:Landroid/widget/TextView;

    const-string v2, "Please enter your license key"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-void

    .line 141
    :cond_1
    const-string v1, "SANJAYSRC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    :try_start_0
    new-instance v1, Lcom/rebel/module/ConfigManager;

    invoke-direct {v1}, Lcom/rebel/module/ConfigManager;-><init>()V

    .line 144
    .local v1, "cm":Lcom/rebel/module/ConfigManager;
    invoke-virtual {v1}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v3

    .line 145
    .local v3, "config":Lcom/rebel/module/ConfigManager$ConfigData;
    if-nez v3, :cond_2

    new-instance v4, Lcom/rebel/module/ConfigManager$ConfigData;

    invoke-direct {v4}, Lcom/rebel/module/ConfigManager$ConfigData;-><init>()V

    move-object v3, v4

    .line 146
    :cond_2
    invoke-static {}, Lcom/rebel/module/ConfigManager;->encodeAuthToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/rebel/module/ConfigManager$ConfigData;->isRoot:Ljava/lang/String;

    .line 147
    invoke-virtual {v1, v3}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z

    .line 149
    const-string v4, "src_login"

    invoke-virtual {p0, v4, v2}, Lcom/rebel/module/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 150
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "logged_in"

    .line 151
    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "session_data"

    const-string v6, "master"

    .line 152
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 153
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "cm":Lcom/rebel/module/ConfigManager;
    .end local v3    # "config":Lcom/rebel/module/ConfigManager$ConfigData;
    goto :goto_1

    .line 154
    :catch_0
    move-exception v1

    :goto_1
    nop

    .line 156
    const-string v1, "\u2705 Master key accepted"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 157
    invoke-direct {p0}, Lcom/rebel/module/LoginActivity;->launchMain()V

    .line 158
    return-void

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/rebel/module/LoginActivity;->loginButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 162
    iget-object v1, p0, Lcom/rebel/module/LoginActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/rebel/module/LoginActivity;->statusText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/rebel/module/LoginActivity;->statusText:Landroid/widget/TextView;

    const-string v2, "Validating key..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/rebel/module/LoginActivity;->errorText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    move-object v1, v0

    .line 171
    .local v1, "fKey":Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda0;-><init>(Lcom/rebel/module/LoginActivity;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 237
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 238
    return-void
.end method

.method private launchMain()V
    .locals 2

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rebel/module/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0, v0}, Lcom/rebel/module/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    invoke-virtual {p0}, Lcom/rebel/module/LoginActivity;->finish()V

    .line 253
    return-void
.end method

.method private saveSessionToFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 257
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "encoded":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/rebel/module/LoginActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "session.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 260
    .local v2, "fw":Ljava/io/FileWriter;
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 262
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    nop

    .end local v0    # "encoded":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoginActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/rebel/module/LoginActivity;->loginButton:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/rebel/module/LoginActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/rebel/module/LoginActivity;->statusText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/rebel/module/LoginActivity;->errorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/rebel/module/LoginActivity;->errorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    return-void
.end method

.method private tryRestoreSession()Z
    .locals 23

    .line 72
    const/4 v1, 0x0

    :try_start_0
    const-string v0, "src_login"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v2, p0

    :try_start_1
    invoke-virtual {v2, v0, v1}, Lcom/rebel/module/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    move-object v3, v0

    .line 73
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "logged_in"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    const-string v0, "session_data"

    const-string v4, ""

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 78
    .local v4, "sessionData":Ljava/lang/String;
    const-string v0, "master"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 80
    :try_start_2
    new-instance v0, Lcom/rebel/module/ConfigManager;

    invoke-direct {v0}, Lcom/rebel/module/ConfigManager;-><init>()V

    .line 81
    .local v0, "cm":Lcom/rebel/module/ConfigManager;
    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v6

    .line 82
    .local v6, "config":Lcom/rebel/module/ConfigManager$ConfigData;
    if-nez v6, :cond_1

    new-instance v7, Lcom/rebel/module/ConfigManager$ConfigData;

    invoke-direct {v7}, Lcom/rebel/module/ConfigManager$ConfigData;-><init>()V

    move-object v6, v7

    .line 83
    :cond_1
    invoke-static {}, Lcom/rebel/module/ConfigManager;->encodeAuthToken()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/rebel/module/ConfigManager$ConfigData;->isRoot:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v6}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    nop

    .end local v0    # "cm":Lcom/rebel/module/ConfigManager;
    .end local v6    # "config":Lcom/rebel/module/ConfigManager$ConfigData;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    :goto_0
    return v5

    .line 89
    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/local/tmp/src_module_config.json"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 90
    .local v6, "cf":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    return v1

    .line 95
    :cond_3
    :try_start_4
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 96
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v7, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "l":Ljava/lang/String;
    if-eqz v8, :cond_4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 99
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 100
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, "c":Ljava/lang/String;
    const-string v10, "\"isRoot\""

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 102
    .local v10, "p":I
    if-gez v10, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1

    .line 103
    :cond_5
    add-int/lit8 v11, v10, 0x8

    const/16 v12, 0x22

    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 104
    .end local v10    # "p":I
    .local v11, "p":I
    add-int/lit8 v10, v11, 0x1

    invoke-virtual {v8, v12, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 105
    .local v10, "e":I
    add-int/lit8 v12, v11, 0x1

    if-gt v10, v12, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1

    .line 106
    :cond_6
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v8, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 107
    .local v12, "t":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v1

    .line 108
    :cond_7
    const-wide/16 v13, 0x0

    .line 109
    .local v13, "v":J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move/from16 v16, v1

    :try_start_5
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v15, v1, :cond_c

    .line 110
    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 111
    .local v1, "ch":C
    const/16 v5, 0x30

    if-lt v1, v5, :cond_8

    const/16 v5, 0x39

    if-gt v1, v5, :cond_8

    add-int/lit8 v5, v1, -0x30

    goto :goto_3

    .line 112
    :cond_8
    const/16 v5, 0x61

    if-lt v1, v5, :cond_9

    const/16 v5, 0x66

    if-gt v1, v5, :cond_9

    add-int/lit8 v5, v1, -0x61

    add-int/lit8 v5, v5, 0xa

    goto :goto_3

    .line 113
    :cond_9
    const/16 v5, 0x41

    if-lt v1, v5, :cond_a

    const/16 v5, 0x46

    if-gt v1, v5, :cond_a

    add-int/lit8 v5, v1, -0x41

    add-int/lit8 v5, v5, 0xa

    goto :goto_3

    :cond_a
    const/4 v5, -0x1

    :goto_3
    nop

    .line 114
    .local v5, "d":I
    if-gez v5, :cond_b

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v16

    .line 115
    :cond_b
    const/16 v18, 0x4

    shl-long v18, v13, v18

    move-object/from16 v20, v0

    move/from16 v21, v1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "ch":C
    .local v20, "br":Ljava/io/BufferedReader;
    .local v21, "ch":C
    int-to-long v0, v5

    or-long v13, v18, v0

    .line 109
    .end local v5    # "d":I
    .end local v21    # "ch":C
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v16

    move-object/from16 v0, v20

    const/4 v5, 0x1

    goto :goto_2

    .end local v20    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_c
    move-object/from16 v20, v0

    .line 117
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v15    # "i":I
    .restart local v20    # "br":Ljava/io/BufferedReader;
    const-wide/32 v0, 0x5a3c7e1d

    xor-long/2addr v0, v13

    .line 118
    .local v0, "ts":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v21, 0x3e8

    div-long v18, v18, v21

    sub-long v18, v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    .line 119
    .local v18, "age":J
    const-wide/32 v21, 0x15180

    cmp-long v5, v18, v21

    if-lez v5, :cond_d

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return v16

    .line 122
    .end local v0    # "ts":J
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "c":Ljava/lang/String;
    .end local v9    # "l":Ljava/lang/String;
    .end local v10    # "e":I
    .end local v11    # "p":I
    .end local v12    # "t":Ljava/lang/String;
    .end local v13    # "v":J
    .end local v18    # "age":J
    .end local v20    # "br":Ljava/io/BufferedReader;
    :cond_d
    nop

    .line 124
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    return v16

    .line 125
    :cond_e
    invoke-static {v4}, Lcom/rebel/module/NativeBridge;->decryptToJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "json":Ljava/lang/String;
    if-eqz v0, :cond_f

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_4

    :cond_f
    move/from16 v1, v16

    :goto_4
    return v1

    .line 120
    .end local v0    # "json":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move/from16 v16, v1

    .line 121
    .local v0, "ex":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return v16

    .line 127
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "sessionData":Ljava/lang/String;
    .end local v6    # "cf":Ljava/io/File;
    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_6
    move/from16 v16, v1

    .line 128
    .local v0, "e":Ljava/lang/Throwable;
    :goto_7
    return v16
.end method

.method private writePhonePeConfig()V
    .locals 3

    .line 270
    :try_start_0
    new-instance v0, Lcom/rebel/module/ConfigManager;

    invoke-direct {v0}, Lcom/rebel/module/ConfigManager;-><init>()V

    .line 271
    .local v0, "cm":Lcom/rebel/module/ConfigManager;
    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v1

    .line 272
    .local v1, "config":Lcom/rebel/module/ConfigManager$ConfigData;
    if-nez v1, :cond_0

    new-instance v2, Lcom/rebel/module/ConfigManager$ConfigData;

    invoke-direct {v2}, Lcom/rebel/module/ConfigManager$ConfigData;-><init>()V

    move-object v1, v2

    .line 274
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->hook_sms:Z

    .line 275
    iput-boolean v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_sender:Z

    .line 276
    iput-boolean v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_direction:Z

    .line 277
    iput-boolean v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->gms_sender:Z

    .line 278
    iput-boolean v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->sms_sender:Z

    .line 279
    iput-boolean v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_mobile:Z

    .line 280
    invoke-static {}, Lcom/rebel/module/ConfigManager;->encodeAuthToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->isRoot:Ljava/lang/String;

    .line 281
    const-string v2, "phonepe"

    iput-object v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_preset:Ljava/lang/String;

    .line 283
    iget-object v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->footer_text:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->footer_text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    :cond_1
    const-string v2, "Module by @ParentGuard_Owner"

    iput-object v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->footer_text:Ljava/lang/String;

    .line 287
    :cond_2
    invoke-virtual {v0, v1}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    nop

    .end local v0    # "cm":Lcom/rebel/module/ConfigManager;
    .end local v1    # "config":Lcom/rebel/module/ConfigManager$ConfigData;
    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoginActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$attemptLogin$2$com-src-module-LoginActivity(Ljava/lang/UnsatisfiedLinkError;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/UnsatisfiedLinkError;

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Native error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rebel/module/LoginActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$attemptLogin$3$com-src-module-LoginActivity()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/rebel/module/LoginActivity;->statusText:Landroid/widget/TextView;

    const-string v1, "Login successful!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-direct {p0}, Lcom/rebel/module/LoginActivity;->launchMain()V

    .line 224
    return-void
.end method

.method synthetic lambda$attemptLogin$4$com-src-module-LoginActivity()V
    .locals 1

    .line 226
    const-string v0, "Decryption failed"

    invoke-direct {p0, v0}, Lcom/rebel/module/LoginActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$attemptLogin$5$com-src-module-LoginActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 230
    invoke-direct {p0, p1}, Lcom/rebel/module/LoginActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$attemptLogin$6$com-src-module-LoginActivity(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Login failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rebel/module/LoginActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$attemptLogin$7$com-src-module-LoginActivity(Ljava/lang/String;)V
    .locals 12
    .param p1, "fKey"    # Ljava/lang/String;

    .line 173
    const-string v0, "android_id"

    const-string v1, "LoginActivity"

    :try_start_0
    invoke-static {}, Lcom/rebel/module/NativeBridge;->ensureLoaded()Z

    move-result v2

    .line 174
    .local v2, "nativeLoaded":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Native library loaded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    nop

    .line 178
    invoke-virtual {p0}, Lcom/rebel/module/LoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 177
    invoke-static {v3, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "androidId":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 180
    .local v4, "loginData":Lorg/json/JSONObject;
    const-string v5, "key"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    if-eqz v3, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    const-string v5, "unknown"

    :goto_0
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v0, "model"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v0, "brand"

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling nvLogin with: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rebel/module/NativeBridge;->callNvLogin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    .local v0, "response":Ljava/lang/String;
    nop

    .line 196
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nvLogin response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    .line 204
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    .local v5, "json":Lorg/json/JSONObject;
    const-string v6, "status"

    const-string v7, "error"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "status":Ljava/lang/String;
    const-string v7, "ok"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 208
    const-string v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, "encryptedData":Ljava/lang/String;
    invoke-static {v7}, Lcom/rebel/module/NativeBridge;->decryptToJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 211
    .local v8, "decryptedJson":Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string v9, "{"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 212
    const-string v9, "src_login"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/rebel/module/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 213
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "session_data"

    .line 214
    invoke-interface {v9, v10, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "logged_in"

    .line 215
    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 216
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 218
    invoke-direct {p0, v8}, Lcom/rebel/module/LoginActivity;->saveSessionToFile(Ljava/lang/String;)V

    .line 219
    invoke-direct {p0}, Lcom/rebel/module/LoginActivity;->writePhonePeConfig()V

    .line 221
    new-instance v9, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0}, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda3;-><init>(Lcom/rebel/module/LoginActivity;)V

    invoke-virtual {p0, v9}, Lcom/rebel/module/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 226
    :cond_2
    new-instance v9, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda4;

    invoke-direct {v9, p0}, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda4;-><init>(Lcom/rebel/module/LoginActivity;)V

    invoke-virtual {p0, v9}, Lcom/rebel/module/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 228
    .end local v7    # "encryptedData":Ljava/lang/String;
    .end local v8    # "decryptedJson":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 229
    :cond_3
    const-string v7, "message"

    const-string v8, "Invalid key"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 230
    .local v7, "message":Ljava/lang/String;
    new-instance v8, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0, v7}, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda5;-><init>(Lcom/rebel/module/LoginActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/rebel/module/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    .end local v0    # "response":Ljava/lang/String;
    .end local v2    # "nativeLoaded":Z
    .end local v3    # "androidId":Ljava/lang/String;
    .end local v4    # "loginData":Lorg/json/JSONObject;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "status":Ljava/lang/String;
    .end local v7    # "message":Ljava/lang/String;
    :goto_2
    goto :goto_4

    .line 200
    .restart local v0    # "response":Ljava/lang/String;
    .restart local v2    # "nativeLoaded":Z
    .restart local v3    # "androidId":Ljava/lang/String;
    .restart local v4    # "loginData":Lorg/json/JSONObject;
    :cond_4
    :goto_3
    new-instance v5, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda2;-><init>(Lcom/rebel/module/LoginActivity;)V

    invoke-virtual {p0, v5}, Lcom/rebel/module/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 201
    return-void

    .line 191
    .end local v0    # "response":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nvLogin UnsatisfiedLinkError: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v5, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v0}, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda1;-><init>(Lcom/rebel/module/LoginActivity;Ljava/lang/UnsatisfiedLinkError;)V

    invoke-virtual {p0, v5}, Lcom/rebel/module/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 194
    return-void

    .line 233
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local v2    # "nativeLoaded":Z
    .end local v3    # "androidId":Ljava/lang/String;
    .end local v4    # "loginData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Login error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v1, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda6;-><init>(Lcom/rebel/module/LoginActivity;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/rebel/module/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method synthetic lambda$onCreate$0$com-src-module-LoginActivity(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 48
    invoke-virtual {p0}, Lcom/rebel/module/LoginActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-src-module-LoginActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 67
    invoke-direct {p0}, Lcom/rebel/module/LoginActivity;->attemptLogin()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x19dd5641418L

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/tmp/src_module_config.json"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 39
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/rebel/module/LoginActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "session.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 40
    const-string v1, "src_login"

    invoke-virtual {p0, v1, v0}, Lcom/rebel/module/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 43
    sget v1, Lcom/rebel/module/R$layout;->activity_login:I

    invoke-virtual {p0, v1}, Lcom/rebel/module/LoginActivity;->setContentView(I)V

    .line 44
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    const-string v2, "Module Expired"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 46
    const-string v2, "This module version has expired. Please contact @ParentGuard_Owner on Telegram for an update."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda7;-><init>(Lcom/rebel/module/LoginActivity;)V

    .line 48
    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 50
    return-void

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/rebel/module/LoginActivity;->tryRestoreSession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/rebel/module/LoginActivity;->launchMain()V

    .line 56
    return-void

    .line 59
    :cond_1
    sget v0, Lcom/rebel/module/R$layout;->activity_login:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/LoginActivity;->setContentView(I)V

    .line 61
    sget v0, Lcom/rebel/module/R$id;->keyInput:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/rebel/module/LoginActivity;->keyInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 62
    sget v0, Lcom/rebel/module/R$id;->loginButton:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/rebel/module/LoginActivity;->loginButton:Lcom/google/android/material/button/MaterialButton;

    .line 63
    sget v0, Lcom/rebel/module/R$id;->loginProgress:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/rebel/module/LoginActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 64
    sget v0, Lcom/rebel/module/R$id;->loginStatus:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/LoginActivity;->statusText:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/rebel/module/R$id;->loginError:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/LoginActivity;->errorText:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/rebel/module/LoginActivity;->loginButton:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda8;-><init>(Lcom/rebel/module/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method
