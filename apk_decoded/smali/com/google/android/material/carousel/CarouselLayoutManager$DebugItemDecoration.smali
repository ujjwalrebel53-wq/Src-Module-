.class Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/carousel/CarouselLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugItemDecoration"
.end annotation


# instance fields
.field private keylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;"
        }
    .end annotation
.end field

.field private final linePaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1329
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 1326
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;->linePaint:Landroid/graphics/Paint;

    .line 1327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;->keylines:Ljava/util/List;

    .line 1330
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1331
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;->linePaint:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1332
    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 16
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 1341
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 1342
    iget-object v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;->linePaint:Landroid/graphics/Paint;

    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->m3_carousel_debug_keyline_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 1342
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1344
    iget-object v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;->keylines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1345
    .local v2, "keyline":Lcom/google/android/material/carousel/KeylineState$Keyline;
    iget-object v3, v0, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;->linePaint:Landroid/graphics/Paint;

    const v4, -0xffff01

    iget v5, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    const v6, -0xff01

    invoke-static {v6, v4, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1346
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1347
    iget v5, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 1349
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-static {v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->access$100(Lcom/google/android/material/carousel/CarouselLayoutManager;)I

    move-result v3

    int-to-float v6, v3

    iget v7, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 1351
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-static {v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->access$200(Lcom/google/android/material/carousel/CarouselLayoutManager;)I

    move-result v3

    int-to-float v8, v3

    iget-object v9, v0, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;->linePaint:Landroid/graphics/Paint;

    .line 1347
    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1354
    :cond_0
    nop

    .line 1355
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-static {v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->access$300(Lcom/google/android/material/carousel/CarouselLayoutManager;)I

    move-result v3

    int-to-float v11, v3

    iget v12, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 1357
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-static {v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->access$400(Lcom/google/android/material/carousel/CarouselLayoutManager;)I

    move-result v3

    int-to-float v13, v3

    iget v14, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iget-object v15, v0, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;->linePaint:Landroid/graphics/Paint;

    .line 1354
    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1361
    .end local v2    # "keyline":Lcom/google/android/material/carousel/KeylineState$Keyline;
    :goto_1
    goto :goto_0

    .line 1362
    :cond_1
    return-void
.end method

.method setKeylines(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;)V"
        }
    .end annotation

    .line 1336
    .local p1, "keylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;->keylines:Ljava/util/List;

    .line 1337
    return-void
.end method
