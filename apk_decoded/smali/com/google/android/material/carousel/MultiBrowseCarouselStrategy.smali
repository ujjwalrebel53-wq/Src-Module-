.class public final Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;
.super Lcom/google/android/material/carousel/CarouselStrategy;
.source "MultiBrowseCarouselStrategy.java"


# static fields
.field private static final MEDIUM_COUNTS:[I

.field private static final MEDIUM_COUNTS_COMPACT:[I

.field private static final SMALL_COUNTS:[I


# instance fields
.field private final forceCompactArrangement:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->SMALL_COUNTS:[I

    .line 51
    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS:[I

    .line 52
    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS_COMPACT:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;-><init>(Z)V

    .line 63
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "forceCompactArrangement"    # Z

    .line 74
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselStrategy;-><init>()V

    .line 75
    iput-boolean p1, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->forceCompactArrangement:Z

    .line 76
    return-void
.end method


# virtual methods
.method onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
    .locals 19
    .param p1, "carousel"    # Lcom/google/android/material/carousel/Carousel;
    .param p2, "child"    # Landroid/view/View;

    .line 81
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v0

    int-to-float v0, v0

    .line 82
    .local v0, "availableSpace":F
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v1

    int-to-float v0, v1

    move v1, v0

    goto :goto_0

    .line 82
    :cond_0
    move v1, v0

    .line 86
    .end local v0    # "availableSpace":F
    .local v1, "availableSpace":F
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 87
    .local v0, "childLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 88
    .local v2, "childMargins":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    .line 90
    .local v3, "measuredChildSize":F
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    int-to-float v2, v4

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v3, v4

    move v10, v2

    move v11, v3

    goto :goto_1

    .line 90
    :cond_1
    move v10, v2

    move v11, v3

    .line 95
    .end local v2    # "childMargins":F
    .end local v3    # "measuredChildSize":F
    .local v10, "childMargins":F
    .local v11, "measuredChildSize":F
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMin(Landroid/content/Context;)F

    move-result v2

    add-float v3, v2, v10

    .line 96
    .local v3, "smallChildSizeMin":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMax(Landroid/content/Context;)F

    move-result v2

    add-float v4, v2, v10

    .line 98
    .local v4, "smallChildSizeMax":F
    add-float v2, v11, v10

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 103
    .local v8, "targetLargeChildSize":F
    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v11, v2

    add-float/2addr v2, v10

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMin(Landroid/content/Context;)F

    move-result v5

    add-float/2addr v5, v10

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMax(Landroid/content/Context;)F

    move-result v6

    add-float/2addr v6, v10

    .line 104
    invoke-static {v2, v5, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    .line 108
    .local v2, "targetSmallChildSize":F
    add-float v5, v8, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    .line 114
    .local v6, "targetMediumChildSize":F
    sget-object v5, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->SMALL_COUNTS:[I

    .line 115
    .local v5, "smallCounts":[I
    move-object/from16 v12, p0

    iget-boolean v7, v12, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->forceCompactArrangement:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS_COMPACT:[I

    goto :goto_2

    :cond_2
    sget-object v7, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS:[I

    .line 118
    .local v7, "mediumCounts":[I
    :goto_2
    nop

    .line 120
    invoke-static {v7}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->maxValue([I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    sub-float v9, v1, v9

    .line 121
    invoke-static {v5}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->maxValue([I)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v4

    sub-float v13, v9, v13

    .line 122
    .local v13, "minAvailableLargeSpace":F
    div-float v9, v13, v8

    float-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    move-object/from16 v16, v0

    move v9, v1

    .end local v0    # "childLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .end local v1    # "availableSpace":F
    .local v9, "availableSpace":F
    .local v16, "childLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 123
    .local v0, "largeCountMin":I
    div-float v1, v9, v8

    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    .line 124
    .local v14, "largeCountMax":I
    sub-int v1, v14, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 125
    .local v1, "largeCounts":[I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    move/from16 v17, v0

    .end local v0    # "largeCountMin":I
    .local v17, "largeCountMin":I
    array-length v0, v1

    if-ge v15, v0, :cond_3

    .line 126
    sub-int v0, v14, v15

    aput v0, v1, v15

    .line 125
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v17

    goto :goto_3

    .line 129
    .end local v15    # "i":I
    :cond_3
    move/from16 v18, v9

    move-object v9, v1

    move/from16 v1, v18

    .local v1, "availableSpace":F
    .local v9, "largeCounts":[I
    invoke-static/range {v1 .. v9}, Lcom/google/android/material/carousel/Arrangement;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v0

    .line 140
    .local v0, "arrangement":Lcom/google/android/material/carousel/Arrangement;
    nop

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    .line 140
    invoke-static {v15, v10, v1, v0}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->createLeftAlignedKeylineState(Landroid/content/Context;FFLcom/google/android/material/carousel/Arrangement;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v15

    return-object v15
.end method
