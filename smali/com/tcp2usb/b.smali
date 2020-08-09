.class Lcom/tcp2usb/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private b:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tcp2usb/b;->a:[B

    return-void
.end method


# virtual methods
.method a([BI)V
    .locals 3

    iget v0, p0, Lcom/tcp2usb/b;->b:I

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/tcp2usb/b;->a:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const-string v0, "TCP2USB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reader buf overflow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tcp2usb/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    iput v0, p0, Lcom/tcp2usb/b;->b:I

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tcp2usb/b;->a:[B

    iget v2, p0, Lcom/tcp2usb/b;->b:I

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/tcp2usb/b;->b:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/tcp2usb/b;->b:I

    return-void
.end method

.method a(ZLcom/tcp2usb/m;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/tcp2usb/b;->b:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_a

    iget-object v3, p0, Lcom/tcp2usb/b;->a:[B

    invoke-static {v3, v0, p2}, Lcom/tcp2usb/m;->a([BILcom/tcp2usb/m;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/tcp2usb/b;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/tcp2usb/b;->b:I

    goto :goto_0

    :cond_0
    const-string v3, "TCP2USB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loop unmatch magic:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tcp2usb/b;->a:[B

    aget-byte v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_5

    iget-byte v3, p2, Lcom/tcp2usb/m;->a:B

    if-eq v3, v2, :cond_2

    iget-byte v3, p2, Lcom/tcp2usb/m;->a:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    :cond_2
    move v3, v2

    :goto_2
    if-nez v3, :cond_5

    if-eqz v0, :cond_4

    :goto_3
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/tcp2usb/b;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/tcp2usb/b;->b:I

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    const-string v3, "TCP2USB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not snoop packet:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p2, Lcom/tcp2usb/m;->a:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",off="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/tcp2usb/b;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_7

    iget v3, p2, Lcom/tcp2usb/m;->c:I

    const v4, 0x27afe2d8

    if-eq v3, v4, :cond_7

    if-eqz v0, :cond_6

    :goto_4
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/tcp2usb/b;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/tcp2usb/b;->b:I

    goto/16 :goto_0

    :cond_6
    const-string v3, "TCP2USB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not snoop socketid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/tcp2usb/m;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",off="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/tcp2usb/b;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    iget-short v3, p2, Lcom/tcp2usb/m;->b:S

    add-int/lit8 v3, v3, 0xc

    iget v4, p0, Lcom/tcp2usb/b;->b:I

    if-ge v4, v3, :cond_9

    const-string v2, "TCP2USB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not Enough Data Left, needed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Left:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tcp2usb/b;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    move v0, v1

    :goto_5
    if-lez v2, :cond_8

    iget v3, p0, Lcom/tcp2usb/b;->b:I

    if-lez v3, :cond_8

    iget-object v3, p0, Lcom/tcp2usb/b;->a:[B

    iget-object v4, p0, Lcom/tcp2usb/b;->a:[B

    iget v5, p0, Lcom/tcp2usb/b;->b:I

    invoke-static {v3, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    return v0

    :cond_9
    iget-object v4, p0, Lcom/tcp2usb/b;->a:[B

    add-int/lit8 v5, v0, 0xc

    iget-object v6, p2, Lcom/tcp2usb/m;->d:[B

    iget-short v7, p2, Lcom/tcp2usb/m;->b:S

    invoke-static {v4, v5, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    iget v4, p0, Lcom/tcp2usb/b;->b:I

    sub-int v3, v4, v3

    iput v3, p0, Lcom/tcp2usb/b;->b:I

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_5

    :cond_a
    move v2, v0

    move v0, v1

    goto :goto_5
.end method
