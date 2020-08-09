.class Lcom/tcp2usb/a;
.super Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method a([B)I
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    array-length v1, p1

    if-le v0, v1, :cond_0

    array-length v0, p1

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v2, p1

    invoke-static {v1, v4, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v3, p0, Ljava/io/ByteArrayOutputStream;->count:I

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    sub-int/2addr v1, v0

    iput v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-static {v1, v4, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, p0, Ljava/io/ByteArrayOutputStream;->count:I

    goto :goto_0
.end method
