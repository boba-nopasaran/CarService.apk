.class public abstract Lcom/google/zxing/oned/OneDReader;
.super Ljava/lang/Object;
.source "OneDReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v3

    new-instance v10, Lcom/google/zxing/common/BitArray;

    invoke-direct {v10, v15}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    if-eqz p2, :cond_2

    sget-object v17, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v14, 0x1

    :goto_0
    const/16 v18, 0x1

    if-eqz v14, :cond_3

    const/16 v17, 0x8

    :goto_1
    shr-int v17, v3, v17

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-eqz v14, :cond_4

    move v5, v3

    :goto_2
    div-int/lit8 v6, v3, 0x2

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v0, v5, :cond_8

    add-int/lit8 v17, v16, 0x1

    div-int/lit8 v13, v17, 0x2

    and-int/lit8 v17, v16, 0x1

    if-nez v17, :cond_5

    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_6

    :goto_5
    mul-int v17, v12, v13

    add-int v11, v6, v17

    if-ltz v11, :cond_8

    if-ge v11, v3, :cond_8

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    const/4 v2, 0x0

    :goto_6
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v2, v0, :cond_7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_0

    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->reverse()V

    if-eqz p2, :cond_0

    sget-object v17, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    new-instance v7, Ljava/util/EnumMap;

    const-class v17, Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v17, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p2, v7

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v10, v1}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v9

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_1

    sget-object v17, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    const/16 v18, 0xb4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    if-eqz v8, :cond_1

    const/16 v17, 0x0

    new-instance v18, Lcom/google/zxing/ResultPoint;

    int-to-float v0, v15

    move/from16 v19, v0

    const/16 v20, 0x0

    aget-object v20, v8, v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    sub-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v19, v19, v20

    const/16 v20, 0x0

    aget-object v20, v8, v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v18, v8, v17

    const/16 v17, 0x1

    new-instance v18, Lcom/google/zxing/ResultPoint;

    int-to-float v0, v15

    move/from16 v19, v0

    const/16 v20, 0x1

    aget-object v20, v8, v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    sub-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v19, v19, v20

    const/16 v20, 0x1

    aget-object v20, v8, v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v18, v8, v17
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-object v9

    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_3
    const/16 v17, 0x5

    goto/16 :goto_1

    :cond_4
    const/16 v5, 0xf

    goto/16 :goto_2

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_6
    neg-int v13, v13

    goto/16 :goto_5

    :catch_0
    move-exception v17

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :catch_1
    move-exception v17

    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17
.end method

.method protected static patternMatchVariance([I[IF)F
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

.method protected static recordPattern(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    array-length v4, p2

    invoke-static {p2, v6, v4, v6}, Ljava/util/Arrays;->fill([IIII)V

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_1

    move v3, v5

    :goto_0
    const/4 v0, 0x0

    move v2, p1

    :goto_1
    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-eq v7, v3, :cond_2

    aget v7, p2, v0

    add-int/lit8 v7, v7, 0x1

    aput v7, p2, v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v3, v6

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-eq v0, v4, :cond_4

    aput v5, p2, v0

    if-nez v3, :cond_3

    move v3, v5

    :goto_3
    goto :goto_2

    :cond_3
    move v3, v6

    goto :goto_3

    :cond_4
    if-eq v0, v4, :cond_6

    add-int/lit8 v5, v4, -0x1

    if-ne v0, v5, :cond_5

    if-eq v2, v1, :cond_6

    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    :cond_6
    return-void
.end method

.method protected static recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    array-length v1, p2

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    :cond_0
    :goto_0
    if-lez p1, :cond_2

    if-ltz v1, :cond_2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eq v2, v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    if-ltz v1, :cond_3

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_3
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, p2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/OneDReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_0
    return-object v6

    :catch_0
    move-exception v3

    if-eqz p2, :cond_2

    sget-object v8, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    if-eqz v8, :cond_3

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->isRotateSupported()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v2

    const/16 v4, 0x10e

    if-eqz v2, :cond_1

    sget-object v8, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit16 v8, v8, 0x10e

    rem-int/lit16 v4, v8, 0x168

    :cond_1
    sget-object v8, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v7}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    array-length v8, v5

    if-ge v1, v8, :cond_0

    new-instance v8, Lcom/google/zxing/ResultPoint;

    int-to-float v9, v0

    aget-object v10, v5, v1

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    aget-object v10, v5, v1

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    throw v3
.end method

.method public abstract decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method

.method public reset()V
    .locals 0

    return-void
.end method
