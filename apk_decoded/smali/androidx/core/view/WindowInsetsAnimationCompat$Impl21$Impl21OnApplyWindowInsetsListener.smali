.class Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl21OnApplyWindowInsetsListener"
.end annotation


# static fields
.field private static final COMPAT_ANIMATION_DURATION:I = 0xa0


# instance fields
.field final mCallback:Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

.field private mLastInsets:Landroidx/core/view/WindowInsetsCompat;


# direct methods
.method constructor <init>(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mCallback:Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    .line 701
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 702
    .local v0, "rootWindowInsets":Landroidx/core/view/WindowInsetsCompat;
    if-eqz v0, :cond_0

    .line 705
    new-instance v1, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v1, v0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    goto :goto_0

    .line 706
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 707
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 712
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    invoke-static {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 714
    invoke-static/range {p1 .. p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->forwardToViewIfNeeded(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 717
    :cond_0
    invoke-static {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v3

    .line 719
    .local v3, "targetInsets":Landroidx/core/view/WindowInsetsCompat;
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-nez v0, :cond_1

    .line 720
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 723
    :cond_1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-nez v0, :cond_2

    .line 727
    iput-object v3, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 728
    invoke-static/range {p1 .. p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->forwardToViewIfNeeded(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 741
    :cond_2
    invoke-static {p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->getCallback(Landroid/view/View;)Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    move-result-object v7

    .line 742
    .local v7, "callback":Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
    if-eqz v7, :cond_3

    iget-object v0, v7, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->mDispachedInsets:Landroid/view/WindowInsets;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 743
    invoke-static/range {p1 .. p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->forwardToViewIfNeeded(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 747
    :cond_3
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v3, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->buildAnimationMask(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;)I

    move-result v5

    .line 748
    .local v5, "animationMask":I
    if-nez v5, :cond_4

    .line 752
    invoke-static/range {p1 .. p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->forwardToViewIfNeeded(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 755
    :cond_4
    iget-object v4, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 756
    .local v4, "startingInsets":Landroidx/core/view/WindowInsetsCompat;
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const-wide/16 v8, 0xa0

    invoke-direct {v0, v5, v6, v8, v9}, Landroidx/core/view/WindowInsetsAnimationCompat;-><init>(ILandroid/view/animation/Interpolator;J)V

    .line 759
    .local v0, "anim":Landroidx/core/view/WindowInsetsAnimationCompat;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroidx/core/view/WindowInsetsAnimationCompat;->setFraction(F)V

    .line 761
    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 762
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat;->getDurationMillis()J

    move-result-wide v8

    .line 761
    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 765
    .local v8, "animator":Landroid/animation/ValueAnimator;
    invoke-static {v3, v4, v5}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->computeAnimationBounds(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;I)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    move-result-object v9

    .line 769
    .local v9, "animationBounds":Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    const/4 v6, 0x0

    invoke-static {p1, v0, p2, v6}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnPrepare(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;Landroid/view/WindowInsets;Z)V

    .line 771
    move-object v2, v0

    .end local v0    # "anim":Landroidx/core/view/WindowInsetsAnimationCompat;
    .local v2, "anim":Landroidx/core/view/WindowInsetsAnimationCompat;
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;-><init>(Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;ILandroid/view/View;)V

    move-object v6, v3

    move-object v11, v4

    move v10, v5

    move-object v3, v2

    .end local v2    # "anim":Landroidx/core/view/WindowInsetsAnimationCompat;
    .end local v4    # "startingInsets":Landroidx/core/view/WindowInsetsCompat;
    .end local v5    # "animationMask":I
    .local v3, "anim":Landroidx/core/view/WindowInsetsAnimationCompat;
    .local v6, "targetInsets":Landroidx/core/view/WindowInsetsCompat;
    .local v10, "animationMask":I
    .local v11, "startingInsets":Landroidx/core/view/WindowInsetsCompat;
    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 786
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;

    invoke-direct {v0, p0, v3, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;-><init>(Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;Landroidx/core/view/WindowInsetsAnimationCompat;Landroid/view/View;)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 798
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;

    move-object v2, p1

    move-object v5, v8

    move-object v4, v9

    .end local v8    # "animator":Landroid/animation/ValueAnimator;
    .end local v9    # "animationBounds":Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .local v4, "animationBounds":Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .local v5, "animator":Landroid/animation/ValueAnimator;
    invoke-direct/range {v0 .. v5}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;-><init>(Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;Landroid/animation/ValueAnimator;)V

    invoke-static {p1, v0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 805
    iput-object v6, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 807
    invoke-static/range {p1 .. p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->forwardToViewIfNeeded(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
