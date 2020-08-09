.class final Lcom/tcp2usb/m;
.super Ljava/lang/Object;


# instance fields
.field a:B

.field b:S

.field c:I

.field d:[B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([BBI)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tcp2usb/m;->a([BBII)I

    move-result v0

    return v0
.end method

.method static a([BBII)I
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/16 v0, -0x54

    aput-byte v0, p0, v2

    const/4 v0, 0x1

    const/16 v1, -0x43

    aput-byte v1, p0, v0

    const/4 v0, 0x2

    const/16 v1, -0x7d

    aput-byte v1, p0, v0

    aput-byte v3, p0, v3

    const/4 v0, 0x4

    aput-byte v2, p0, v0

    const/4 v0, 0x5

    aput-byte p1, p0, v0

    int-to-short v0, p3

    const/4 v1, 0x6

    invoke-static {v0, p0, v1}, Lcom/tcp2usb/n;->a(S[BI)V

    const/16 v0, 0x8

    invoke-static {p2, p0, v0}, Lcom/tcp2usb/n;->a(I[BI)V

    add-int/lit8 v0, p3, 0xc

    return v0
.end method

.method static final a([BILcom/tcp2usb/m;)Z
    .locals 4

    const/4 v0, 0x0

    aget-byte v1, p0, p1

    const/16 v2, -0x54

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    const/16 v2, -0x43

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    const/16 v2, -0x7d

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x4

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    add-int/lit8 v1, p1, 0x5

    aget-byte v1, p0, v1

    iput-byte v1, p2, Lcom/tcp2usb/m;->a:B

    add-int/lit8 v1, p1, 0x6

    invoke-static {p0, v1}, Lcom/tcp2usb/n;->a([BI)S

    move-result v1

    iput-short v1, p2, Lcom/tcp2usb/m;->b:S

    iget-short v1, p2, Lcom/tcp2usb/m;->b:S

    if-ltz v1, :cond_0

    iget-short v1, p2, Lcom/tcp2usb/m;->b:S

    const/16 v2, 0x4000

    if-le v1, v2, :cond_2

    :cond_0
    const-string v1, "TCP2USB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad head size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p2, Lcom/tcp2usb/m;->b:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0}, Lcom/tcp2usb/n;->b([BI)I

    move-result v0

    iput v0, p2, Lcom/tcp2usb/m;->c:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static b([BBII)I
    .locals 1

    const/16 v0, 0xc

    invoke-static {p3, p0, v0}, Lcom/tcp2usb/n;->a(I[BI)V

    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lcom/tcp2usb/m;->a([BBII)I

    move-result v0

    return v0
.end method
