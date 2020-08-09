.class public final Lcom/car/zxing/common/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"


# instance fields
.field private bits:[I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/zxing/common/BitArray;->size:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/car/zxing/common/BitArray;->size:I

    invoke-static {p1}, Lcom/car/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x5

    if-le p1, v1, :cond_0

    invoke-static {p1}, Lcom/car/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    iget-object v2, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    iput-object v0, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    :cond_0
    return-void
.end method

.method private static makeArray(I)[I
    .locals 1

    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    return-object v0
.end method


# virtual methods
.method public appendBit(Z)V
    .locals 5

    iget v0, p0, Lcom/car/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/car/zxing/common/BitArray;->ensureCapacity(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    iget v1, p0, Lcom/car/zxing/common/BitArray;->size:I

    shr-int/lit8 v1, v1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    iget v4, p0, Lcom/car/zxing/common/BitArray;->size:I

    and-int/lit8 v4, v4, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    :cond_0
    iget v0, p0, Lcom/car/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/car/zxing/common/BitArray;->size:I

    return-void
.end method

.method public appendBitArray(Lcom/car/zxing/common/BitArray;)V
    .locals 3

    iget v1, p1, Lcom/car/zxing/common/BitArray;->size:I

    iget v2, p0, Lcom/car/zxing/common/BitArray;->size:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/car/zxing/common/BitArray;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/car/zxing/common/BitArray;->get(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/car/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public appendBits(II)V
    .locals 3

    const/4 v2, 0x1

    if-ltz p2, :cond_0

    const/16 v1, 0x20

    if-le p2, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Num bits must be between 0 and 32"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, p0, Lcom/car/zxing/common/BitArray;->size:I

    add-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/car/zxing/common/BitArray;->ensureCapacity(I)V

    move v0, p2

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    shr-int v1, p1, v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/car/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    return-void
.end method

.method public clear()V
    .locals 4

    iget-object v2, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public flip(I)V
    .locals 5

    iget-object v0, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public get(I)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitArray()[I
    .locals 1

    iget-object v0, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    return-object v0
.end method

.method public getNextSet(I)I
    .locals 5

    iget v3, p0, Lcom/car/zxing/common/BitArray;->size:I

    if-lt p1, v3, :cond_1

    iget v2, p0, Lcom/car/zxing/common/BitArray;->size:I

    :cond_0
    :goto_0
    return v2

    :cond_1
    shr-int/lit8 v0, p1, 0x5

    iget-object v3, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    aget v1, v3, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    :goto_1
    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    array-length v3, v3

    if-ne v0, v3, :cond_2

    iget v2, p0, Lcom/car/zxing/common/BitArray;->size:I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    aget v1, v3, v0

    goto :goto_1

    :cond_3
    shl-int/lit8 v3, v0, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    add-int v2, v3, v4

    iget v3, p0, Lcom/car/zxing/common/BitArray;->size:I

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/car/zxing/common/BitArray;->size:I

    goto :goto_0
.end method

.method public getNextUnset(I)I
    .locals 5

    iget v3, p0, Lcom/car/zxing/common/BitArray;->size:I

    if-lt p1, v3, :cond_1

    iget v2, p0, Lcom/car/zxing/common/BitArray;->size:I

    :cond_0
    :goto_0
    return v2

    :cond_1
    shr-int/lit8 v0, p1, 0x5

    iget-object v3, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/lit8 v1, v3, -0x1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    :goto_1
    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    array-length v3, v3

    if-ne v0, v3, :cond_2

    iget v2, p0, Lcom/car/zxing/common/BitArray;->size:I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/lit8 v1, v3, -0x1

    goto :goto_1

    :cond_3
    shl-int/lit8 v3, v0, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    add-int v2, v3, v4

    iget v3, p0, Lcom/car/zxing/common/BitArray;->size:I

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/car/zxing/common/BitArray;->size:I

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/car/zxing/common/BitArray;->size:I

    return v0
.end method

.method public getSizeInBytes()I
    .locals 1

    iget v0, p0, Lcom/car/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isRange(IIZ)Z
    .locals 11

    const/16 v9, 0x1f

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ge p2, p1, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    :cond_0
    if-ne p2, p1, :cond_2

    :cond_1
    :goto_0
    return v7

    :cond_2
    add-int/lit8 p2, p2, -0x1

    shr-int/lit8 v1, p1, 0x5

    shr-int/lit8 v5, p2, 0x5

    move v2, v1

    :goto_1
    if-gt v2, v5, :cond_1

    if-le v2, v1, :cond_4

    move v0, v8

    :goto_2
    if-ge v2, v5, :cond_5

    move v4, v9

    :goto_3
    if-nez v0, :cond_6

    if-ne v4, v9, :cond_6

    const/4 v6, -0x1

    :cond_3
    iget-object v10, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    aget v10, v10, v2

    and-int/2addr v10, v6

    if-eqz p3, :cond_7

    :goto_4
    if-eq v10, v6, :cond_8

    move v7, v8

    goto :goto_0

    :cond_4
    and-int/lit8 v0, p1, 0x1f

    goto :goto_2

    :cond_5
    and-int/lit8 v4, p2, 0x1f

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    move v3, v0

    :goto_5
    if-gt v3, v4, :cond_3

    shl-int v10, v7, v3

    or-int/2addr v6, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    move v6, v8

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public reverse()V
    .locals 7

    iget-object v3, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    array-length v3, v3

    new-array v1, v3, [I

    iget v2, p0, Lcom/car/zxing/common/BitArray;->size:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/car/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    shr-int/lit8 v3, v0, 0x5

    aget v4, v1, v3

    const/4 v5, 0x1

    and-int/lit8 v6, v0, 0x1f

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    return-void
.end method

.method public set(I)V
    .locals 5

    iget-object v0, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public setBulk(II)V
    .locals 2

    iget-object v0, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aput p2, v0, v1

    return-void
.end method

.method public setRange(II)V
    .locals 10

    const/16 v7, 0x1f

    if-ge p2, p1, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    :cond_0
    if-ne p2, p1, :cond_2

    :cond_1
    return-void

    :cond_2
    add-int/lit8 p2, p2, -0x1

    shr-int/lit8 v1, p1, 0x5

    shr-int/lit8 v5, p2, 0x5

    move v2, v1

    :goto_0
    if-gt v2, v5, :cond_1

    if-le v2, v1, :cond_4

    const/4 v0, 0x0

    :goto_1
    if-ge v2, v5, :cond_5

    move v4, v7

    :goto_2
    if-nez v0, :cond_6

    if-ne v4, v7, :cond_6

    const/4 v6, -0x1

    :cond_3
    iget-object v8, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    aget v9, v8, v2

    or-int/2addr v9, v6

    aput v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    and-int/lit8 v0, p1, 0x1f

    goto :goto_1

    :cond_5
    and-int/lit8 v4, p2, 0x1f

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    move v3, v0

    :goto_3
    if-gt v3, v4, :cond_3

    const/4 v8, 0x1

    shl-int/2addr v8, v3

    or-int/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public toBytes(I[BII)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_2

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/car/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    rsub-int/lit8 v4, v1, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    :cond_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int v3, p3, v0

    int-to-byte v4, v2

    aput-byte v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/car/zxing/common/BitArray;->size:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/car/zxing/common/BitArray;->size:I

    if-ge v0, v2, :cond_2

    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/car/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x58

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x2e

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public xor(Lcom/car/zxing/common/BitArray;)V
    .locals 4

    iget-object v1, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    iget-object v2, p1, Lcom/car/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Sizes don\'t match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/car/zxing/common/BitArray;->bits:[I

    aget v2, v1, v0

    iget-object v3, p1, Lcom/car/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
