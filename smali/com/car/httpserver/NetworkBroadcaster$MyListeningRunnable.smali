.class public Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;
.super Ljava/lang/Object;
.source "NetworkBroadcaster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/NetworkBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyListeningRunnable"
.end annotation


# instance fields
.field mMe:Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;

.field mStop:Z

.field final synthetic this$0:Lcom/car/httpserver/NetworkBroadcaster;


# direct methods
.method public constructor <init>(Lcom/car/httpserver/NetworkBroadcaster;)V
    .locals 1

    iput-object p1, p0, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;->this$0:Lcom/car/httpserver/NetworkBroadcaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;->mStop:Z

    iput-object p0, p0, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;->mMe:Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;->mStop:Z

    :cond_0
    iget-boolean v7, p0, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;->mStop:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;->this$0:Lcom/car/httpserver/NetworkBroadcaster;

    iget-object v7, v7, Lcom/car/httpserver/NetworkBroadcaster;->mReceiveSocket:Ljava/net/MulticastSocket;

    if-nez v7, :cond_2

    :cond_1
    :goto_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;->mStop:Z

    return-void

    :cond_2
    const/16 v7, 0x400

    :try_start_0
    new-array v0, v7, [B

    new-instance v1, Ljava/net/DatagramPacket;

    array-length v7, v0

    invoke-direct {v1, v0, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    iget-object v7, p0, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;->this$0:Lcom/car/httpserver/NetworkBroadcaster;

    iget-object v7, v7, Lcom/car/httpserver/NetworkBroadcaster;->mReceiveSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v7, v1}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([BII)V

    const-string v7, "snoop"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;->this$0:Lcom/car/httpserver/NetworkBroadcaster;

    iget-object v8, v7, Lcom/car/httpserver/NetworkBroadcaster;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    :try_start_1
    iget-object v7, p0, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;->this$0:Lcom/car/httpserver/NetworkBroadcaster;

    invoke-static {v7}, Lcom/car/httpserver/NetworkBroadcaster;->access$000(Lcom/car/httpserver/NetworkBroadcaster;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v5, 0x0

    :cond_4
    if-eqz v5, :cond_5

    iget-object v7, p0, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;->this$0:Lcom/car/httpserver/NetworkBroadcaster;

    invoke-static {v7}, Lcom/car/httpserver/NetworkBroadcaster;->access$000(Lcom/car/httpserver/NetworkBroadcaster;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/car/httpserver/NetworkBroadcaster;->mMyRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;

    if-eqz v7, :cond_5

    sget-object v7, Lcom/car/httpserver/NetworkBroadcaster;->mMyRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;

    invoke-virtual {v7}, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->sendNow()V

    const-string v7, "CarSvc_NetworkBroadcaster"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Client is snooping, feedback it immediatelly "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " snoop size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;->this$0:Lcom/car/httpserver/NetworkBroadcaster;

    invoke-static {v10}, Lcom/car/httpserver/NetworkBroadcaster;->access$000(Lcom/car/httpserver/NetworkBroadcaster;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " snooplist = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;->this$0:Lcom/car/httpserver/NetworkBroadcaster;

    invoke-static {v10}, Lcom/car/httpserver/NetworkBroadcaster;->access$000(Lcom/car/httpserver/NetworkBroadcaster;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_1
    iget-object v7, p0, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;->mMe:Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;

    sget-object v8, Lcom/car/httpserver/NetworkBroadcaster;->mMyListeningRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;

    if-eq v7, v8, :cond_0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public stop2Exit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;->mStop:Z

    return-void
.end method
