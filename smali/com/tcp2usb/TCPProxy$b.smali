.class Lcom/tcp2usb/TCPProxy$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tcp2usb/TCPProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tcp2usb/TCPProxy;

.field private final b:I

.field private final c:I

.field private final d:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Lcom/tcp2usb/TCPProxy;Ljava/net/ServerSocket;II)V
    .locals 3

    iput-object p1, p0, Lcom/tcp2usb/TCPProxy$b;->a:Lcom/tcp2usb/TCPProxy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/tcp2usb/TCPProxy$b;->d:Ljava/net/ServerSocket;

    iput p3, p0, Lcom/tcp2usb/TCPProxy$b;->b:I

    iput p4, p0, Lcom/tcp2usb/TCPProxy$b;->c:I

    const-string v0, "TCP2USB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ListenThread Created mLocalPort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tcp2usb/TCPProxy$b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRemotePort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tcp2usb/TCPProxy$b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "TCP2USB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ListenThread port = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tcp2usb/TCPProxy$b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start listened"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$b;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Lcom/tcp2usb/TCPProxy$c;

    iget-object v2, p0, Lcom/tcp2usb/TCPProxy$b;->a:Lcom/tcp2usb/TCPProxy;

    iget v3, p0, Lcom/tcp2usb/TCPProxy$b;->b:I

    invoke-direct {v1, v2, v0, v3}, Lcom/tcp2usb/TCPProxy$c;-><init>(Lcom/tcp2usb/TCPProxy;Ljava/net/Socket;I)V

    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$b;->a:Lcom/tcp2usb/TCPProxy;

    invoke-static {v0}, Lcom/tcp2usb/TCPProxy;->a(Lcom/tcp2usb/TCPProxy;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$b;->a:Lcom/tcp2usb/TCPProxy;

    invoke-static {v0}, Lcom/tcp2usb/TCPProxy;->a(Lcom/tcp2usb/TCPProxy;)Landroid/util/SparseArray;

    move-result-object v0

    iget v3, v1, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tcp2usb/TCPProxy$c;

    if-eqz v0, :cond_0

    const-string v3, "TCP2USB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exist socket:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/tcp2usb/TCPProxy$c;->a(Lcom/tcp2usb/TCPProxy$c;Z)V

    :cond_0
    iget-object v0, p0, Lcom/tcp2usb/TCPProxy$b;->a:Lcom/tcp2usb/TCPProxy;

    invoke-static {v0}, Lcom/tcp2usb/TCPProxy;->a(Lcom/tcp2usb/TCPProxy;)Landroid/util/SparseArray;

    move-result-object v0

    iget v3, v1, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "TCP2USB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got connection Local RemoteConnectPort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/tcp2usb/TCPProxy$c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => LocalListenPort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tcp2usb/TCPProxy$b;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => Remote RemotePort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/tcp2usb/TCPProxy$c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/tcp2usb/TCPProxy$c;->a()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TCP2USB"

    const-string v2, "ServerSocket accept Error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
