.class final Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
.super Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
.source "DetectionResultRowIndicatorColumn.java"


# instance fields
.field private final isLeft:Z


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    iput-boolean p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    return-void
.end method

.method private adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .locals 14

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    iget-boolean v12, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v12, :cond_1

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v11

    :goto_0
    iget-boolean v12, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v12, :cond_2

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    :goto_1
    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {p0, v12}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v7

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {p0, v12}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v4

    const/4 v0, -0x1

    const/4 v9, 0x1

    const/4 v6, 0x0

    move v5, v7

    :goto_2
    if-ge v5, v8, :cond_6

    aget-object v12, v4, v5

    if-eqz v12, :cond_0

    aget-object v3, v4, v5

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v12

    sub-int v10, v12, v0

    if-nez v10, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_0
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v11

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v12, 0x1

    if-ne v10, v12, :cond_4

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v6, 0x1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v12

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v13

    if-lt v12, v13, :cond_5

    const/4 v12, 0x0

    aput-object v12, v4, v5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v0

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_4

    aget-object v0, p1, v1

    aget-object v4, p1, v1

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v4

    rem-int/lit8 v3, v4, 0x1e

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    if-le v2, v4, :cond_1

    aput-object v6, p1, v1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v4, :cond_2

    add-int/lit8 v2, v2, 0x2

    :cond_2
    rem-int/lit8 v4, v2, 0x3

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountUpperPart()I

    move-result v5

    if-eq v4, v5, :cond_0

    aput-object v6, p1, v1

    goto :goto_1

    :pswitch_1
    div-int/lit8 v4, v3, 0x3

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v5

    if-ne v4, v5, :cond_3

    rem-int/lit8 v4, v3, 0x3

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountLowerPart()I

    move-result v5

    if-eq v4, v5, :cond_0

    :cond_3
    aput-object v6, p1, v1

    goto :goto_1

    :pswitch_2
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v5

    if-eq v4, v5, :cond_0

    aput-object v6, p1, v1

    goto :goto_1

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setRowNumbers()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setRowNumbers()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v16

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v11

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v13

    const/4 v2, -0x1

    const/4 v14, 0x1

    const/4 v10, 0x0

    move v9, v11

    :goto_2
    if-ge v9, v13, :cond_c

    aget-object v17, v8, v9

    if-eqz v17, :cond_0

    aget-object v7, v8, v9

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v17

    sub-int v15, v17, v2

    if-nez v15, :cond_3

    add-int/lit8 v10, v10, 0x1

    :cond_0
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v16

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_4

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/4 v10, 0x1

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v2

    goto :goto_3

    :cond_4
    if-ltz v15, :cond_5

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    if-le v15, v9, :cond_6

    :cond_5
    const/16 v17, 0x0

    aput-object v17, v8, v9

    goto :goto_3

    :cond_6
    const/16 v17, 0x2

    move/from16 v0, v17

    if-le v14, v0, :cond_7

    add-int/lit8 v17, v14, -0x2

    mul-int v5, v17, v15

    :goto_4
    if-lt v5, v9, :cond_8

    const/4 v6, 0x1

    :goto_5
    const/4 v12, 0x1

    :goto_6
    if-gt v12, v5, :cond_a

    if-nez v6, :cond_a

    sub-int v17, v9, v12

    aget-object v17, v8, v17

    if-eqz v17, :cond_9

    const/4 v6, 0x1

    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_7
    move v5, v15

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    goto :goto_7

    :cond_a
    if-eqz v6, :cond_b

    const/16 v17, 0x0

    aput-object v17, v8, v9

    goto :goto_3

    :cond_b
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v2

    const/4 v10, 0x1

    goto :goto_3

    :cond_c
    return-void
.end method

.method getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .locals 14

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    new-instance v0, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    new-instance v4, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    new-instance v3, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    new-instance v1, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    array-length v11, v7

    move v9, v10

    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v5, v7, v9

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v12

    rem-int/lit8 v8, v12, 0x1e

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    iget-boolean v12, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v12, :cond_0

    add-int/lit8 v6, v6, 0x2

    :cond_0
    rem-int/lit8 v12, v6, 0x3

    packed-switch v12, :pswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :pswitch_0
    mul-int/lit8 v12, v8, 0x3

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v4, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_1

    :pswitch_1
    div-int/lit8 v12, v8, 0x3

    invoke-virtual {v1, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    rem-int/lit8 v12, v8, 0x3

    invoke-virtual {v3, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_1

    :pswitch_2
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v0, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    array-length v9, v9

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    array-length v9, v9

    if-eqz v9, :cond_3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    array-length v9, v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    array-length v9, v9

    if-eqz v9, :cond_3

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v10

    if-lez v9, :cond_3

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v10

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v11

    aget v11, v11, v10

    add-int/2addr v9, v11

    const/4 v11, 0x3

    if-lt v9, v11, :cond_3

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v10

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v11

    aget v11, v11, v10

    add-int/2addr v9, v11

    const/16 v11, 0x5a

    if-le v9, v11, :cond_4

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return-object v2

    :cond_4
    new-instance v2, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v10

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v11

    aget v11, v11, v10

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v12

    aget v12, v12, v10

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    aget v10, v13, v10

    invoke-direct {v2, v9, v11, v12, v10}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;-><init>(IIII)V

    invoke-direct {p0, v7, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getRowHeights()[I
    .locals 8

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    new-array v2, v4, [I

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v1, v5, v4

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    array-length v7, v2

    if-ge v3, v7, :cond_2

    aget v7, v2, v3

    add-int/lit8 v7, v7, 0x1

    aput v7, v2, v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method isLeft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsLeft: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
