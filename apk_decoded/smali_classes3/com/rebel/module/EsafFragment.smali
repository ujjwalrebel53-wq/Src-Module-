.class public Lcom/rebel/module/EsafFragment;
.super Landroidx/fragment/app/Fragment;
.source "EsafFragment.java"


# static fields
.field private static final AIRTEL_PACKAGE:Ljava/lang/String; = "com.myairtelapp"


# instance fields
.field private configManager:Lcom/rebel/module/ConfigManager;

.field private esafHookSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private launchEsafBtn:Landroid/widget/Button;

.field private statusDot:Landroid/view/View;

.field private tokenStatusText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private launchAirtel()V
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/rebel/module/EsafFragment;->configManager:Lcom/rebel/module/ConfigManager;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/rebel/module/EsafFragment;->configManager:Lcom/rebel/module/ConfigManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rebel/module/ConfigManager;->setFixAirtelEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/rebel/module/EsafFragment;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0, v1}, Lcom/rebel/module/ConfigManager;->setSpoofSenderEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/rebel/module/EsafFragment;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0, v1}, Lcom/rebel/module/ConfigManager;->setSmsSenderEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/rebel/module/EsafFragment;->esafHookSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 112
    invoke-direct {p0, v1}, Lcom/rebel/module/EsafFragment;->updateStatusDisplay(Z)V

    .line 116
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/EsafFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 117
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.myairtelapp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 118
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 119
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v2}, Lcom/rebel/module/EsafFragment;->startActivity(Landroid/content/Intent;)V

    .line 121
    invoke-virtual {p0}, Lcom/rebel/module/EsafFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\ud83d\ude80 Airtel launched \u2014 UPI SMS fix active"

    invoke-static {v3, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/rebel/module/EsafFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u274c Airtel Thanks app not installed"

    invoke-static {v3, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :goto_0
    goto :goto_1

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/rebel/module/EsafFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u274c Failed to launch Airtel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 128
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private loadConfig()V
    .locals 2

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/EsafFragment;->configManager:Lcom/rebel/module/ConfigManager;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/rebel/module/EsafFragment;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->isFixAirtelEnabled()Z

    move-result v0

    .line 84
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/rebel/module/EsafFragment;->esafHookSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 85
    invoke-direct {p0, v0}, Lcom/rebel/module/EsafFragment;->updateStatusDisplay(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "enabled":Z
    :cond_0
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 90
    :goto_0
    return-void
.end method

.method private updateStatusDisplay(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 93
    nop

    .line 97
    iget-object v0, p0, Lcom/rebel/module/EsafFragment;->tokenStatusText:Landroid/widget/TextView;

    .line 93
    if-eqz p1, :cond_0

    .line 94
    const-string v1, "Hook active \u2014 waiting for Airtel app to launch"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/rebel/module/EsafFragment;->tokenStatusText:Landroid/widget/TextView;

    const v1, -0xb350b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 97
    :cond_0
    const-string v1, "Hook disabled"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/rebel/module/EsafFragment;->tokenStatusText:Landroid/widget/TextView;

    const v1, -0x555556

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-src-module-EsafFragment(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 55
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/rebel/module/EsafFragment;->configManager:Lcom/rebel/module/ConfigManager;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/rebel/module/EsafFragment;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0, p2}, Lcom/rebel/module/ConfigManager;->setFixAirtelEnabled(Z)V

    .line 58
    invoke-direct {p0, p2}, Lcom/rebel/module/EsafFragment;->updateStatusDisplay(Z)V

    .line 60
    :cond_1
    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-src-module-EsafFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 63
    invoke-direct {p0}, Lcom/rebel/module/EsafFragment;->launchAirtel()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    sget v0, Lcom/rebel/module/R$layout;->fragment_esaf:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .line 74
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 75
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/rebel/module/EsafFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/rebel/module/EsafFragment;->loadConfig()V

    .line 78
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 68
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 69
    invoke-direct {p0}, Lcom/rebel/module/EsafFragment;->loadConfig()V

    .line 70
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 39
    :try_start_0
    new-instance v0, Lcom/rebel/module/ConfigManager;

    invoke-direct {v0}, Lcom/rebel/module/ConfigManager;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/EsafFragment;->configManager:Lcom/rebel/module/ConfigManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 45
    :goto_0
    sget v0, Lcom/rebel/module/R$id;->esafHookSwitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/EsafFragment;->esafHookSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 46
    sget v0, Lcom/rebel/module/R$id;->tokenStatusText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/EsafFragment;->tokenStatusText:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/rebel/module/R$id;->statusDot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rebel/module/EsafFragment;->statusDot:Landroid/view/View;

    .line 48
    sget v0, Lcom/rebel/module/R$id;->launchEsafBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rebel/module/EsafFragment;->launchEsafBtn:Landroid/widget/Button;

    .line 51
    invoke-direct {p0}, Lcom/rebel/module/EsafFragment;->loadConfig()V

    .line 54
    iget-object v0, p0, Lcom/rebel/module/EsafFragment;->esafHookSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/EsafFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/rebel/module/EsafFragment$$ExternalSyntheticLambda0;-><init>(Lcom/rebel/module/EsafFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/rebel/module/EsafFragment;->launchEsafBtn:Landroid/widget/Button;

    new-instance v1, Lcom/rebel/module/EsafFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/rebel/module/EsafFragment$$ExternalSyntheticLambda1;-><init>(Lcom/rebel/module/EsafFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method
