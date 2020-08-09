.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# static fields
.field private static final CORR:I = 0x1

.field private static final INIT_SIZE:I = 0xa


# instance fields
.field private final downInit:I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final leftInit:I

.field private final rightInit:I

.field private final upInit:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    div-int/lit8 v0, p2, 0x2

    sub-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    add-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    sub-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    add-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v1, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_1
    return-void
.end method

.method private centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 13

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    iget v8, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    cmpg-float v8, v4, v8

    if-gez v8, :cond_0

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v0, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v1

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v6

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v7

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v2, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v3, v12

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v4

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v5, v12

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    :goto_0
    return-object v8

    :cond_0
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v0

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v1

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v6

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v7, v12

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v2, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v3

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v4, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v5, v12

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    goto :goto_0
.end method

.method private containsBlackPoint(IIIZ)Z
    .locals 4

    const/4 v2, 0x1

    if-eqz p4, :cond_2

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_3

    iget-object v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3, v0, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_2
    if-gt v1, p2, :cond_3

    iget-object v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3, p3, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;
    .locals 9

    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v6

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    sub-float v6, p3, p1

    int-to-float v7, v0

    div-float v3, v6, v7

    sub-float v6, p4, p2

    int-to-float v7, v0

    div-float v5, v6, v7

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v6, p1

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    int-to-float v6, v1

    mul-float/2addr v6, v5

    add-float/2addr v6, p2

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    iget-object v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6, v2, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v7, v2

    int-to-float v8, v4

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    :goto_1
    return-object v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    const/16 v19, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :cond_0
    :goto_0
    if-eqz v5, :cond_5

    const/4 v5, 0x0

    const/16 v18, 0x1

    :cond_1
    :goto_1
    if-nez v18, :cond_2

    if-nez v9, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v17

    move/from16 v3, v26

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v18

    if-eqz v18, :cond_3

    add-int/lit8 v17, v17, 0x1

    const/4 v5, 0x1

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    if-nez v9, :cond_1

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    const/16 v19, 0x1

    :cond_5
    :goto_2
    if-nez v19, :cond_1e

    if-eqz v6, :cond_1e

    sub-int v16, v17, v14

    const/16 v25, 0x0

    const/4 v13, 0x1

    :goto_3
    if-nez v25, :cond_16

    move/from16 v0, v16

    if-ge v13, v0, :cond_16

    int-to-float v0, v14

    move/from16 v26, v0

    sub-int v27, v12, v13

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-int v28, v14, v13

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v12

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v25

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    const/4 v11, 0x1

    :cond_7
    :goto_4
    if-nez v11, :cond_8

    if-nez v7, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_a

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v26

    invoke-direct {v0, v14, v1, v12, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v11

    if-eqz v11, :cond_9

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    goto :goto_4

    :cond_9
    if-nez v7, :cond_7

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v12, v0, :cond_b

    const/16 v19, 0x1

    goto :goto_2

    :cond_b
    const/4 v15, 0x1

    :cond_c
    :goto_5
    if-nez v15, :cond_d

    if-nez v8, :cond_f

    :cond_d
    if-ltz v14, :cond_f

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-direct {v0, v1, v12, v14, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v15

    if-eqz v15, :cond_e

    add-int/lit8 v14, v14, -0x1

    const/4 v5, 0x1

    const/4 v8, 0x1

    goto :goto_5

    :cond_e
    if-nez v8, :cond_c

    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    :cond_f
    if-gez v14, :cond_10

    const/16 v19, 0x1

    goto/16 :goto_2

    :cond_10
    const/16 v21, 0x1

    :cond_11
    :goto_6
    if-nez v21, :cond_12

    if-nez v10, :cond_14

    :cond_12
    if-ltz v22, :cond_14

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    move/from16 v3, v26

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v21

    if-eqz v21, :cond_13

    add-int/lit8 v22, v22, -0x1

    const/4 v5, 0x1

    const/4 v10, 0x1

    goto :goto_6

    :cond_13
    if-nez v10, :cond_11

    add-int/lit8 v22, v22, -0x1

    goto :goto_6

    :cond_14
    if-gez v22, :cond_15

    const/16 v19, 0x1

    goto/16 :goto_2

    :cond_15
    if-eqz v5, :cond_0

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_16
    if-nez v25, :cond_17

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26

    :cond_17
    const/16 v20, 0x0

    const/4 v13, 0x1

    :goto_7
    if-nez v20, :cond_18

    move/from16 v0, v16

    if-ge v13, v0, :cond_18

    int-to-float v0, v14

    move/from16 v26, v0

    add-int v27, v22, v13

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-int v28, v14, v13

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v20

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_18
    if-nez v20, :cond_19

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26

    :cond_19
    const/16 v23, 0x0

    const/4 v13, 0x1

    :goto_8
    if-nez v23, :cond_1a

    move/from16 v0, v16

    if-ge v13, v0, :cond_1a

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    add-int v27, v22, v13

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-int v28, v17, v13

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v23

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_1a
    if-nez v23, :cond_1b

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26

    :cond_1b
    const/16 v24, 0x0

    const/4 v13, 0x1

    :goto_9
    if-nez v24, :cond_1c

    move/from16 v0, v16

    if-ge v13, v0, :cond_1c

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    sub-int v27, v12, v13

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-int v28, v17, v13

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v12

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v24

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_1c
    if-nez v24, :cond_1d

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26

    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v23

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v26

    return-object v26

    :cond_1e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26
.end method
