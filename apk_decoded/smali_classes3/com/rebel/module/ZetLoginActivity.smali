.class public Lcom/rebel/module/ZetLoginActivity;
.super Landroid/app/Activity;
.source "ZetLoginActivity.java"


# instance fields
.field private btnAuthenticate:Landroid/widget/Button;

.field private etAndroidId:Landroid/widget/EditText;

.field private etKey:Landroid/widget/EditText;

.field private pbLoading:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, "rebelcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public native doNativeLogin(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method synthetic lambda$onAuthenticateClick$0$com-src-module-ZetLoginActivity(ZLjava/lang/String;)V
    .locals 3
    .param p1, "finalSuccess"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/rebel/module/ZetLoginActivity;->pbLoading:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/rebel/module/ZetLoginActivity;->btnAuthenticate:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/rebel/module/ZetLoginActivity;->etKey:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 85
    if-eqz p1, :cond_0

    .line 86
    const-string v0, "Authentication Successful"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 88
    const-string v0, "SrcPrefs"

    invoke-virtual {p0, v0, v1}, Lcom/rebel/module/ZetLoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "license_key"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rebel/module/ZetMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Lcom/rebel/module/ZetLoginActivity;->finish()V

    goto :goto_0

    .line 94
    :cond_0
    const-string v0, "License Invalid or Expired"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    :goto_0
    return-void
.end method

.method synthetic lambda$onAuthenticateClick$1$com-src-module-ZetLoginActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "success":Z
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/rebel/module/ZetLoginActivity;->doNativeLogin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    move v1, v0

    .line 80
    .local v1, "finalSuccess":Z
    new-instance v2, Lcom/rebel/module/ZetLoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lcom/rebel/module/ZetLoginActivity$$ExternalSyntheticLambda0;-><init>(Lcom/rebel/module/ZetLoginActivity;ZLjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/rebel/module/ZetLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public onAuthenticateClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/rebel/module/ZetLoginActivity;->etKey:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/rebel/module/ZetLoginActivity;->etAndroidId:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 61
    const-string v2, "Please enter a key"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 62
    return-void

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/rebel/module/ZetLoginActivity;->btnAuthenticate:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 67
    iget-object v2, p0, Lcom/rebel/module/ZetLoginActivity;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 68
    iget-object v2, p0, Lcom/rebel/module/ZetLoginActivity;->etKey:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 71
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/rebel/module/ZetLoginActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lcom/rebel/module/ZetLoginActivity$$ExternalSyntheticLambda1;-><init>(Lcom/rebel/module/ZetLoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 97
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 98
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lcom/rebel/module/R$layout;->activity_zet_login:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetLoginActivity;->setContentView(I)V

    .line 34
    :try_start_0
    new-instance v0, Lcom/rebel/module/ConfigManager;

    invoke-direct {v0}, Lcom/rebel/module/ConfigManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget v0, Lcom/rebel/module/R$id;->et_license_key:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rebel/module/ZetLoginActivity;->etKey:Landroid/widget/EditText;

    .line 40
    sget v0, Lcom/rebel/module/R$id;->et_android_id_login:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rebel/module/ZetLoginActivity;->etAndroidId:Landroid/widget/EditText;

    .line 41
    sget v0, Lcom/rebel/module/R$id;->pb_loading:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/rebel/module/ZetLoginActivity;->pbLoading:Landroid/widget/ProgressBar;

    .line 42
    sget v0, Lcom/rebel/module/R$id;->btn_authenticate:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rebel/module/ZetLoginActivity;->btnAuthenticate:Landroid/widget/Button;

    .line 45
    invoke-virtual {p0}, Lcom/rebel/module/ZetLoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "aid":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "unknown"

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/rebel/module/ZetLoginActivity;->etAndroidId:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const-string v1, "SrcPrefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/rebel/module/ZetLoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "license_key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "savedKey":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/rebel/module/ZetLoginActivity;->etKey:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_1
    return-void
.end method
