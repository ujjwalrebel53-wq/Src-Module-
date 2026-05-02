.class Lcom/rebel/module/AppStatAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppStatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rebel/module/AppStatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field appCount:Landroid/widget/TextView;

.field appIcon:Landroid/widget/TextView;

.field appName:Landroid/widget/TextView;

.field appPackage:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 71
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 72
    sget v0, Lcom/rebel/module/R$id;->appIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/AppStatAdapter$ViewHolder;->appIcon:Landroid/widget/TextView;

    .line 73
    sget v0, Lcom/rebel/module/R$id;->appName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/AppStatAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/rebel/module/R$id;->appPackage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/AppStatAdapter$ViewHolder;->appPackage:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/rebel/module/R$id;->appCount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/AppStatAdapter$ViewHolder;->appCount:Landroid/widget/TextView;

    .line 76
    return-void
.end method
