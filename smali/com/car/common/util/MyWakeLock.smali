.class public Lcom/car/common/util/MyWakeLock;
.super Ljava/lang/Object;
.source "MyWakeLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/common/util/MyWakeLock$MyHandler;,
        Lcom/car/common/util/MyWakeLock$MyWakelockTimeoutListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "CarSvc_MyWakeLock"

.field static final WAKELOCK_CHECK:I = 0x64


# instance fields
.field DEBUG:Z

.field mContext:Landroid/content/Context;

.field mMyHandler:Lcom/car/common/util/MyWakeLock$MyHandler;

.field mMyWakelockTimeoutListener:Lcom/car/common/util/MyWakeLock$MyWakelockTimeoutListener;

.field mTimeOut:J

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockRef:I


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "MyWakeLock"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/car/common/util/MyWakeLock;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "debug.wakelock"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/car/common/util/MyWakeLock;->DEBUG:Z

    iput-object p1, p0, Lcom/car/common/util/MyWakeLock;->mContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/car/common/util/MyWakeLock;->mTimeOut:J

    new-instance v1, Lcom/car/common/util/MyWakeLock$MyHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/car/common/util/MyWakeLock$MyHandler;-><init>(Lcom/car/common/util/MyWakeLock;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/car/common/util/MyWakeLock;->mMyHandler:Lcom/car/common/util/MyWakeLock$MyHandler;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/car/common/util/MyWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput v3, p0, Lcom/car/common/util/MyWakeLock;->mWakeLockRef:I

    return-void
.end method


# virtual methods
.method public forceWakeLockReleased()V
    .locals 3

    iget-object v1, p0, Lcom/car/common/util/MyWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/common/util/MyWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/common/util/MyWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/common/util/MyWakeLock;->mWakeLockRef:I

    iget-object v0, p0, Lcom/car/common/util/MyWakeLock;->mMyHandler:Lcom/car/common/util/MyWakeLock$MyHandler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/car/common/util/MyWakeLock$MyHandler;->removeMessages(I)V

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

.method public getTimeOut()J
    .locals 4

    iget-object v1, p0, Lcom/car/common/util/MyWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/car/common/util/MyWakeLock;->mTimeOut:J

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isHeld()Z
    .locals 2

    iget-object v1, p0, Lcom/car/common/util/MyWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/car/common/util/MyWakeLock;->mWakeLockRef:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public keepAwake(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/car/common/util/MyWakeLock;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarSvc_MyWakeLock"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/car/common/util/MyWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    if-eqz p1, :cond_4

    :try_start_0
    iget v0, p0, Lcom/car/common/util/MyWakeLock;->mWakeLockRef:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/car/common/util/MyWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/car/common/util/MyWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/car/common/util/MyWakeLock;->mMyHandler:Lcom/car/common/util/MyWakeLock$MyHandler;

    const/16 v2, 0x64

    iget-wide v4, p0, Lcom/car/common/util/MyWakeLock;->mTimeOut:J

    invoke-virtual {v0, v2, v4, v5}, Lcom/car/common/util/MyWakeLock$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    iget v0, p0, Lcom/car/common/util/MyWakeLock;->mWakeLockRef:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/car/common/util/MyWakeLock;->mWakeLockRef:I

    iget-boolean v0, p0, Lcom/car/common/util/MyWakeLock;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "CarSvc_MyWakeLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWakeLockRef="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/common/util/MyWakeLock;->mWakeLockRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "timer work?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/common/util/MyWakeLock;->mMyHandler:Lcom/car/common/util/MyWakeLock$MyHandler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/car/common/util/MyWakeLock$MyHandler;->hasMessages(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :cond_3
    iget-object v0, p0, Lcom/car/common/util/MyWakeLock;->mMyHandler:Lcom/car/common/util/MyWakeLock$MyHandler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/car/common/util/MyWakeLock$MyHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/common/util/MyWakeLock;->mMyHandler:Lcom/car/common/util/MyWakeLock$MyHandler;

    const/16 v2, 0x64

    iget-wide v4, p0, Lcom/car/common/util/MyWakeLock;->mTimeOut:J

    invoke-virtual {v0, v2, v4, v5}, Lcom/car/common/util/MyWakeLock$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    iget v0, p0, Lcom/car/common/util/MyWakeLock;->mWakeLockRef:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/car/common/util/MyWakeLock;->mWakeLockRef:I

    iget v0, p0, Lcom/car/common/util/MyWakeLock;->mWakeLockRef:I

    if-gtz v0, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/common/util/MyWakeLock;->mWakeLockRef:I

    iget-object v0, p0, Lcom/car/common/util/MyWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/car/common/util/MyWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/car/common/util/MyWakeLock;->mMyHandler:Lcom/car/common/util/MyWakeLock$MyHandler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/car/common/util/MyWakeLock$MyHandler;->removeMessages(I)V

    :cond_5
    iget-boolean v0, p0, Lcom/car/common/util/MyWakeLock;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "CarSvc_MyWakeLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWakeLockRef="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/common/util/MyWakeLock;->mWakeLockRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "timer work?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/common/util/MyWakeLock;->mMyHandler:Lcom/car/common/util/MyWakeLock$MyHandler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/car/common/util/MyWakeLock$MyHandler;->hasMessages(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setTimeOut(J)V
    .locals 7

    iget-boolean v0, p0, Lcom/car/common/util/MyWakeLock;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarSvc_MyWakeLock"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/car/common/util/MyWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/car/common/util/MyWakeLock;->mTimeOut:J

    iget-object v0, p0, Lcom/car/common/util/MyWakeLock;->mMyHandler:Lcom/car/common/util/MyWakeLock$MyHandler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/car/common/util/MyWakeLock$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/common/util/MyWakeLock;->mMyHandler:Lcom/car/common/util/MyWakeLock$MyHandler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/car/common/util/MyWakeLock$MyHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/common/util/MyWakeLock;->mMyHandler:Lcom/car/common/util/MyWakeLock$MyHandler;

    const/16 v2, 0x64

    iget-wide v4, p0, Lcom/car/common/util/MyWakeLock;->mTimeOut:J

    invoke-virtual {v0, v2, v4, v5}, Lcom/car/common/util/MyWakeLock$MyHandler;->sendEmptyMessageDelayed(IJ)Z

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

.method public setTimeoutListener(Lcom/car/common/util/MyWakeLock$MyWakelockTimeoutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/car/common/util/MyWakeLock;->mMyWakelockTimeoutListener:Lcom/car/common/util/MyWakeLock$MyWakelockTimeoutListener;

    return-void
.end method
