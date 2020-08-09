.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    iput-object p2, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .locals 26

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-result-object v4

    const/16 v21, 0x0

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v3

    array-length v0, v3

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    aget-object v2, v3, v22

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v24

    add-int v21, v21, v24

    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    :cond_0
    move/from16 v0, v21

    new-array v0, v0, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-object/from16 v18, v0

    const/4 v14, 0x0

    array-length v0, v3

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    aget-object v2, v3, v22

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v5, v0, :cond_1

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v12

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v24

    add-int v11, v24, v12

    add-int/lit8 v15, v14, 0x1

    new-instance v24, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    new-array v0, v11, [B

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v12, v1}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v24, v18, v14

    add-int/lit8 v5, v5, 0x1

    move v14, v15

    goto :goto_2

    :cond_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    :cond_2
    const/16 v22, 0x0

    aget-object v22, v18, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v23

    sub-int v9, v22, v23

    add-int/lit8 v19, v9, -0x1

    const/16 v16, 0x0

    const/4 v5, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v5, v0, :cond_4

    const/4 v7, 0x0

    move/from16 v17, v16

    :goto_4
    if-ge v7, v14, :cond_3

    aget-object v22, v18, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v22, v0

    add-int/lit8 v16, v17, 0x1

    aget-byte v23, p0, v17

    aput-byte v23, v22, v5

    add-int/lit8 v7, v7, 0x1

    move/from16 v17, v16

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v17

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I

    move-result v22

    const/16 v23, 0x18

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/16 v20, 0x1

    :goto_5
    if-eqz v20, :cond_6

    const/16 v13, 0x8

    :goto_6
    const/4 v7, 0x0

    move/from16 v17, v16

    :goto_7
    if-ge v7, v13, :cond_7

    aget-object v22, v18, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v22, v0

    add-int/lit8 v23, v9, -0x1

    add-int/lit8 v16, v17, 0x1

    aget-byte v24, p0, v17

    aput-byte v24, v22, v23

    add-int/lit8 v7, v7, 0x1

    move/from16 v17, v16

    goto :goto_7

    :cond_5
    const/16 v20, 0x0

    goto :goto_5

    :cond_6
    move v13, v14

    goto :goto_6

    :cond_7
    const/16 v22, 0x0

    aget-object v22, v18, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v10, v0

    move v5, v9

    move/from16 v16, v17

    :goto_8
    if-ge v5, v10, :cond_b

    const/4 v7, 0x0

    move/from16 v17, v16

    :goto_9
    if-ge v7, v14, :cond_a

    if-eqz v20, :cond_8

    add-int/lit8 v22, v7, 0x8

    rem-int v8, v22, v14

    :goto_a
    if-eqz v20, :cond_9

    const/16 v22, 0x7

    move/from16 v0, v22

    if-le v8, v0, :cond_9

    add-int/lit8 v6, v5, -0x1

    :goto_b
    aget-object v22, v18, v8

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v22, v0

    add-int/lit8 v16, v17, 0x1

    aget-byte v23, p0, v17

    aput-byte v23, v22, v6

    add-int/lit8 v7, v7, 0x1

    move/from16 v17, v16

    goto :goto_9

    :cond_8
    move v8, v7

    goto :goto_a

    :cond_9
    move v6, v5

    goto :goto_b

    :cond_a
    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v17

    goto :goto_8

    :cond_b
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    new-instance v22, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v22

    :cond_c
    return-object v18
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
