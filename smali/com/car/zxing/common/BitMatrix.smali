.class public final Lcom/car/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lcom/car/zxing/common/BitMatrix;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p1, v0, :cond_0

    if-ge p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/car/zxing/common/BitMatrix;->width:I

    iput p2, p0, Lcom/car/zxing/common/BitMatrix;->height:I

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    iget v0, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v2, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    instance-of v3, p1, Lcom/car/zxing/common/BitMatrix;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/car/zxing/common/BitMatrix;

    iget v3, p0, Lcom/car/zxing/common/BitMatrix;->width:I

    iget v4, v1, Lcom/car/zxing/common/BitMatrix;->width:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/car/zxing/common/BitMatrix;->height:I

    iget v4, v1, Lcom/car/zxing/common/BitMatrix;->height:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    iget v4, v1, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    array-length v3, v3

    iget-object v4, v1, Lcom/car/zxing/common/BitMatrix;->bits:[I

    array-length v4, v4

    if-ne v3, v4, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    aget v3, v3, v0

    iget-object v4, v1, Lcom/car/zxing/common/BitMatrix;->bits:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public flip(II)V
    .locals 5

    iget v1, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    iget-object v1, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v0

    return-void
.end method

.method public get(II)Z
    .locals 3

    iget v1, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    iget-object v1, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    aget v1, v1, v0

    and-int/lit8 v2, p1, 0x1f

    ushr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBottomRightOnBit()[I
    .locals 7

    iget-object v5, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v5, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    aget v5, v5, v1

    if-nez v5, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    const/4 v5, 0x0

    :goto_1
    return-object v5

    :cond_1
    iget v5, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    div-int v4, v1, v5

    iget v5, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    rem-int v5, v1, v5

    shl-int/lit8 v3, v5, 0x5

    iget-object v5, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    aget v2, v5, v1

    const/16 v0, 0x1f

    :goto_2
    ushr-int v5, v2, v0

    if-nez v5, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    add-int/2addr v3, v0

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    goto :goto_1
.end method

.method public getEnclosingRectangle()[I
    .locals 12

    iget v3, p0, Lcom/car/zxing/common/BitMatrix;->width:I

    iget v6, p0, Lcom/car/zxing/common/BitMatrix;->height:I

    const/4 v4, -0x1

    const/4 v1, -0x1

    const/4 v9, 0x0

    :goto_0
    iget v10, p0, Lcom/car/zxing/common/BitMatrix;->height:I

    if-ge v9, v10, :cond_7

    const/4 v8, 0x0

    :goto_1
    iget v10, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    if-ge v8, v10, :cond_6

    iget-object v10, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    iget v11, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    aget v5, v10, v11

    if-eqz v5, :cond_5

    if-ge v9, v6, :cond_0

    move v6, v9

    :cond_0
    if-le v9, v1, :cond_1

    move v1, v9

    :cond_1
    mul-int/lit8 v10, v8, 0x20

    if-ge v10, v3, :cond_3

    const/4 v0, 0x0

    :goto_2
    rsub-int/lit8 v10, v0, 0x1f

    shl-int v10, v5, v10

    if-nez v10, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    mul-int/lit8 v10, v8, 0x20

    add-int/2addr v10, v0

    if-ge v10, v3, :cond_3

    mul-int/lit8 v10, v8, 0x20

    add-int v3, v10, v0

    :cond_3
    mul-int/lit8 v10, v8, 0x20

    add-int/lit8 v10, v10, 0x1f

    if-le v10, v4, :cond_5

    const/16 v0, 0x1f

    :goto_3
    ushr-int v10, v5, v0

    if-nez v10, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    mul-int/lit8 v10, v8, 0x20

    add-int/2addr v10, v0

    if-le v10, v4, :cond_5

    mul-int/lit8 v10, v8, 0x20

    add-int v4, v10, v0

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_7
    sub-int v7, v4, v3

    sub-int v2, v1, v6

    if-ltz v7, :cond_8

    if-gez v2, :cond_9

    :cond_8
    const/4 v10, 0x0

    :goto_4
    return-object v10

    :cond_9
    const/4 v10, 0x4

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v3, v10, v11

    const/4 v11, 0x1

    aput v6, v10, v11

    const/4 v11, 0x2

    aput v7, v10, v11

    const/4 v11, 0x3

    aput v2, v10, v11

    goto :goto_4
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/car/zxing/common/BitMatrix;->height:I

    return v0
.end method

.method public getRow(ILcom/car/zxing/common/BitArray;)Lcom/car/zxing/common/BitArray;
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/car/zxing/common/BitArray;->getSize()I

    move-result v2

    iget v3, p0, Lcom/car/zxing/common/BitMatrix;->width:I

    if-ge v2, v3, :cond_1

    :cond_0
    new-instance p2, Lcom/car/zxing/common/BitArray;

    iget v2, p0, Lcom/car/zxing/common/BitMatrix;->width:I

    invoke-direct {p2, v2}, Lcom/car/zxing/common/BitArray;-><init>(I)V

    :cond_1
    iget v2, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, p1, v2

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    if-ge v1, v2, :cond_2

    shl-int/lit8 v2, v1, 0x5

    iget-object v3, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    add-int v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/car/zxing/common/BitArray;->setBulk(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public getTopLeftOnBit()[I
    .locals 7

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    aget v5, v5, v1

    if-nez v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    array-length v5, v5

    if-ne v1, v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    return-object v5

    :cond_1
    iget v5, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    div-int v4, v1, v5

    iget v5, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    rem-int v5, v1, v5

    shl-int/lit8 v3, v5, 0x5

    iget-object v5, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    aget v2, v5, v1

    const/4 v0, 0x0

    :goto_2
    rsub-int/lit8 v5, v0, 0x1f

    shl-int v5, v2, v5

    if-nez v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v3, v0

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    goto :goto_1
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/car/zxing/common/BitMatrix;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    iget v2, p0, Lcom/car/zxing/common/BitMatrix;->width:I

    mul-int/lit8 v5, v2, 0x1f

    iget v6, p0, Lcom/car/zxing/common/BitMatrix;->width:I

    add-int v2, v5, v6

    mul-int/lit8 v5, v2, 0x1f

    iget v6, p0, Lcom/car/zxing/common/BitMatrix;->height:I

    add-int v2, v5, v6

    mul-int/lit8 v5, v2, 0x1f

    iget v6, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    add-int v2, v5, v6

    iget-object v0, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public set(II)V
    .locals 5

    iget v1, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    iget-object v1, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    return-void
.end method

.method public setRegion(IIII)V
    .locals 10

    const/4 v9, 0x1

    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Left and top must be nonnegative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    if-lt p4, v9, :cond_2

    if-ge p3, v9, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Height and width must be at least 1"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    add-int v2, p1, p3

    add-int v0, p2, p4

    iget v5, p0, Lcom/car/zxing/common/BitMatrix;->height:I

    if-gt v0, v5, :cond_4

    iget v5, p0, Lcom/car/zxing/common/BitMatrix;->width:I

    if-le v2, v5, :cond_5

    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The region must fit inside the matrix"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    move v4, p2

    :goto_0
    if-ge v4, v0, :cond_7

    iget v5, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    mul-int v1, v4, v5

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_6

    iget-object v5, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    shr-int/lit8 v6, v3, 0x5

    add-int/2addr v6, v1

    aget v7, v5, v6

    and-int/lit8 v8, v3, 0x1f

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    aput v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public setRow(ILcom/car/zxing/common/BitArray;)V
    .locals 5

    invoke-virtual {p2}, Lcom/car/zxing/common/BitArray;->getBitArray()[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/zxing/common/BitMatrix;->bits:[I

    iget v3, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v3, p1

    iget v4, p0, Lcom/car/zxing/common/BitMatrix;->rowSize:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/car/zxing/common/BitMatrix;->height:I

    iget v4, p0, Lcom/car/zxing/common/BitMatrix;->width:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/car/zxing/common/BitMatrix;->height:I

    if-ge v2, v3, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/car/zxing/common/BitMatrix;->width:I

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/car/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "X "

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const-string v3, "  "

    goto :goto_2

    :cond_1
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
