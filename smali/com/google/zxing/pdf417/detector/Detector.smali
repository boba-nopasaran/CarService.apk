.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final BARCODE_MIN_HEIGHT:I = 0xa

.field private static final INDEXES_START_PATTERN:[I

.field private static final INDEXES_STOP_PATTERN:[I

.field private static final MAX_AVG_VARIANCE:F = 0.42f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.8f

.field private static final MAX_PATTERN_DRIFT:I = 0x5

.field private static final MAX_PIXEL_DRIFT:I = 0x3

.field private static final ROW_STEP:I = 0x5

.field private static final SKIPPED_ROW_COUNT_MAX:I = 0x19

.field private static final START_PATTERN:[I

.field private static final STOP_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x1
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x2
        0x7
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget v1, p2, v0

    aget-object v2, p1, v0

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static detect(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;Z)",
            "Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/google/zxing/pdf417/detector/Detector;->detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->rotate180()V

    invoke-static {p2, v1}, Lcom/google/zxing/pdf417/detector/Detector;->detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;Ljava/util/List;)V

    return-object v2
.end method

.method private static detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/zxing/common/BitMatrix;",
            ")",
            "Ljava/util/List",
            "<[",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    if-ge v4, v6, :cond_5

    invoke-static {p1, v4, v2}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v5, v6

    if-nez v6, :cond_3

    aget-object v6, v5, v10

    if-nez v6, :cond_3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/ResultPoint;

    aget-object v7, v0, v11

    if-eqz v7, :cond_1

    int-to-float v7, v4

    aget-object v8, v0, v11

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v4, v7

    :cond_1
    aget-object v7, v0, v10

    if-eqz v7, :cond_0

    aget-object v7, v0, v10

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x5

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_5

    aget-object v6, v5, v9

    if-eqz v6, :cond_4

    aget-object v6, v5, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    float-to-int v2, v6

    aget-object v6, v5, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    float-to-int v4, v6

    goto :goto_0

    :cond_4
    aget-object v6, v5, v12

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    float-to-int v2, v6

    aget-object v6, v5, v12

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    float-to-int v4, v6

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I
    .locals 12

    const/4 v9, 0x0

    move-object/from16 v0, p6

    array-length v10, v0

    const/4 v11, 0x0

    move-object/from16 v0, p6

    invoke-static {v0, v9, v10, v11}, Ljava/util/Arrays;->fill([IIII)V

    move v5, p1

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p0, v5, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_1

    if-lez v5, :cond_1

    add-int/lit8 v7, v6, 0x1

    const/4 v9, 0x3

    if-ge v6, v9, :cond_0

    add-int/lit8 v5, v5, -0x1

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v7

    :cond_1
    move v8, v5

    const/4 v2, 0x0

    move-object/from16 v0, p5

    array-length v4, v0

    move/from16 v3, p4

    :goto_1
    if-ge v8, p3, :cond_6

    invoke-virtual {p0, v8, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eq v9, v3, :cond_2

    aget v9, p6, v2

    add-int/lit8 v9, v9, 0x1

    aput v9, p6, v2

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v4, -0x1

    if-ne v2, v9, :cond_4

    const v9, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-static {v0, v1, v9}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[IF)F

    move-result v9

    const v10, 0x3ed70a3d    # 0.42f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v5, v9, v10

    const/4 v10, 0x1

    aput v8, v9, v10

    :goto_3
    return-object v9

    :cond_3
    const/4 v9, 0x0

    aget v9, p6, v9

    const/4 v10, 0x1

    aget v10, p6, v10

    add-int/2addr v9, v10

    add-int/2addr v5, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    add-int/lit8 v11, v2, -0x1

    move-object/from16 v0, p6

    move-object/from16 v1, p6

    invoke-static {v0, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v2, -0x1

    const/4 v10, 0x0

    aput v10, p6, v9

    const/4 v9, 0x0

    aput v9, p6, v2

    add-int/lit8 v2, v2, -0x1

    :goto_4
    const/4 v9, 0x1

    aput v9, p6, v2

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_5
    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    add-int/lit8 v9, v4, -0x1

    if-ne v2, v9, :cond_7

    const v9, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-static {v0, v1, v9}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[IF)F

    move-result v9

    const v10, 0x3ed70a3d    # 0.42f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_7

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v5, v9, v10

    const/4 v10, 0x1

    add-int/lit8 v11, v8, -0x1

    aput v11, v9, v10

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private static findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;
    .locals 13

    const/4 v1, 0x4

    new-array v11, v1, [Lcom/google/zxing/ResultPoint;

    const/4 v8, 0x0

    move-object/from16 v0, p5

    array-length v1, v0

    new-array v7, v1, [I

    :goto_0
    move/from16 v0, p3

    if-ge v0, p1, :cond_2

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v2, p4

    move/from16 v3, p3

    move v4, p2

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v9

    if-eqz v9, :cond_3

    :goto_1
    if-lez p3, :cond_1

    add-int/lit8 p3, p3, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v2, p4

    move/from16 v3, p3

    move v4, p2

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v10

    if-eqz v10, :cond_0

    move-object v9, v10

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    :cond_1
    const/4 v1, 0x0

    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aget v4, v9, v4

    int-to-float v4, v4

    move/from16 v0, p3

    int-to-float v5, v0

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v11, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x1

    aget v4, v9, v4

    int-to-float v4, v4

    move/from16 v0, p3

    int-to-float v5, v0

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v11, v1

    const/4 v8, 0x1

    :cond_2
    add-int/lit8 v3, p3, 0x1

    if-eqz v8, :cond_6

    const/4 v12, 0x0

    const/4 v1, 0x2

    new-array v10, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, v11, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    aput v2, v10, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    aput v2, v10, v1

    :goto_2
    if-ge v3, p1, :cond_5

    const/4 v1, 0x0

    aget v2, v10, v1

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p2

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v9

    if-eqz v9, :cond_4

    const/4 v1, 0x0

    aget v1, v10, v1

    const/4 v2, 0x0

    aget v2, v9, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    const/4 v1, 0x1

    aget v1, v10, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    move-object v10, v9

    const/4 v12, 0x0

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 p3, p3, 0x5

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x19

    if-gt v12, v1, :cond_5

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v12, 0x1

    sub-int/2addr v3, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aget v4, v10, v4

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v11, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x1

    aget v4, v10, v4

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v11, v1

    :cond_6
    sub-int v1, v3, p3

    const/16 v2, 0xa

    if-ge v1, v2, :cond_7

    const/4 v1, 0x0

    invoke-static {v11, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    return-object v11
.end method

.method private static findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;
    .locals 8

    const/4 v7, 0x4

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    const/16 v0, 0x8

    new-array v6, v0, [Lcom/google/zxing/ResultPoint;

    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    sget-object v3, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    invoke-static {v6, v0, v3}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    aget-object v0, v6, v7

    if-eqz v0, :cond_0

    aget-object v0, v6, v7

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int p2, v0

    aget-object v0, v6, v7

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int p1, v0

    :cond_0
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    sget-object v3, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    invoke-static {v6, v0, v3}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    return-object v6
.end method

.method private static patternMatchVariance([I[IF)F
    .locals 13

    const/high16 v10, 0x7f800000    # Float.POSITIVE_INFINITY

    array-length v2, p0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v11, p0, v1

    add-int/2addr v5, v11

    aget v11, p1, v1

    add-int/2addr v3, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ge v5, v3, :cond_2

    :cond_1
    :goto_1
    return v10

    :cond_2
    int-to-float v11, v5

    int-to-float v12, v3

    div-float v7, v11, v12

    mul-float/2addr p2, v7

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v2, :cond_4

    aget v0, p0, v9

    aget v11, p1, v9

    int-to-float v11, v11

    mul-float v4, v11, v7

    int-to-float v11, v0

    cmpl-float v11, v11, v4

    if-lez v11, :cond_3

    int-to-float v11, v0

    sub-float v8, v11, v4

    :goto_3
    cmpl-float v11, v8, p2

    if-gtz v11, :cond_1

    add-float/2addr v6, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    int-to-float v11, v0

    sub-float v8, v4, v11

    goto :goto_3

    :cond_4
    int-to-float v10, v5

    div-float v10, v6, v10

    goto :goto_1
.end method
