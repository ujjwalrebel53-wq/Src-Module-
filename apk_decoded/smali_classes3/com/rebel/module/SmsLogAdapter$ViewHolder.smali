.class Lcom/rebel/module/SmsLogAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SmsLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rebel/module/SmsLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field destNumber:Landroid/widget/TextView;

.field message:Landroid/widget/TextView;

.field sourceApp:Landroid/widget/TextView;

.field statusIcon:Landroid/widget/TextView;

.field timestamp:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 61
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 62
    sget v0, Lcom/rebel/module/R$id;->logSourceApp:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/SmsLogAdapter$ViewHolder;->sourceApp:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/rebel/module/R$id;->logTimestamp:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/SmsLogAdapter$ViewHolder;->timestamp:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/rebel/module/R$id;->logDestNumber:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/SmsLogAdapter$ViewHolder;->destNumber:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/rebel/module/R$id;->logStatusIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/SmsLogAdapter$ViewHolder;->statusIcon:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/rebel/module/R$id;->logMessage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/SmsLogAdapter$ViewHolder;->message:Landroid/widget/TextView;

    .line 67
    return-void
.end method
