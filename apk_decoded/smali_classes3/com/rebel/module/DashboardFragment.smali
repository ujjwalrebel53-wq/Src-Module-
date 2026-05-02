.class public Lcom/rebel/module/DashboardFragment;
.super Landroidx/fragment/app/Fragment;
.source "DashboardFragment.java"


# instance fields
.field private configManager:Lcom/rebel/module/ConfigManager;

.field private dashHookSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private dashSentboxSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private dashSpoofSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private database:Lcom/rebel/module/SmsLogDatabase;

.field private noRecentText:Landroid/widget/TextView;

.field private recentAdapter:Lcom/rebel/module/SmsLogAdapter;

.field private recentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private refreshHandler:Landroid/os/Handler;

.field private refreshRunnable:Ljava/lang/Runnable;

.field private statBlockedCount:Landroid/widget/TextView;

.field private statTelegramCount:Landroid/widget/TextView;

.field private statTodayCount:Landroid/widget/TextView;

.field private statTotalCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private loadConfigSwitches()V
    .locals 3

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/DashboardFragment;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 134
    .local v0, "config":Lcom/rebel/module/ConfigManager$ConfigData;
    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/rebel/module/DashboardFragment;->dashHookSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->hook_sms:Z

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 136
    iget-object v1, p0, Lcom/rebel/module/DashboardFragment;->dashSpoofSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_sender:Z

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 137
    iget-object v1, p0, Lcom/rebel/module/DashboardFragment;->dashSentboxSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_direction:Z

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "config":Lcom/rebel/module/ConfigManager$ConfigData;
    :cond_0
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 142
    :goto_0
    return-void
.end method

.method private refreshStats()V
    .locals 5

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/DashboardFragment;->statTotalCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rebel/module/DashboardFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v1}, Lcom/rebel/module/SmsLogDatabase;->getTotalCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/rebel/module/DashboardFragment;->statTodayCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rebel/module/DashboardFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v1}, Lcom/rebel/module/SmsLogDatabase;->getCountToday()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/rebel/module/DashboardFragment;->statTelegramCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rebel/module/DashboardFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v1}, Lcom/rebel/module/SmsLogDatabase;->getTelegramSentCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/rebel/module/DashboardFragment;->statBlockedCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rebel/module/DashboardFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v1}, Lcom/rebel/module/SmsLogDatabase;->getBlockedCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/rebel/module/DashboardFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/rebel/module/SmsLogDatabase;->getRecentLogs(I)Ljava/util/List;

    move-result-object v0

    .line 153
    .local v0, "recent":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/SmsLogEntry;>;"
    iget-object v1, p0, Lcom/rebel/module/DashboardFragment;->recentAdapter:Lcom/rebel/module/SmsLogAdapter;

    invoke-virtual {v1, v0}, Lcom/rebel/module/SmsLogAdapter;->setLogs(Ljava/util/List;)V

    .line 155
    iget-object v1, p0, Lcom/rebel/module/DashboardFragment;->noRecentText:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/rebel/module/DashboardFragment;->recentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "recent":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/SmsLogEntry;>;"
    goto :goto_1

    .line 157
    :catch_0
    move-exception v0

    .line 160
    :goto_1
    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-src-module-DashboardFragment(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 71
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/rebel/module/DashboardFragment;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 73
    .local v0, "config":Lcom/rebel/module/ConfigManager$ConfigData;
    if-eqz v0, :cond_1

    .line 74
    iput-boolean p2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->hook_sms:Z

    .line 75
    iget-object v1, p0, Lcom/rebel/module/DashboardFragment;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v1, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z

    .line 77
    :cond_1
    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-src-module-DashboardFragment(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 80
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/rebel/module/DashboardFragment;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 82
    .local v0, "config":Lcom/rebel/module/ConfigManager$ConfigData;
    if-eqz v0, :cond_1

    .line 83
    iput-boolean p2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_sender:Z

    .line 84
    iget-object v1, p0, Lcom/rebel/module/DashboardFragment;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v1, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z

    .line 86
    :cond_1
    return-void
.end method

.method synthetic lambda$onViewCreated$2$com-src-module-DashboardFragment(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 89
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/rebel/module/DashboardFragment;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 91
    .local v0, "config":Lcom/rebel/module/ConfigManager$ConfigData;
    if-eqz v0, :cond_1

    .line 92
    iput-boolean p2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_direction:Z

    .line 93
    iget-object v1, p0, Lcom/rebel/module/DashboardFragment;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v1, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z

    .line 95
    :cond_1
    return-void
.end method

.method synthetic lambda$onViewCreated$3$com-src-module-DashboardFragment()V
    .locals 4

    .line 100
    invoke-virtual {p0}, Lcom/rebel/module/DashboardFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/rebel/module/DashboardFragment;->refreshStats()V

    .line 102
    iget-object v0, p0, Lcom/rebel/module/DashboardFragment;->refreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rebel/module/DashboardFragment;->refreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    sget v0, Lcom/rebel/module/R$layout;->fragment_dashboard:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .line 118
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 119
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/rebel/module/DashboardFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/rebel/module/DashboardFragment;->refreshStats()V

    .line 121
    invoke-direct {p0}, Lcom/rebel/module/DashboardFragment;->loadConfigSwitches()V

    .line 123
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 127
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/rebel/module/DashboardFragment;->refreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rebel/module/DashboardFragment;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 110
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 111
    invoke-direct {p0}, Lcom/rebel/module/DashboardFragment;->refreshStats()V

    .line 112
    invoke-direct {p0}, Lcom/rebel/module/DashboardFragment;->loadConfigSwitches()V

    .line 113
    iget-object v0, p0, Lcom/rebel/module/DashboardFragment;->refreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rebel/module/DashboardFragment;->refreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/rebel/module/DashboardFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/rebel/module/SmsLogDatabase;->getInstance(Landroid/content/Context;)Lcom/rebel/module/SmsLogDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/rebel/module/DashboardFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    .line 43
    :try_start_0
    new-instance v0, Lcom/rebel/module/ConfigManager;

    invoke-direct {v0}, Lcom/rebel/module/ConfigManager;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/DashboardFragment;->configManager:Lcom/rebel/module/ConfigManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 49
    :goto_0
    sget v0, Lcom/rebel/module/R$id;->statTotalCount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/DashboardFragment;->statTotalCount:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/rebel/module/R$id;->statTodayCount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/DashboardFragment;->statTodayCount:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/rebel/module/R$id;->statTelegramCount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/DashboardFragment;->statTelegramCount:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/rebel/module/R$id;->statBlockedCount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/DashboardFragment;->statBlockedCount:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/rebel/module/R$id;->dashHookSwitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/DashboardFragment;->dashHookSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 55
    sget v0, Lcom/rebel/module/R$id;->dashSpoofSwitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/DashboardFragment;->dashSpoofSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 56
    sget v0, Lcom/rebel/module/R$id;->dashSentboxSwitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/DashboardFragment;->dashSentboxSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 58
    sget v0, Lcom/rebel/module/R$id;->recentRecyclerView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/rebel/module/DashboardFragment;->recentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    sget v0, Lcom/rebel/module/R$id;->noRecentText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/DashboardFragment;->noRecentText:Landroid/widget/TextView;

    .line 62
    new-instance v0, Lcom/rebel/module/SmsLogAdapter;

    invoke-direct {v0}, Lcom/rebel/module/SmsLogAdapter;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/DashboardFragment;->recentAdapter:Lcom/rebel/module/SmsLogAdapter;

    .line 63
    iget-object v0, p0, Lcom/rebel/module/DashboardFragment;->recentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/rebel/module/DashboardFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    iget-object v0, p0, Lcom/rebel/module/DashboardFragment;->recentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/rebel/module/DashboardFragment;->recentAdapter:Lcom/rebel/module/SmsLogAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    invoke-direct {p0}, Lcom/rebel/module/DashboardFragment;->loadConfigSwitches()V

    .line 70
    iget-object v0, p0, Lcom/rebel/module/DashboardFragment;->dashHookSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/DashboardFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/rebel/module/DashboardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/rebel/module/DashboardFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    iget-object v0, p0, Lcom/rebel/module/DashboardFragment;->dashSpoofSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/DashboardFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/rebel/module/DashboardFragment$$ExternalSyntheticLambda1;-><init>(Lcom/rebel/module/DashboardFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    iget-object v0, p0, Lcom/rebel/module/DashboardFragment;->dashSentboxSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/DashboardFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/rebel/module/DashboardFragment$$ExternalSyntheticLambda2;-><init>(Lcom/rebel/module/DashboardFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/rebel/module/DashboardFragment;->refreshHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/rebel/module/DashboardFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/rebel/module/DashboardFragment$$ExternalSyntheticLambda3;-><init>(Lcom/rebel/module/DashboardFragment;)V

    iput-object v0, p0, Lcom/rebel/module/DashboardFragment;->refreshRunnable:Ljava/lang/Runnable;

    .line 105
    invoke-direct {p0}, Lcom/rebel/module/DashboardFragment;->refreshStats()V

    .line 106
    return-void
.end method
