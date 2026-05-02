.class public Lcom/rebel/module/LogsFragment;
.super Landroidx/fragment/app/Fragment;
.source "LogsFragment.java"


# instance fields
.field private adapter:Lcom/rebel/module/SmsLogAdapter;

.field private chipAll:Landroid/widget/TextView;

.field private chipBlocked:Landroid/widget/TextView;

.field private chipFailed:Landroid/widget/TextView;

.field private chipSent:Landroid/widget/TextView;

.field private clearAllBtn:Landroid/widget/TextView;

.field private currentFilter:Ljava/lang/String;

.field private database:Lcom/rebel/module/SmsLogDatabase;

.field private emptyText:Landroid/widget/TextView;

.field private logCountText:Landroid/widget/TextView;

.field private logsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private searchHandler:Landroid/os/Handler;

.field private searchInput:Landroid/widget/EditText;


# direct methods
.method static bridge synthetic -$$Nest$fgetsearchHandler(Lcom/rebel/module/LogsFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/rebel/module/LogsFragment;->searchHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadLogs(Lcom/rebel/module/LogsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/rebel/module/LogsFragment;->loadLogs()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 33
    const-string v0, "ALL"

    iput-object v0, p0, Lcom/rebel/module/LogsFragment;->currentFilter:Ljava/lang/String;

    return-void
.end method

.method private loadLogs()V
    .locals 6

    .line 129
    iget-object v0, p0, Lcom/rebel/module/LogsFragment;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "searchQuery":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/rebel/module/LogsFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v1, v0}, Lcom/rebel/module/SmsLogDatabase;->searchLogs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .local v1, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/SmsLogEntry;>;"
    goto :goto_2

    .line 135
    .end local v1    # "logs":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/SmsLogEntry;>;"
    :cond_0
    iget-object v1, p0, Lcom/rebel/module/LogsFragment;->currentFilter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "FAILED"

    const-string v5, "SENT"

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v3, "BLOCKED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 146
    iget-object v1, p0, Lcom/rebel/module/LogsFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v1}, Lcom/rebel/module/SmsLogDatabase;->getAllLogs()Ljava/util/List;

    move-result-object v1

    .restart local v1    # "logs":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/SmsLogEntry;>;"
    goto :goto_2

    .line 143
    .end local v1    # "logs":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/SmsLogEntry;>;"
    :pswitch_0
    iget-object v1, p0, Lcom/rebel/module/LogsFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v1}, Lcom/rebel/module/SmsLogDatabase;->getBlockedLogs()Ljava/util/List;

    move-result-object v1

    .line 144
    .restart local v1    # "logs":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/SmsLogEntry;>;"
    goto :goto_2

    .line 140
    .end local v1    # "logs":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/SmsLogEntry;>;"
    :pswitch_1
    iget-object v1, p0, Lcom/rebel/module/LogsFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v1, v4}, Lcom/rebel/module/SmsLogDatabase;->getLogsByStatus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 141
    .restart local v1    # "logs":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/SmsLogEntry;>;"
    goto :goto_2

    .line 137
    .end local v1    # "logs":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/SmsLogEntry;>;"
    :pswitch_2
    iget-object v1, p0, Lcom/rebel/module/LogsFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v1, v5}, Lcom/rebel/module/SmsLogDatabase;->getLogsByStatus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 138
    .restart local v1    # "logs":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/SmsLogEntry;>;"
    nop

    .line 151
    :goto_2
    iget-object v3, p0, Lcom/rebel/module/LogsFragment;->adapter:Lcom/rebel/module/SmsLogAdapter;

    invoke-virtual {v3, v1}, Lcom/rebel/module/SmsLogAdapter;->setLogs(Ljava/util/List;)V

    .line 152
    iget-object v3, p0, Lcom/rebel/module/LogsFragment;->logCountText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " entries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v3, p0, Lcom/rebel/module/LogsFragment;->emptyText:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_3

    :cond_2
    move v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v3, p0, Lcom/rebel/module/LogsFragment;->logsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v5

    :cond_3
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 155
    return-void

    :sswitch_data_0
    .sparse-switch
        0x26c798 -> :sswitch_2
        0x29846dcc -> :sswitch_1
        0x7b29883d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setFilter(Ljava/lang/String;)V
    .locals 4
    .param p1, "filter"    # Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/rebel/module/LogsFragment;->currentFilter:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/rebel/module/LogsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/rebel/module/R$color;->chipTextSelected:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 118
    .local v0, "selectedColor":I
    invoke-virtual {p0}, Lcom/rebel/module/LogsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/rebel/module/R$color;->chipText:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 120
    .local v1, "normalColor":I
    iget-object v2, p0, Lcom/rebel/module/LogsFragment;->chipAll:Landroid/widget/TextView;

    const-string v3, "ALL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v2, p0, Lcom/rebel/module/LogsFragment;->chipSent:Landroid/widget/TextView;

    const-string v3, "SENT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v2, p0, Lcom/rebel/module/LogsFragment;->chipFailed:Landroid/widget/TextView;

    const-string v3, "FAILED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v2, p0, Lcom/rebel/module/LogsFragment;->chipBlocked:Landroid/widget/TextView;

    const-string v3, "BLOCKED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    invoke-direct {p0}, Lcom/rebel/module/LogsFragment;->loadLogs()V

    .line 126
    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-src-module-LogsFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 66
    const-string v0, "ALL"

    invoke-direct {p0, v0}, Lcom/rebel/module/LogsFragment;->setFilter(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-src-module-LogsFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 67
    const-string v0, "SENT"

    invoke-direct {p0, v0}, Lcom/rebel/module/LogsFragment;->setFilter(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$2$com-src-module-LogsFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 68
    const-string v0, "FAILED"

    invoke-direct {p0, v0}, Lcom/rebel/module/LogsFragment;->setFilter(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$3$com-src-module-LogsFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 69
    const-string v0, "BLOCKED"

    invoke-direct {p0, v0}, Lcom/rebel/module/LogsFragment;->setFilter(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$4$com-src-module-LogsFragment(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 88
    iget-object v0, p0, Lcom/rebel/module/LogsFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    invoke-virtual {v0}, Lcom/rebel/module/SmsLogDatabase;->clearAll()V

    .line 89
    invoke-direct {p0}, Lcom/rebel/module/LogsFragment;->loadLogs()V

    .line 90
    invoke-virtual {p0}, Lcom/rebel/module/LogsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/rebel/module/R$string;->logs_cleared:I

    invoke-virtual {p0, v1}, Lcom/rebel/module/LogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    return-void
.end method

.method synthetic lambda$onViewCreated$5$com-src-module-LogsFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 84
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rebel/module/LogsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/rebel/module/R$string;->clear_all_logs:I

    .line 85
    invoke-virtual {p0, v1}, Lcom/rebel/module/LogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rebel/module/R$string;->confirm_clear_logs:I

    .line 86
    invoke-virtual {p0, v1}, Lcom/rebel/module/LogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rebel/module/R$string;->yes:I

    .line 87
    invoke-virtual {p0, v1}, Lcom/rebel/module/LogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/rebel/module/LogsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/rebel/module/LogsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/rebel/module/LogsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rebel/module/R$string;->no:I

    .line 92
    invoke-virtual {p0, v1}, Lcom/rebel/module/LogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    sget v0, Lcom/rebel/module/R$layout;->fragment_logs:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .line 107
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 108
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/rebel/module/LogsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/rebel/module/LogsFragment;->loadLogs()V

    .line 111
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 101
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 102
    invoke-direct {p0}, Lcom/rebel/module/LogsFragment;->loadLogs()V

    .line 103
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/rebel/module/LogsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/rebel/module/SmsLogDatabase;->getInstance(Landroid/content/Context;)Lcom/rebel/module/SmsLogDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/rebel/module/LogsFragment;->database:Lcom/rebel/module/SmsLogDatabase;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/rebel/module/LogsFragment;->searchHandler:Landroid/os/Handler;

    .line 50
    sget v0, Lcom/rebel/module/R$id;->searchInput:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rebel/module/LogsFragment;->searchInput:Landroid/widget/EditText;

    .line 51
    sget v0, Lcom/rebel/module/R$id;->clearAllBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/LogsFragment;->clearAllBtn:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/rebel/module/R$id;->chipAll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/LogsFragment;->chipAll:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/rebel/module/R$id;->chipSent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/LogsFragment;->chipSent:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/rebel/module/R$id;->chipFailed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/LogsFragment;->chipFailed:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/rebel/module/R$id;->chipBlocked:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/LogsFragment;->chipBlocked:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/rebel/module/R$id;->logCountText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/LogsFragment;->logCountText:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/rebel/module/R$id;->logsRecyclerView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/rebel/module/LogsFragment;->logsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    sget v0, Lcom/rebel/module/R$id;->emptyText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/LogsFragment;->emptyText:Landroid/widget/TextView;

    .line 61
    new-instance v0, Lcom/rebel/module/SmsLogAdapter;

    invoke-direct {v0}, Lcom/rebel/module/SmsLogAdapter;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/LogsFragment;->adapter:Lcom/rebel/module/SmsLogAdapter;

    .line 62
    iget-object v0, p0, Lcom/rebel/module/LogsFragment;->logsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/rebel/module/LogsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    iget-object v0, p0, Lcom/rebel/module/LogsFragment;->logsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/rebel/module/LogsFragment;->adapter:Lcom/rebel/module/SmsLogAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 66
    iget-object v0, p0, Lcom/rebel/module/LogsFragment;->chipAll:Landroid/widget/TextView;

    new-instance v1, Lcom/rebel/module/LogsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/rebel/module/LogsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/rebel/module/LogsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/rebel/module/LogsFragment;->chipSent:Landroid/widget/TextView;

    new-instance v1, Lcom/rebel/module/LogsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/rebel/module/LogsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/rebel/module/LogsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/rebel/module/LogsFragment;->chipFailed:Landroid/widget/TextView;

    new-instance v1, Lcom/rebel/module/LogsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/rebel/module/LogsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/rebel/module/LogsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/rebel/module/LogsFragment;->chipBlocked:Landroid/widget/TextView;

    new-instance v1, Lcom/rebel/module/LogsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/rebel/module/LogsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/rebel/module/LogsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/rebel/module/LogsFragment;->searchInput:Landroid/widget/EditText;

    new-instance v1, Lcom/rebel/module/LogsFragment$1;

    invoke-direct {v1, p0}, Lcom/rebel/module/LogsFragment$1;-><init>(Lcom/rebel/module/LogsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    iget-object v0, p0, Lcom/rebel/module/LogsFragment;->clearAllBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/rebel/module/LogsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/rebel/module/LogsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/rebel/module/LogsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const-string v0, "ALL"

    invoke-direct {p0, v0}, Lcom/rebel/module/LogsFragment;->setFilter(Ljava/lang/String;)V

    .line 97
    return-void
.end method
