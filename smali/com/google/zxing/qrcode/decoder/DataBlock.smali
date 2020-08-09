.class final Lcom/google/zxing/qrcode/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;
    .locals 24

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v4

    const/16 v19, 0x0

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    array-length v0, v3

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    aget-object v2, v3, v20

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v22

    add-int v19, v19, v22

    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_1
    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-object/from16 v16, v0

    const/4 v12, 0x0

    array-length v0, v3

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    aget-object v2, v3, v20

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v5, v0, :cond_2

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v11

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v22

    add-int v10, v22, v11

    add-int/lit8 v13, v12, 0x1

    new-instance v22, Lcom/google/zxing/qrcode/decoder/DataBlock;

    new-array v0, v10, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v11, v1}, Lcom/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v22, v16, v12

    add-int/lit8 v5, v5, 0x1

    move v12, v13

    goto :goto_2

    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_3
    const/16 v20, 0x0

    aget-object v20, v16, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v8, v20, -0x1

    :goto_3
    if-ltz v8, :cond_4

    aget-object v20, v16, v8

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v20

    sub-int v17, v18, v20

    const/4 v14, 0x0

    const/4 v5, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v5, v0, :cond_6

    const/4 v7, 0x0

    move v15, v14

    :goto_5
    if-ge v7, v12, :cond_5

    aget-object v20, v16, v7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v20, v0

    add-int/lit8 v14, v15, 0x1

    aget-byte v21, p0, v15

    aput-byte v21, v20, v5

    add-int/lit8 v7, v7, 0x1

    move v15, v14

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    move v14, v15

    goto :goto_4

    :cond_6
    move v7, v8

    move v15, v14

    :goto_6
    if-ge v7, v12, :cond_7

    aget-object v20, v16, v7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v20, v0

    add-int/lit8 v14, v15, 0x1

    aget-byte v21, p0, v15

    aput-byte v21, v20, v17

    add-int/lit8 v7, v7, 0x1

    move v15, v14

    goto :goto_6

    :cond_7
    const/16 v20, 0x0

    aget-object v20, v16, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v9, v0

    move/from16 v5, v17

    move v14, v15

    :goto_7
    if-ge v5, v9, :cond_a

    const/4 v7, 0x0

    move v15, v14

    :goto_8
    if-ge v7, v12, :cond_9

    if-ge v7, v8, :cond_8

    move v6, v5

    :goto_9
    aget-object v20, v16, v7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v20, v0

    add-int/lit8 v14, v15, 0x1

    aget-byte v21, p0, v15

    aput-byte v21, v20, v6

    add-int/lit8 v7, v7, 0x1

    move v15, v14

    goto :goto_8

    :cond_8
    add-int/lit8 v6, v5, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v5, v5, 0x1

    move v14, v15

    goto :goto_7

    :cond_a
    return-object v16
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
