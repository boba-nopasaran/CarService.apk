.class public Lcom/tcp2usb/TCPProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tcp2usb/UsbTransfer$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tcp2usb/TCPProxy$c;,
        Lcom/tcp2usb/TCPProxy$b;,
        Lcom/tcp2usb/TCPProxy$a;
    }
.end annotation


# static fields
.field private static d:Lcom/tcp2usb/TCPProxy;


# instance fields
.field private a:Lcom/tcp2usb/UsbTransfer$b;

.field private final b:Landroid/util/SparseArray;

.field private final c:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tcp2usb/TCPProxy;->b:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tcp2usb/TCPProxy;->c:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic a(Lcom/tcp2usb/TCPProxy;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/tcp2usb/TCPProxy;->c:Landroid/util/SparseArray;

    return-object v0
.end method

.method private a(I)Lcom/tcp2usb/TCPProxy$a;
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const/16 v1, 0x41f8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x15

    if-ne p1, v1, :cond_1

    :cond_0
    add-int/lit16 v0, p1, 0x2710

    :try_start_0
    const-string v1, "TCP2USB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", perfer listen port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    new-instance v1, Ljava/net/ServerSocket;

    const/4 v2, 0x0

    const-string v3, "0.0.0.0"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    new-instance v0, Lcom/tcp2usb/TCPProxy$a;

    invoke-direct {v0, v2, p1}, Lcom/tcp2usb/TCPProxy$a;-><init>(II)V

    const-string v3, "TCP2USB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "map listen remote "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/tcp2usb/TCPProxy$b;

    invoke-direct {v3, p0, v1, p1, v2}, Lcom/tcp2usb/TCPProxy$b;-><init>(Lcom/tcp2usb/TCPProxy;Ljava/net/ServerSocket;II)V

    invoke-virtual {v3}, Lcom/tcp2usb/TCPProxy$b;->start()V

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "TCP2USB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when bind special port:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",err:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "0.0.0.0"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "TCP2USB"

    const-string v2, "Error when createListenerSocket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/tcp2usb/TCPProxy;)Lcom/tcp2usb/UsbTransfer$b;
    .locals 1

    iget-object v0, p0, Lcom/tcp2usb/TCPProxy;->a:Lcom/tcp2usb/UsbTransfer$b;

    return-object v0
.end method

.method public static instance()Lcom/tcp2usb/TCPProxy;
    .locals 1

    sget-object v0, Lcom/tcp2usb/TCPProxy;->d:Lcom/tcp2usb/TCPProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tcp2usb/TCPProxy;

    invoke-direct {v0}, Lcom/tcp2usb/TCPProxy;-><init>()V

    sput-object v0, Lcom/tcp2usb/TCPProxy;->d:Lcom/tcp2usb/TCPProxy;

    :cond_0
    sget-object v0, Lcom/tcp2usb/TCPProxy;->d:Lcom/tcp2usb/TCPProxy;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/tcp2usb/UsbTransfer$b;)V
    .locals 0

    iput-object p2, p0, Lcom/tcp2usb/TCPProxy;->a:Lcom/tcp2usb/UsbTransfer$b;

    return-void
.end method

.method public getForwardAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/tcp2usb/TCPProxy;->b:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/tcp2usb/TCPProxy;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tcp2usb/TCPProxy$a;

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/tcp2usb/TCPProxy;->a(I)Lcom/tcp2usb/TCPProxy$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/tcp2usb/TCPProxy;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "127.0.0.1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/tcp2usb/TCPProxy$a;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPacketReceived(Lcom/tcp2usb/m;)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/tcp2usb/TCPProxy;->c:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/tcp2usb/TCPProxy;->c:Landroid/util/SparseArray;

    iget v3, p1, Lcom/tcp2usb/m;->c:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tcp2usb/TCPProxy$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_2

    :try_start_3
    new-instance v1, Lcom/tcp2usb/TCPProxy$c;

    iget v2, p1, Lcom/tcp2usb/m;->c:I

    invoke-direct {v1, p0, v2}, Lcom/tcp2usb/TCPProxy$c;-><init>(Lcom/tcp2usb/TCPProxy;I)V

    invoke-static {v1, p1}, Lcom/tcp2usb/TCPProxy$c;->a(Lcom/tcp2usb/TCPProxy$c;Lcom/tcp2usb/m;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tcp2usb/TCPProxy;->c:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v3, p0, Lcom/tcp2usb/TCPProxy;->c:Landroid/util/SparseArray;

    iget v4, p1, Lcom/tcp2usb/m;->c:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :goto_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    :goto_2
    const-string v2, "TCP2USB"

    const-string v3, "onUSBDataReceived error:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/tcp2usb/TCPProxy$c;->a(Lcom/tcp2usb/TCPProxy$c;Z)V

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :cond_1
    iget-byte v2, p1, Lcom/tcp2usb/m;->a:B

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/tcp2usb/TCPProxy$c;->b()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/tcp2usb/TCPProxy$c;->a(Lcom/tcp2usb/m;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method public onUSBReset()V
    .locals 4

    iget-object v1, p0, Lcom/tcp2usb/TCPProxy;->c:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    const-string v0, "TCP2USB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUSBReset ,map size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tcp2usb/TCPProxy;->c:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/tcp2usb/TCPProxy;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tcp2usb/TCPProxy;->c:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tcp2usb/TCPProxy$c;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/tcp2usb/TCPProxy$c;->a(Lcom/tcp2usb/TCPProxy$c;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
