.class final Lcom/google/zxing/oned/UPCEANExtension2Support;
.super Ljava/lang/Object;
.source "UPCEANExtension2Support.java"


# instance fields
.field private final decodeMiddleCounters:[I

.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeMiddleCounters:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method private decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeMiddleCounters:[I

    aput v8, v3, v8

    aput v8, v3, v10

    aput v8, v3, v11

    const/4 v7, 0x3

    aput v8, v3, v7

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    aget v5, p2, v10

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v11, :cond_3

    if-ge v5, v4, :cond_3

    sget-object v7, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v3, v5, v7}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    rem-int/lit8 v7, v0, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v9, v3

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_0

    aget v2, v3, v7

    add-int/2addr v5, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    const/16 v7, 0xa

    if-lt v0, v7, :cond_1

    rsub-int/lit8 v7, v6, 0x1

    shl-int v7, v10, v7

    or-int/2addr v1, v7

    :cond_1
    if-eq v6, v10, :cond_2

    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v5

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eq v7, v11, :cond_4

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7

    :cond_4
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    rem-int/lit8 v7, v7, 0x4

    if-eq v7, v1, :cond_5

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7

    :cond_5
    return v5
.end method

.method private static parseExtensionString(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method decodeRow(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v3, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-direct {p0, p2, p3, v3}, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/zxing/oned/UPCEANExtension2Support;->parseExtensionString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/google/zxing/Result;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/google/zxing/ResultPoint;

    new-instance v7, Lcom/google/zxing/ResultPoint;

    aget v8, p3, v10

    aget v9, p3, v11

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    int-to-float v9, p1

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v6, v10

    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, v0

    int-to-float v9, p1

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v6, v11

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    :cond_0
    return-object v2
.end method
