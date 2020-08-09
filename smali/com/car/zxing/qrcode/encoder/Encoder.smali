.class public final Lcom/car/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/zxing/qrcode/encoder/Encoder$1;
    }
.end annotation


# static fields
.field private static final ALPHANUMERIC_TABLE:[I

.field static final DEFAULT_BYTE_MODE_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/car/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static append8BitBytes(Ljava/lang/String;Lcom/car/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/zxing/WriterException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    const/16 v6, 0x8

    invoke-virtual {p1, v1, v6}, Lcom/car/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Lcom/car/zxing/WriterException;

    invoke-direct {v6, v5}, Lcom/car/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_0
    return-void
.end method

.method static appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/car/zxing/common/BitArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/zxing/WriterException;
        }
    .end annotation

    const/4 v6, -0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/car/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v0

    if-ne v0, v6, :cond_0

    new-instance v4, Lcom/car/zxing/WriterException;

    invoke-direct {v4}, Lcom/car/zxing/WriterException;-><init>()V

    throw v4

    :cond_0
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/car/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v1

    if-ne v1, v6, :cond_1

    new-instance v4, Lcom/car/zxing/WriterException;

    invoke-direct {v4}, Lcom/car/zxing/WriterException;-><init>()V

    throw v4

    :cond_1
    mul-int/lit8 v4, v0, 0x2d

    add-int/2addr v4, v1

    const/16 v5, 0xb

    invoke-virtual {p1, v4, v5}, Lcom/car/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    const/4 v4, 0x6

    invoke-virtual {p1, v0, v4}, Lcom/car/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static appendBytes(Ljava/lang/String;Lcom/car/zxing/qrcode/decoder/Mode;Lcom/car/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/zxing/WriterException;
        }
    .end annotation

    sget-object v0, Lcom/car/zxing/qrcode/encoder/Encoder$1;->$SwitchMap$com$car$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {p1}, Lcom/car/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/car/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/car/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p0, p2}, Lcom/car/zxing/qrcode/encoder/Encoder;->appendNumericBytes(Ljava/lang/CharSequence;Lcom/car/zxing/common/BitArray;)V

    :goto_0
    return-void

    :pswitch_1
    invoke-static {p0, p2}, Lcom/car/zxing/qrcode/encoder/Encoder;->appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/car/zxing/common/BitArray;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p2, p3}, Lcom/car/zxing/qrcode/encoder/Encoder;->append8BitBytes(Ljava/lang/String;Lcom/car/zxing/common/BitArray;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p2}, Lcom/car/zxing/qrcode/encoder/Encoder;->appendKanjiBytes(Ljava/lang/String;Lcom/car/zxing/common/BitArray;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static appendECI(Lcom/car/zxing/common/CharacterSetECI;Lcom/car/zxing/common/BitArray;)V
    .locals 2

    sget-object v0, Lcom/car/zxing/qrcode/decoder/Mode;->ECI:Lcom/car/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lcom/car/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/car/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {p0}, Lcom/car/zxing/common/CharacterSetECI;->getValue()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/car/zxing/common/BitArray;->appendBits(II)V

    return-void
.end method

.method static appendKanjiBytes(Ljava/lang/String;Lcom/car/zxing/common/BitArray;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/zxing/WriterException;
        }
    .end annotation

    const v11, 0x8140

    :try_start_0
    const-string v9, "Shift_JIS"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_3

    aget-byte v9, v2, v5

    and-int/lit16 v0, v9, 0xff

    add-int/lit8 v9, v5, 0x1

    aget-byte v9, v2, v9

    and-int/lit16 v1, v9, 0xff

    shl-int/lit8 v9, v0, 0x8

    or-int v3, v9, v1

    const/4 v7, -0x1

    if-lt v3, v11, :cond_1

    const v9, 0x9ffc

    if-gt v3, v9, :cond_1

    sub-int v7, v3, v11

    :cond_0
    :goto_1
    const/4 v9, -0x1

    if-ne v7, v9, :cond_2

    new-instance v9, Lcom/car/zxing/WriterException;

    const-string v10, "Invalid byte sequence"

    invoke-direct {v9, v10}, Lcom/car/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v9

    :catch_0
    move-exception v8

    new-instance v9, Lcom/car/zxing/WriterException;

    invoke-direct {v9, v8}, Lcom/car/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    :cond_1
    const v9, 0xe040

    if-lt v3, v9, :cond_0

    const v9, 0xebbf

    if-gt v3, v9, :cond_0

    const v9, 0xc140

    sub-int v7, v3, v9

    goto :goto_1

    :cond_2
    shr-int/lit8 v9, v7, 0x8

    mul-int/lit16 v9, v9, 0xc0

    and-int/lit16 v10, v7, 0xff

    add-int v4, v9, v10

    const/16 v9, 0xd

    invoke-virtual {p1, v4, v9}, Lcom/car/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_3
    return-void
.end method

.method static appendLengthInfo(ILcom/car/zxing/qrcode/decoder/Version;Lcom/car/zxing/qrcode/decoder/Mode;Lcom/car/zxing/common/BitArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/zxing/WriterException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p2, p1}, Lcom/car/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/car/zxing/qrcode/decoder/Version;)I

    move-result v0

    shl-int v1, v4, v0

    if-lt p0, v1, :cond_0

    new-instance v1, Lcom/car/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is bigger than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shl-int v3, v4, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/car/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p3, p0, v0}, Lcom/car/zxing/common/BitArray;->appendBits(II)V

    return-void
.end method

.method static appendModeInfo(Lcom/car/zxing/qrcode/decoder/Mode;Lcom/car/zxing/common/BitArray;)V
    .locals 2

    invoke-virtual {p0}, Lcom/car/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/car/zxing/common/BitArray;->appendBits(II)V

    return-void
.end method

.method static appendNumericBytes(Ljava/lang/CharSequence;Lcom/car/zxing/common/BitArray;)V
    .locals 7

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v2, v5, -0x30

    add-int/lit8 v5, v0, 0x2

    if-ge v5, v1, :cond_0

    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    add-int/lit8 v5, v0, 0x2

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v4, v5, -0x30

    mul-int/lit8 v5, v2, 0x64

    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    const/16 v6, 0xa

    invoke-virtual {p1, v5, v6}, Lcom/car/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v1, :cond_1

    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    mul-int/lit8 v5, v2, 0xa

    add-int/2addr v5, v3

    const/4 v6, 0x7

    invoke-virtual {p1, v5, v6}, Lcom/car/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    invoke-virtual {p1, v2, v5}, Lcom/car/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static calculateMaskPenalty(Lcom/car/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 2

    invoke-static {p0}, Lcom/car/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1(Lcom/car/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v0

    invoke-static {p0}, Lcom/car/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule2(Lcom/car/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Lcom/car/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule3(Lcom/car/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Lcom/car/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule4(Lcom/car/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static chooseMaskPattern(Lcom/car/zxing/common/BitArray;Lcom/car/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/car/zxing/qrcode/decoder/Version;Lcom/car/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/zxing/WriterException;
        }
    .end annotation

    const v2, 0x7fffffff

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    invoke-static {p0, p1, p2, v1, p3}, Lcom/car/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/car/zxing/common/BitArray;Lcom/car/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/car/zxing/qrcode/decoder/Version;ILcom/car/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p3}, Lcom/car/zxing/qrcode/encoder/Encoder;->calculateMaskPenalty(Lcom/car/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v3

    if-ge v3, v2, :cond_0

    move v2, v3

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static chooseMode(Ljava/lang/String;)Lcom/car/zxing/qrcode/decoder/Mode;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/car/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/car/zxing/qrcode/decoder/Mode;

    move-result-object v0

    return-object v0
.end method

.method private static chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/car/zxing/qrcode/decoder/Mode;
    .locals 6

    const-string v4, "Shift_JIS"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0}, Lcom/car/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/car/zxing/qrcode/decoder/Mode;->KANJI:Lcom/car/zxing/qrcode/decoder/Mode;

    :goto_0
    return-object v4

    :cond_0
    sget-object v4, Lcom/car/zxing/qrcode/decoder/Mode;->BYTE:Lcom/car/zxing/qrcode/decoder/Mode;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-lt v0, v4, :cond_2

    const/16 v4, 0x39

    if-gt v0, v4, :cond_2

    const/4 v2, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/car/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    sget-object v4, Lcom/car/zxing/qrcode/decoder/Mode;->BYTE:Lcom/car/zxing/qrcode/decoder/Mode;

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    sget-object v4, Lcom/car/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/car/zxing/qrcode/decoder/Mode;

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    sget-object v4, Lcom/car/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/car/zxing/qrcode/decoder/Mode;

    goto :goto_0

    :cond_6
    sget-object v4, Lcom/car/zxing/qrcode/decoder/Mode;->BYTE:Lcom/car/zxing/qrcode/decoder/Mode;

    goto :goto_0
.end method

.method private static chooseVersion(ILcom/car/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/car/zxing/qrcode/decoder/Version;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/zxing/WriterException;
        }
    .end annotation

    const/4 v6, 0x1

    :goto_0
    const/16 v7, 0x28

    if-gt v6, v7, :cond_1

    invoke-static {v6}, Lcom/car/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/car/zxing/qrcode/decoder/Version;

    move-result-object v5

    invoke-virtual {v5}, Lcom/car/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v1

    invoke-virtual {v5, p1}, Lcom/car/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/car/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/car/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v3

    sub-int v2, v1, v3

    add-int/lit8 v7, p0, 0x7

    div-int/lit8 v4, v7, 0x8

    if-lt v2, v4, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-instance v7, Lcom/car/zxing/WriterException;

    const-string v8, "Data too big"

    invoke-direct {v7, v8}, Lcom/car/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static encode(Ljava/lang/String;Lcom/car/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/car/zxing/qrcode/encoder/QRCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/zxing/WriterException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/car/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/car/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/car/zxing/qrcode/encoder/QRCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Lcom/car/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/car/zxing/qrcode/encoder/QRCode;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/car/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/car/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/car/zxing/qrcode/encoder/QRCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/zxing/WriterException;
        }
    .end annotation

    if-nez p2, :cond_2

    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_0

    const-string v7, "ISO-8859-1"

    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/car/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/car/zxing/qrcode/decoder/Mode;

    move-result-object v13

    new-instance v10, Lcom/car/zxing/common/BitArray;

    invoke-direct {v10}, Lcom/car/zxing/common/BitArray;-><init>()V

    sget-object v20, Lcom/car/zxing/qrcode/decoder/Mode;->BYTE:Lcom/car/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v20

    if-ne v13, v0, :cond_1

    const-string v20, "ISO-8859-1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    invoke-static {v7}, Lcom/car/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/car/zxing/common/CharacterSetECI;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6, v10}, Lcom/car/zxing/qrcode/encoder/Encoder;->appendECI(Lcom/car/zxing/common/CharacterSetECI;Lcom/car/zxing/common/BitArray;)V

    :cond_1
    invoke-static {v13, v10}, Lcom/car/zxing/qrcode/encoder/Encoder;->appendModeInfo(Lcom/car/zxing/qrcode/decoder/Mode;Lcom/car/zxing/common/BitArray;)V

    new-instance v3, Lcom/car/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/car/zxing/common/BitArray;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v0, v13, v3, v7}, Lcom/car/zxing/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/car/zxing/qrcode/decoder/Mode;Lcom/car/zxing/common/BitArray;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/car/zxing/common/BitArray;->getSize()I

    move-result v20

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/car/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/car/zxing/qrcode/decoder/Version;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/car/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/car/zxing/qrcode/decoder/Version;)I

    move-result v21

    add-int v20, v20, v21

    invoke-virtual {v3}, Lcom/car/zxing/common/BitArray;->getSize()I

    move-result v21

    add-int v16, v20, v21

    move/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/car/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/car/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/car/zxing/qrcode/decoder/Version;

    move-result-object v17

    invoke-virtual {v10}, Lcom/car/zxing/common/BitArray;->getSize()I

    move-result v20

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/car/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/car/zxing/qrcode/decoder/Version;)I

    move-result v21

    add-int v20, v20, v21

    invoke-virtual {v3}, Lcom/car/zxing/common/BitArray;->getSize()I

    move-result v21

    add-int v2, v20, v21

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/car/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/car/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/car/zxing/qrcode/decoder/Version;

    move-result-object v19

    new-instance v9, Lcom/car/zxing/common/BitArray;

    invoke-direct {v9}, Lcom/car/zxing/common/BitArray;-><init>()V

    invoke-virtual {v9, v10}, Lcom/car/zxing/common/BitArray;->appendBitArray(Lcom/car/zxing/common/BitArray;)V

    sget-object v20, Lcom/car/zxing/qrcode/decoder/Mode;->BYTE:Lcom/car/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v20

    if-ne v13, v0, :cond_3

    invoke-virtual {v3}, Lcom/car/zxing/common/BitArray;->getSizeInBytes()I

    move-result v15

    :goto_1
    move-object/from16 v0, v19

    invoke-static {v15, v0, v13, v9}, Lcom/car/zxing/qrcode/encoder/Encoder;->appendLengthInfo(ILcom/car/zxing/qrcode/decoder/Version;Lcom/car/zxing/qrcode/decoder/Mode;Lcom/car/zxing/common/BitArray;)V

    invoke-virtual {v9, v3}, Lcom/car/zxing/common/BitArray;->appendBitArray(Lcom/car/zxing/common/BitArray;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/car/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/car/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/car/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lcom/car/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v20

    invoke-virtual {v5}, Lcom/car/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v21

    sub-int v14, v20, v21

    invoke-static {v14, v9}, Lcom/car/zxing/qrcode/encoder/Encoder;->terminateBits(ILcom/car/zxing/common/BitArray;)V

    invoke-virtual/range {v19 .. v19}, Lcom/car/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v20

    invoke-virtual {v5}, Lcom/car/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v9, v0, v14, v1}, Lcom/car/zxing/qrcode/encoder/Encoder;->interleaveWithECBytes(Lcom/car/zxing/common/BitArray;III)Lcom/car/zxing/common/BitArray;

    move-result-object v8

    new-instance v18, Lcom/car/zxing/qrcode/encoder/QRCode;

    invoke-direct/range {v18 .. v18}, Lcom/car/zxing/qrcode/encoder/QRCode;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/car/zxing/qrcode/encoder/QRCode;->setECLevel(Lcom/car/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/car/zxing/qrcode/encoder/QRCode;->setMode(Lcom/car/zxing/qrcode/decoder/Mode;)V

    invoke-virtual/range {v18 .. v19}, Lcom/car/zxing/qrcode/encoder/QRCode;->setVersion(Lcom/car/zxing/qrcode/decoder/Version;)V

    invoke-virtual/range {v19 .. v19}, Lcom/car/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v4

    new-instance v12, Lcom/car/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v12, v4, v4}, Lcom/car/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1, v12}, Lcom/car/zxing/qrcode/encoder/Encoder;->chooseMaskPattern(Lcom/car/zxing/common/BitArray;Lcom/car/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/car/zxing/qrcode/decoder/Version;Lcom/car/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/car/zxing/qrcode/encoder/QRCode;->setMaskPattern(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1, v11, v12}, Lcom/car/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/car/zxing/common/BitArray;Lcom/car/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/car/zxing/qrcode/decoder/Version;ILcom/car/zxing/qrcode/encoder/ByteMatrix;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/car/zxing/qrcode/encoder/QRCode;->setMatrix(Lcom/car/zxing/qrcode/encoder/ByteMatrix;)V

    return-object v18

    :cond_2
    sget-object v20, Lcom/car/zxing/EncodeHintType;->CHARACTER_SET:Lcom/car/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v7, v20

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    goto :goto_1
.end method

.method static generateECBytes([BI)[B
    .locals 6

    array-length v2, p0

    add-int v4, v2, p1

    new-array v3, v4, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/car/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v5, Lcom/car/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/car/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v4, v5}, Lcom/car/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/car/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v4, v3, p1}, Lcom/car/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    add-int v4, v2, v1

    aget v4, v3, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method static getAlphanumericCode(I)I
    .locals 1

    sget-object v0, Lcom/car/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/car/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    aget v0, v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/zxing/WriterException;
        }
    .end annotation

    if-lt p3, p2, :cond_0

    new-instance v8, Lcom/car/zxing/WriterException;

    const-string v9, "Block ID too large"

    invoke-direct {v8, v9}, Lcom/car/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    rem-int v5, p0, p2

    sub-int v4, p2, v5

    div-int v6, p0, p2

    add-int/lit8 v7, v6, 0x1

    div-int v0, p1, p2

    add-int/lit8 v1, v0, 0x1

    sub-int v2, v6, v0

    sub-int v3, v7, v1

    if-eq v2, v3, :cond_1

    new-instance v8, Lcom/car/zxing/WriterException;

    const-string v9, "EC bytes mismatch"

    invoke-direct {v8, v9}, Lcom/car/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    add-int v8, v4, v5

    if-eq p2, v8, :cond_2

    new-instance v8, Lcom/car/zxing/WriterException;

    const-string v9, "RS blocks mismatch"

    invoke-direct {v8, v9}, Lcom/car/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    add-int v8, v0, v2

    mul-int/2addr v8, v4

    add-int v9, v1, v3

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    if-eq p0, v8, :cond_3

    new-instance v8, Lcom/car/zxing/WriterException;

    const-string v9, "Total bytes mismatch"

    invoke-direct {v8, v9}, Lcom/car/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    if-ge p3, v4, :cond_4

    const/4 v8, 0x0

    aput v0, p4, v8

    const/4 v8, 0x0

    aput v2, p5, v8

    :goto_0
    return-void

    :cond_4
    const/4 v8, 0x0

    aput v1, p4, v8

    const/4 v8, 0x0

    aput v3, p5, v8

    goto :goto_0
.end method

.method static interleaveWithECBytes(Lcom/car/zxing/common/BitArray;III)Lcom/car/zxing/common/BitArray;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/zxing/WriterException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/car/zxing/common/BitArray;->getSizeInBytes()I

    move-result v2

    move/from16 v0, p2

    if-eq v2, v0, :cond_0

    new-instance v2, Lcom/car/zxing/WriterException;

    const-string v3, "Number of bits and data bytes does not match"

    invoke-direct {v2, v3}, Lcom/car/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-instance v9, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v5, v0, :cond_1

    const/4 v2, 0x1

    new-array v6, v2, [I

    const/4 v2, 0x1

    new-array v7, v2, [I

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-static/range {v2 .. v7}, Lcom/car/zxing/qrcode/encoder/Encoder;->getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V

    const/4 v2, 0x0

    aget v17, v6, v2

    move/from16 v0, v17

    new-array v10, v0, [B

    mul-int/lit8 v2, v11, 0x8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v2, v10, v3, v1}, Lcom/car/zxing/common/BitArray;->toBytes(I[BII)V

    const/4 v2, 0x0

    aget v2, v7, v2

    invoke-static {v10, v2}, Lcom/car/zxing/qrcode/encoder/Encoder;->generateECBytes([BI)[B

    move-result-object v12

    new-instance v2, Lcom/car/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v2, v10, v12}, Lcom/car/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-interface {v9, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    array-length v2, v12

    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/4 v2, 0x0

    aget v2, v6, v2

    add-int/2addr v11, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move/from16 v0, p2

    if-eq v0, v11, :cond_2

    new-instance v2, Lcom/car/zxing/WriterException;

    const-string v3, "Data bytes does not match offset"

    invoke-direct {v2, v3}, Lcom/car/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v16, Lcom/car/zxing/common/BitArray;

    invoke-direct/range {v16 .. v16}, Lcom/car/zxing/common/BitArray;-><init>()V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v14, :cond_5

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/zxing/qrcode/encoder/BlockPair;

    invoke-virtual {v8}, Lcom/car/zxing/qrcode/encoder/BlockPair;->getDataBytes()[B

    move-result-object v10

    array-length v2, v10

    if-ge v5, v2, :cond_3

    aget-byte v2, v10, v5

    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/car/zxing/common/BitArray;->appendBits(II)V

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v15, :cond_8

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/zxing/qrcode/encoder/BlockPair;

    invoke-virtual {v8}, Lcom/car/zxing/qrcode/encoder/BlockPair;->getErrorCorrectionBytes()[B

    move-result-object v12

    array-length v2, v12

    if-ge v5, v2, :cond_6

    aget-byte v2, v12, v5

    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/car/zxing/common/BitArray;->appendBits(II)V

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcom/car/zxing/common/BitArray;->getSizeInBytes()I

    move-result v2

    move/from16 v0, p1

    if-eq v0, v2, :cond_9

    new-instance v2, Lcom/car/zxing/WriterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interleaving error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/car/zxing/common/BitArray;->getSizeInBytes()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " differ."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/car/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    return-object v16
.end method

.method private static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
    .locals 7

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "Shift_JIS"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    array-length v3, v1

    rem-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    aget-byte v6, v1, v2

    and-int/lit16 v0, v6, 0xff

    const/16 v6, 0x81

    if-lt v0, v6, :cond_2

    const/16 v6, 0x9f

    if-le v0, v6, :cond_3

    :cond_2
    const/16 v6, 0xe0

    if-lt v0, v6, :cond_0

    const/16 v6, 0xeb

    if-gt v0, v6, :cond_0

    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method static terminateBits(ILcom/car/zxing/common/BitArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/zxing/WriterException;
        }
    .end annotation

    const/16 v6, 0x8

    const/4 v5, 0x0

    shl-int/lit8 v0, p0, 0x3

    invoke-virtual {p1}, Lcom/car/zxing/common/BitArray;->getSize()I

    move-result v4

    if-le v4, v0, :cond_0

    new-instance v4, Lcom/car/zxing/WriterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data bits cannot fit in the QR Code"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/car/zxing/common/BitArray;->getSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/car/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    invoke-virtual {p1}, Lcom/car/zxing/common/BitArray;->getSize()I

    move-result v4

    if-ge v4, v0, :cond_1

    invoke-virtual {p1, v5}, Lcom/car/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/car/zxing/common/BitArray;->getSize()I

    move-result v4

    and-int/lit8 v2, v4, 0x7

    if-lez v2, :cond_2

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_2

    invoke-virtual {p1, v5}, Lcom/car/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/car/zxing/common/BitArray;->getSizeInBytes()I

    move-result v4

    sub-int v3, p0, v4

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_4

    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_3

    const/16 v4, 0xec

    :goto_3
    invoke-virtual {p1, v4, v6}, Lcom/car/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/16 v4, 0x11

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/car/zxing/common/BitArray;->getSize()I

    move-result v4

    if-eq v4, v0, :cond_5

    new-instance v4, Lcom/car/zxing/WriterException;

    const-string v5, "Bits size does not equal capacity"

    invoke-direct {v4, v5}, Lcom/car/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    return-void
.end method
