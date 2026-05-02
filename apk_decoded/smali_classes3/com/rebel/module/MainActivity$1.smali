.class Lcom/rebel/module/MainActivity$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rebel/module/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rebel/module/MainActivity;

.field final synthetic val$pageLabel:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/rebel/module/MainActivity;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rebel/module/MainActivity;

    .line 110
    iput-object p1, p0, Lcom/rebel/module/MainActivity$1;->this$0:Lcom/rebel/module/MainActivity;

    iput-object p2, p0, Lcom/rebel/module/MainActivity$1;->val$pageLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .line 113
    nop

    .line 116
    iget-object v0, p0, Lcom/rebel/module/MainActivity$1;->val$pageLabel:Landroid/widget/TextView;

    .line 113
    if-nez p1, :cond_0

    .line 114
    const-string v1, "Airtel Thanks"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    :cond_0
    const-string v1, "NAVI"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_0
    return-void
.end method
