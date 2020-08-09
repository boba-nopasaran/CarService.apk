.class public abstract Lcom/car/jiazu/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals([B[B)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static fill()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static reverse([B)[B
    .locals 5

    if-nez p0, :cond_1

    const/4 v3, 0x0

    :cond_0
    return-object v3

    :cond_1
    const/4 v0, 0x0

    array-length v2, p0

    new-array v3, v2, [B

    move v1, v0

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    add-int/lit8 v0, v1, 0x1

    aget-byte v4, p0, v1

    aput-byte v4, v3, v2

    move v1, v0

    goto :goto_0
.end method

.method public static reverse([BII)[B
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    aget-byte v0, p0, p2

    aget-byte v1, p0, p1

    aput-byte v1, p0, p2

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v2, "null"

    :goto_0
    return-object v2

    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
