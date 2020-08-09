.class final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.super Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.source "MultiFinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
    }
.end annotation


# static fields
.field private static final DIFF_MODSIZE_CUTOFF:F = 0.5f

.field private static final DIFF_MODSIZE_CUTOFF_PERCENT:F = 0.05f

.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

.field private static final MAX_MODULE_COUNT_PER_EDGE:F = 180.0f

.field private static final MIN_MODULE_COUNT_PER_EDGE:F = 9.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    return-void
.end method

.method private selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getPossibleCenters()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v16

    const/16 v20, 0x3

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v20

    throw v20

    :cond_0
    const/16 v20, 0x3

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v20, v23, v24

    const/16 v24, 0x1

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v20, v23, v24

    const/16 v24, 0x2

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v20, v23, v24

    aput-object v23, v21, v22

    move-object/from16 v20, v21

    :goto_0
    return-object v20

    :cond_1
    new-instance v20, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;)V

    move-object/from16 v0, v20

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_1
    add-int/lit8 v20, v16, -0x2

    move/from16 v0, v20

    if-ge v7, v0, :cond_7

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-eqz v11, :cond_6

    add-int/lit8 v8, v7, 0x1

    :goto_2
    add-int/lit8 v20, v16, -0x1

    move/from16 v0, v20

    if-ge v8, v0, :cond_6

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-eqz v12, :cond_5

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v20

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v21

    sub-float v20, v20, v21

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v21

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v21

    div-float v18, v20, v21

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v20

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v21

    sub-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x3f000000    # 0.5f

    cmpl-float v20, v20, v21

    if-lez v20, :cond_2

    const v20, 0x3d4ccccd    # 0.05f

    cmpl-float v20, v18, v20

    if-gez v20, :cond_6

    :cond_2
    add-int/lit8 v9, v8, 0x1

    :goto_3
    move/from16 v0, v16

    if-ge v9, v0, :cond_5

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-eqz v13, :cond_4

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v20

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v21

    sub-float v20, v20, v21

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v21

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v21

    div-float v19, v20, v21

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v20

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v21

    sub-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x3f000000    # 0.5f

    cmpl-float v20, v20, v21

    if-lez v20, :cond_3

    const v20, 0x3d4ccccd    # 0.05f

    cmpl-float v20, v19, v20

    if-gez v20, :cond_5

    :cond_3
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    aput-object v11, v17, v20

    const/16 v20, 0x1

    aput-object v12, v17, v20

    const/16 v20, 0x2

    aput-object v13, v17, v20

    invoke-static/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    new-instance v10, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v20

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v20

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v4

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v20

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    add-float v20, v2, v3

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v21, v21, v22

    div-float v6, v20, v21

    const/high16 v20, 0x43340000    # 180.0f

    cmpl-float v20, v6, v20

    if-gtz v20, :cond_4

    const/high16 v20, 0x41100000    # 9.0f

    cmpg-float v20, v6, v20

    if-ltz v20, :cond_4

    sub-float v20, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v21

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const v21, 0x3dcccccd    # 0.1f

    cmpl-float v20, v20, v21

    if-gez v20, :cond_4

    mul-float v20, v2, v2

    mul-float v21, v3, v3

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v5, v0

    sub-float v20, v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v21

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const v21, 0x3dcccccd    # 0.1f

    cmpl-float v20, v20, v21

    if-gez v20, :cond_4

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_8

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v20

    throw v20
.end method


# virtual methods
.method public findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_3

    sget-object v13, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v12, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    mul-int/lit8 v13, v6, 0x3

    div-int/lit16 v3, v13, 0x184

    const/4 v13, 0x3

    if-lt v3, v13, :cond_0

    if-eqz v12, :cond_1

    :cond_0
    const/4 v3, 0x3

    :cond_1
    const/4 v13, 0x5

    new-array v11, v13, [I

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ge v2, v6, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->clearCounts([I)V

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_8

    invoke-virtual {v4, v5, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/lit8 v13, v1, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    aget v13, v11, v1

    add-int/lit8 v13, v13, 0x1

    aput v13, v11, v1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    and-int/lit8 v13, v1, 0x1

    if-nez v13, :cond_7

    const/4 v13, 0x4

    if-ne v1, v13, :cond_6

    invoke-static {v11}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2, v5}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->clearCounts([I)V

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->shiftCounts2([I)V

    const/4 v1, 0x3

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    aget v13, v11, v1

    add-int/lit8 v13, v13, 0x1

    aput v13, v11, v1

    goto :goto_3

    :cond_7
    aget v13, v11, v1

    add-int/lit8 v13, v13, 0x1

    aput v13, v11, v1

    goto :goto_3

    :cond_8
    invoke-static {v11}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2, v7}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    :cond_9
    add-int/2addr v2, v3

    goto :goto_1

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    array-length v14, v9

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v14, :cond_b

    aget-object v8, v9, v13

    invoke-static {v8}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    new-instance v15, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v15, v8}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_b
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_c

    sget-object v13, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    :goto_5
    return-object v13

    :cond_c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-interface {v10, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    goto :goto_5
.end method
