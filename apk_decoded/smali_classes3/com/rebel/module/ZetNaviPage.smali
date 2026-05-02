.class public Lcom/rebel/module/ZetNaviPage;
.super Landroidx/fragment/app/Fragment;
.source "ZetNaviPage.java"


# static fields
.field private static final NAVI_PKG:Ljava/lang/String; = "com.naviapp"


# instance fields
.field private configManager:Lcom/rebel/module/ConfigManager;

.field private statusBadge:Landroid/widget/TextView;

.field private swNaviHook:Landroidx/appcompat/widget/SwitchCompat;


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

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ZetNaviPage;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 72
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.naviapp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 73
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 74
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    sget v3, Lcom/rebel/module/R$id;->iv_navi_icon:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "label":Ljava/lang/String;
    sget v4, Lcom/rebel/module/R$id;->tv_navi_name:I

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

    .line 77
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 78
    return-void
.end method

.method private loadHookConfig()V
    .locals 2

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/ZetNaviPage;->configManager:Lcom/rebel/module/ConfigManager;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/rebel/module/ZetNaviPage;->swNaviHook:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/rebel/module/ZetNaviPage;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v1}, Lcom/rebel/module/ConfigManager;->isFixNaviEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 86
    invoke-direct {p0}, Lcom/rebel/module/ZetNaviPage;->updateStatus()V

    .line 87
    return-void
.end method

.method private updateStatus()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/rebel/module/ZetNaviPage;->statusBadge:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/rebel/module/ZetNaviPage;->swNaviHook:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rebel/module/ZetNaviPage;->swNaviHook:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 92
    .local v0, "enabled":Z
    :goto_0
    nop

    .line 96
    iget-object v1, p0, Lcom/rebel/module/ZetNaviPage;->statusBadge:Landroid/widget/TextView;

    .line 92
    if-eqz v0, :cond_2

    .line 93
    const-string v2, "\u25cf ACTIVE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Lcom/rebel/module/ZetNaviPage;->statusBadge:Landroid/widget/TextView;

    const v2, -0xb350b0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 96
    :cond_2
    const-string v2, "\u25cf DISABLED"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/rebel/module/ZetNaviPage;->statusBadge:Landroid/widget/TextView;

    const v2, -0x1ac6cb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    :goto_1
    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-src-module-ZetNaviPage(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 49
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rebel/module/ZetNaviPage;->configManager:Lcom/rebel/module/ConfigManager;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/rebel/module/ZetNaviPage;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0, p2}, Lcom/rebel/module/ConfigManager;->setFixNaviEnabled(Z)V

    .line 51
    invoke-direct {p0}, Lcom/rebel/module/ZetNaviPage;->updateStatus()V

    .line 53
    :cond_0
    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-src-module-ZetNaviPage(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Lcom/rebel/module/ZetNaviPage;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/rebel/module/ZetMainActivity;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/rebel/module/ZetNaviPage;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/rebel/module/ZetMainActivity;

    invoke-virtual {v0, p1}, Lcom/rebel/module/ZetMainActivity;->onLaunchNaviClick(Landroid/view/View;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    sget v0, Lcom/rebel/module/R$layout;->page_zet_navi:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .line 65
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 66
    invoke-direct {p0}, Lcom/rebel/module/ZetNaviPage;->loadHookConfig()V

    .line 67
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

    iput-object v0, p0, Lcom/rebel/module/ZetNaviPage;->configManager:Lcom/rebel/module/ConfigManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 42
    sget v0, Lcom/rebel/module/R$id;->tv_navi_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/ZetNaviPage;->statusBadge:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/rebel/module/R$id;->sw_navi_hook:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/ZetNaviPage;->swNaviHook:Landroidx/appcompat/widget/SwitchCompat;

    .line 45
    invoke-direct {p0, p1}, Lcom/rebel/module/ZetNaviPage;->loadAppIcon(Landroid/view/View;)V

    .line 46
    invoke-direct {p0}, Lcom/rebel/module/ZetNaviPage;->loadHookConfig()V

    .line 48
    iget-object v0, p0, Lcom/rebel/module/ZetNaviPage;->swNaviHook:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/ZetNaviPage$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/rebel/module/ZetNaviPage$$ExternalSyntheticLambda0;-><init>(Lcom/rebel/module/ZetNaviPage;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 56
    sget v0, Lcom/rebel/module/R$id;->btn_launch_navi:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/rebel/module/ZetNaviPage$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/rebel/module/ZetNaviPage$$ExternalSyntheticLambda1;-><init>(Lcom/rebel/module/ZetNaviPage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method
