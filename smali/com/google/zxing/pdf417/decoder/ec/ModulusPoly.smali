.class final Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
.super Ljava/lang/Object;
.source "ModulusPoly.java"


# instance fields
.field private final coefficients:[I

.field private final field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v2, p2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    array-length v0, p2

    if-le v0, v3, :cond_3

    aget v2, p2, v4

    if-nez v2, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    new-array v2, v3, [I

    aput v4, v2, v4

    iput-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    :goto_1
    return-void

    :cond_2
    sub-int v2, v0, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v3, v3

    invoke-static {p2, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_3
    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    goto :goto_1
.end method


# virtual methods
.method add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v7, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object p1, p0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    iget-object v1, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v6, v3

    array-length v7, v1

    if-le v6, v7, :cond_3

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    :cond_3
    array-length v6, v1

    new-array v4, v6, [I

    array-length v6, v1

    array-length v7, v3

    sub-int v2, v6, v7

    invoke-static {v1, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v2

    :goto_1
    array-length v6, v1

    if-ge v0, v6, :cond_4

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    sub-int v7, v0, v2

    aget v7, v3, v7

    aget v8, v1, v0

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v6

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {p1, v6, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    goto :goto_0
.end method

.method evaluateAt(I)I
    .locals 8

    const/4 v4, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v2

    :cond_0
    return v2

    :cond_1
    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget v0, v5, v4

    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v7, v2, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v2, v5, v4

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v3, v4

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v5, p1, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v5

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v6, v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method getCoefficient(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method getCoefficients()[I
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    return-object v0
.end method

.method getDegree()I
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method isZero()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 5

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v2, v3

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v3, v4, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object p0, v3

    goto :goto_0
.end method

.method multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 13

    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v9, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_2
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v2, v1

    iget-object v3, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v4, v3

    add-int v8, v2, v4

    add-int/lit8 v8, v8, -0x1

    new-array v7, v8, [I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_4

    aget v0, v1, v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_3

    add-int v8, v5, v6

    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    add-int v10, v5, v6

    aget v10, v7, v10

    iget-object v11, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    aget v12, v3, v6

    invoke-virtual {v11, v0, v12}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    new-instance v8, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v8, v9, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    goto :goto_0
.end method

.method multiplyByMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 5

    if-gez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_0
    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v2, v3

    add-int v3, v2, p1

    new-array v1, v3, [I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v3, v4, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    goto :goto_0
.end method

.method negative()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 6

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v2, v3

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v3, v4, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    return-object v3
.end method

.method subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v1, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->negative()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object p0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_6

    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v0

    if-eqz v0, :cond_3

    if-gez v0, :cond_4

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v0, v0

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    if-eq v0, v4, :cond_2

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v1, :cond_3

    if-ne v1, v4, :cond_5

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v3, "x^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
