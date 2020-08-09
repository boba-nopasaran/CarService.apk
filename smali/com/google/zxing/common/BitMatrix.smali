.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int/lit8 v0, p1, 0x1f

    div-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    return-void
.end method

.method private constructor <init>(III[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iput p3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iput-object p4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    return-void
.end method

.method private buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v2, v3, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p1

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move-object v3, p2

    goto :goto_2

    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/common/BitMatrix;
    .locals 11

    const/4 v10, -0x1

    if-nez p0, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v0, v8, [Z

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_8

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_5

    :cond_1
    if-le v1, v7, :cond_3

    if-ne v6, v10, :cond_4

    sub-int v6, v1, v7

    :cond_2
    move v7, v1

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    sub-int v8, v1, v7

    if-eq v8, v6, :cond_2

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "row lengths do not match"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v5, v8

    const/4 v8, 0x1

    aput-boolean v8, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v5, v8

    const/4 v8, 0x0

    aput-boolean v8, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "illegal character encountered: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_8
    if-le v1, v7, :cond_a

    if-ne v6, v10, :cond_c

    sub-int v6, v1, v7

    :cond_9
    add-int/lit8 v4, v4, 0x1

    :cond_a
    new-instance v3, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v3, v6, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_d

    aget-boolean v8, v0, v2

    if-eqz v8, :cond_b

    rem-int v8, v2, v6

    div-int v9, v2, v6

    invoke-virtual {v3, v8, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_c
    sub-int v8, v1, v7

    if-eq v8, v6, :cond_9

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "row lengths do not match"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_d
    return-object v3
.end method

.method public static parse([[Z)Lcom/google/zxing/common/BitMatrix;
    .locals 7

    array-length v1, p0

    const/4 v6, 0x0

    aget-object v6, p0, v6

    array-length v5, v6

    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v5, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-boolean v6, v3, v4

    if-eqz v6, :cond_0

    invoke-virtual {v0, v4, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitMatrix;
    .locals 5

    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(III[I)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/zxing/common/BitMatrix;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/zxing/common/BitMatrix;

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget-object v3, v0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public flip(II)V
    .locals 5

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    div-int/lit8 v2, p1, 0x20

    add-int v0, v1, v2

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

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

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    div-int/lit8 v2, p1, 0x20

    add-int v0, v1, v2

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

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

    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

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
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int v4, v1, v5

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    rem-int v5, v1, v5

    shl-int/lit8 v3, v5, 0x5

    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

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
    .locals 11

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    const/4 v3, -0x1

    const/4 v1, -0x1

    const/4 v7, 0x0

    :goto_0
    iget v8, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v7, v8, :cond_7

    const/4 v6, 0x0

    :goto_1
    iget v8, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v6, v8, :cond_6

    iget-object v8, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v9, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v9, v7

    add-int/2addr v9, v6

    aget v4, v8, v9

    if-eqz v4, :cond_5

    if-ge v7, v5, :cond_0

    move v5, v7

    :cond_0
    if-le v7, v1, :cond_1

    move v1, v7

    :cond_1
    shl-int/lit8 v8, v6, 0x5

    if-ge v8, v2, :cond_3

    const/4 v0, 0x0

    :goto_2
    rsub-int/lit8 v8, v0, 0x1f

    shl-int v8, v4, v8

    if-nez v8, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    shl-int/lit8 v8, v6, 0x5

    add-int/2addr v8, v0

    if-ge v8, v2, :cond_3

    shl-int/lit8 v8, v6, 0x5

    add-int v2, v8, v0

    :cond_3
    shl-int/lit8 v8, v6, 0x5

    add-int/lit8 v8, v8, 0x1f

    if-le v8, v3, :cond_5

    const/16 v0, 0x1f

    :goto_3
    ushr-int v8, v4, v0

    if-nez v8, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    shl-int/lit8 v8, v6, 0x5

    add-int/2addr v8, v0

    if-le v8, v3, :cond_5

    shl-int/lit8 v8, v6, 0x5

    add-int v3, v8, v0

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    if-lt v3, v2, :cond_8

    if-ge v1, v5, :cond_9

    :cond_8
    const/4 v8, 0x0

    :goto_4
    return-object v8

    :cond_9
    const/4 v8, 0x4

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v2, v8, v9

    const/4 v9, 0x1

    aput v5, v8, v9

    const/4 v9, 0x2

    sub-int v10, v3, v2

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    const/4 v9, 0x3

    sub-int v10, v1, v5

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    goto :goto_4
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    return v0
.end method

.method public getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v2, v3, :cond_1

    :cond_0
    new-instance p2, Lcom/google/zxing/common/BitArray;

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-direct {p2, v2}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, p1, v2

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v1, v2, :cond_2

    shl-int/lit8 v2, v1, 0x5

    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    add-int v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/google/zxing/common/BitArray;->setBulk(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public getRowSize()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    return v0
.end method

.method public getTopLeftOnBit()[I
    .locals 7

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v5, v5, v1

    if-nez v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v5, v5

    if-ne v1, v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    return-object v5

    :cond_1
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int v4, v1, v5

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    rem-int v5, v1, v5

    shl-int/lit8 v3, v5, 0x5

    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

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

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public rotate180()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v4}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0, v4}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v5, v1, 0x1

    div-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v3

    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v2

    invoke-virtual {p0, v5, v0}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->reverse()V

    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->reverse()V

    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v2

    invoke-virtual {p0, v5, v3}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public set(II)V
    .locals 5

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    div-int/lit8 v2, p1, 0x20

    add-int v0, v1, v2

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

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

    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Left and top must be nonnegative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    if-lez p4, :cond_2

    if-gtz p3, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Height and width must be at least 1"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    add-int v2, p1, p3

    add-int v0, p2, p4

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-gt v0, v5, :cond_4

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->width:I

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

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v1, v4, v5

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_6

    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    div-int/lit8 v6, v3, 0x20

    add-int/2addr v6, v1

    aget v7, v5, v6

    const/4 v8, 0x1

    and-int/lit8 v9, v3, 0x1f

    shl-int/2addr v8, v9

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

.method public setRow(ILcom/google/zxing/common/BitArray;)V
    .locals 5

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v3, p1

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "X "

    const-string v1, "  "

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\n"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/common/BitMatrix;->buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unset(II)V
    .locals 5

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    div-int/lit8 v2, p1, 0x20

    add-int v0, v1, v2

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput v2, v1, v0

    return-void
.end method

.method public xor(Lcom/google/zxing/common/BitMatrix;)V
    .locals 9

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getRowSize()I

    move-result v6

    if-eq v5, v6, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "input matrix dimensions do not match"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    new-instance v2, Lcom/google/zxing/common/BitArray;

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    div-int/lit8 v5, v5, 0x20

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v2, v5}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v4, v5, :cond_3

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, v4, v5

    invoke-virtual {p1, v4, v2}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    add-int v6, v0, v3

    aget v7, v5, v6

    aget v8, v1, v3

    xor-int/2addr v7, v8

    aput v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
