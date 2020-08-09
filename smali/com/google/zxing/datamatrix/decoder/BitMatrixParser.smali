.class final Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final version:Lcom/google/zxing/datamatrix/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x90

    if-gt v0, v1, :cond_0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    :cond_1
    invoke-static {p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-direct {p0, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    iput-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method private extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeRows()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeColumns()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Dimension of bitMatrix must match the version size"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeRows()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeColumns()I

    move-result v7

    div-int v12, v18, v8

    div-int v11, v17, v7

    mul-int v16, v12, v8

    mul-int v15, v11, v7

    new-instance v2, Lcom/google/zxing/common/BitMatrix;

    move/from16 v0, v16

    invoke-direct {v2, v15, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v12, :cond_5

    mul-int v6, v5, v8

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v11, :cond_4

    mul-int v4, v3, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_3

    add-int/lit8 v21, v8, 0x2

    mul-int v21, v21, v5

    add-int/lit8 v21, v21, 0x1

    add-int v14, v21, v9

    add-int v20, v6, v9

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v7, :cond_2

    add-int/lit8 v21, v7, 0x2

    mul-int v21, v21, v3

    add-int/lit8 v21, v21, 0x1

    add-int v13, v21, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    if-eqz v21, :cond_1

    add-int v19, v4, v10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method private readCorner1(II)I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x2

    invoke-direct {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    return v0
.end method

.method private readCorner2(II)I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x3

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x2

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x4

    invoke-direct {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x3

    invoke-direct {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x2

    invoke-direct {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    return v0
.end method

.method private readCorner3(II)I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x3

    invoke-direct {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x2

    invoke-direct {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x3

    invoke-direct {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x2

    invoke-direct {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    return v0
.end method

.method private readCorner4(II)I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x3

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x2

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x2

    invoke-direct {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    return v0
.end method

.method private readModule(IIII)Z
    .locals 1

    if-gez p1, :cond_0

    add-int/2addr p1, p3

    add-int/lit8 v0, p3, 0x4

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p2, p4

    add-int/lit8 v0, p4, 0x4

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    :cond_1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    return v0
.end method

.method private readUtah(IIII)I
    .locals 3

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x2

    invoke-direct {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x2

    invoke-direct {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x2

    invoke-direct {p0, p1, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, p1, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    return v0
.end method

.method private static readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionForDimensions(II)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method getVersion()Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    return-object v0
.end method

.method readCodewords()[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v11

    new-array v7, v11, [B

    const/4 v8, 0x0

    const/4 v10, 0x4

    const/4 v0, 0x0

    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v9, v8

    :goto_0
    if-ne v10, v6, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    add-int/lit8 v8, v9, 0x1

    invoke-direct {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner1(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    :goto_1
    if-lt v10, v6, :cond_8

    if-lt v0, v5, :cond_8

    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v11

    if-eq v8, v11, :cond_7

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v11

    throw v11

    :cond_0
    add-int/lit8 v11, v6, -0x2

    if-ne v10, v11, :cond_1

    if-nez v0, :cond_1

    and-int/lit8 v11, v5, 0x3

    if-eqz v11, :cond_1

    if-nez v2, :cond_1

    add-int/lit8 v8, v9, 0x1

    invoke-direct {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner2(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v6, 0x4

    if-ne v10, v11, :cond_2

    const/4 v11, 0x2

    if-ne v0, v11, :cond_2

    and-int/lit8 v11, v5, 0x7

    if-nez v11, :cond_2

    if-nez v3, :cond_2

    add-int/lit8 v8, v9, 0x1

    invoke-direct {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner3(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v0, v0, 0x2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v6, -0x2

    if-ne v10, v11, :cond_4

    if-nez v0, :cond_4

    and-int/lit8 v11, v5, 0x7

    const/4 v12, 0x4

    if-ne v11, v12, :cond_4

    if-nez v4, :cond_4

    add-int/lit8 v8, v9, 0x1

    invoke-direct {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner4(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v0, v0, 0x2

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    move v9, v8

    :cond_4
    if-ge v10, v6, :cond_b

    if-ltz v0, :cond_b

    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11, v0, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_b

    add-int/lit8 v8, v9, 0x1

    invoke-direct {p0, v10, v0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    :goto_2
    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v0, v0, 0x2

    if-ltz v10, :cond_5

    if-lt v0, v5, :cond_3

    :cond_5
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v0, v0, 0x3

    move v9, v8

    :goto_3
    if-ltz v10, :cond_a

    if-ge v0, v5, :cond_a

    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11, v0, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_a

    add-int/lit8 v8, v9, 0x1

    invoke-direct {p0, v10, v0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    :goto_4
    add-int/lit8 v10, v10, 0x2

    add-int/lit8 v0, v0, -0x2

    if-ge v10, v6, :cond_6

    if-gez v0, :cond_9

    :cond_6
    add-int/lit8 v10, v10, 0x3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_7
    return-object v7

    :cond_8
    move v9, v8

    goto/16 :goto_0

    :cond_9
    move v9, v8

    goto :goto_3

    :cond_a
    move v8, v9

    goto :goto_4

    :cond_b
    move v8, v9

    goto :goto_2
.end method
