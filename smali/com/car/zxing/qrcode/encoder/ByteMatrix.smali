.class public final Lcom/car/zxing/qrcode/encoder/ByteMatrix;
.super Ljava/lang/Object;
.source "ByteMatrix.java"


# instance fields
.field private final bytes:[[B

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p2, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    iput p1, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->width:I

    iput p2, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->height:I

    return-void
.end method


# virtual methods
.method public clear(B)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->height:I

    if-ge v1, v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->width:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object v2, v2, v1

    aput-byte p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public get(II)B
    .locals 1

    iget-object v0, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    aget-byte v0, v0, p1

    return v0
.end method

.method public getArray()[[B
    .locals 1

    iget-object v0, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->width:I

    return v0
.end method

.method public set(IIB)V
    .locals 1

    iget-object v0, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    aput-byte p3, v0, p1

    return-void
.end method

.method public set(III)V
    .locals 2

    iget-object v0, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    int-to-byte v1, p3

    aput-byte v1, v0, p1

    return-void
.end method

.method public set(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object v1, v0, p2

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v1, p1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->width:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->height:I

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->height:I

    if-ge v2, v3, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->width:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/car/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object v3, v3, v2

    aget-byte v3, v3, v1

    packed-switch v3, :pswitch_data_0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_0
    const-string v3, " 0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    const-string v3, " 1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
