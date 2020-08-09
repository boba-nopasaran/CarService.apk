.class public final Lcom/google/zxing/RGBLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "RGBLuminanceSource.java"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final luminances:[B

.field private final top:I


# direct methods
.method public constructor <init>(II[I)V
    .locals 8

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    iput p1, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    iput v6, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    iput v6, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    mul-int v5, p1, p2

    new-array v6, v5, [B

    iput-object v6, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    aget v3, p3, v2

    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v4, v6, 0xff

    shr-int/lit8 v6, v3, 0x7

    and-int/lit16 v1, v6, 0x1fe

    and-int/lit16 v0, v3, 0xff

    iget-object v6, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    add-int v7, v4, v1

    add-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x4

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>([BIIIIII)V
    .locals 2

    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    add-int v0, p4, p6

    if-gt v0, p2, :cond_0

    add-int v0, p5, p7

    if-le v0, p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crop rectangle does not fit within image data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    iput p3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    iput p4, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    iput p5, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 8

    new-instance v0, Lcom/google/zxing/RGBLuminanceSource;

    iget-object v1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    iget v4, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int/2addr v4, p1

    iget v5, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    add-int/2addr v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/RGBLuminanceSource;-><init>([BIIIIII)V

    return-object v0
.end method

.method public getMatrix()[B
    .locals 9

    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getHeight()I

    move-result v1

    iget v7, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    if-ne v5, v7, :cond_1

    iget v7, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    if-ne v1, v7, :cond_1

    iget-object v3, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    mul-int v0, v5, v1

    new-array v3, v0, [B

    iget v7, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    iget v8, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int v2, v7, v8

    iget v7, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    if-ne v5, v7, :cond_2

    iget-object v7, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    const/4 v8, 0x0

    invoke-static {v7, v2, v3, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_0

    mul-int v4, v6, v5

    iget-object v7, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    invoke-static {v7, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    add-int/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public getRow(I[B)[B
    .locals 5

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getHeight()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Requested row is outside the image: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getWidth()I

    move-result v1

    if-eqz p2, :cond_2

    array-length v2, p2

    if-ge v2, v1, :cond_3

    :cond_2
    new-array p2, v1, [B

    :cond_3
    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int v0, v2, v3

    iget-object v2, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public isCropSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
