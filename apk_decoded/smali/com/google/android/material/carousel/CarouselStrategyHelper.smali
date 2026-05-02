.class final Lcom/google/android/material/carousel/CarouselStrategyHelper;
.super Ljava/lang/Object;
.source "CarouselStrategyHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createLeftAlignedKeylineState(Landroid/content/Context;FFLcom/google/android/material/carousel/Arrangement;)Lcom/google/android/material/carousel/KeylineState;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "childHorizontalMargins"    # F
    .param p2, "availableSpace"    # F
    .param p3, "arrangement"    # Lcom/google/android/material/carousel/Arrangement;

    .line 61
    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static/range {p0 .. p0}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getExtraSmallSize(Landroid/content/Context;)F

    move-result v2

    add-float/2addr v2, v0

    .line 63
    .local v2, "extraSmallChildWidth":F
    const/4 v3, 0x0

    .line 64
    .local v3, "start":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v2, v4

    sub-float v5, v3, v5

    .line 66
    .local v5, "extraSmallHeadCenterX":F
    iget v6, v1, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    div-float/2addr v6, v4

    add-float v8, v3, v6

    .line 67
    .local v8, "largeStartCenterX":F
    iget v6, v1, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    add-int/lit8 v6, v6, -0x1

    .line 68
    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    iget v7, v1, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    .line 69
    .local v6, "largeEndCenterX":F
    iget v7, v1, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    div-float/2addr v7, v4

    add-float/2addr v7, v6

    .line 72
    .end local v3    # "start":F
    .local v7, "start":F
    iget v3, v1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-lez v3, :cond_0

    iget v3, v1, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    div-float/2addr v3, v4

    add-float/2addr v3, v7

    goto :goto_0

    :cond_0
    move v3, v6

    .line 73
    .local v3, "mediumCenterX":F
    :goto_0
    iget v9, v1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-lez v9, :cond_1

    iget v9, v1, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    div-float/2addr v9, v4

    add-float/2addr v9, v3

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    move v13, v9

    .line 76
    .end local v7    # "start":F
    .local v13, "start":F
    iget v7, v1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-lez v7, :cond_2

    iget v7, v1, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    div-float/2addr v7, v4

    add-float/2addr v7, v13

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    move v14, v7

    .line 78
    .local v14, "smallStartCenterX":F
    div-float v4, v2, v4

    add-float v4, p2, v4

    .line 80
    .local v4, "extraSmallTailCenterX":F
    iget v7, v1, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    .line 81
    invoke-static {v2, v7, v0}, Lcom/google/android/material/carousel/CarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v15

    .line 82
    .local v15, "extraSmallMask":F
    iget v7, v1, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    iget v9, v1, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    .line 83
    invoke-static {v7, v9, v0}, Lcom/google/android/material/carousel/CarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v7

    .line 85
    .local v7, "smallMask":F
    iget v9, v1, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    .line 86
    invoke-static {v9, v10, v0}, Lcom/google/android/material/carousel/CarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v9

    .line 88
    .local v9, "mediumMask":F
    move v10, v9

    .end local v9    # "mediumMask":F
    .local v10, "mediumMask":F
    const/4 v9, 0x0

    .line 90
    .local v9, "largeMask":F
    new-instance v11, Lcom/google/android/material/carousel/KeylineState$Builder;

    iget v12, v1, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    invoke-direct {v11, v12}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(F)V

    .line 92
    invoke-virtual {v11, v5, v15, v2}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v11

    move v12, v10

    .end local v10    # "mediumMask":F
    .local v12, "mediumMask":F
    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    move/from16 v16, v7

    move-object v7, v11

    .end local v7    # "smallMask":F
    .local v16, "smallMask":F
    iget v11, v1, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    .line 93
    move/from16 v17, v12

    .end local v12    # "mediumMask":F
    .local v17, "mediumMask":F
    const/4 v12, 0x1

    move/from16 v0, v16

    move/from16 v16, v5

    move/from16 v5, v17

    .end local v17    # "mediumMask":F
    .local v0, "smallMask":F
    .local v5, "mediumMask":F
    .local v16, "extraSmallHeadCenterX":F
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeylineRange(FFFIZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v7

    .line 95
    .local v7, "builder":Lcom/google/android/material/carousel/KeylineState$Builder;
    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-lez v10, :cond_3

    .line 96
    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    invoke-virtual {v7, v3, v5, v10}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 98
    :cond_3
    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-lez v10, :cond_4

    .line 99
    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    iget v11, v1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    invoke-virtual {v7, v14, v0, v10, v11}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeylineRange(FFFI)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 102
    :cond_4
    invoke-virtual {v7, v4, v15, v2}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 103
    invoke-virtual {v7}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v10

    return-object v10
.end method

.method static getExtraSmallSize(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->m3_carousel_gone_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method static getSmallSizeMax(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->m3_carousel_small_item_size_max:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method static getSmallSizeMin(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->m3_carousel_small_item_size_min:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method static maxValue([I)I
    .locals 4
    .param p0, "array"    # [I

    .line 107
    const/high16 v0, -0x80000000

    .line 108
    .local v0, "largest":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    .line 109
    .local v3, "j":I
    if-le v3, v0, :cond_0

    .line 110
    move v0, v3

    .line 108
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_1
    return v0
.end method
