.class public Lcom/car/httpserver/NetworkBroadcaster;
.super Landroid/content/BroadcastReceiver;
.source "NetworkBroadcaster.java"

# interfaces
.implements Lcom/tcp2usb/UsbTransfer$AccessoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;,
        Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;,
        Lcom/car/httpserver/NetworkBroadcaster$BroadcastStatusNotify;
    }
.end annotation


# static fields
.field public static final AccessoryManufacturer:Ljava/lang/String; = "CarAssist"

.field public static final AccessoryModel:Ljava/lang/String; = "SmartEye"

.field static final MSG_CLIENT_SNOOP:Ljava/lang/String; = "snoop"

.field static final MSG_HAND_SHAKE:Ljava/lang/String; = "carservice"

.field static final MULTICAST_ADDR:Ljava/lang/String; = "224.0.1.1"

.field static final MULTICAST_PORT:I = 0x1fbf

.field static final NETWORK_CHECK:I = 0x64

.field static final TAG:Ljava/lang/String; = "CarSvc_NetworkBroadcaster"

.field static mMyListeningRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;

.field static mMyRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;


# instance fields
.field private mBroadcastAddr:Ljava/net/InetAddress;

.field mBroadcastStatusNotify:Lcom/car/httpserver/NetworkBroadcaster$BroadcastStatusNotify;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mLock:Ljava/lang/Object;

.field private mMulticastAddr:Ljava/net/InetAddress;

.field mName:Ljava/lang/String;

.field mReceiveSocket:Ljava/net/MulticastSocket;

.field mSendSocket:Ljava/net/MulticastSocket;

.field private mSnoopLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public mUsbAccessoryConnectted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSnoopLists:Ljava/util/List;

    new-instance v0, Lcom/car/httpserver/NetworkBroadcaster$1;

    invoke-direct {v0, p0}, Lcom/car/httpserver/NetworkBroadcaster$1;-><init>(Lcom/car/httpserver/NetworkBroadcaster;)V

    iput-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mUsbAccessoryConnectted:Z

    return-void
.end method

.method static synthetic access$000(Lcom/car/httpserver/NetworkBroadcaster;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSnoopLists:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method checkIntent(Landroid/content/Intent;)V
    .locals 4

    const/16 v3, 0x64

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "CarSvc_NetworkBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIntent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/car/httpserver/NetworkBroadcaster;->isWifiNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/car/httpserver/NetworkBroadcaster;->isWifiApEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mUsbAccessoryConnectted:Z

    if-eqz v0, :cond_6

    :cond_2
    iget-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/car/httpserver/NetworkBroadcaster;->mMyRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/car/httpserver/NetworkBroadcaster;->mMyRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;

    invoke-virtual {v0}, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    monitor-exit v1

    :cond_5
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/car/httpserver/NetworkBroadcaster;->mMyRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/car/httpserver/NetworkBroadcaster;->mMyRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;

    invoke-virtual {v0}, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->stop2Exit()V

    const/4 v0, 0x0

    sput-object v0, Lcom/car/httpserver/NetworkBroadcaster;->mMyRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;

    :cond_7
    sget-object v0, Lcom/car/httpserver/NetworkBroadcaster;->mMyListeningRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/car/httpserver/NetworkBroadcaster;->mMyListeningRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;

    invoke-virtual {v0}, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;->stop2Exit()V

    const/4 v0, 0x0

    sput-object v0, Lcom/car/httpserver/NetworkBroadcaster;->mMyListeningRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;

    invoke-virtual {p0}, Lcom/car/httpserver/NetworkBroadcaster;->listeningClose()V

    :cond_8
    iget-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mBroadcastStatusNotify:Lcom/car/httpserver/NetworkBroadcaster$BroadcastStatusNotify;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mBroadcastStatusNotify:Lcom/car/httpserver/NetworkBroadcaster$BroadcastStatusNotify;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/car/httpserver/NetworkBroadcaster$BroadcastStatusNotify;->onBroadcastReady(Z)V

    :cond_9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lcom/car/httpserver/NetworkBroadcaster;->closeSocket()V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method protected closeSocket()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSendSocket:Ljava/net/MulticastSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSendSocket:Ljava/net/MulticastSocket;

    instance-of v0, v0, Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSendSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster;->mMulticastAddr:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSendSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSendSocket:Ljava/net/MulticastSocket;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method createSocketAndStart()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/car/httpserver/Util;->getBroadcast()[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "CarSvc_NetworkBroadcaster"

    const-string v2, "Can not find broadcast address"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "255.255.255.255"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster;->mBroadcastAddr:Ljava/net/InetAddress;

    :goto_0
    const-string v1, "224.0.1.1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster;->mMulticastAddr:Ljava/net/InetAddress;

    const-string v1, "CarSvc_NetworkBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/httpserver/NetworkBroadcaster;->mBroadcastAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/net/MulticastSocket;

    invoke-direct {v1}, Ljava/net/MulticastSocket;-><init>()V

    iput-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSendSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSendSocket:Ljava/net/MulticastSocket;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    iget-object v2, p0, Lcom/car/httpserver/NetworkBroadcaster;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v1, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;

    invoke-direct {v1, p0}, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;-><init>(Lcom/car/httpserver/NetworkBroadcaster;)V

    sput-object v1, Lcom/car/httpserver/NetworkBroadcaster;->mMyRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;

    new-instance v1, Ljava/lang/Thread;

    sget-object v3, Lcom/car/httpserver/NetworkBroadcaster;->mMyRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/car/httpserver/NetworkBroadcaster;->listeningReady()V

    new-instance v1, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;

    invoke-direct {v1, p0}, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;-><init>(Lcom/car/httpserver/NetworkBroadcaster;)V

    sput-object v1, Lcom/car/httpserver/NetworkBroadcaster;->mMyListeningRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;

    new-instance v1, Ljava/lang/Thread;

    sget-object v3, Lcom/car/httpserver/NetworkBroadcaster;->mMyListeningRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/net/InetAddress;

    iput-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster;->mBroadcastAddr:Ljava/net/InetAddress;

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public deinit()V
    .locals 2

    iget-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/car/httpserver/NetworkBroadcaster;->mMyRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/car/httpserver/NetworkBroadcaster;->mMyRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;

    invoke-virtual {v0}, Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;->stop2Exit()V

    const/4 v0, 0x0

    sput-object v0, Lcom/car/httpserver/NetworkBroadcaster;->mMyRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyRunnable;

    :cond_1
    sget-object v0, Lcom/car/httpserver/NetworkBroadcaster;->mMyListeningRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/car/httpserver/NetworkBroadcaster;->mMyListeningRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;

    invoke-virtual {v0}, Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;->stop2Exit()V

    const/4 v0, 0x0

    sput-object v0, Lcom/car/httpserver/NetworkBroadcaster;->mMyListeningRunnable:Lcom/car/httpserver/NetworkBroadcaster$MyListeningRunnable;

    invoke-virtual {p0}, Lcom/car/httpserver/NetworkBroadcaster;->listeningClose()V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/car/httpserver/NetworkBroadcaster;->closeSocket()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getUSBSnoopString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carservice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/car/httpserver/NetworkBroadcaster;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/car/httpserver/NetworkBroadcaster;->mName:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/car/httpserver/NetworkBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/car/httpserver/NetworkBroadcaster;->checkIntent(Landroid/content/Intent;)V

    :cond_0
    invoke-static {p1, p0}, Lcom/tcp2usb/TCP2USB;->createDeviceSide(Landroid/content/Context;Lcom/tcp2usb/UsbTransfer$AccessoryListener;)V

    return-void
.end method

.method public isOurAccessory(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "SmartEye"

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CarSvc_NetworkBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown model:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string v1, "CarAssist"

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CarSvc_NetworkBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown manufac:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "CarSvc_NetworkBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found our accessory:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isWifiApEnabled()Z
    .locals 3

    iget-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    return v1
.end method

.method isWifiNetworkConnected()Z
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/car/httpserver/NetworkBroadcaster;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method listeningClose()V
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mReceiveSocket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mReceiveSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mReceiveSocket:Ljava/net/MulticastSocket;

    :cond_0
    return-void
.end method

.method listeningReady()V
    .locals 4

    :try_start_0
    new-instance v2, Ljava/net/MulticastSocket;

    const/16 v3, 0x1fbf

    invoke-direct {v2, v3}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v2, p0, Lcom/car/httpserver/NetworkBroadcaster;->mReceiveSocket:Ljava/net/MulticastSocket;

    const-string v2, "224.0.1.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/car/httpserver/NetworkBroadcaster;->mReceiveSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v2, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/car/httpserver/NetworkBroadcaster;->checkIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onUSBAccessoryStatus(Ljava/lang/String;I)V
    .locals 3

    if-nez p2, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mUsbAccessoryConnectted:Z

    :cond_0
    :goto_0
    const-string v0, "CarSvc_NetworkBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUSBAccessoryStatus version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUsbAccessoryConnectted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/car/httpserver/NetworkBroadcaster;->mUsbAccessoryConnectted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/httpserver/NetworkBroadcaster;->checkIntent(Landroid/content/Intent;)V

    return-void

    :cond_1
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/httpserver/NetworkBroadcaster;->mUsbAccessoryConnectted:Z

    goto :goto_0
.end method

.method public setBroadcastStatusNotifier(Lcom/car/httpserver/NetworkBroadcaster$BroadcastStatusNotify;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/NetworkBroadcaster;->mBroadcastStatusNotify:Lcom/car/httpserver/NetworkBroadcaster$BroadcastStatusNotify;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/NetworkBroadcaster;->mName:Ljava/lang/String;

    return-void
.end method

.method setWifiApEnable(Z)V
    .locals 9

    const/4 v7, 0x3

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/car/httpserver/NetworkBroadcaster;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    if-ne v4, v7, :cond_0

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setWifiApEnabled"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/net/wifi/WifiConfiguration;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const-string v4, "CarAP"

    iput-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    const-string v4, "12345678"

    iput-object v4, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method startBroadcasting()V
    .locals 9

    const/16 v8, 0x1fbf

    iget-object v6, p0, Lcom/car/httpserver/NetworkBroadcaster;->mName:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/car/httpserver/NetworkBroadcaster;->mName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    const-string v6, "mycar"

    iput-object v6, p0, Lcom/car/httpserver/NetworkBroadcaster;->mName:Ljava/lang/String;

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "carservice:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/car/httpserver/NetworkBroadcaster;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v4, Ljava/net/DatagramPacket;

    array-length v6, v0

    iget-object v7, p0, Lcom/car/httpserver/NetworkBroadcaster;->mMulticastAddr:Ljava/net/InetAddress;

    invoke-direct {v4, v0, v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, v0

    iget-object v7, p0, Lcom/car/httpserver/NetworkBroadcaster;->mBroadcastAddr:Ljava/net/InetAddress;

    invoke-direct {v5, v0, v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    :try_start_0
    iget-object v6, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSendSocket:Ljava/net/MulticastSocket;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSendSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v6, v4}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    iget-object v6, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSendSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v6, v5}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v6, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSendSocket:Ljava/net/MulticastSocket;

    if-eqz v6, :cond_2

    :try_start_1
    iget-object v6, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSendSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v6, v5}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method startResponseSnoop()V
    .locals 10

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/car/httpserver/NetworkBroadcaster;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSnoopLists:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    monitor-exit v8

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSnoopLists:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v7, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSnoopLists:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, p0, Lcom/car/httpserver/NetworkBroadcaster;->mName:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/car/httpserver/NetworkBroadcaster;->mName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_3

    :cond_2
    const-string v7, "mycar"

    iput-object v7, p0, Lcom/car/httpserver/NetworkBroadcaster;->mName:Ljava/lang/String;

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "carservice:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/httpserver/NetworkBroadcaster;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    new-instance v6, Ljava/net/DatagramPacket;

    array-length v7, v1

    const/16 v8, 0x1fbf

    invoke-direct {v6, v1, v7, v0, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const-string v7, "CarSvc_NetworkBroadcaster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Client is snooping, feedback to client IP/Port immediatelly"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v7, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSendSocket:Ljava/net/MulticastSocket;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/car/httpserver/NetworkBroadcaster;->mSendSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v7, v6}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
