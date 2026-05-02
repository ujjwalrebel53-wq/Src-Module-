.class public Lcom/rebel/module/AppStatAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AppStatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rebel/module/AppStatAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/rebel/module/AppStatAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private stats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/AppStatAdapter;->stats:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/rebel/module/AppStatAdapter;->stats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 13
    check-cast p1, Lcom/rebel/module/AppStatAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/rebel/module/AppStatAdapter;->onBindViewHolder(Lcom/rebel/module/AppStatAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/rebel/module/AppStatAdapter$ViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Lcom/rebel/module/AppStatAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 31
    iget-object v0, p0, Lcom/rebel/module/AppStatAdapter;->stats:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 32
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    .local v1, "appName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 36
    .local v2, "count":I
    move-object v3, v1

    .line 37
    .local v3, "displayName":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    const-string v4, "\\."

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "parts":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-object v3, v4, v5

    .line 41
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_0
    iget-object v4, p1, Lcom/rebel/module/AppStatAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v4, p1, Lcom/rebel/module/AppStatAdapter$ViewHolder;->appPackage:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v4, p1, Lcom/rebel/module/AppStatAdapter$ViewHolder;->appCount:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const-string v4, "\ud83d\udcf1"

    .line 52
    .local v4, "icon":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "lower":Ljava/lang/String;
    const-string v6, "whatsapp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v4, "\ud83d\udcac"

    goto :goto_3

    .line 54
    :cond_1
    const-string v6, "telegram"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "\u2708\ufe0f"

    goto :goto_3

    .line 55
    :cond_2
    const-string v6, "bank"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "pay"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "upi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 56
    :cond_3
    const-string v6, "otp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "auth"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 57
    :cond_4
    const-string v6, "sms"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "message"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_0

    .line 58
    :cond_5
    const-string v6, "chrome"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "browser"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_6
    const-string v4, "\ud83c\udf10"

    goto :goto_3

    .line 57
    :cond_7
    :goto_0
    const-string v4, "\ud83d\udce8"

    goto :goto_3

    .line 56
    :cond_8
    :goto_1
    const-string v4, "\ud83d\udd10"

    goto :goto_3

    .line 55
    :cond_9
    :goto_2
    const-string v4, "\ud83c\udfe6"

    .line 59
    :cond_a
    :goto_3
    iget-object v6, p1, Lcom/rebel/module/AppStatAdapter$ViewHolder;->appIcon:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/rebel/module/AppStatAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/rebel/module/AppStatAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/rebel/module/AppStatAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/rebel/module/R$layout;->item_app_stat:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/rebel/module/AppStatAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/rebel/module/AppStatAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setStats(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p1, "statsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/rebel/module/AppStatAdapter;->stats:Ljava/util/List;

    .line 19
    invoke-virtual {p0}, Lcom/rebel/module/AppStatAdapter;->notifyDataSetChanged()V

    .line 20
    return-void
.end method
