.class Lcom/car/systemfunc/SystemEventHandler$1;
.super Landroid/os/Handler;
.source "SystemEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/SystemEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/SystemEventHandler;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/SystemEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/SystemEventHandler$1;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v7, p0, Lcom/car/systemfunc/SystemEventHandler$1;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    iget-object v7, v7, Lcom/car/systemfunc/SystemEventHandler;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v7}, Lcom/car/common/CameraServiceImpl;->isRecording()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    iget v7, p1, Landroid/os/Message;->arg2:I

    if-nez v7, :cond_1

    if-eqz v3, :cond_1

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/car/utils/SoundPlayer;->playSound(I)Z

    :cond_1
    invoke-static {}, Lcom/car/common/CarPath;->getDVRRootPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/car/systemfunc/SystemEventHandler;->isStorageMounted(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const v6, 0x7f090025

    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/car/systemfunc/SystemEventHandler$1;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v7}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_9

    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/car/systemfunc/SystemEventHandler$1;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v7}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/car/common/CarPath;->getDVRRootPath()Ljava/lang/String;

    move-result-object v10

    iget-object v7, p0, Lcom/car/systemfunc/SystemEventHandler$1;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v7}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v11

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_5

    move v7, v8

    :goto_3
    invoke-static {v10, v11, v7}, Lcom/car/common/CarUtil;->isStorageFull(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    const v6, 0x7f090029

    :goto_4
    const/4 v4, 0x1

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_7

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v12, :cond_4

    const v6, 0x7f090027

    :cond_4
    iget-object v7, p0, Lcom/car/systemfunc/SystemEventHandler$1;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    iget-object v10, v7, Lcom/car/systemfunc/SystemEventHandler;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_1
    const-string v7, "sys.car.dvr.accident.f"

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "sys.car.dvr.accident.b"

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    if-eqz v4, :cond_2

    iget-object v7, p0, Lcom/car/systemfunc/SystemEventHandler$1;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    iget-object v7, v7, Lcom/car/systemfunc/SystemEventHandler;->myWakeLock:Lcom/car/common/util/MyWakeLock;

    const-wide/32 v10, 0x1d4c0

    invoke-virtual {v7, v10, v11}, Lcom/car/common/util/MyWakeLock;->setTimeOut(J)V

    iget-object v7, p0, Lcom/car/systemfunc/SystemEventHandler$1;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    iget-object v7, v7, Lcom/car/systemfunc/SystemEventHandler;->myWakeLock:Lcom/car/common/util/MyWakeLock;

    invoke-virtual {v7, v8}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    if-ne v0, v12, :cond_8

    move v2, v8

    :goto_6
    new-instance v7, Ljava/lang/Thread;

    new-instance v10, Lcom/car/systemfunc/SystemEventHandler$1$1;

    invoke-direct {v10, p0, v2}, Lcom/car/systemfunc/SystemEventHandler$1$1;-><init>(Lcom/car/systemfunc/SystemEventHandler$1;Z)V

    invoke-direct {v7, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :cond_5
    move v7, v9

    goto :goto_3

    :cond_6
    const v6, 0x7f090026

    const/4 v0, 0x1

    goto :goto_4

    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    :cond_7
    iget-object v7, p0, Lcom/car/systemfunc/SystemEventHandler$1;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    iget-object v10, v7, Lcom/car/systemfunc/SystemEventHandler;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_3
    const-string v7, "sys.car.dvr.accident.f"

    const-string v11, "1"

    invoke-static {v7, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "sys.car.dvr.accident.b"

    const-string v11, "1"

    invoke-static {v7, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v10

    goto :goto_5

    :catchall_1
    move-exception v7

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    :cond_8
    move v2, v9

    goto :goto_6

    :cond_9
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v7

    invoke-virtual {v7, v5, v8}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
