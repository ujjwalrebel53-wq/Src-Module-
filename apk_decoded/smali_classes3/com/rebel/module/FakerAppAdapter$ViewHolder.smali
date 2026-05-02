.class Lcom/rebel/module/FakerAppAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FakerAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rebel/module/FakerAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field appIcon:Landroid/widget/ImageView;

.field appName:Landroid/widget/TextView;

.field appPackage:Landroid/widget/TextView;

.field menuBtn:Landroid/widget/ImageView;

.field randomizeBtn:Landroid/widget/ImageView;

.field statusChip:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 122
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 123
    sget v0, Lcom/rebel/module/R$id;->fakerAppIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rebel/module/FakerAppAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 124
    sget v0, Lcom/rebel/module/R$id;->fakerAppName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/FakerAppAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    .line 125
    sget v0, Lcom/rebel/module/R$id;->fakerAppPackage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/FakerAppAdapter$ViewHolder;->appPackage:Landroid/widget/TextView;

    .line 126
    sget v0, Lcom/rebel/module/R$id;->fakerStatusChip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/FakerAppAdapter$ViewHolder;->statusChip:Landroid/widget/TextView;

    .line 127
    sget v0, Lcom/rebel/module/R$id;->fakerRandomizeBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rebel/module/FakerAppAdapter$ViewHolder;->randomizeBtn:Landroid/widget/ImageView;

    .line 128
    sget v0, Lcom/rebel/module/R$id;->fakerMenuBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rebel/module/FakerAppAdapter$ViewHolder;->menuBtn:Landroid/widget/ImageView;

    .line 129
    return-void
.end method
