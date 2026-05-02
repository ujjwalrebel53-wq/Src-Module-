.class public Lcom/rebel/module/AnalyticsFragment;
.super Landroidx/fragment/app/Fragment;
.source "AnalyticsFragment.java"


# instance fields
.field private analyticsSuccessRate:Landroid/widget/TextView;

.field private analyticsTelegramCount:Landroid/widget/TextView;

.field private analyticsTotalCount:Landroid/widget/TextView;

.field private analyticsWeekCount:Landroid/widget/TextView;

.field private appStatAdapter:Lcom/rebel/module/AppStatAdapter;

.field private appStatsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private database:Lcom/rebel/module/SmsLogDatabase;

.field private exportCsvButton:Lcom/google/android/material/button/MaterialButton;

.field private noAppStatsText:Landroid/widget/TextView;

.field private topNumbersAdapter:Lcom/rebel/module/AppStatAdapter;

.field private topNumbersRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private loadAnalytics()V
    .locals 5

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->analyticsTotalCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rebel/module/AnalyticsFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v1}, Lcom/rebel/module/SmsLogDatabase;->getTotalCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->analyticsWeekCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rebel/module/AnalyticsFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v1}, Lcom/rebel/module/SmsLogDatabase;->getCountThisWeek()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->analyticsTelegramCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rebel/module/AnalyticsFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v1}, Lcom/rebel/module/SmsLogDatabase;->getTelegramSentCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->analyticsSuccessRate:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.0f%%"

    iget-object v3, p0, Lcom/rebel/module/AnalyticsFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v3}, Lcom/rebel/module/SmsLogDatabase;->getTelegramSuccessRate()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v0}, Lcom/rebel/module/SmsLogDatabase;->getPerAppStats()Ljava/util/Map;

    move-result-object v0

    .line 95
    .local v0, "appStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/rebel/module/AnalyticsFragment;->appStatAdapter:Lcom/rebel/module/AppStatAdapter;

    invoke-virtual {v1, v0}, Lcom/rebel/module/AppStatAdapter;->setStats(Ljava/util/Map;)V

    .line 96
    iget-object v1, p0, Lcom/rebel/module/AnalyticsFragment;->noAppStatsText:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

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

    .line 97
    iget-object v1, p0, Lcom/rebel/module/AnalyticsFragment;->appStatsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 100
    iget-object v1, p0, Lcom/rebel/module/AnalyticsFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v1}, Lcom/rebel/module/SmsLogDatabase;->getTopNumbers()Ljava/util/Map;

    move-result-object v1

    .line 101
    .local v1, "topNumbers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/rebel/module/AnalyticsFragment;->topNumbersAdapter:Lcom/rebel/module/AppStatAdapter;

    invoke-virtual {v2, v1}, Lcom/rebel/module/AppStatAdapter;->setStats(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "appStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "topNumbers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    .line 105
    :goto_1
    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-src-module-AnalyticsFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v0}, Lcom/rebel/module/SmsLogDatabase;->exportAsCsv()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/rebel/module/AnalyticsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/rebel/module/R$string;->csv_exported:I

    invoke-virtual {p0, v3}, Lcom/rebel/module/AnalyticsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/rebel/module/AnalyticsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Export failed"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 67
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    sget v0, Lcom/rebel/module/R$layout;->fragment_analytics:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .line 80
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 81
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/rebel/module/AnalyticsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/rebel/module/AnalyticsFragment;->loadAnalytics()V

    .line 84
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 74
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 75
    invoke-direct {p0}, Lcom/rebel/module/AnalyticsFragment;->loadAnalytics()V

    .line 76
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/rebel/module/AnalyticsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/rebel/module/SmsLogDatabase;->getInstance(Landroid/content/Context;)Lcom/rebel/module/SmsLogDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    .line 41
    sget v0, Lcom/rebel/module/R$id;->analyticsTotalCount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->analyticsTotalCount:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/rebel/module/R$id;->analyticsWeekCount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->analyticsWeekCount:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/rebel/module/R$id;->analyticsTelegramCount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->analyticsTelegramCount:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/rebel/module/R$id;->analyticsSuccessRate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->analyticsSuccessRate:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/rebel/module/R$id;->appStatsRecyclerView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->appStatsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    sget v0, Lcom/rebel/module/R$id;->topNumbersRecyclerView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->topNumbersRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    sget v0, Lcom/rebel/module/R$id;->noAppStatsText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->noAppStatsText:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/rebel/module/R$id;->exportCsvButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->exportCsvButton:Lcom/google/android/material/button/MaterialButton;

    .line 51
    new-instance v0, Lcom/rebel/module/AppStatAdapter;

    invoke-direct {v0}, Lcom/rebel/module/AppStatAdapter;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->appStatAdapter:Lcom/rebel/module/AppStatAdapter;

    .line 52
    iget-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->appStatsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/rebel/module/AnalyticsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    iget-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->appStatsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/rebel/module/AnalyticsFragment;->appStatAdapter:Lcom/rebel/module/AppStatAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 55
    new-instance v0, Lcom/rebel/module/AppStatAdapter;

    invoke-direct {v0}, Lcom/rebel/module/AppStatAdapter;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->topNumbersAdapter:Lcom/rebel/module/AppStatAdapter;

    .line 56
    iget-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->topNumbersRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/rebel/module/AnalyticsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 57
    iget-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->topNumbersRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/rebel/module/AnalyticsFragment;->topNumbersAdapter:Lcom/rebel/module/AppStatAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 60
    iget-object v0, p0, Lcom/rebel/module/AnalyticsFragment;->exportCsvButton:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/rebel/module/AnalyticsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/rebel/module/AnalyticsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/rebel/module/AnalyticsFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-direct {p0}, Lcom/rebel/module/AnalyticsFragment;->loadAnalytics()V

    .line 70
    return-void
.end method
