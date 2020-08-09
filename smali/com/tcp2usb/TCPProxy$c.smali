.class final Lcom/tcp2usb/TCPProxy$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tcp2usb/TCPProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Ljava/io/InputStream;

.field d:Ljava/io/OutputStream;

.field e:Ljava/lang/Integer;

.field f:Z

.field g:Z

.field final h:Lcom/tcp2usb/a;

.field final synthetic i:Lcom/tcp2usb/TCPProxy;

.field private final j:Ljava/lang/String;

.field private k:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/tcp2usb/TCPProxy;I)V
    .locals 3

    iput-object p1, p0, Lcom/tcp2usb/TCPProxy$c;->i:Lcom/tcp2usb/TCPProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tcp2usb/a;

    const/high16 v1, 0x80000

    invoke-direct {v0, v1}, Lcom/tcp2usb/a;-><init>(I)V

    iput-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    iput p2, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tcp2usb/TCPProxy$c;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TCP2USB_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote connect Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Lcom/tcp2usb/TCPProxy;Ljava/net/Socket;I)V
    .locals 3

    iput-object p1, p0, Lcom/tcp2usb/TCPProxy$c;->i:Lcom/tcp2usb/TCPProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tcp2usb/a;

    const/high16 v1, 0x80000

    invoke-direct {v0, v1}, Lcom/tcp2usb/a;-><init>(I)V

    iput-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    iput-object p2, p0, Lcom/tcp2usb/TCPProxy$c;->k:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    iput p3, p0, Lcom/tcp2usb/TCPProxy$c;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TCP2USB_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Remote Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tcp2usb/TCPProxy$c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " relay Created "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInStream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->c:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOutStream ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->d:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/tcp2usb/TCPProxy$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tcp2usb/TCPProxy$c;->e()V

    return-void
.end method

.method static synthetic a(Lcom/tcp2usb/TCPProxy$c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tcp2usb/TCPProxy$c;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/tcp2usb/TCPProxy$c;Lcom/tcp2usb/m;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/tcp2usb/TCPProxy$c;->b(Lcom/tcp2usb/m;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/tcp2usb/TCPProxy$c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    return-object v0
.end method

.method private b(Z)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket closed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " noticePeer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->i:Lcom/tcp2usb/TCPProxy;

    invoke-static {v1}, Lcom/tcp2usb/TCPProxy;->a(Lcom/tcp2usb/TCPProxy;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->i:Lcom/tcp2usb/TCPProxy;

    invoke-static {v2}, Lcom/tcp2usb/TCPProxy;->a(Lcom/tcp2usb/TCPProxy;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", now size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tcp2usb/TCPProxy$c;->i:Lcom/tcp2usb/TCPProxy;

    invoke-static {v4}, Lcom/tcp2usb/TCPProxy;->a(Lcom/tcp2usb/TCPProxy;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->e:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/16 v1, -0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->e:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->k:Ljava/net/Socket;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->c:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/tcp2usb/n;->a(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->d:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/tcp2usb/n;->a(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->k:Ljava/net/Socket;

    invoke-static {v1}, Lcom/tcp2usb/n;->a(Ljava/net/Socket;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->k:Ljava/net/Socket;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->c:Ljava/io/InputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->d:Ljava/io/OutputStream;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/tcp2usb/TCPProxy$c;->g:Z

    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/tcp2usb/TCPProxy$c;->b()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private b(Lcom/tcp2usb/m;)Z
    .locals 9

    const/16 v8, 0xb

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-byte v2, p1, Lcom/tcp2usb/m;->a:B

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad first command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p1, Lcom/tcp2usb/m;->a:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->k:Ljava/net/Socket;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    const-string v2, "already created socket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/tcp2usb/m;->d:[B

    invoke-static {v2, v0}, Lcom/tcp2usb/n;->b([BI)I

    move-result v3

    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->k:Ljava/net/Socket;

    const/16 v2, 0x40

    new-array v4, v2, [B

    :try_start_0
    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->k:Ljava/net/Socket;

    new-instance v5, Ljava/net/InetSocketAddress;

    const-string v6, "127.0.0.1"

    invoke-direct {v5, v6, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v6, 0x7d0

    invoke-virtual {v2, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->k:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->c:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->k:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->d:Ljava/io/OutputStream;

    const/16 v2, 0xb

    iget v5, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    const/4 v6, 0x0

    invoke-static {v4, v2, v5, v6}, Lcom/tcp2usb/m;->b([BBII)I

    move-result v2

    iget-object v5, p0, Lcom/tcp2usb/TCPProxy$c;->i:Lcom/tcp2usb/TCPProxy;

    invoke-static {v5}, Lcom/tcp2usb/TCPProxy;->b(Lcom/tcp2usb/TCPProxy;)Lcom/tcp2usb/UsbTransfer$b;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Lcom/tcp2usb/UsbTransfer$b;->a([BI)V

    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "peer remote port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " connect to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/tcp2usb/TCPProxy$c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v5, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception when connect port:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", error:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    const/4 v3, -0x1

    invoke-static {v4, v8, v2, v3}, Lcom/tcp2usb/m;->b([BBII)I

    move-result v2

    :try_start_1
    iget-object v3, p0, Lcom/tcp2usb/TCPProxy$c;->i:Lcom/tcp2usb/TCPProxy;

    invoke-static {v3}, Lcom/tcp2usb/TCPProxy;->b(Lcom/tcp2usb/TCPProxy;)Lcom/tcp2usb/UsbTransfer$b;

    move-result-object v3

    invoke-interface {v3, v4, v2}, Lcom/tcp2usb/UsbTransfer$b;->a([BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-direct {p0, v1}, Lcom/tcp2usb/TCPProxy$c;->b(Z)V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private c()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v10, 0xa

    const/4 v0, 0x0

    const/16 v1, 0x40

    new-array v2, v1, [B

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    move v1, v0

    :goto_0
    if-ge v1, v10, :cond_1

    iget v3, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    iget v6, p0, Lcom/tcp2usb/TCPProxy$c;->b:I

    invoke-static {v2, v10, v3, v6}, Lcom/tcp2usb/m;->b([BBII)I

    move-result v3

    iget-object v6, p0, Lcom/tcp2usb/TCPProxy$c;->i:Lcom/tcp2usb/TCPProxy;

    invoke-static {v6}, Lcom/tcp2usb/TCPProxy;->b(Lcom/tcp2usb/TCPProxy;)Lcom/tcp2usb/UsbTransfer$b;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Lcom/tcp2usb/UsbTransfer$b;->a([BI)V

    iget-object v3, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Send Connect Command to mRemoteListenPort = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/tcp2usb/TCPProxy$c;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/tcp2usb/TCPProxy$c;->e:Ljava/lang/Integer;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/tcp2usb/TCPProxy$c;->e:Ljava/lang/Integer;

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    const-string v2, "peer connect not response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return v0

    :cond_2
    iget-object v3, p0, Lcom/tcp2usb/TCPProxy$c;->e:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "peer connect ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tcp2usb/TCPProxy$c;->e:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",retry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tcp2usb/TCPProxy$c;->e:Ljava/lang/Integer;

    const/16 v3, 0x3e8

    invoke-static {v3}, Lcom/tcp2usb/n;->a(I)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private d()V
    .locals 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tcp2usb/c;

    invoke-direct {v1, p0}, Lcom/tcp2usb/c;-><init>(Lcom/tcp2usb/TCPProxy$c;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_write"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private e()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v0, 0x1000

    new-array v2, v0, [B

    :goto_0
    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->k:Ljava/net/Socket;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    invoke-virtual {v0}, Lcom/tcp2usb/a;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    invoke-virtual {v0}, Lcom/tcp2usb/a;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    invoke-virtual {v0, v2}, Lcom/tcp2usb/a;->a([B)I

    move-result v0

    :goto_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/tcp2usb/TCPProxy$c;->d:Ljava/io/OutputStream;

    invoke-virtual {v3, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_1
    iget-object v3, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    monitor-enter v3

    :try_start_3
    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    invoke-virtual {v0}, Lcom/tcp2usb/a;->size()I

    move-result v0

    const/high16 v4, 0x40000

    if-gt v0, v4, :cond_2

    iget-boolean v0, p0, Lcom/tcp2usb/TCPProxy$c;->f:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tcp2usb/TCPProxy$c;->f:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tcp2usb/TCPProxy$c;->a(Z)V

    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RelaySocket:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Lcom/tcp2usb/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-byte v2, p1, Lcom/tcp2usb/m;->a:B

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/tcp2usb/m;->d:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tcp2usb/n;->b([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->e:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got Connect Reply on Port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tcp2usb/m;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :sswitch_1
    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    iget-object v2, p1, Lcom/tcp2usb/m;->d:[B

    const/4 v3, 0x0

    iget-short v4, p1, Lcom/tcp2usb/m;->b:S

    invoke-virtual {v0, v2, v3, v4}, Lcom/tcp2usb/a;->write([BII)V

    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    invoke-virtual {v0}, Lcom/tcp2usb/a;->size()I

    move-result v0

    const v2, 0x66666

    if-lt v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/tcp2usb/TCPProxy$c;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tcp2usb/TCPProxy$c;->f:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tcp2usb/TCPProxy$c;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :sswitch_2
    iget-object v2, p1, Lcom/tcp2usb/m;->d:[B

    invoke-static {v2, v1}, Lcom/tcp2usb/n;->b([BI)I

    move-result v2

    iget-object v3, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    monitor-enter v3

    if-eqz v2, :cond_2

    :goto_1
    :try_start_2
    iput-boolean v0, p0, Lcom/tcp2usb/TCPProxy$c;->g:Z

    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got peer overflow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tcp2usb/TCPProxy$c;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/tcp2usb/TCPProxy$c;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got Close Command on Port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tcp2usb/m;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/tcp2usb/TCPProxy$c;->b(Z)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1e -> :sswitch_3
    .end sparse-switch
.end method

.method a(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v1, v0, [B

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x15

    iget v3, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-static {v1, v2, v3, v0}, Lcom/tcp2usb/m;->b([BBII)I

    move-result v0

    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send overflow "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->i:Lcom/tcp2usb/TCPProxy;

    invoke-static {v2}, Lcom/tcp2usb/TCPProxy;->b(Lcom/tcp2usb/TCPProxy;)Lcom/tcp2usb/UsbTransfer$b;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/tcp2usb/UsbTransfer$b;->a([BI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 5

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/16 v1, 0x1e

    iget v2, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-static {v0, v1, v2}, Lcom/tcp2usb/m;->a([BBI)I

    move-result v1

    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send Close Port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " command to Peer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->i:Lcom/tcp2usb/TCPProxy;

    invoke-static {v2}, Lcom/tcp2usb/TCPProxy;->b(Lcom/tcp2usb/TCPProxy;)Lcom/tcp2usb/UsbTransfer$b;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/tcp2usb/UsbTransfer$b;->a([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    const/4 v0, -0x1

    const/4 v4, 0x1

    :try_start_0
    iget v1, p0, Lcom/tcp2usb/TCPProxy$c;->b:I

    if-eq v1, v0, :cond_1

    invoke-direct {p0}, Lcom/tcp2usb/TCPProxy$c;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v4}, Lcom/tcp2usb/TCPProxy$c;->b(Z)V

    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread exited:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->k:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->c:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->k:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->d:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "establiseRemoteConnection Connectted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tcp2usb/TCPProxy$c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/tcp2usb/TCPProxy$c;->d()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    :goto_1
    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->c:Ljava/io/InputStream;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->c:Ljava/io/InputStream;

    const/16 v2, 0xc

    array-length v3, v1

    add-int/lit8 v3, v3, -0xc

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_3

    const/16 v2, 0x14

    iget v3, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-static {v1, v2, v3, v0}, Lcom/tcp2usb/m;->a([BBII)I

    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->i:Lcom/tcp2usb/TCPProxy;

    invoke-static {v2}, Lcom/tcp2usb/TCPProxy;->b(Lcom/tcp2usb/TCPProxy;)Lcom/tcp2usb/UsbTransfer$b;

    move-result-object v2

    add-int/lit8 v0, v0, 0xc

    invoke-interface {v2, v1, v0}, Lcom/tcp2usb/UsbTransfer$b;->a([BI)V

    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lcom/tcp2usb/TCPProxy$c;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->h:Lcom/tcp2usb/a;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "socket read run error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-direct {p0, v4}, Lcom/tcp2usb/TCPProxy$c;->b(Z)V

    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread exited:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :try_start_6
    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-direct {p0, v4}, Lcom/tcp2usb/TCPProxy$c;->b(Z)V

    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread exited:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-direct {p0, v4}, Lcom/tcp2usb/TCPProxy$c;->b(Z)V

    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread exited:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tcp2usb/TCPProxy$c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",S="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->k:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ConRet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tcp2usb/TCPProxy$c;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
