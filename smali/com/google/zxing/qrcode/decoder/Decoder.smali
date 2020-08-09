.class public final Lcom/google/zxing/qrcode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    return-void
.end method

.method private correctErrors([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    array-length v2, p1

    new-array v0, v2, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    array-length v4, p1

    sub-int/2addr v4, p2

    invoke-virtual {v3, v0, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    aget v3, v0, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v3

    throw v3

    :cond_1
    return-void
.end method

.method private decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/qrcode/decoder/BitMatrixParser;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v12

    invoke-static {v12, v11, v4}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-result-object v3

    const/4 v10, 0x0

    array-length v13, v3

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_0

    aget-object v2, v3, v12

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v14

    add-int/2addr v10, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    new-array v7, v10, [B

    const/4 v8, 0x0

    array-length v13, v3

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_2

    aget-object v2, v3, v12

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getCodewords()[B

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v6

    invoke-direct {p0, v1, v6}, Lcom/google/zxing/qrcode/decoder/Decoder;->correctErrors([BI)V

    const/4 v5, 0x0

    move v9, v8

    :goto_2
    if-ge v5, v6, :cond_1

    add-int/lit8 v8, v9, 0x1

    aget-byte v14, v1, v5

    aput-byte v14, v7, v9

    add-int/lit8 v5, v5, 0x1

    move v9, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v12, v12, 0x1

    move v8, v9

    goto :goto_1

    :cond_2
    move-object/from16 v0, p2

    invoke-static {v7, v11, v4, v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v12

    return-object v12
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitMatrix;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    new-instance v3, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;

    invoke-direct {v3, p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v3, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    :goto_1
    :try_start_1
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->remask()V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->setMirror(Z)V

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror()V

    invoke-direct {p0, v3, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v4

    new-instance v5, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v1, v5

    :goto_2
    if-eqz v2, :cond_0

    throw v2

    :catch_2
    move-exception v0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw v1

    :catch_3
    move-exception v5

    move-object v1, v5

    goto :goto_2
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/zxing/common/BitMatrix;->parse([[Z)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method
