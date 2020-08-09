.class public final Lcom/google/zxing/maxicode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# static fields
.field private static final ALL:I = 0x0

.field private static final EVEN:I = 0x1

.field private static final ODD:I = 0x2


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->MAXICODE_FIELD_64:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/maxicode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    return-void
.end method

.method private correctErrors([BIIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    add-int v0, p3, p4

    if-nez p5, :cond_2

    const/4 v2, 0x1

    :goto_0
    div-int v4, v0, v2

    new-array v1, v4, [I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    if-eqz p5, :cond_0

    rem-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, p5, -0x1

    if-ne v4, v5, :cond_1

    :cond_0
    div-int v4, v3, v2

    add-int v5, v3, p2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/google/zxing/maxicode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    div-int v5, p4, v2

    invoke-virtual {v4, v1, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p3, :cond_6

    if-eqz p5, :cond_4

    rem-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, p5, -0x1

    if-ne v4, v5, :cond_5

    :cond_4
    add-int v4, v3, p2

    div-int v5, v3, v2

    aget v5, v1, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    :cond_6
    return-void
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

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/maxicode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 13
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

    const/4 v12, 0x2

    const/4 v9, 0x1

    const/16 v3, 0xa

    const/16 v6, 0x14

    const/4 v2, 0x0

    new-instance v0, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;

    invoke-direct {v0, p1}, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v0}, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v1

    move-object v0, p0

    move v4, v3

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    aget-byte v0, v1, v2

    and-int/lit8 v11, v0, 0xf

    packed-switch v11, :pswitch_data_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_0
    const/16 v7, 0x54

    const/16 v8, 0x28

    move-object v4, p0

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    const/16 v7, 0x54

    const/16 v8, 0x28

    move-object v4, p0

    move-object v5, v1

    move v9, v12

    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    const/16 v0, 0x5e

    new-array v10, v0, [B

    :goto_0
    invoke-static {v1, v2, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v10

    add-int/lit8 v0, v0, -0xa

    invoke-static {v1, v6, v10, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v10, v11}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->decode([BI)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0

    :pswitch_1
    const/16 v7, 0x44

    const/16 v8, 0x38

    move-object v4, p0

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    const/16 v7, 0x44

    const/16 v8, 0x38

    move-object v4, p0

    move-object v5, v1

    move v9, v12

    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    const/16 v0, 0x4e

    new-array v10, v0, [B

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
