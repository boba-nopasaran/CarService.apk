.class Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;
.super Landroid/os/FileObserver;
.source "CarWebSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/CarWebSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyFileObserver"
.end annotation


# instance fields
.field mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/car/httpserver/CarWebSocketServer;


# direct methods
.method public constructor <init>(Lcom/car/httpserver/CarWebSocketServer;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x128

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 6

    const/16 v4, 0x100

    const/16 v3, 0x20

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "CarSvc_CarWebSocketServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE : path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    iget-object v1, v0, Lcom/car/httpserver/CarWebSocketServer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v0}, Lcom/car/httpserver/CarWebSocketServer;->access$600(Lcom/car/httpserver/CarWebSocketServer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    iget-object v0, v0, Lcom/car/httpserver/CarWebSocketServer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v0}, Lcom/car/httpserver/CarWebSocketServer;->access$600(Lcom/car/httpserver/CarWebSocketServer;)Ljava/util/HashMap;

    move-result-object v0

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :sswitch_1
    const-string v0, "CarSvc_CarWebSocketServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLOSE_WRITE : path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    iget-object v1, v0, Lcom/car/httpserver/CarWebSocketServer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v0}, Lcom/car/httpserver/CarWebSocketServer;->access$600(Lcom/car/httpserver/CarWebSocketServer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v0}, Lcom/car/httpserver/CarWebSocketServer;->access$600(Lcom/car/httpserver/CarWebSocketServer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v0}, Lcom/car/httpserver/CarWebSocketServer;->access$600(Lcom/car/httpserver/CarWebSocketServer;)Ljava/util/HashMap;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    iget-object v0, v0, Lcom/car/httpserver/CarWebSocketServer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    iget-object v0, v0, Lcom/car/httpserver/CarWebSocketServer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :sswitch_2
    const-string v0, "CarSvc_CarWebSocketServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPEN : path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    iget-object v1, v0, Lcom/car/httpserver/CarWebSocketServer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v0}, Lcom/car/httpserver/CarWebSocketServer;->access$600(Lcom/car/httpserver/CarWebSocketServer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v0}, Lcom/car/httpserver/CarWebSocketServer;->access$600(Lcom/car/httpserver/CarWebSocketServer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v0}, Lcom/car/httpserver/CarWebSocketServer;->access$600(Lcom/car/httpserver/CarWebSocketServer;)Ljava/util/HashMap;

    move-result-object v0

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v0}, Lcom/car/httpserver/CarWebSocketServer;->access$600(Lcom/car/httpserver/CarWebSocketServer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x20 -> :sswitch_2
        0x100 -> :sswitch_0
    .end sparse-switch
.end method
