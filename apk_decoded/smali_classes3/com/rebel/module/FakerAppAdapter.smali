.class public Lcom/rebel/module/FakerAppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FakerAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;,
        Lcom/rebel/module/FakerAppAdapter$ViewHolder;,
        Lcom/rebel/module/FakerAppAdapter$AppInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/rebel/module/FakerAppAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rebel/module/FakerAppAdapter$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fakerManager:Lcom/rebel/module/DeviceFakerManager;

.field private listener:Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;


# direct methods
.method public constructor <init>(Lcom/rebel/module/DeviceFakerManager;Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;)V
    .locals 1
    .param p1, "manager"    # Lcom/rebel/module/DeviceFakerManager;
    .param p2, "listener"    # Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/FakerAppAdapter;->apps:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/rebel/module/FakerAppAdapter;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    .line 43
    iput-object p2, p0, Lcom/rebel/module/FakerAppAdapter;->listener:Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;

    .line 44
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/rebel/module/FakerAppAdapter;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-src-module-FakerAppAdapter(ZLcom/rebel/module/FakerAppAdapter$AppInfo;Landroid/view/View;)V
    .locals 1
    .param p1, "hasProfile"    # Z
    .param p2, "app"    # Lcom/rebel/module/FakerAppAdapter$AppInfo;
    .param p3, "v"    # Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/rebel/module/FakerAppAdapter;->listener:Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;

    if-eqz v0, :cond_1

    .line 76
    nop

    .line 79
    iget-object v0, p0, Lcom/rebel/module/FakerAppAdapter;->listener:Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;

    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-interface {v0, p2}, Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;->onReRandomize(Lcom/rebel/module/FakerAppAdapter$AppInfo;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {v0, p2}, Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;->onRandomize(Lcom/rebel/module/FakerAppAdapter$AppInfo;)V

    .line 82
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$onBindViewHolder$1$com-src-module-FakerAppAdapter(Lcom/rebel/module/FakerAppAdapter$AppInfo;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "app"    # Lcom/rebel/module/FakerAppAdapter$AppInfo;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 95
    iget-object v0, p0, Lcom/rebel/module/FakerAppAdapter;->listener:Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 96
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 102
    return v1

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/rebel/module/FakerAppAdapter;->listener:Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;

    invoke-interface {v0, p1}, Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;->onRandomize(Lcom/rebel/module/FakerAppAdapter$AppInfo;)V

    return v2

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/rebel/module/FakerAppAdapter;->listener:Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;

    invoke-interface {v0, p1}, Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;->onClear(Lcom/rebel/module/FakerAppAdapter$AppInfo;)V

    return v2

    .line 98
    :pswitch_2
    iget-object v0, p0, Lcom/rebel/module/FakerAppAdapter;->listener:Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;

    invoke-interface {v0, p1}, Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;->onViewProfile(Lcom/rebel/module/FakerAppAdapter$AppInfo;)V

    return v2

    .line 97
    :pswitch_3
    iget-object v0, p0, Lcom/rebel/module/FakerAppAdapter;->listener:Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;

    invoke-interface {v0, p1}, Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;->onReRandomize(Lcom/rebel/module/FakerAppAdapter$AppInfo;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$onBindViewHolder$2$com-src-module-FakerAppAdapter(ZLcom/rebel/module/FakerAppAdapter$AppInfo;Landroid/view/View;)V
    .locals 5
    .param p1, "hasProfile"    # Z
    .param p2, "app"    # Lcom/rebel/module/FakerAppAdapter$AppInfo;
    .param p3, "v"    # Landroid/view/View;

    .line 86
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 87
    .local v0, "popup":Landroid/widget/PopupMenu;
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "\ud83d\udd04 Re-Randomize"

    invoke-interface {v2, v1, v3, v1, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 89
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "\ud83d\udccb View Profile"

    invoke-interface {v2, v1, v3, v1, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 90
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "\u274c Clear Profile"

    invoke-interface {v2, v1, v3, v1, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x4

    const-string v4, "\ud83c\udfb2 Randomize"

    invoke-interface {v2, v1, v3, v1, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 94
    :goto_0
    new-instance v1, Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/rebel/module/FakerAppAdapter;Lcom/rebel/module/FakerAppAdapter$AppInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 104
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 105
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/rebel/module/FakerAppAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/rebel/module/FakerAppAdapter;->onBindViewHolder(Lcom/rebel/module/FakerAppAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/rebel/module/FakerAppAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/rebel/module/FakerAppAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 61
    iget-object v0, p0, Lcom/rebel/module/FakerAppAdapter;->apps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rebel/module/FakerAppAdapter$AppInfo;

    .line 62
    .local v0, "app":Lcom/rebel/module/FakerAppAdapter$AppInfo;
    iget-object v1, p1, Lcom/rebel/module/FakerAppAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/rebel/module/FakerAppAdapter$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p1, Lcom/rebel/module/FakerAppAdapter$ViewHolder;->appPackage:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/rebel/module/FakerAppAdapter$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, v0, Lcom/rebel/module/FakerAppAdapter$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p1, Lcom/rebel/module/FakerAppAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/rebel/module/FakerAppAdapter$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/rebel/module/FakerAppAdapter;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    iget-object v2, v0, Lcom/rebel/module/FakerAppAdapter$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/rebel/module/DeviceFakerManager;->hasProfile(Ljava/lang/String;)Z

    move-result v1

    .line 70
    .local v1, "hasProfile":Z
    iget-object v2, p1, Lcom/rebel/module/FakerAppAdapter$ViewHolder;->statusChip:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const-string v3, "\u2705 Active"

    goto :goto_0

    :cond_1
    const-string v3, "Not Set"

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, p1, Lcom/rebel/module/FakerAppAdapter$ViewHolder;->statusChip:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    const v3, -0xff0078

    goto :goto_1

    :cond_2
    const v3, -0xb5af67

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object v2, p1, Lcom/rebel/module/FakerAppAdapter$ViewHolder;->randomizeBtn:Landroid/widget/ImageView;

    new-instance v3, Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/rebel/module/FakerAppAdapter;ZLcom/rebel/module/FakerAppAdapter$AppInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, p1, Lcom/rebel/module/FakerAppAdapter$ViewHolder;->menuBtn:Landroid/widget/ImageView;

    new-instance v3, Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, v0}, Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/rebel/module/FakerAppAdapter;ZLcom/rebel/module/FakerAppAdapter$AppInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/rebel/module/FakerAppAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/rebel/module/FakerAppAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/rebel/module/FakerAppAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/rebel/module/R$layout;->item_faker_app:I

    .line 55
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/rebel/module/FakerAppAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/rebel/module/FakerAppAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public refreshStatus()V
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcom/rebel/module/FakerAppAdapter;->notifyDataSetChanged()V

    .line 115
    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rebel/module/FakerAppAdapter$AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/FakerAppAdapter$AppInfo;>;"
    iput-object p1, p0, Lcom/rebel/module/FakerAppAdapter;->apps:Ljava/util/List;

    .line 48
    invoke-virtual {p0}, Lcom/rebel/module/FakerAppAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method
