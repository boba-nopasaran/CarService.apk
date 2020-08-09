.class public final Lcom/google/zxing/oned/EAN8Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN8Reader.java"


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    return-void
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    aput v7, v2, v7

    aput v7, v2, v9

    const/4 v6, 0x2

    aput v7, v2, v6

    const/4 v6, 0x3

    aput v7, v2, v6

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    aget v4, p2, v9

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v10, :cond_1

    if-ge v4, v3, :cond_1

    sget-object v6, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v2, v4, v6}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    add-int/lit8 v6, v0, 0x30

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v8, v2

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_0

    aget v1, v2, v6

    add-int/2addr v4, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/google/zxing/oned/EAN8Reader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v4, v9, v6}, Lcom/google/zxing/oned/EAN8Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v6

    aget v4, v6, v9

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v10, :cond_3

    if-ge v4, v3, :cond_3

    sget-object v6, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v2, v4, v6}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    add-int/lit8 v6, v0, 0x30

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v8, v2

    move v6, v7

    :goto_3
    if-ge v6, v8, :cond_2

    aget v1, v2, v6

    add-int/2addr v4, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    return v4
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
