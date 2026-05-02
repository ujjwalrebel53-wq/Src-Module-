.class public Lcom/rebel/module/ZetEsafPage;
.super Landroidx/fragment/app/Fragment;
.source "ZetEsafPage.java"


# static fields
.field private static final AIRTEL_PKG:Ljava/lang/String; = "com.myairtelapp"


# instance fields
.field private configManager:Lcom/rebel/module/ConfigManager;

.field private statusBadge:Landroid/widget/TextView;

.field private swJavaHook:Landroidx/appcompat/widget/SwitchCompat;

.field private swNativeHook:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private loadAppIcon(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ZetEsafPage;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 82
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.myairtelapp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 83
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 84
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    sget v3, Lcom/rebel/module/R$id;->iv_esaf_icon:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "label":Ljava/lang/String;
    sget v4, Lcom/rebel/module/R$id;->tv_esaf_name:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "label":Ljava/lang/String;
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 88
    return-void
.end method

.method private loadHookConfig()V
    .locals 2

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/ZetEsafPage;->configManager:Lcom/rebel/module/ConfigManager;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/rebel/module/ZetEsafPage;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->isFixAirtelEnabled()Z

    move-result v0

    .line 94
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/rebel/module/ZetEsafPage;->swJavaHook:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 95
    iget-object v1, p0, Lcom/rebel/module/ZetEsafPage;->swNativeHook:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v0    # "enabled":Z
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 98
    invoke-direct {p0}, Lcom/rebel/module/ZetEsafPage;->updateStatus()V

    .line 99
    return-void
.end method

.method private updateStatus()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/rebel/module/ZetEsafPage;->statusBadge:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/rebel/module/ZetEsafPage;->swNativeHook:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rebel/module/ZetEsafPage;->swNativeHook:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 104
    .local v0, "main":Z
    :goto_0
    iget-object v3, p0, Lcom/rebel/module/ZetEsafPage;->swJavaHook:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/rebel/module/ZetEsafPage;->swJavaHook:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v3}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 105
    .local v1, "token":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 106
    iget-object v2, p0, Lcom/rebel/module/ZetEsafPage;->statusBadge:Landroid/widget/TextView;

    const-string v3, "\u25cf ALL ACTIVE"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, p0, Lcom/rebel/module/ZetEsafPage;->statusBadge:Landroid/widget/TextView;

    const v3, -0xb350b0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 108
    :cond_3
    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_2

    .line 112
    :cond_4
    iget-object v2, p0, Lcom/rebel/module/ZetEsafPage;->statusBadge:Landroid/widget/TextView;

    const-string v3, "\u25cf DISABLED"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/rebel/module/ZetEsafPage;->statusBadge:Landroid/widget/TextView;

    const v3, -0x1ac6cb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 109
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/rebel/module/ZetEsafPage;->statusBadge:Landroid/widget/TextView;

    const-string v3, "\u25cf PARTIAL"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, p0, Lcom/rebel/module/ZetEsafPage;->statusBadge:Landroid/widget/TextView;

    const/16 v3, -0x6800

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    :goto_3
    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-src-module-ZetEsafPage(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 51
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rebel/module/ZetEsafPage;->configManager:Lcom/rebel/module/ConfigManager;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/rebel/module/ZetEsafPage;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0, p2}, Lcom/rebel/module/ConfigManager;->setFixAirtelEnabled(Z)V

    .line 53
    invoke-direct {p0}, Lcom/rebel/module/ZetEsafPage;->updateStatus()V

    .line 55
    :cond_0
    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-src-module-ZetEsafPage(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 59
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rebel/module/ZetEsafPage;->configManager:Lcom/rebel/module/ConfigManager;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/rebel/module/ZetEsafPage;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0, p2}, Lcom/rebel/module/ConfigManager;->setFixAirtelEnabled(Z)V

    .line 61
    invoke-direct {p0}, Lcom/rebel/module/ZetEsafPage;->updateStatus()V

    .line 63
    :cond_0
    return-void
.end method

.method synthetic lambda$onViewCreated$2$com-src-module-ZetEsafPage(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 67
    invoke-virtual {p0}, Lcom/rebel/module/ZetEsafPage;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/rebel/module/ZetMainActivity;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/rebel/module/ZetEsafPage;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/rebel/module/ZetMainActivity;

    invoke-virtual {v0, p1}, Lcom/rebel/module/ZetMainActivity;->onLaunchEsafClick(Landroid/view/View;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    sget v0, Lcom/rebel/module/R$layout;->page_zet_esaf:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .line 75
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 76
    invoke-direct {p0}, Lcom/rebel/module/ZetEsafPage;->loadHookConfig()V

    .line 77
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

    iput-object v0, p0, Lcom/rebel/module/ZetEsafPage;->configManager:Lcom/rebel/module/ConfigManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 42
    sget v0, Lcom/rebel/module/R$id;->tv_esaf_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/ZetEsafPage;->statusBadge:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/rebel/module/R$id;->sw_java_hook:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/ZetEsafPage;->swJavaHook:Landroidx/appcompat/widget/SwitchCompat;

    .line 44
    sget v0, Lcom/rebel/module/R$id;->sw_native_hook:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/ZetEsafPage;->swNativeHook:Landroidx/appcompat/widget/SwitchCompat;

    .line 46
    invoke-direct {p0, p1}, Lcom/rebel/module/ZetEsafPage;->loadAppIcon(Landroid/view/View;)V

    .line 47
    invoke-direct {p0}, Lcom/rebel/module/ZetEsafPage;->loadHookConfig()V

    .line 50
    iget-object v0, p0, Lcom/rebel/module/ZetEsafPage;->swNativeHook:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/ZetEsafPage$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/rebel/module/ZetEsafPage$$ExternalSyntheticLambda0;-><init>(Lcom/rebel/module/ZetEsafPage;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/rebel/module/ZetEsafPage;->swJavaHook:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/ZetEsafPage$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/rebel/module/ZetEsafPage$$ExternalSyntheticLambda1;-><init>(Lcom/rebel/module/ZetEsafPage;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    sget v0, Lcom/rebel/module/R$id;->btn_launch_esaf:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/rebel/module/ZetEsafPage$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/rebel/module/ZetEsafPage$$ExternalSyntheticLambda2;-><init>(Lcom/rebel/module/ZetEsafPage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method
