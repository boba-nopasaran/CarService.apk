.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v2, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const-string v2, "0123456789&\r\t,:#-.$/+%*=^"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/math/BigInteger;

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x0

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v4, v2, v3

    const-wide/16 v2, 0x384

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v0, 0x2

    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .locals 18

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v5, 0x0

    const-wide/16 v12, 0x0

    const/4 v8, 0x0

    sparse-switch p0, :sswitch_data_0

    :cond_0
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    move-object/from16 v0, p2

    invoke-direct {v14, v15, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return p3

    :sswitch_0
    const/4 v14, 0x6

    new-array v2, v14, [I

    add-int/lit8 v4, p3, 0x1

    aget v11, p1, p3

    move/from16 p3, v4

    :goto_0
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p3

    if-ge v0, v14, :cond_2

    if-nez v8, :cond_2

    add-int/lit8 v6, v5, 0x1

    aput v11, v2, v5

    const-wide/16 v14, 0x384

    mul-long/2addr v14, v12

    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    add-int/lit8 v4, p3, 0x1

    aget v11, p1, p3

    sparse-switch v11, :sswitch_data_1

    rem-int/lit8 v14, v6, 0x5

    if-nez v14, :cond_7

    if-lez v6, :cond_7

    const/4 v10, 0x0

    :goto_1
    const/4 v14, 0x6

    if-ge v10, v14, :cond_1

    rsub-int/lit8 v14, v10, 0x5

    mul-int/lit8 v14, v14, 0x8

    shr-long v14, v12, v14

    long-to-int v14, v14

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :sswitch_1
    add-int/lit8 p3, v4, -0x1

    const/4 v8, 0x1

    move v5, v6

    goto :goto_0

    :cond_1
    const-wide/16 v12, 0x0

    const/4 v5, 0x0

    move/from16 p3, v4

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p3

    if-ne v0, v14, :cond_3

    const/16 v14, 0x384

    if-ge v11, v14, :cond_3

    add-int/lit8 v6, v5, 0x1

    aput v11, v2, v5

    move v5, v6

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v5, :cond_0

    aget v14, v2, v9

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v12, 0x0

    const/4 v5, 0x0

    :cond_5
    :sswitch_2
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p3

    if-ge v0, v14, :cond_0

    if-nez v8, :cond_0

    add-int/lit8 v4, p3, 0x1

    aget v3, p1, p3

    const/16 v14, 0x384

    if-ge v3, v14, :cond_6

    add-int/lit8 v5, v5, 0x1

    const-wide/16 v14, 0x384

    mul-long/2addr v14, v12

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    move/from16 p3, v4

    :goto_3
    rem-int/lit8 v14, v5, 0x5

    if-nez v14, :cond_5

    if-lez v5, :cond_5

    const/4 v10, 0x0

    :goto_4
    const/4 v14, 0x6

    if-ge v10, v14, :cond_4

    rsub-int/lit8 v14, v10, 0x5

    mul-int/lit8 v14, v14, 0x8

    shr-long v14, v12, v14

    long-to-int v14, v14

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    sparse-switch v3, :sswitch_data_2

    move/from16 p3, v4

    goto :goto_3

    :sswitch_3
    add-int/lit8 p3, v4, -0x1

    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    move v5, v6

    move/from16 p3, v4

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x385 -> :sswitch_0
        0x39c -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x384 -> :sswitch_1
        0x385 -> :sswitch_1
        0x386 -> :sswitch_1
        0x39a -> :sswitch_1
        0x39b -> :sswitch_1
        0x39c -> :sswitch_1
        0x3a0 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x384 -> :sswitch_3
        0x385 -> :sswitch_3
        0x386 -> :sswitch_3
        0x39a -> :sswitch_3
        0x39b -> :sswitch_3
        0x39c -> :sswitch_3
        0x3a0 -> :sswitch_3
    .end sparse-switch
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    array-length v7, p0

    shl-int/lit8 v7, v7, 0x1

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/4 v1, 0x1

    const/4 v7, 0x1

    add-int/lit8 v1, v1, 0x1

    aget v0, p0, v7

    new-instance v6, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v6}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    :goto_0
    const/4 v7, 0x0

    aget v7, p0, v7

    if-ge v1, v7, :cond_1

    sparse-switch v0, :sswitch_data_0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    :goto_1
    array-length v7, p0

    if-ge v1, v7, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget v0, p0, v1

    move v1, v2

    goto :goto_0

    :sswitch_0
    invoke-static {p0, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_1

    :sswitch_1
    invoke-static {v0, p0, v4, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_1

    :sswitch_2
    add-int/lit8 v2, v1, 0x1

    aget v7, p0, v1

    int-to-char v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_1

    :sswitch_3
    invoke-static {p0, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_1

    :sswitch_4
    add-int/lit8 v2, v1, 0x1

    aget v7, p0, v1

    invoke-static {v7}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    move v1, v2

    goto :goto_1

    :sswitch_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :sswitch_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_7
    invoke-static {p0, v1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v1

    goto :goto_1

    :sswitch_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    :cond_2
    new-instance v3, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v8, v7, v8, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_3
        0x391 -> :sswitch_2
        0x39a -> :sswitch_8
        0x39b -> :sswitch_8
        0x39c -> :sswitch_1
        0x39d -> :sswitch_6
        0x39e -> :sswitch_5
        0x39f -> :sswitch_4
        0x3a0 -> :sswitch_7
    .end sparse-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v4, p1, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_1

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    add-int/lit8 v9, p1, 0x2

    const/4 v10, 0x0

    aget v10, p0, v10

    if-le v9, v10, :cond_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    :cond_0
    const/4 v9, 0x2

    new-array v8, v9, [I

    const/4 v7, 0x0

    :goto_0
    const/4 v9, 0x2

    if-ge v7, v9, :cond_1

    aget v9, p0, p1

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    aget v9, p0, p1

    packed-switch v9, :pswitch_data_0

    :goto_1
    return p1

    :pswitch_0
    add-int/lit8 p1, p1, 0x1

    const/4 v9, 0x0

    aget v9, p0, v9

    sub-int/2addr v9, p1

    new-array v0, v9, [I

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_2
    const/4 v9, 0x0

    aget v9, p0, v9

    if-ge p1, v9, :cond_3

    if-nez v5, :cond_3

    add-int/lit8 v4, p1, 0x1

    aget v3, p0, p1

    const/16 v9, 0x384

    if-ge v3, v9, :cond_2

    add-int/lit8 v2, v1, 0x1

    aput v3, v0, v1

    move v1, v2

    move p1, v4

    goto :goto_2

    :cond_2
    packed-switch v3, :pswitch_data_1

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    :pswitch_1
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 p1, v4, 0x1

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    goto :goto_1

    :pswitch_2
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 9

    const/16 v8, 0x1d

    const/16 v7, 0x1a

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_7

    aget v4, p0, v1

    const/4 v0, 0x0

    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    if-ge v4, v7, :cond_1

    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    goto :goto_1

    :cond_1
    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const/16 v0, 0x20

    goto :goto_1

    :sswitch_1
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    :sswitch_2
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    :sswitch_3
    move-object v2, v3

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    :sswitch_4
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_5
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    :pswitch_1
    if-ge v4, v7, :cond_2

    add-int/lit8 v5, v4, 0x61

    int-to-char v0, v5

    goto :goto_1

    :cond_2
    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_6
    const/16 v0, 0x20

    goto :goto_1

    :sswitch_7
    move-object v2, v3

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    :sswitch_8
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    :sswitch_9
    move-object v2, v3

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    :sswitch_a
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_b
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x19

    if-ge v4, v5, :cond_3

    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v0, v5, v4

    goto :goto_1

    :cond_3
    sparse-switch v4, :sswitch_data_2

    goto :goto_1

    :sswitch_c
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    :sswitch_d
    const/16 v0, 0x20

    goto :goto_1

    :sswitch_e
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    :sswitch_f
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    :sswitch_10
    move-object v2, v3

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    :sswitch_11
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_12
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    :pswitch_3
    if-ge v4, v8, :cond_4

    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    goto :goto_1

    :cond_4
    sparse-switch v4, :sswitch_data_3

    goto :goto_1

    :sswitch_13
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    :sswitch_14
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :sswitch_15
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    :pswitch_4
    move-object v3, v2

    if-ge v4, v7, :cond_5

    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    goto/16 :goto_1

    :cond_5
    sparse-switch v4, :sswitch_data_4

    goto/16 :goto_1

    :sswitch_16
    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_17
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    :pswitch_5
    move-object v3, v2

    if-ge v4, v8, :cond_6

    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    goto/16 :goto_1

    :cond_6
    sparse-switch v4, :sswitch_data_5

    goto/16 :goto_1

    :sswitch_18
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    :sswitch_19
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :sswitch_1a
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0x1b -> :sswitch_1
        0x1c -> :sswitch_2
        0x1d -> :sswitch_3
        0x384 -> :sswitch_5
        0x391 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1a -> :sswitch_6
        0x1b -> :sswitch_7
        0x1c -> :sswitch_8
        0x1d -> :sswitch_9
        0x384 -> :sswitch_b
        0x391 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x19 -> :sswitch_c
        0x1a -> :sswitch_d
        0x1b -> :sswitch_e
        0x1c -> :sswitch_f
        0x1d -> :sswitch_10
        0x384 -> :sswitch_12
        0x391 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x1d -> :sswitch_13
        0x384 -> :sswitch_15
        0x391 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x1a -> :sswitch_16
        0x384 -> :sswitch_17
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x1d -> :sswitch_18
        0x384 -> :sswitch_1a
        0x391 -> :sswitch_19
    .end sparse-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0xf

    new-array v4, v5, [I

    :cond_0
    :goto_0
    aget v5, p0, v6

    if-ge p1, v5, :cond_4

    if-nez v3, :cond_4

    add-int/lit8 v1, p1, 0x1

    aget v0, p0, p1

    aget v5, p0, v6

    if-ne v1, v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    const/16 v5, 0x384

    if-ge v0, v5, :cond_3

    aput v0, v4, v2

    add-int/lit8 v2, v2, 0x1

    move p1, v1

    :goto_1
    rem-int/lit8 v5, v2, 0xf

    if-eqz v5, :cond_2

    const/16 v5, 0x386

    if-eq v0, v5, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    if-lez v2, :cond_0

    invoke-static {v4, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    sparse-switch v0, :sswitch_data_0

    move p1, v1

    goto :goto_1

    :sswitch_0
    add-int/lit8 p1, v1, -0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    return p1

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_0
        0x39a -> :sswitch_0
        0x39b -> :sswitch_0
        0x39c -> :sswitch_0
        0x3a0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 11

    const/16 v10, 0x384

    const/4 v9, 0x0

    aget v7, p0, v9

    sub-int/2addr v7, p1

    shl-int/lit8 v7, v7, 0x1

    new-array v6, v7, [I

    aget v7, p0, v9

    sub-int/2addr v7, p1

    shl-int/lit8 v7, v7, 0x1

    new-array v0, v7, [I

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    aget v7, p0, v9

    if-ge p1, v7, :cond_1

    if-nez v3, :cond_1

    add-int/lit8 v2, p1, 0x1

    aget v1, p0, p1

    if-ge v1, v10, :cond_0

    div-int/lit8 v7, v1, 0x1e

    aput v7, v6, v4

    add-int/lit8 v7, v4, 0x1

    rem-int/lit8 v8, v1, 0x1e

    aput v8, v6, v7

    add-int/lit8 v4, v4, 0x2

    move p1, v2

    goto :goto_0

    :cond_0
    sparse-switch v1, :sswitch_data_0

    move p1, v2

    goto :goto_0

    :sswitch_0
    add-int/lit8 v5, v4, 0x1

    aput v10, v6, v4

    move v4, v5

    move p1, v2

    goto :goto_0

    :sswitch_1
    add-int/lit8 p1, v2, -0x1

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const/16 v7, 0x391

    aput v7, v6, v4

    add-int/lit8 p1, v2, 0x1

    aget v1, p0, v2

    aput v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v6, v0, v4, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    return p1

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_1
        0x391 -> :sswitch_2
        0x39a -> :sswitch_1
        0x39b -> :sswitch_1
        0x39c -> :sswitch_1
        0x3a0 -> :sswitch_1
    .end sparse-switch
.end method
