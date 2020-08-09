.class public final Lcom/car/common/util/WorkThread;
.super Ljava/lang/Thread;
.source "WorkThread.java"


# static fields
.field public static final BOTH_SIDES:I = 0x0

.field public static final FIFO:I = 0x1

.field public static final LIFO:I = 0x2


# instance fields
.field private mCurReq:Lcom/car/common/util/WorkReq;

.field private mDispatchMode:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/common/util/WorkReq;",
            ">;"
        }
    .end annotation
.end field

.field private mListSize:I

.field private mStop:Z

.field private volatile mWaiting:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "car.WorkThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/car/common/util/WorkThread;->mStop:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    iput-boolean v1, p0, Lcom/car/common/util/WorkThread;->mWaiting:Z

    iput v1, p0, Lcom/car/common/util/WorkThread;->mDispatchMode:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/car/common/util/WorkThread;->mListSize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/car/common/util/WorkThread;->mStop:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    iput-boolean v1, p0, Lcom/car/common/util/WorkThread;->mWaiting:Z

    iput v1, p0, Lcom/car/common/util/WorkThread;->mDispatchMode:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/car/common/util/WorkThread;->mListSize:I

    return-void
.end method


# virtual methods
.method public addReq(Lcom/car/common/util/WorkReq;)V
    .locals 3

    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/car/common/util/WorkThread;->mWaiting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addReqWithLimit(Lcom/car/common/util/WorkReq;)V
    .locals 4

    iget-object v2, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/car/common/util/WorkThread;->mListSize:I

    if-le v1, v3, :cond_1

    const/4 v0, 0x0

    iget v1, p0, Lcom/car/common/util/WorkThread;->mDispatchMode:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    iget-object v3, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/common/util/WorkReq;

    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/car/common/util/WorkReq;->cancel()V

    :cond_1
    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-boolean v1, p0, Lcom/car/common/util/WorkThread;->mWaiting:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :cond_2
    monitor-exit v2

    return-void

    :cond_3
    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/common/util/WorkReq;

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/car/common/util/WorkThread;->mDispatchMode:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/common/util/WorkReq;

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/car/common/util/WorkThread;->mDispatchMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    iget-object v3, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/common/util/WorkReq;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addReqWithLimitandWait(Lcom/car/common/util/WorkReq;)V
    .locals 4

    iget-object v2, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/car/common/util/WorkThread;->mListSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v1, v3, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-boolean v1, p0, Lcom/car/common/util/WorkThread;->mWaiting:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public cancelReq(Lcom/car/common/util/WorkReq;)Z
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    invoke-interface {v4}, Lcom/car/common/util/WorkReq;->cancel()V

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v4, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/common/util/WorkReq;

    if-ne v1, p1, :cond_1

    invoke-interface {p1}, Lcom/car/common/util/WorkReq;->cancel()V

    iget-object v4, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public cancelReqs(Lcom/car/common/util/Match4Req;)V
    .locals 4

    iget-object v3, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    invoke-interface {p1, v2}, Lcom/car/common/util/Match4Req;->matchs(Lcom/car/common/util/WorkReq;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    invoke-interface {v2}, Lcom/car/common/util/WorkReq;->cancel()V

    :cond_0
    iget-object v2, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/common/util/WorkReq;

    invoke-interface {p1, v1}, Lcom/car/common/util/Match4Req;->matchs(Lcom/car/common/util/WorkReq;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/car/common/util/WorkReq;->cancel()V

    iget-object v2, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public cancelReqsList()V
    .locals 4

    iget-object v3, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/common/util/WorkReq;

    invoke-interface {v1}, Lcom/car/common/util/WorkReq;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/car/common/util/WorkThread;->mWaiting:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public exit()V
    .locals 2

    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/car/common/util/WorkThread;->mStop:Z

    iget-object v0, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    invoke-interface {v0}, Lcom/car/common/util/WorkReq;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-boolean v0, p0, Lcom/car/common/util/WorkThread;->mWaiting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDuplicateWorkReq(Lcom/car/common/util/Match4Req;)Lcom/car/common/util/WorkReq;
    .locals 4

    iget-object v3, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    invoke-interface {p1, v2}, Lcom/car/common/util/Match4Req;->matchs(Lcom/car/common/util/WorkReq;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    monitor-exit v3

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/common/util/WorkReq;

    invoke-interface {p1, v1}, Lcom/car/common/util/Match4Req;->matchs(Lcom/car/common/util/WorkReq;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDuplicateWorking(Lcom/car/common/util/Match4Req;)Z
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    invoke-interface {p1, v4}, Lcom/car/common/util/Match4Req;->matchs(Lcom/car/common/util/WorkReq;)Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/common/util/WorkReq;

    invoke-interface {p1, v1}, Lcom/car/common/util/Match4Req;->matchs(Lcom/car/common/util/WorkReq;)Z

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    const/4 v3, 0x1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/car/common/util/WorkThread;->mStop:Z

    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    monitor-enter v1

    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/car/common/util/WorkThread;->mStop:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/common/util/WorkThread;->mWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/car/common/util/WorkThread;->mWaiting:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    iget-boolean v0, p0, Lcom/car/common/util/WorkThread;->mStop:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/car/common/util/WorkThread;->mDispatchMode:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/common/util/WorkReq;

    iput-object v0, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    invoke-interface {v0}, Lcom/car/common/util/WorkReq;->execute()V

    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    iget-object v2, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/common/util/WorkReq;

    iput-object v0, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/car/common/util/WorkThread;->mDispatchMode:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    iget-object v2, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/common/util/WorkReq;

    iput-object v0, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/car/common/util/WorkThread;->mDispatchMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/common/util/WorkReq;

    iput-object v0, p0, Lcom/car/common/util/WorkThread;->mCurReq:Lcom/car/common/util/WorkReq;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/car/common/util/WorkThread;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method

.method public setDispatchMode(I)V
    .locals 0

    iput p1, p0, Lcom/car/common/util/WorkThread;->mDispatchMode:I

    return-void
.end method

.method public setReqListSize(I)V
    .locals 0

    iput p1, p0, Lcom/car/common/util/WorkThread;->mListSize:I

    return-void
.end method
