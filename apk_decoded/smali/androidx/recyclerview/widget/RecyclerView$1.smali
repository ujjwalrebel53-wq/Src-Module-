.class Landroidx/recyclerview/widget/RecyclerView$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 452
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$1;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 455
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$1;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$1;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$1;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 464
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$1;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 459
    if-nez v0, :cond_1

    .line 460
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 462
    return-void

    .line 464
    :cond_1
    iget-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 468
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$1;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 464
    if-eqz v0, :cond_2

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 466
    return-void

    .line 468
    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 469
    return-void

    .line 457
    :cond_3
    :goto_0
    return-void
.end method
