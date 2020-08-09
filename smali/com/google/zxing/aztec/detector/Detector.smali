.class public final Lcom/google/zxing/aztec/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/detector/Detector$Point;
    }
.end annotation


# static fields
.field private static final EXPECTED_CORNER_BITS:[I


# instance fields
.field private compact:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private nbCenterLayers:I

.field private nbDataBlocks:I

.field private nbLayers:I

.field private shift:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xee0
        0x1dc
        0x83b
        0x707
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method private static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 4

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    return v0
.end method

.method private static distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F
    .locals 4

    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v0

    return v0
.end method

.method private static expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;
    .locals 11

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, p1

    div-float v4, p2, v9

    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    sub-float v2, v9, v10

    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float v3, v9, v10

    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v0, v9, v10

    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v1, v9, v10

    new-instance v5, Lcom/google/zxing/ResultPoint;

    mul-float v9, v4, v2

    add-float/2addr v9, v0

    mul-float v10, v4, v3

    add-float/2addr v10, v1

    invoke-direct {v5, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v7, Lcom/google/zxing/ResultPoint;

    mul-float v9, v4, v2

    sub-float v9, v0, v9

    mul-float v10, v4, v3

    sub-float v10, v1, v10

    invoke-direct {v7, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    const/4 v10, 0x3

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    sub-float v2, v9, v10

    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    const/4 v10, 0x3

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float v3, v9, v10

    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    const/4 v10, 0x3

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v0, v9, v10

    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    const/4 v10, 0x3

    aget-object v10, p0, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v1, v9, v10

    new-instance v6, Lcom/google/zxing/ResultPoint;

    mul-float v9, v4, v2

    add-float/2addr v9, v0

    mul-float v10, v4, v3

    add-float/2addr v10, v1

    invoke-direct {v6, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v8, Lcom/google/zxing/ResultPoint;

    mul-float v9, v4, v2

    sub-float v9, v0, v9

    mul-float v10, v4, v3

    sub-float v10, v1, v10

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v9, 0x4

    new-array v9, v9, [Lcom/google/zxing/ResultPoint;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v7, v9, v10

    const/4 v10, 0x3

    aput-object v8, v9, v10

    return-object v9
.end method

.method private extractParameters([Lcom/google/zxing/ResultPoint;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    aget-object v7, p1, v9

    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v7

    if-eqz v7, :cond_0

    aget-object v7, p1, v10

    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v7

    if-eqz v7, :cond_0

    aget-object v7, p1, v11

    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v7

    if-eqz v7, :cond_0

    aget-object v7, p1, v12

    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7

    :cond_1
    iget v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v2, v7, 0x2

    new-array v6, v13, [I

    aget-object v7, p1, v9

    aget-object v8, p1, v10

    invoke-direct {p0, v7, v8, v2}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v9

    aget-object v7, p1, v10

    aget-object v8, p1, v11

    invoke-direct {p0, v7, v8, v2}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v10

    aget-object v7, p1, v11

    aget-object v8, p1, v12

    invoke-direct {p0, v7, v8, v2}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v11

    aget-object v7, p1, v12

    aget-object v8, p1, v9

    invoke-direct {p0, v7, v8, v2}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v12

    invoke-static {v6, v2}, Lcom/google/zxing/aztec/detector/Detector;->getRotation([II)I

    move-result v7

    iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v13, :cond_3

    iget v7, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/2addr v7, v1

    rem-int/lit8 v7, v7, 0x4

    aget v3, v6, v7

    iget-boolean v7, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x7

    shl-long v8, v4, v7

    shr-int/lit8 v7, v3, 0x1

    and-int/lit8 v7, v7, 0x7f

    int-to-long v10, v7

    add-long v4, v8, v10

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v7, 0xa

    shl-long v8, v4, v7

    shr-int/lit8 v7, v3, 0x2

    and-int/lit16 v7, v7, 0x3e0

    shr-int/lit8 v10, v3, 0x1

    and-int/lit8 v10, v10, 0x1f

    add-int/2addr v7, v10

    int-to-long v10, v7

    add-long v4, v8, v10

    goto :goto_1

    :cond_3
    iget-boolean v7, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    invoke-static {v4, v5, v7}, Lcom/google/zxing/aztec/detector/Detector;->getCorrectedParameterData(JZ)I

    move-result v0

    iget-boolean v7, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v7, :cond_4

    shr-int/lit8 v7, v0, 0x6

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    and-int/lit8 v7, v0, 0x3f

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    :goto_2
    return-void

    :cond_4
    shr-int/lit8 v7, v0, 0xb

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    and-int/lit16 v7, v0, 0x7ff

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    goto :goto_2
.end method

.method private getBullsEyeCorners(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v5, p1

    move-object/from16 v7, p1

    move-object/from16 v9, p1

    move-object/from16 v11, p1

    const/4 v4, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    const/16 v18, 0x1

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v13

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v7, v4, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v14

    const/16 v18, -0x1

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v9, v4, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v15

    const/16 v18, -0x1

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v11, v4, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    invoke-static {v11, v5}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    div-float v17, v18, v19

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe8000000000000L    # 0.75

    cmpg-double v18, v18, v20

    if-ltz v18, :cond_2

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff4000000000000L    # 1.25

    cmpl-double v18, v18, v20

    if-gtz v18, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/zxing/aztec/detector/Detector;->isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z

    move-result v18

    if-eqz v18, :cond_2

    :cond_0
    move-object v5, v13

    move-object v7, v14

    move-object v9, v15

    move-object/from16 v11, v16

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v18

    throw v18

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    new-instance v6, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v5}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    invoke-virtual {v5}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    sub-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v6, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v8, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v8, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v10, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v9}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    invoke-virtual {v9}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v12, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v11}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    invoke-virtual {v11}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    sub-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v12, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v6, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    const/16 v19, 0x2

    aput-object v10, v18, v19

    const/16 v19, 0x3

    aput-object v12, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int/lit8 v19, v19, -0x3

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;

    move-result-object v18

    return-object v18

    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_2
.end method

.method private getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
    .locals 13

    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v10

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float v2, v10, v1

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v10

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float v3, v10, v1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v10

    int-to-float v8, v10

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v10

    int-to-float v9, v10

    iget-object v10, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v11

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    add-float/2addr v8, v2

    add-float/2addr v9, v3

    iget-object v10, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v11

    invoke-static {v9}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eq v10, v0, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    int-to-float v10, v5

    div-float v4, v10, v1

    const v10, 0x3dcccccd    # 0.1f

    cmpl-float v10, v4, v10

    if-lez v10, :cond_2

    const v10, 0x3f666666    # 0.9f

    cmpg-float v10, v4, v10

    if-gez v10, :cond_2

    const/4 v10, 0x0

    :goto_1
    return v10

    :cond_2
    const v10, 0x3dcccccd    # 0.1f

    cmpg-float v10, v4, v10

    if-gtz v10, :cond_3

    const/4 v10, 0x1

    :goto_2
    if-ne v10, v0, :cond_4

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    const/4 v10, -0x1

    goto :goto_1
.end method

.method private static getCorrectedParameterData(JZ)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v1, 0x7

    const/4 v2, 0x2

    :goto_0
    sub-int v3, v1, v2

    new-array v4, v1, [I

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    long-to-int v6, p0

    and-int/lit8 v6, v6, 0xf

    aput v6, v4, v0

    const/4 v6, 0x4

    shr-long/2addr p0, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    const/16 v1, 0xa

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v6, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v6, v7}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v6, v4, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    shl-int/lit8 v6, v5, 0x4

    aget v7, v4, v0

    add-int v5, v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v6

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    :cond_2
    return v5
.end method

.method private getDimension()I
    .locals 2

    iget-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xb

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xf

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    add-int/lit8 v1, v1, -0x4

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xf

    goto :goto_0
.end method

.method private getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 3

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    add-int v0, v2, p3

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v2

    add-int v1, v2, p4

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_0

    add-int/2addr v0, p3

    add-int/2addr v1, p4

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p3

    sub-int/2addr v1, p4

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_1

    add-int/2addr v0, p3

    goto :goto_1

    :cond_1
    sub-int/2addr v0, p3

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_2

    add-int/2addr v1, p4

    goto :goto_2

    :cond_2
    sub-int/2addr v1, p4

    new-instance v2, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v2
.end method

.method private getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 14

    const/high16 v13, 0x40800000    # 4.0f

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    :try_start_0
    new-instance v7, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v7, v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v7}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    const/4 v7, 0x0

    aget-object v3, v0, v7

    const/4 v7, 0x1

    aget-object v4, v0, v7

    const/4 v7, 0x2

    aget-object v5, v0, v7

    const/4 v7, 0x3

    aget-object v6, v0, v7
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    add-float/2addr v7, v8

    div-float/2addr v7, v13

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    add-float/2addr v7, v8

    div-float/2addr v7, v13

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    :try_start_1
    new-instance v7, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    const/16 v9, 0xf

    invoke-direct {v7, v8, v9, v1, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    invoke-virtual {v7}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    const/4 v7, 0x0

    aget-object v3, v0, v7

    const/4 v7, 0x1

    aget-object v4, v0, v7

    const/4 v7, 0x2

    aget-object v5, v0, v7

    const/4 v7, 0x3

    aget-object v6, v0, v7
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    add-float/2addr v7, v8

    div-float/2addr v7, v13

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    add-float/2addr v7, v8

    div-float/2addr v7, v13

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v7, v1, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v7

    :catch_0
    move-exception v7

    iget-object v7, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    div-int/lit8 v1, v7, 0x2

    iget-object v7, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    div-int/lit8 v2, v7, 0x2

    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v8, v1, 0x7

    add-int/lit8 v9, v2, -0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v7, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v8, v1, 0x7

    add-int/lit8 v9, v2, 0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v7, v10, v11, v11}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v8, v1, -0x7

    add-int/lit8 v9, v2, 0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v7, v10, v12, v11}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v8, v1, -0x7

    add-int/lit8 v9, v2, -0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v7, v10, v12, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v6

    goto/16 :goto_0

    :catch_1
    move-exception v7

    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v8, v1, 0x7

    add-int/lit8 v9, v2, -0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v7, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v8, v1, 0x7

    add-int/lit8 v9, v2, 0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v7, v10, v11, v11}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v8, v1, -0x7

    add-int/lit8 v9, v2, 0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v7, v10, v12, v11}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v8, v1, -0x7

    add-int/lit8 v9, v2, -0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v7, v10, v12, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v6

    goto/16 :goto_1
.end method

.method private getMatrixCornerPoints([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 2

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0
.end method

.method private static getRotation([II)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v5, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget v2, p0, v4

    add-int/lit8 v6, p1, -0x2

    shr-int v6, v2, v6

    shl-int/lit8 v6, v6, 0x1

    and-int/lit8 v7, v2, 0x1

    add-int v3, v6, v7

    shl-int/lit8 v6, v0, 0x3

    add-int v0, v6, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 v4, v0, 0x1

    shl-int/lit8 v4, v4, 0xb

    shr-int/lit8 v5, v0, 0x1

    add-int v0, v4, v5

    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_2

    sget-object v4, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    aget v4, v4, v1

    xor-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4
.end method

.method private isValid(II)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValid(Lcom/google/zxing/ResultPoint;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    return v2
.end method

.method private isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z
    .locals 8

    const/4 v5, 0x0

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    invoke-direct {v1, v6, v7}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    new-instance v2, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-direct {v2, v6, v7}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    new-instance v3, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-direct {v3, v6, v7}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    new-instance v4, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    invoke-direct {v4, v6, v7}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v4, v1}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v6

    if-ne v6, v0, :cond_0

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v6

    if-ne v6, v0, :cond_0

    invoke-direct {p0, v3, v4}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v6

    if-ne v6, v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v3

    int-to-float v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v4, v4

    sub-float v5, v2, v4

    int-to-float v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v4, v4

    add-float v7, v2, v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v19

    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    move-object/from16 v2, p1

    move v4, v3

    move v6, v5

    move v8, v5

    move v9, v7

    move v10, v7

    move v11, v5

    move v12, v7

    invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    return-object v2
.end method

.method private sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I
    .locals 11

    const/4 v7, 0x0

    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    int-to-float v8, p3

    div-float v4, v0, v8

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v4

    div-float v1, v8, v0

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v4

    div-float v2, v8, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_1

    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    int-to-float v9, v3

    mul-float/2addr v9, v1

    add-float/2addr v9, v5

    invoke-static {v9}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v9

    int-to-float v10, v3

    mul-float/2addr v10, v2

    add-float/2addr v10, v6

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    sub-int v9, p3, v3

    add-int/lit8 v9, v9, -0x1

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v7
.end method


# virtual methods
.method public detect()Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->getBullsEyeCorners(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    if-eqz p1, :cond_0

    aget-object v8, v6, v3

    aget-object v0, v6, v4

    aput-object v0, v6, v3

    aput-object v8, v6, v4

    :cond_0
    invoke-direct {p0, v6}, Lcom/google/zxing/aztec/detector/Detector;->extractParameters([Lcom/google/zxing/ResultPoint;)V

    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    rem-int/lit8 v0, v0, 0x4

    aget-object v2, v6, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    aget-object v3, v6, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x4

    aget-object v4, v6, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit8 v0, v0, 0x4

    aget-object v5, v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/aztec/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    invoke-direct {p0, v6}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCornerPoints([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    new-instance v0, Lcom/google/zxing/aztec/AztecDetectorResult;

    iget-boolean v3, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    iget v4, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    iget v5, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/aztec/AztecDetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZII)V

    return-object v0
.end method
