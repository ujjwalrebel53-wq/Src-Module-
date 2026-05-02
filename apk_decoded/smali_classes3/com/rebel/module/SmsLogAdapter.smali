.class public Lcom/rebel/module/SmsLogAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SmsLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rebel/module/SmsLogAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/rebel/module/SmsLogAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final dateFmt:Ljava/text/SimpleDateFormat;

.field private logs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rebel/module/SmsLogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final timeFmt:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/SmsLogAdapter;->logs:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/rebel/module/SmsLogAdapter;->timeFmt:Ljava/text/SimpleDateFormat;

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd, HH:mm"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/rebel/module/SmsLogAdapter;->dateFmt:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/rebel/module/SmsLogAdapter;->logs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lcom/rebel/module/SmsLogAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/rebel/module/SmsLogAdapter;->onBindViewHolder(Lcom/rebel/module/SmsLogAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/rebel/module/SmsLogAdapter$ViewHolder;I)V
    .locals 10
    .param p1, "holder"    # Lcom/rebel/module/SmsLogAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 35
    iget-object v0, p0, Lcom/rebel/module/SmsLogAdapter;->logs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rebel/module/SmsLogEntry;

    .line 37
    .local v0, "entry":Lcom/rebel/module/SmsLogEntry;
    iget-object v1, p1, Lcom/rebel/module/SmsLogAdapter$ViewHolder;->sourceApp:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/rebel/module/SmsLogEntry;->getSourceApp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v1, p1, Lcom/rebel/module/SmsLogAdapter$ViewHolder;->destNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/rebel/module/SmsLogEntry;->getDestNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v1, p1, Lcom/rebel/module/SmsLogAdapter$ViewHolder;->message:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/rebel/module/SmsLogEntry;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v1, p1, Lcom/rebel/module/SmsLogAdapter$ViewHolder;->statusIcon:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/rebel/module/SmsLogEntry;->getStatusEmoji()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 44
    .local v1, "now":J
    invoke-virtual {v0}, Lcom/rebel/module/SmsLogEntry;->getTimestamp()J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 45
    .local v3, "diff":J
    const-wide/32 v5, 0x5265c00

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 46
    iget-object v5, p1, Lcom/rebel/module/SmsLogAdapter$ViewHolder;->timestamp:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/rebel/module/SmsLogAdapter;->timeFmt:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/rebel/module/SmsLogEntry;->getTimestamp()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v5, p1, Lcom/rebel/module/SmsLogAdapter$ViewHolder;->timestamp:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/rebel/module/SmsLogAdapter;->dateFmt:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/rebel/module/SmsLogEntry;->getTimestamp()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/rebel/module/SmsLogAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/rebel/module/SmsLogAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/rebel/module/SmsLogAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/rebel/module/R$layout;->item_sms_log:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/rebel/module/SmsLogAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/rebel/module/SmsLogAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setLogs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rebel/module/SmsLogEntry;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/SmsLogEntry;>;"
    iput-object p1, p0, Lcom/rebel/module/SmsLogAdapter;->logs:Ljava/util/List;

    .line 23
    invoke-virtual {p0}, Lcom/rebel/module/SmsLogAdapter;->notifyDataSetChanged()V

    .line 24
    return-void
.end method
