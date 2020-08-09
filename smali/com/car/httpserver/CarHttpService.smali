.class public Lcom/car/httpserver/CarHttpService;
.super Landroid/app/Service;
.source "CarHttpService.java"

# interfaces
.implements Lcom/car/httpserver/NetworkBroadcaster$BroadcastStatusNotify;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/httpserver/CarHttpService$LocalBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSvc_CarHttpService"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mCameraManager:Lcom/car/common/CameraServiceImpl;

.field private mCarHttpServer:Lcom/car/httpserver/CarHttpServer;

.field private mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

.field private mEnableWebsocketServer:Z

.field private mHttpPort:I

.field private mHttpServerThread:Lcom/car/httpserver/HttpServerThread;

.field private mName:Ljava/lang/String;

.field private mNetworkBroadcaster:Lcom/car/httpserver/NetworkBroadcaster;

.field private mWebSocketPort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/car/httpserver/CarHttpService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/car/httpserver/CarHttpService$LocalBinder;-><init>(Lcom/car/httpserver/CarHttpService;)V

    iput-object v0, p0, Lcom/car/httpserver/CarHttpService;->mBinder:Landroid/os/IBinder;

    const/16 v0, 0x1f90

    iput v0, p0, Lcom/car/httpserver/CarHttpService;->mHttpPort:I

    const/16 v0, 0x1f91

    iput v0, p0, Lcom/car/httpserver/CarHttpService;->mWebSocketPort:I

    const-string v0, "Car"

    iput-object v0, p0, Lcom/car/httpserver/CarHttpService;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/httpserver/CarHttpService;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/httpserver/CarHttpService;->mEnableWebsocketServer:Z

    return-void
.end method


# virtual methods
.method public getAvailableIp(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/car/httpserver/Util;->getLocalInet4AddrAndInterface()[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    aget-object v3, v2, v4

    if-eqz v3, :cond_0

    aget-object v0, v2, v4

    check-cast v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/CarHttpService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onBroadcastReady(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/car/httpserver/CarHttpService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/car/common/ProviderUtils;->getRemoteCtrl(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/car/httpserver/CarHttpService;->startHttpServer()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/car/httpserver/CarHttpService;->stopHttpServer()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/car/httpserver/NetworkBroadcaster;

    invoke-direct {v0}, Lcom/car/httpserver/NetworkBroadcaster;-><init>()V

    iput-object v0, p0, Lcom/car/httpserver/CarHttpService;->mNetworkBroadcaster:Lcom/car/httpserver/NetworkBroadcaster;

    iget-object v0, p0, Lcom/car/httpserver/CarHttpService;->mNetworkBroadcaster:Lcom/car/httpserver/NetworkBroadcaster;

    invoke-virtual {v0, p0}, Lcom/car/httpserver/NetworkBroadcaster;->setBroadcastStatusNotifier(Lcom/car/httpserver/NetworkBroadcaster$BroadcastStatusNotify;)V

    new-instance v0, Lcom/car/common/CameraServiceImpl;

    invoke-direct {v0, p0}, Lcom/car/common/CameraServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/car/httpserver/CarHttpService;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    invoke-static {p0}, Lcom/car/httpserver/Util;->initContext(Landroid/content/Context;)V

    new-instance v0, Lcom/car/httpserver/CarWebSocketServer;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget v2, p0, Lcom/car/httpserver/CarHttpService;->mWebSocketPort:I

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lcom/car/httpserver/CarWebSocketServer;-><init>(Landroid/content/Context;Ljava/net/InetSocketAddress;)V

    iput-object v0, p0, Lcom/car/httpserver/CarHttpService;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    iget-boolean v0, p0, Lcom/car/httpserver/CarHttpService;->mEnableWebsocketServer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/httpserver/CarHttpService;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v0}, Lcom/car/httpserver/CarWebSocketServer;->start()V

    invoke-static {}, Lcom/car/systemfunc/SettingsNotifier;->getInstance()Lcom/car/systemfunc/SettingsNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/car/httpserver/CarHttpService;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->setWebSocketServer(Lcom/car/httpserver/CarWebSocketServer;)V

    :cond_0
    new-instance v0, Lcom/car/httpserver/HttpServerThread;

    const-string v1, "HttpServerThread"

    invoke-direct {v0, v1, p0}, Lcom/car/httpserver/HttpServerThread;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/car/httpserver/CarHttpService;->mHttpServerThread:Lcom/car/httpserver/HttpServerThread;

    iget-object v0, p0, Lcom/car/httpserver/CarHttpService;->mHttpServerThread:Lcom/car/httpserver/HttpServerThread;

    invoke-virtual {v0}, Lcom/car/httpserver/HttpServerThread;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v1, p0, Lcom/car/httpserver/CarHttpService;->mHttpServerThread:Lcom/car/httpserver/HttpServerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/httpserver/CarHttpService;->mHttpServerThread:Lcom/car/httpserver/HttpServerThread;

    invoke-virtual {v1}, Lcom/car/httpserver/HttpServerThread;->stopServerThread()V

    :cond_0
    iget-object v1, p0, Lcom/car/httpserver/CarHttpService;->mCarHttpServer:Lcom/car/httpserver/CarHttpServer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/httpserver/CarHttpService;->mCarHttpServer:Lcom/car/httpserver/CarHttpServer;

    invoke-virtual {v1}, Lcom/car/httpserver/CarHttpServer;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/httpserver/CarHttpService;->mCarHttpServer:Lcom/car/httpserver/CarHttpServer;

    invoke-virtual {v1}, Lcom/car/httpserver/CarHttpServer;->stop()V

    :cond_1
    iget-object v1, p0, Lcom/car/httpserver/CarHttpService;->mNetworkBroadcaster:Lcom/car/httpserver/NetworkBroadcaster;

    invoke-virtual {v1}, Lcom/car/httpserver/NetworkBroadcaster;->deinit()V

    iget-boolean v1, p0, Lcom/car/httpserver/CarHttpService;->mEnableWebsocketServer:Z

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/car/httpserver/CarHttpService;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v1}, Lcom/car/httpserver/CarWebSocketServer;->stop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/car/httpserver/CarHttpService;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/car/httpserver/CarHttpService;->mNetworkBroadcaster:Lcom/car/httpserver/NetworkBroadcaster;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/car/httpserver/CarHttpService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/httpserver/NetworkBroadcaster;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public startBroadcasting()V
    .locals 6

    const-string v2, "ro.product.class"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "headless"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "ro.market.area"

    const-string v3, "china"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "china"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/car/httpserver/CarHttpService;->mEnableWebsocketServer:Z

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/car/httpserver/CarHttpService;->mNetworkBroadcaster:Lcom/car/httpserver/NetworkBroadcaster;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/car/httpserver/CarHttpService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "::"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "::"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "websocket"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "::"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "newsetting"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "::"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_1

    const-string v2, "headless"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "::"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string v2, "oversea"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "::settings.remove="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ro.settings.remove"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p0, v2}, Lcom/car/httpserver/NetworkBroadcaster;->init(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "notheadless"

    goto :goto_1

    :cond_2
    const-string v2, "notoversea"

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/car/httpserver/CarHttpService;->mNetworkBroadcaster:Lcom/car/httpserver/NetworkBroadcaster;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/car/httpserver/CarHttpService;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/car/httpserver/NetworkBroadcaster;->init(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public startHttpServer()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, p0}, Lcom/car/httpserver/CarHttpService;->getAvailableIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/car/httpserver/CarHttpService;->mNetworkBroadcaster:Lcom/car/httpserver/NetworkBroadcaster;

    iget-boolean v3, v3, Lcom/car/httpserver/NetworkBroadcaster;->mUsbAccessoryConnectted:Z

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/car/httpserver/CarHttpService;->mCarHttpServer:Lcom/car/httpserver/CarHttpServer;

    if-nez v3, :cond_1

    new-instance v3, Lcom/car/httpserver/CarHttpServer;

    iget v4, p0, Lcom/car/httpserver/CarHttpService;->mHttpPort:I

    invoke-direct {v3, p0, v5, v4}, Lcom/car/httpserver/CarHttpServer;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/car/httpserver/CarHttpService;->mCarHttpServer:Lcom/car/httpserver/CarHttpServer;

    :goto_1
    iget-object v3, p0, Lcom/car/httpserver/CarHttpService;->mCarHttpServer:Lcom/car/httpserver/CarHttpServer;

    iget-object v4, p0, Lcom/car/httpserver/CarHttpService;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v3, v4}, Lcom/car/httpserver/CarHttpServer;->setCameraManagerService(Lcom/car/common/CameraServiceImpl;)V

    iget-object v3, p0, Lcom/car/httpserver/CarHttpService;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    iget-object v4, p0, Lcom/car/httpserver/CarHttpService;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v3, v4}, Lcom/car/httpserver/CarWebSocketServer;->setCameraManagerService(Lcom/car/common/CameraServiceImpl;)V

    :try_start_0
    iget-object v3, p0, Lcom/car/httpserver/CarHttpService;->mCarHttpServer:Lcom/car/httpserver/CarHttpServer;

    invoke-virtual {v3}, Lcom/car/httpserver/CarHttpServer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/car/httpserver/CarHttpService;->mCarHttpServer:Lcom/car/httpserver/CarHttpServer;

    invoke-virtual {v3}, Lcom/car/httpserver/CarHttpServer;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/car/httpserver/CarHttpService;->mCarHttpServer:Lcom/car/httpserver/CarHttpServer;

    invoke-virtual {v3}, Lcom/car/httpserver/CarHttpServer;->stop()V

    iput-object v5, p0, Lcom/car/httpserver/CarHttpService;->mCarHttpServer:Lcom/car/httpserver/CarHttpServer;

    :cond_2
    new-instance v3, Lcom/car/httpserver/CarHttpServer;

    iget v4, p0, Lcom/car/httpserver/CarHttpService;->mHttpPort:I

    invoke-direct {v3, p0, v5, v4}, Lcom/car/httpserver/CarHttpServer;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/car/httpserver/CarHttpService;->mCarHttpServer:Lcom/car/httpserver/CarHttpServer;

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "CarSvc_CarHttpService"

    const-string v4, "IOException:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopBroadcasting()V
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/CarHttpService;->mNetworkBroadcaster:Lcom/car/httpserver/NetworkBroadcaster;

    invoke-virtual {v0}, Lcom/car/httpserver/NetworkBroadcaster;->deinit()V

    return-void
.end method

.method public stopHttpServer()V
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/CarHttpService;->mCarHttpServer:Lcom/car/httpserver/CarHttpServer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/httpserver/CarHttpService;->mCarHttpServer:Lcom/car/httpserver/CarHttpServer;

    invoke-virtual {v0}, Lcom/car/httpserver/CarHttpServer;->stop()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/httpserver/CarHttpService;->mCarHttpServer:Lcom/car/httpserver/CarHttpServer;

    return-void
.end method
