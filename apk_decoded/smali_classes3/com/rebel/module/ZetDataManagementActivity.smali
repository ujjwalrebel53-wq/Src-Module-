.class public Lcom/rebel/module/ZetDataManagementActivity;
.super Landroid/app/Activity;
.source "ZetDataManagementActivity.java"


# static fields
.field private static final ANDROID_ID_FILE:Ljava/lang/String; = "/data/local/tmp/zagg_android_id"

.field private static final KEY_ANDROID_ID:Ljava/lang/String; = "spoofed_android_id"

.field private static final PREFS:Ljava/lang/String; = "zagg_prefs"

.field private static final TARGET_DATA:Ljava/lang/String; = "/data/data/omnicash.rio.app"

.field private static final TARGET_PKG:Ljava/lang/String; = "omnicash.rio.app"


# instance fields
.field private backupListContainer:Landroid/widget/LinearLayout;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addBackupRow(Ljava/io/File;)V
    .locals 18
    .param p1, "backupFile"    # Ljava/io/File;

    .line 236
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/rebel/module/R$layout;->item_zet_backup:I

    iget-object v4, v1, Lcom/rebel/module/ZetDataManagementActivity;->backupListContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 238
    .local v6, "row":Landroid/view/View;
    sget v0, Lcom/rebel/module/R$id;->tv_backup_name:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 239
    .local v7, "tvName":Landroid/widget/TextView;
    sget v0, Lcom/rebel/module/R$id;->tv_backup_date:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 241
    .local v8, "tvDate":Landroid/widget/TextView;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    const-string v4, ".tar.gz"

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "displayName":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/Date;

    .line 243
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 244
    .local v9, "date":Ljava/lang/String;
    const-string v10, ""

    .line 246
    .local v10, "deviceId":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    .line 247
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".meta"

    invoke-virtual {v12, v4, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v11, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    .line 248
    .local v4, "metaFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    :try_start_0
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, v4}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 251
    .local v0, "sc":Ljava/util/Scanner;
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    .line 252
    :cond_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 253
    :cond_1
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 254
    :cond_2
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "sc":Ljava/util/Scanner;
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    :goto_0
    move-object v11, v10

    move-object v10, v9

    move-object v9, v2

    goto :goto_1

    .line 248
    :cond_3
    move-object v11, v10

    move-object v10, v9

    move-object v9, v2

    .line 259
    .end local v2    # "displayName":Ljava/lang/String;
    .local v9, "displayName":Ljava/lang/String;
    .local v10, "date":Ljava/lang/String;
    .local v11, "deviceId":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    .line 260
    .local v12, "sizeKb":J
    cmp-long v0, v12, v14

    if-lez v0, :cond_4

    long-to-float v0, v12

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%.1f MB"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " KB"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v14, v0

    .line 261
    .local v14, "sizeStr":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  \u2022  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "dateInfo":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "  \u2022  ID:"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v15, 0x8

    move-object/from16 v16, v0

    .end local v0    # "dateInfo":Ljava/lang/String;
    .local v16, "dateInfo":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v11, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u2026"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .end local v16    # "dateInfo":Ljava/lang/String;
    .restart local v0    # "dateInfo":Ljava/lang/String;
    goto :goto_3

    .line 262
    :cond_5
    move-object/from16 v16, v0

    .end local v0    # "dateInfo":Ljava/lang/String;
    .restart local v16    # "dateInfo":Ljava/lang/String;
    move-object/from16 v15, v16

    .line 265
    .end local v16    # "dateInfo":Ljava/lang/String;
    .local v15, "dateInfo":Ljava/lang/String;
    :goto_3
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    move-object v2, v9

    .line 269
    .local v2, "fName":Ljava/lang/String;
    move-object v5, v11

    .line 271
    .local v5, "fDeviceId":Ljava/lang/String;
    sget v0, Lcom/rebel/module/R$id;->btn_restore:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v4

    .end local v4    # "metaFile":Ljava/io/File;
    .local v16, "metaFile":Ljava/io/File;
    new-instance v4, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v5, v2, v3}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/rebel/module/ZetDataManagementActivity;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    sget v0, Lcom/rebel/module/R$id;->btn_rename:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    new-instance v0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda11;

    move-object/from16 v17, v7

    move-object v7, v4

    move-object/from16 v4, v16

    .end local v7    # "tvName":Landroid/widget/TextView;
    .end local v16    # "metaFile":Ljava/io/File;
    .restart local v4    # "metaFile":Ljava/io/File;
    .local v17, "tvName":Landroid/widget/TextView;
    invoke-direct/range {v0 .. v5}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda11;-><init>(Lcom/rebel/module/ZetDataManagementActivity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    sget v0, Lcom/rebel/module/R$id;->btn_delete:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v7, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda17;

    invoke-direct {v7, v1, v2, v3, v4}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda17;-><init>(Lcom/rebel/module/ZetDataManagementActivity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, v1, Lcom/rebel/module/ZetDataManagementActivity;->backupListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    return-void
.end method

.method private copyAssetDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;

    .line 463
    const-string v0, "/"

    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ZetDataManagementActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "list":[Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, v1

    if-nez v3, :cond_0

    goto :goto_1

    .line 477
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 478
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 479
    .local v4, "child":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/rebel/module/ZetDataManagementActivity;->copyAssetDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .end local v4    # "child":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 466
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/rebel/module/ZetDataManagementActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 467
    .local v0, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    .local v3, "outFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 469
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 470
    .local v4, "out":Ljava/io/FileOutputStream;
    const/16 v5, 0x2000

    new-array v5, v5, [B

    .line 472
    .local v5, "buf":[B
    :goto_2
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "n":I
    if-lez v6, :cond_2

    invoke-virtual {v4, v5, v2, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 473
    :cond_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 474
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v3    # "outFile":Ljava/io/File;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "buf":[B
    .end local v7    # "n":I
    nop

    .line 484
    .end local v1    # "list":[Ljava/lang/String;
    :cond_3
    goto :goto_3

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyAssetDir failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZaggBackup"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private createBackup(Ljava/lang/String;)V
    .locals 4
    .param p1, "displayName"    # Ljava/lang/String;

    .line 144
    const-string v0, "Stopping Zagg..."

    const/4 v1, 0x0

    const-string v2, "Creating Backup"

    invoke-direct {p0, v2, v0, v1}, Lcom/rebel/module/ZetDataManagementActivity;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Landroid/app/Dialog;

    move-result-object v0

    .line 145
    .local v0, "progress":Landroid/app/Dialog;
    sget v1, Lcom/rebel/module/R$id;->dlg_message:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 147
    .local v1, "dlgMsg":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda4;-><init>(Lcom/rebel/module/ZetDataManagementActivity;Ljava/lang/String;Landroid/widget/TextView;Landroid/app/Dialog;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 213
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 214
    return-void
.end method

.method private doRestore(Ljava/io/File;Ljava/lang/String;)V
    .locals 9
    .param p1, "backupFile"    # Ljava/io/File;
    .param p2, "deviceId"    # Ljava/lang/String;

    .line 311
    const-string v0, "Stopping Zagg..."

    const/4 v1, 0x0

    const-string v2, "Restoring Backup"

    invoke-direct {p0, v2, v0, v1}, Lcom/rebel/module/ZetDataManagementActivity;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Landroid/app/Dialog;

    move-result-object v8

    .line 312
    .local v8, "progress":Landroid/app/Dialog;
    sget v0, Lcom/rebel/module/R$id;->dlg_message:I

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 313
    .local v6, "dlgMsg":Landroid/widget/TextView;
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda10;

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    .end local p1    # "backupFile":Ljava/io/File;
    .end local p2    # "deviceId":Ljava/lang/String;
    .local v5, "backupFile":Ljava/io/File;
    .local v7, "deviceId":Ljava/lang/String;
    invoke-direct/range {v3 .. v8}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda10;-><init>(Lcom/rebel/module/ZetDataManagementActivity;Ljava/io/File;Landroid/widget/TextView;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 363
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 364
    return-void
.end method

.method private dp(I)I
    .locals 2
    .param p1, "dp"    # I

    .line 492
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/rebel/module/ZetDataManagementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getBackupDir()Ljava/io/File;
    .locals 3

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/rebel/module/ZetDataManagementActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ZaggBackups"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 51
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$loadBackupList$8(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "d"    # Ljava/io/File;
    .param p1, "n"    # Ljava/lang/String;

    .line 220
    const-string v0, ".tar.gz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$loadBackupList$9(Ljava/io/File;Ljava/io/File;)I
    .locals 4
    .param p0, "a"    # Ljava/io/File;
    .param p1, "b"    # Ljava/io/File;

    .line 231
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$runSuBlock$23(Ljava/io/BufferedReader;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "stdout"    # Ljava/io/BufferedReader;
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .line 449
    nop

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "l":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ZaggBackup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SU> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "l":Ljava/lang/String;
    :cond_0
    goto :goto_1

    :catch_0
    move-exception v0

    .line 450
    :goto_1
    return-void
.end method

.method static synthetic lambda$runSuBlock$24(Ljava/io/BufferedReader;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "stderr"    # Ljava/io/BufferedReader;
    .param p1, "err"    # Ljava/lang/StringBuilder;

    .line 452
    nop

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "l":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ZaggBackup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SU! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "l":Ljava/lang/String;
    :cond_0
    goto :goto_1

    :catch_0
    move-exception v0

    .line 453
    :goto_1
    return-void
.end method

.method static synthetic lambda$setMsg$18(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "msg"    # Ljava/lang/String;

    .line 368
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showConfirmDialog$19(Landroid/app/Dialog;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0
    .param p0, "d"    # Landroid/app/Dialog;
    .param p1, "onConfirm"    # Ljava/lang/Runnable;
    .param p2, "v"    # Landroid/view/View;

    .line 383
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$showConfirmDialog$20(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0
    .param p0, "d"    # Landroid/app/Dialog;
    .param p1, "v"    # Landroid/view/View;

    .line 384
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showInputDialog$21(Landroid/app/Dialog;Ljava/util/function/Consumer;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 1
    .param p0, "d"    # Landroid/app/Dialog;
    .param p1, "onConfirm"    # Ljava/util/function/Consumer;
    .param p2, "et"    # Landroid/widget/EditText;
    .param p3, "v"    # Landroid/view/View;

    .line 400
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$showInputDialog$22(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0
    .param p0, "d"    # Landroid/app/Dialog;
    .param p1, "v"    # Landroid/view/View;

    .line 401
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$writeDeviceId$5(Ljava/lang/String;)V
    .locals 9
    .param p0, "deviceId"    # Ljava/lang/String;

    .line 127
    const-string v0, "/data/local/tmp/zagg_android_id"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 128
    .local v5, "fw":Ljava/io/FileWriter;
    invoke-virtual {v5, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v5}, Ljava/io/FileWriter;->flush()V

    .line 130
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    .line 131
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

    .line 139
    nop

    .end local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .line 132
    :catch_0
    move-exception v5

    .line 134
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

    .line 137
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    :goto_0
    nop

    .line 140
    .end local v5    # "ignored":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private loadBackupList()V
    .locals 7

    .line 218
    iget-object v0, p0, Lcom/rebel/module/ZetDataManagementActivity;->backupListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 219
    invoke-direct {p0}, Lcom/rebel/module/ZetDataManagementActivity;->getBackupDir()Ljava/io/File;

    move-result-object v0

    .line 220
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 222
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 231
    :cond_0
    new-instance v2, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 232
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .local v4, "f":Ljava/io/File;
    invoke-direct {p0, v4}, Lcom/rebel/module/ZetDataManagementActivity;->addBackupRow(Ljava/io/File;)V

    .end local v4    # "f":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    :cond_1
    return-void

    .line 223
    :cond_2
    :goto_1
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 224
    .local v2, "empty":Landroid/widget/TextView;
    const-string v3, "No backups yet"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const v3, -0x66000001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lcom/rebel/module/ZetDataManagementActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/rebel/module/ZetDataManagementActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v3}, Lcom/rebel/module/ZetDataManagementActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v3}, Lcom/rebel/module/ZetDataManagementActivity;->dp(I)I

    move-result v3

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 227
    iget-object v3, p0, Lcom/rebel/module/ZetDataManagementActivity;->backupListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    return-void
.end method

.method private readCurrentDeviceId()Ljava/lang/String;
    .locals 5

    .line 100
    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/tmp/zagg_android_id"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 103
    .local v2, "sc":Ljava/util/Scanner;
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 106
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    .line 108
    .end local v3    # "id":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "sc":Ljava/util/Scanner;
    :catch_0
    move-exception v1

    :cond_1
    :goto_0
    nop

    .line 113
    :try_start_1
    const-string v1, "zagg_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/rebel/module/ZetDataManagementActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 114
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "spoofed_android_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "saved":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v3, :cond_2

    return-object v2

    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "saved":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 116
    :catch_1
    move-exception v1

    :goto_1
    nop

    .line 117
    return-object v0
.end method

.method private varargs runSuBlock([Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "commands"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 434
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 435
    .local v0, "su":Ljava/lang/Process;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 436
    .local v1, "stdin":Ljava/io/DataOutputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 437
    .local v2, "stdout":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 439
    .local v3, "stderr":Ljava/io/BufferedReader;
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p1, v5

    .line 440
    .local v6, "cmd":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 441
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SU< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ZaggBackup"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .end local v6    # "cmd":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 443
    :cond_0
    const-string v4, "exit\n"

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .local v4, "out":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .local v5, "err":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda12;

    invoke-direct {v7, v2, v4}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda12;-><init>(Ljava/io/BufferedReader;Ljava/lang/StringBuilder;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 451
    .local v6, "outT":Ljava/lang/Thread;
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda13;

    invoke-direct {v8, v3, v5}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda13;-><init>(Ljava/io/BufferedReader;Ljava/lang/StringBuilder;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 454
    .local v7, "errT":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 455
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 456
    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v8, v9}, Ljava/lang/Thread;->join(J)V

    invoke-virtual {v7, v8, v9}, Ljava/lang/Thread;->join(J)V

    .line 457
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private setMsg(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "msg"    # Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/rebel/module/ZetDataManagementActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1, p2}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda20;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    return-void
.end method

.method private setupDarkDialogWindow(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "d"    # Landroid/app/Dialog;

    .line 424
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 425
    .local v0, "w":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 426
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 428
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x1030002

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 430
    :cond_0
    return-void
.end method

.method private showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "positiveLabel"    # Ljava/lang/String;
    .param p4, "onConfirm"    # Ljava/lang/Runnable;

    .line 374
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 375
    .local v0, "d":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 376
    sget v1, Lcom/rebel/module/R$layout;->dialog_confirm:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 377
    invoke-direct {p0, v0}, Lcom/rebel/module/ZetDataManagementActivity;->setupDarkDialogWindow(Landroid/app/Dialog;)V

    .line 379
    sget v1, Lcom/rebel/module/R$id;->dlg_title:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    sget v1, Lcom/rebel/module/R$id;->dlg_message:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    sget v1, Lcom/rebel/module/R$id;->dlg_positive:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 382
    .local v1, "pos":Landroid/widget/Button;
    invoke-virtual {v1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 383
    new-instance v2, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda22;

    invoke-direct {v2, v0, p4}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda22;-><init>(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    sget v2, Lcom/rebel/module/R$id;->dlg_negative:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda23;

    invoke-direct {v3, v0}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda23;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 386
    return-void
.end method

.method private showInputDialog(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "prefill"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 389
    .local p3, "onConfirm":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 390
    .local v0, "d":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 391
    sget v1, Lcom/rebel/module/R$layout;->dialog_input:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 392
    invoke-direct {p0, v0}, Lcom/rebel/module/ZetDataManagementActivity;->setupDarkDialogWindow(Landroid/app/Dialog;)V

    .line 394
    sget v1, Lcom/rebel/module/R$id;->dlg_title:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    sget v1, Lcom/rebel/module/R$id;->dlg_edit_text:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 396
    .local v1, "et":Landroid/widget/EditText;
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 397
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 399
    sget v2, Lcom/rebel/module/R$id;->dlg_positive:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 400
    .local v2, "pos":Landroid/widget/Button;
    new-instance v3, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, p3, v1}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda2;-><init>(Landroid/app/Dialog;Ljava/util/function/Consumer;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    sget v3, Lcom/rebel/module/R$id;->dlg_negative:I

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 403
    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Landroid/app/Dialog;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/Dialog;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .line 407
    .local p3, "onReady":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/Dialog;>;"
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 408
    .local v0, "d":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 409
    sget v1, Lcom/rebel/module/R$layout;->dialog_progress:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 410
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 411
    invoke-direct {p0, v0}, Lcom/rebel/module/ZetDataManagementActivity;->setupDarkDialogWindow(Landroid/app/Dialog;)V

    .line 413
    sget v1, Lcom/rebel/module/R$id;->dlg_title:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    sget v1, Lcom/rebel/module/R$id;->dlg_message:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 415
    .local v1, "tvMsg":Landroid/widget/TextView;
    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 416
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 419
    if-eqz p3, :cond_1

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 420
    :cond_1
    return-object v0
.end method

.method private toast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 488
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 489
    return-void
.end method

.method private writeDeviceId(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 121
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    const-string v0, "zagg_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/rebel/module/ZetDataManagementActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "spoofed_android_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 140
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 141
    return-void

    .line 121
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$addBackupRow$10$com-src-module-ZetDataManagementActivity(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "backupFile"    # Ljava/io/File;
    .param p2, "fDeviceId"    # Ljava/lang/String;

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/rebel/module/ZetDataManagementActivity;->doRestore(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$addBackupRow$11$com-src-module-ZetDataManagementActivity(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/view/View;)V
    .locals 4
    .param p1, "fDeviceId"    # Ljava/lang/String;
    .param p2, "fName"    # Ljava/lang/String;
    .param p3, "backupFile"    # Ljava/io/File;
    .param p4, "v"    # Landroid/view/View;

    .line 272
    const-string v0, "App will be stopped and data replaced with this backup."

    .line 273
    .local v0, "confirmMsg":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\nDevice ID will be set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0, p3, p1}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda21;-><init>(Lcom/rebel/module/ZetDataManagementActivity;Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "Restore"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/rebel/module/ZetDataManagementActivity;->showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 279
    return-void
.end method

.method synthetic lambda$addBackupRow$12$com-src-module-ZetDataManagementActivity(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "backupFile"    # Ljava/io/File;
    .param p2, "metaFile"    # Ljava/io/File;
    .param p3, "fDeviceId"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;

    .line 283
    const-string v0, "\n"

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 285
    :cond_0
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    .line 286
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "ts":Ljava/lang/String;
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 288
    .local v2, "fw":Ljava/io/FileWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 290
    invoke-direct {p0}, Lcom/rebel/module/ZetDataManagementActivity;->loadBackupList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v1    # "ts":Ljava/lang/String;
    .end local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Rename failed"

    invoke-direct {p0, v1}, Lcom/rebel/module/ZetDataManagementActivity;->toast(Ljava/lang/String;)V

    .line 294
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method synthetic lambda$addBackupRow$13$com-src-module-ZetDataManagementActivity(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "fName"    # Ljava/lang/String;
    .param p2, "backupFile"    # Ljava/io/File;
    .param p3, "metaFile"    # Ljava/io/File;
    .param p4, "fDeviceId"    # Ljava/lang/String;
    .param p5, "v"    # Landroid/view/View;

    .line 282
    new-instance v0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda8;-><init>(Lcom/rebel/module/ZetDataManagementActivity;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "Rename Backup"

    invoke-direct {p0, v1, p1, v0}, Lcom/rebel/module/ZetDataManagementActivity;->showInputDialog(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 295
    return-void
.end method

.method synthetic lambda$addBackupRow$14$com-src-module-ZetDataManagementActivity(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p1, "backupFile"    # Ljava/io/File;
    .param p2, "metaFile"    # Ljava/io/File;

    .line 300
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 301
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 302
    invoke-direct {p0}, Lcom/rebel/module/ZetDataManagementActivity;->loadBackupList()V

    .line 303
    const-string v0, "Deleted"

    invoke-direct {p0, v0}, Lcom/rebel/module/ZetDataManagementActivity;->toast(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method synthetic lambda$addBackupRow$15$com-src-module-ZetDataManagementActivity(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/view/View;)V
    .locals 4
    .param p1, "fName"    # Ljava/lang/String;
    .param p2, "backupFile"    # Ljava/io/File;
    .param p3, "metaFile"    # Ljava/io/File;
    .param p4, "v"    # Landroid/view/View;

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delete \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p2, p3}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda19;-><init>(Lcom/rebel/module/ZetDataManagementActivity;Ljava/io/File;Ljava/io/File;)V

    const-string v2, "This backup will be permanently deleted."

    const-string v3, "Delete"

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/rebel/module/ZetDataManagementActivity;->showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method

.method synthetic lambda$createBackup$6$com-src-module-ZetDataManagementActivity(Landroid/app/Dialog;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "progress"    # Landroid/app/Dialog;
    .param p2, "wasOk"    # Z
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 206
    if-eqz p2, :cond_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2713 Backup created: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rebel/module/ZetDataManagementActivity;->toast(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Lcom/rebel/module/ZetDataManagementActivity;->loadBackupList()V

    goto :goto_0

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Backup failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rebel/module/ZetDataManagementActivity;->toast(Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void
.end method

.method synthetic lambda$createBackup$7$com-src-module-ZetDataManagementActivity(Ljava/lang/String;Landroid/widget/TextView;Landroid/app/Dialog;)V
    .locals 23
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "dlgMsg"    # Landroid/widget/TextView;
    .param p3, "progress"    # Landroid/app/Dialog;

    .line 148
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    const-string v0, "_"

    const-string v2, "\'"

    const-string v3, "ZaggBackup"

    const-string v5, ""

    .line 149
    .local v5, "errorMsg":Ljava/lang/String;
    const/4 v7, 0x0

    .line 151
    .local v7, "destFile":Ljava/io/File;
    const/4 v11, 0x0

    :try_start_0
    const-string v12, "[^a-zA-Z0-9_\\-]"

    invoke-virtual {v4, v12, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 152
    .local v12, "safeName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "filename":Ljava/lang/String;
    invoke-direct {v1}, Lcom/rebel/module/ZetDataManagementActivity;->getBackupDir()Ljava/io/File;

    move-result-object v13

    .line 154
    .local v13, "backupDir":Ljava/io/File;
    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const-wide/16 v16, 0x64

    :try_start_1
    const-string v8, ".tar.gz"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v14, v13, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v14

    .line 155
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ".meta"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v13, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    .local v8, "metaFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, "destPath":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 159
    .local v14, "dirPath":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v18, 0x1

    :try_start_2
    const-string v10, "=== START dest="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {v1}, Lcom/rebel/module/ZetDataManagementActivity;->readCurrentDeviceId()Ljava/lang/String;

    move-result-object v10

    .line 164
    .local v10, "deviceId":Ljava/lang/String;
    const-string v15, "Force-stopping Zagg..."

    invoke-direct {v1, v6, v15}, Lcom/rebel/module/ZetDataManagementActivity;->setMsg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 165
    const-wide/16 v19, 0x1f4

    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V

    .line 166
    const-string v15, "Compressing app data..."

    invoke-direct {v1, v6, v15}, Lcom/rebel/module/ZetDataManagementActivity;->setMsg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 168
    const/16 v15, 0x9

    new-array v15, v15, [Ljava/lang/String;

    const-string v19, "am force-stop omnicash.rio.app"

    aput-object v19, v15, v11

    const-string v19, "sleep 1"

    aput-object v19, v15, v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v0

    .end local v0    # "filename":Ljava/lang/String;
    .local v20, "filename":Ljava/lang/String;
    const-string v0, "mkdir -p \'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x2

    aput-object v0, v15, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chmod 777 \'"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x3

    aput-object v0, v15, v11

    const-string v0, "SS_PID=$(pidof system_server)"

    const/4 v11, 0x4

    aput-object v0, v15, v11

    const-string v0, "echo \"system_server pid=$SS_PID\""

    const/4 v11, 0x5

    aput-object v0, v15, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "nsenter -t $SS_PID -m -- tar -czf \'"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "\' --exclude=\'app_webview\' --exclude=\'app_textures\' /data/data/"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "omnicash.rio.app"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x6

    aput-object v0, v15, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chmod 644 \'"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v15, v2

    const-string v0, "echo DONE"

    const/16 v2, 0x8

    aput-object v0, v15, v2

    invoke-direct {v1, v15}, Lcom/rebel/module/ZetDataManagementActivity;->runSuBlock([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "suOut":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "suOut="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v21
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    cmp-long v2, v21, v16

    if-ltz v2, :cond_0

    move/from16 v2, v18

    goto :goto_0

    .line 197
    .end local v0    # "suOut":Ljava/lang/String;
    .end local v8    # "metaFile":Ljava/io/File;
    .end local v9    # "destPath":Ljava/lang/String;
    .end local v10    # "deviceId":Ljava/lang/String;
    .end local v12    # "safeName":Ljava/lang/String;
    .end local v13    # "backupDir":Ljava/io/File;
    .end local v14    # "dirPath":Ljava/lang/String;
    .end local v20    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v14, v5

    goto/16 :goto_3

    .line 181
    .restart local v0    # "suOut":Ljava/lang/String;
    .restart local v8    # "metaFile":Ljava/io/File;
    .restart local v9    # "destPath":Ljava/lang/String;
    .restart local v10    # "deviceId":Ljava/lang/String;
    .restart local v12    # "safeName":Ljava/lang/String;
    .restart local v13    # "backupDir":Ljava/io/File;
    .restart local v14    # "dirPath":Ljava/lang/String;
    .restart local v20    # "filename":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 182
    .local v2, "fileOk":Z
    :goto_0
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exists="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " size="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v15, v12

    move-object/from16 v21, v13

    .end local v12    # "safeName":Ljava/lang/String;
    .end local v13    # "backupDir":Ljava/io/File;
    .local v15, "safeName":Ljava/lang/String;
    .local v21, "backupDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 184
    const-string v11, "\n"

    if-nez v2, :cond_1

    .line 185
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Backup failed (size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v22, v14

    .end local v14    # "dirPath":Ljava/lang/String;
    .local v22, "dirPath":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "). su output: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v0, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v5, v3

    goto :goto_1

    .line 187
    .end local v22    # "dirPath":Ljava/lang/String;
    .restart local v14    # "dirPath":Ljava/lang/String;
    :cond_1
    move-object/from16 v22, v14

    .end local v14    # "dirPath":Ljava/lang/String;
    .restart local v22    # "dirPath":Ljava/lang/String;
    :try_start_6
    const-string v12, "Saving metadata..."

    invoke-direct {v1, v6, v12}, Lcom/rebel/module/ZetDataManagementActivity;->setMsg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 188
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "yyyy-MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 190
    .local v12, "ts":Ljava/lang/String;
    new-instance v13, Ljava/io/FileWriter;

    const/4 v14, 0x0

    invoke-direct {v13, v8, v14}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 191
    .local v13, "fw":Ljava/io/FileWriter;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v13}, Ljava/io/FileWriter;->flush()V

    .line 193
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V

    .line 194
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SUCCESS size="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v14, v5

    .end local v5    # "errorMsg":Ljava/lang/String;
    .local v14, "errorMsg":Ljava/lang/String;
    :try_start_7
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object v5, v14

    .line 200
    .end local v0    # "suOut":Ljava/lang/String;
    .end local v2    # "fileOk":Z
    .end local v8    # "metaFile":Ljava/io/File;
    .end local v9    # "destPath":Ljava/lang/String;
    .end local v10    # "deviceId":Ljava/lang/String;
    .end local v12    # "ts":Ljava/lang/String;
    .end local v13    # "fw":Ljava/io/FileWriter;
    .end local v14    # "errorMsg":Ljava/lang/String;
    .end local v15    # "safeName":Ljava/lang/String;
    .end local v20    # "filename":Ljava/lang/String;
    .end local v21    # "backupDir":Ljava/io/File;
    .end local v22    # "dirPath":Ljava/lang/String;
    .restart local v5    # "errorMsg":Ljava/lang/String;
    :goto_1
    move-object v8, v7

    move-object v7, v5

    goto :goto_4

    .line 197
    .end local v5    # "errorMsg":Ljava/lang/String;
    .restart local v14    # "errorMsg":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v14    # "errorMsg":Ljava/lang/String;
    .restart local v5    # "errorMsg":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v14, v5

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v14, v5

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v14, v5

    const-wide/16 v16, 0x64

    :goto_2
    const/16 v18, 0x1

    .line 198
    .end local v5    # "errorMsg":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v14    # "errorMsg":Ljava/lang/String;
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 199
    .end local v14    # "errorMsg":Ljava/lang/String;
    .restart local v5    # "errorMsg":Ljava/lang/String;
    const-string v2, "EXCEPTION"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v7

    move-object v7, v5

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "errorMsg":Ljava/lang/String;
    .local v7, "errorMsg":Ljava/lang/String;
    .local v8, "destFile":Ljava/io/File;
    :goto_4
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v2, v16

    if-ltz v0, :cond_2

    move/from16 v3, v18

    goto :goto_5

    :cond_2
    const/4 v3, 0x0

    .line 203
    .local v3, "wasOk":Z
    :goto_5
    move-object v5, v7

    .line 204
    .local v5, "msg":Ljava/lang/String;
    iget-object v9, v1, Lcom/rebel/module/ZetDataManagementActivity;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda7;

    move-object/from16 v4, p1

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda7;-><init>(Lcom/rebel/module/ZetDataManagementActivity;Landroid/app/Dialog;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method

.method synthetic lambda$doRestore$16$com-src-module-ZetDataManagementActivity(Landroid/app/Dialog;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "progress"    # Landroid/app/Dialog;
    .param p2, "wasOk"    # Z
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "fMsg"    # Ljava/lang/String;

    .line 352
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 353
    if-eqz p2, :cond_1

    .line 354
    const-string v0, "\u2713 Restored \u2014 tap Launch to start"

    .line 355
    .local v0, "successMsg":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u2713 Device ID restored: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    :cond_0
    invoke-direct {p0, v0}, Lcom/rebel/module/ZetDataManagementActivity;->toast(Ljava/lang/String;)V

    .line 359
    .end local v0    # "successMsg":Ljava/lang/String;
    goto :goto_0

    .line 360
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restore failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rebel/module/ZetDataManagementActivity;->toast(Ljava/lang/String;)V

    .line 362
    :goto_0
    return-void
.end method

.method synthetic lambda$doRestore$17$com-src-module-ZetDataManagementActivity(Ljava/io/File;Landroid/widget/TextView;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 10
    .param p1, "backupFile"    # Ljava/io/File;
    .param p2, "dlgMsg"    # Landroid/widget/TextView;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "progress"    # Landroid/app/Dialog;

    .line 314
    const-string v1, "ZaggBackup"

    const/4 v2, 0x0

    .line 315
    .local v2, "ok":Z
    const-string v3, ""

    .line 317
    .local v3, "errMsg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "tarPath":Ljava/lang/String;
    const-string v4, "Stopping and clearing Zagg..."

    invoke-direct {p0, p2, v4}, Lcom/rebel/module/ZetDataManagementActivity;->setMsg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 320
    const-string v4, "Restoring data via root..."

    invoke-direct {p0, p2, v4}, Lcom/rebel/module/ZetDataManagementActivity;->setMsg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 322
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "am force-stop omnicash.rio.app"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "sleep 1"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "SS_PID=$(pidof system_server)"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const-string v5, "echo \"nsenter pid=$SS_PID\""

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const-string v5, "nsenter -t $SS_PID -m -- find /data/data/omnicash.rio.app -mindepth 1 -maxdepth 1 ! -name \'app_webview\' ! -name \'app_textures\' -exec rm -rf {} +"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nsenter -t $SS_PID -m -- tar xzf \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' -C /"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    const-string v5, "nsenter -t $SS_PID -m -- rm -f /data/data/omnicash.rio.app/app_webview/Default/Cookies"

    const/4 v6, 0x6

    aput-object v5, v4, v6

    const-string v5, "echo DONE"

    const/4 v6, 0x7

    aput-object v5, v4, v6

    invoke-direct {p0, v4}, Lcom/rebel/module/ZetDataManagementActivity;->runSuBlock([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 335
    .local v4, "out":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restore out="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v5, "DONE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    move v2, v5

    .line 337
    if-nez v2, :cond_0

    const-string v5, "\n"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 341
    .end local v0    # "tarPath":Ljava/lang/String;
    .end local v4    # "out":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 340
    const-string v4, "restore EXCEPTION"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    invoke-direct {p0, p3}, Lcom/rebel/module/ZetDataManagementActivity;->writeDeviceId(Ljava/lang/String;)V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device ID restored: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1
    move v7, v2

    .line 350
    .local v7, "wasOk":Z
    move-object v9, v3

    .line 351
    .local v9, "fMsg":Ljava/lang/String;
    iget-object v0, p0, Lcom/rebel/module/ZetDataManagementActivity;->mainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda14;

    move-object v5, p0

    move-object v8, p3

    move-object v6, p4

    .end local p3    # "deviceId":Ljava/lang/String;
    .end local p4    # "progress":Landroid/app/Dialog;
    .local v6, "progress":Landroid/app/Dialog;
    .local v8, "deviceId":Ljava/lang/String;
    invoke-direct/range {v4 .. v9}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda14;-><init>(Lcom/rebel/module/ZetDataManagementActivity;Landroid/app/Dialog;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    return-void
.end method

.method synthetic lambda$onCreateBackup$4$com-src-module-ZetDataManagementActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "Name required"

    invoke-direct {p0, v0}, Lcom/rebel/module/ZetDataManagementActivity;->toast(Ljava/lang/String;)V

    .line 91
    return-void

    .line 93
    :cond_0
    invoke-direct {p0, p1}, Lcom/rebel/module/ZetDataManagementActivity;->createBackup(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method synthetic lambda$onResetData$0$com-src-module-ZetDataManagementActivity(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dlg"    # Landroid/app/Dialog;

    .line 78
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 79
    const-string v0, "\u2713 App data cleared"

    invoke-direct {p0, v0}, Lcom/rebel/module/ZetDataManagementActivity;->toast(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method synthetic lambda$onResetData$1$com-src-module-ZetDataManagementActivity(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dlg"    # Landroid/app/Dialog;

    .line 75
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "am force-stop omnicash.rio.app"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "pm clear omnicash.rio.app"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/rebel/module/ZetDataManagementActivity;->runSuBlock([Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 77
    iget-object v0, p0, Lcom/rebel/module/ZetDataManagementActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda9;-><init>(Lcom/rebel/module/ZetDataManagementActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method

.method synthetic lambda$onResetData$2$com-src-module-ZetDataManagementActivity(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dlg"    # Landroid/app/Dialog;

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda24;-><init>(Lcom/rebel/module/ZetDataManagementActivity;Landroid/app/Dialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 81
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    return-void
.end method

.method synthetic lambda$onResetData$3$com-src-module-ZetDataManagementActivity()V
    .locals 3

    .line 72
    new-instance v0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda1;-><init>(Lcom/rebel/module/ZetDataManagementActivity;)V

    const-string v1, "Clearing data..."

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/rebel/module/ZetDataManagementActivity;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Landroid/app/Dialog;

    .line 83
    return-void
.end method

.method public onBackClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 64
    invoke-virtual {p0}, Lcom/rebel/module/ZetDataManagementActivity;->finish()V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget v0, Lcom/rebel/module/R$layout;->activity_zet_data_mgmt:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetDataManagementActivity;->setContentView(I)V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/rebel/module/ZetDataManagementActivity;->mainHandler:Landroid/os/Handler;

    .line 59
    sget v0, Lcom/rebel/module/R$id;->backup_list_container:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetDataManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rebel/module/ZetDataManagementActivity;->backupListContainer:Landroid/widget/LinearLayout;

    .line 60
    invoke-direct {p0}, Lcom/rebel/module/ZetDataManagementActivity;->loadBackupList()V

    .line 61
    return-void
.end method

.method public onCreateBackup(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 88
    new-instance v0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda15;-><init>(Lcom/rebel/module/ZetDataManagementActivity;)V

    const-string v1, "Backup Name"

    const-string v2, "e.g. Zagg Main Account"

    invoke-direct {p0, v1, v2, v0}, Lcom/rebel/module/ZetDataManagementActivity;->showInputDialog(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 95
    return-void
.end method

.method public onResetData(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 69
    new-instance v0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda16;-><init>(Lcom/rebel/module/ZetDataManagementActivity;)V

    const-string v1, "Reset App Data"

    const-string v2, "This will wipe all data for Zagg Money and kill the app."

    const-string v3, "Reset"

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/rebel/module/ZetDataManagementActivity;->showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method
