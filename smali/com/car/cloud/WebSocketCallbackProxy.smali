.class final Lcom/car/cloud/WebSocketCallbackProxy;
.super Ljava/lang/Object;
.source "WebSocketCallbackProxy.java"

# interfaces
.implements Lcom/car/cloud/WebSocketCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSvc_CallbackProxy"


# instance fields
.field private final mCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/car/cloud/WebSocketCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mCallbackList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/car/cloud/WebSocketCallbackProxy;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mCallbackList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onAllMsgList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$MsgInfo;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    iget-object v1, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/car/cloud/WebSocketCallbackProxy$6;

    invoke-direct {v2, p0, v0}, Lcom/car/cloud/WebSocketCallbackProxy$6;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAppointment(DDLjava/lang/String;)V
    .locals 9

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    iget-object v7, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/cloud/WebSocketCallbackProxy$18;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/car/cloud/WebSocketCallbackProxy$18;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;DDLjava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBondRequest(Lcom/car/cloud/Type$UserInfo;)V
    .locals 3

    move-object v0, p1

    iget-object v1, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/car/cloud/WebSocketCallbackProxy$5;

    invoke-direct {v2, p0, v0}, Lcom/car/cloud/WebSocketCallbackProxy$5;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;Lcom/car/cloud/Type$UserInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCurrentGPSPos(Ljava/lang/String;Lcom/car/cloud/Type$GPSData;)V
    .locals 4

    move-object v1, p1

    move-object v0, p2

    iget-object v2, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/car/cloud/WebSocketCallbackProxy$15;

    invoke-direct {v3, p0, v1, v0}, Lcom/car/cloud/WebSocketCallbackProxy$15;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;Ljava/lang/String;Lcom/car/cloud/Type$GPSData;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDeviceBondlist(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$DeviceInfo;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    iget-object v1, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/car/cloud/WebSocketCallbackProxy$4;

    invoke-direct {v2, p0, v0}, Lcom/car/cloud/WebSocketCallbackProxy$4;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDeviceStatus(Ljava/lang/String;I)V
    .locals 4

    move-object v0, p1

    move v1, p2

    iget-object v2, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/car/cloud/WebSocketCallbackProxy$9;

    invoke-direct {v3, p0, v0, v1}, Lcom/car/cloud/WebSocketCallbackProxy$9;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGPSHistoryFileReceived(Ljava/lang/String;I)V
    .locals 4

    move-object v0, p1

    move v1, p2

    iget-object v2, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/car/cloud/WebSocketCallbackProxy$12;

    invoke-direct {v3, p0, v0, v1}, Lcom/car/cloud/WebSocketCallbackProxy$12;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGpsIntervalSet(I)V
    .locals 3

    move v0, p1

    iget-object v1, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/car/cloud/WebSocketCallbackProxy$14;

    invoke-direct {v2, p0, v0}, Lcom/car/cloud/WebSocketCallbackProxy$14;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLiveHeartbeat()V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/cloud/WebSocketCallbackProxy$21;

    invoke-direct {v1, p0}, Lcom/car/cloud/WebSocketCallbackProxy$21;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLogout()V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/cloud/WebSocketCallbackProxy$16;

    invoke-direct {v1, p0}, Lcom/car/cloud/WebSocketCallbackProxy$16;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLonginStatus(Lcom/car/cloud/Type$LoginInfo;)V
    .locals 3

    move-object v0, p1

    iget-object v1, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/car/cloud/WebSocketCallbackProxy$2;

    invoke-direct {v2, p0, v0}, Lcom/car/cloud/WebSocketCallbackProxy$2;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;Lcom/car/cloud/Type$LoginInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNotice(Ljava/lang/String;Z)V
    .locals 4

    move-object v1, p1

    move v0, p2

    iget-object v2, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/car/cloud/WebSocketCallbackProxy$19;

    invoke-direct {v3, p0, v1, v0}, Lcom/car/cloud/WebSocketCallbackProxy$19;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOnlinePreviewRequest(Ljava/lang/String;JLjava/lang/String;II)V
    .locals 10

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object v3, p1

    move-wide v4, p2

    iget-object v0, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/cloud/WebSocketCallbackProxy$20;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/car/cloud/WebSocketCallbackProxy$20;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;Ljava/lang/String;JLjava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPickupInfo(DDLjava/lang/String;)V
    .locals 9

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    iget-object v7, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/cloud/WebSocketCallbackProxy$10;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/car/cloud/WebSocketCallbackProxy$10;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;DDLjava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReceiveMsg(Lcom/car/cloud/Type$MsgInfo;)V
    .locals 3

    move-object v0, p1

    iget-object v1, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/car/cloud/WebSocketCallbackProxy$7;

    invoke-direct {v2, p0, v0}, Lcom/car/cloud/WebSocketCallbackProxy$7;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;Lcom/car/cloud/Type$MsgInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRecordingVideo(Ljava/lang/String;JIILjava/lang/String;)V
    .locals 10

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    iget-object v0, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/cloud/WebSocketCallbackProxy$17;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/car/cloud/WebSocketCallbackProxy$17;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;Ljava/lang/String;JIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRequestTodayGPS(Ljava/lang/String;)V
    .locals 3

    move-object v0, p1

    iget-object v1, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/car/cloud/WebSocketCallbackProxy$13;

    invoke-direct {v2, p0, v0}, Lcom/car/cloud/WebSocketCallbackProxy$13;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTakingPhoto(Ljava/lang/String;JILjava/lang/String;)V
    .locals 8

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    iget-object v0, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/cloud/WebSocketCallbackProxy$11;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/car/cloud/WebSocketCallbackProxy$11;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;Ljava/lang/String;JILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserBondlist(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$UserInfo;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    iget-object v1, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/car/cloud/WebSocketCallbackProxy$3;

    invoke-direct {v2, p0, v0}, Lcom/car/cloud/WebSocketCallbackProxy$3;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserStatus(Ljava/lang/String;Z)V
    .locals 4

    move-object v1, p1

    move v0, p2

    iget-object v2, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/car/cloud/WebSocketCallbackProxy$8;

    invoke-direct {v3, p0, v1, v0}, Lcom/car/cloud/WebSocketCallbackProxy$8;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVoiceReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/cloud/WebSocketCallbackProxy$22;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/car/cloud/WebSocketCallbackProxy$22;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWebSocketStatus(I)V
    .locals 3

    move v0, p1

    iget-object v1, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/car/cloud/WebSocketCallbackProxy$1;

    invoke-direct {v2, p0, v0}, Lcom/car/cloud/WebSocketCallbackProxy$1;-><init>(Lcom/car/cloud/WebSocketCallbackProxy;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method registerCallback(Lcom/car/cloud/WebSocketCallback;)V
    .locals 7

    if-nez p1, :cond_1

    const-string v4, "CarSvc_CallbackProxy"

    const-string v5, "registerCallback is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2

    const-string v4, "CarSvc_CallbackProxy"

    const-string v5, "duplicated registerCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "CarSvc_CallbackProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerCallback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_1
    if-ltz v0, :cond_0

    iget-object v4, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v4, "CarSvc_CallbackProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove unref index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method unregisterCallback(Lcom/car/cloud/WebSocketCallback;)V
    .locals 5

    iget-object v2, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/cloud/WebSocketCallback;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/car/cloud/WebSocketCallbackProxy;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v2, "CarSvc_CallbackProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
