.class public Lcom/google/android/material/carousel/HeroCarouselStrategy;
.super Lcom/google/android/material/carousel/CarouselStrategy;
.source "HeroCarouselStrategy.java"


# static fields
.field private static final MEDIUM_COUNTS:[I

.field private static final SMALL_COUNTS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/android/material/carousel/HeroCarouselStrategy;->SMALL_COUNTS:[I

    .line 46
    const/4 v1, 0x0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/HeroCarouselStrategy;->MEDIUM_COUNTS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
    .locals 17
    .param p1, "carousel"    # Lcom/google/android/material/carousel/Carousel;
    .param p2, "child"    # Landroid/view/View;

    .line 51
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v0

    .line 52
    .local v0, "availableSpace":I
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v0

    .line 56
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 57
    .local v1, "childLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v3, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 59
    .local v2, "childMargins":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 61
    .local v3, "measuredChildSize":F
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    iget v4, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v5, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    int-to-float v2, v4

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v3, v4

    .line 66
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMin(Landroid/content/Context;)F

    move-result v4

    add-float v7, v4, v2

    .line 67
    .local v7, "smallChildSizeMin":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMax(Landroid/content/Context;)F

    move-result v4

    add-float v8, v4, v2

    .line 69
    .local v8, "smallChildSizeMax":F
    add-float v4, v3, v2

    int-to-float v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 73
    .local v12, "targetLargeChildSize":F
    const/high16 v4, 0x40400000    # 3.0f

    div-float v4, v3, v4

    add-float/2addr v4, v2

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMin(Landroid/content/Context;)F

    move-result v5

    add-float/2addr v5, v2

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMax(Landroid/content/Context;)F

    move-result v6

    add-float/2addr v6, v2

    .line 74
    invoke-static {v4, v5, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v6

    .line 78
    .local v6, "targetSmallChildSize":F
    add-float v4, v12, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float v10, v4, v5

    .line 82
    .local v10, "targetMediumChildSize":F
    int-to-float v4, v0

    sget-object v5, Lcom/google/android/material/carousel/HeroCarouselStrategy;->SMALL_COUNTS:[I

    invoke-static {v5}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->maxValue([I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    sub-float/2addr v4, v5

    .line 83
    .local v4, "minAvailableLargeSpace":F
    div-float v5, v4, v12

    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    move v15, v3

    move/from16 v16, v4

    .end local v3    # "measuredChildSize":F
    .end local v4    # "minAvailableLargeSpace":F
    .local v15, "measuredChildSize":F
    .local v16, "minAvailableLargeSpace":F
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-int v3, v3

    .line 84
    .local v3, "largeCountMin":I
    int-to-float v4, v0

    div-float/2addr v4, v12

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 85
    .local v4, "largeCountMax":I
    sub-int v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    new-array v13, v5, [I

    .line 86
    .local v13, "largeCounts":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v9, v13

    if-ge v5, v9, :cond_2

    .line 87
    add-int v9, v3, v5

    aput v9, v13, v5

    .line 86
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 89
    .end local v5    # "i":I
    :cond_2
    int-to-float v5, v0

    sget-object v9, Lcom/google/android/material/carousel/HeroCarouselStrategy;->SMALL_COUNTS:[I

    sget-object v11, Lcom/google/android/material/carousel/HeroCarouselStrategy;->MEDIUM_COUNTS:[I

    invoke-static/range {v5 .. v13}, Lcom/google/android/material/carousel/Arrangement;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v5

    .line 99
    .local v5, "arrangement":Lcom/google/android/material/carousel/Arrangement;
    nop

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    int-to-float v11, v0

    .line 99
    invoke-static {v9, v2, v11, v5}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->createLeftAlignedKeylineState(Landroid/content/Context;FFLcom/google/android/material/carousel/Arrangement;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v9

    return-object v9
.end method
