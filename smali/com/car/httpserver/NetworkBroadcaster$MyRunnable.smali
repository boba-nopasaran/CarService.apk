.class public Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;
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
    name = "MyRunnable"
.end annotation


# instance fields
.field mMe:Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;

.field mStop:Z

.field mWaitFlag:Ljava/lang/Object;

.field final synthetic this$0:Lcom/car/httpserver/NetworkBroadcaster;


# direct methods
.method public constructor <init>(Lcom/car/httpserver/NetworkBroadcaster;)V
    .locals 1

    iput-object p1, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->this$0:Lcom/car/httpserver/NetworkBroadcaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->mStop:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->mWaitFlag:Ljava/lang/Object;

    iput-object p0, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->mMe:Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->mStop:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->mStop:Z

    const/4 v0, 0x5

    :cond_0
    iget-boolean v2, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->mStop:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->this$0:Lcom/car/httpserver/NetworkBroadcaster;

    invoke-virtual {v2}, Lcom/car/httpserver/NetworkBroadcaster;->startBroadcasting()V

    iget-object v2, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->this$0:Lcom/car/httpserver/NetworkBroadcaster;

    invoke-virtual {v2}, Lcom/car/httpserver/NetworkBroadcaster;->startResponseSnoop()V

    if-ltz v0, :cond_1

    const-string v2, "CarSvc_NetworkBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting finished once again and would be silent with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times more"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-object v3, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->mWaitFlag:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->mWaitFlag:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->mMe:Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;

    sget-object v3, Lcom/car/httpserver/NetworkBroadcaster;->mMyRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;

    if-eq v2, v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->mStop:Z

    return-void

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public sendNow()V
    .locals 2

    iget-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->mWaitFlag:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->mWaitFlag:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop2Exit()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->mStop:Z

    iget-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->mWaitFlag:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->mWaitFlag:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
