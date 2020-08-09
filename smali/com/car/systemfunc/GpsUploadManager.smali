.class public Lcom/car/systemfunc/GpsUploadManager;
.super Landroid/content/BroadcastReceiver;
.source "GpsUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/systemfunc/GpsUploadManager$GPSHandler;,
        Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;,
        Lcom/car/systemfunc/GpsUploadManager$FragementData;
    }
.end annotation


# static fields
.field public static final GPS_PROP_INFO:Ljava/lang/String; = "sys.current.gpsinfo"

.field private static final MSG_CLOSE_WEBSOCKET:I = 0x3eb

.field private static final MSG_GPS_UPLOAD:I = 0x3ec

.field private static final MSG_OPEN_WEBSOCKET:I = 0x3e8

.field private static final MSG_SEND_BINARY_MSG:I = 0x3e9

.field private static final MSG_SEND_TEXT_MSG:I = 0x3ea

.field public static final WS_STATUS_CLOSE:I = 0x1

.field public static final WS_STATUS_ERR:I = 0x2

.field public static final WS_STATUS_OPEN:I


# instance fields
.field TAG:Ljava/lang/String;

.field private mCloudWebSocketClient:Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;

.field mContext:Landroid/content/Context;

.field mServer:Ljava/lang/String;

.field mSleeping:Z

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v1, "CarSvc_GpsUploadManager"

    iput-object v1, p0, Lcom/car/systemfunc/GpsUploadManager;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/car/systemfunc/GpsUploadManager;->mSleeping:Z

    iput-object p1, p0, Lcom/car/systemfunc/GpsUploadManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/car/systemfunc/GpsUploadManager;->mServer:Ljava/lang/String;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "gps_ws"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/car/systemfunc/GpsUploadManager;->mWorkThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/car/systemfunc/GpsUploadManager;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/car/systemfunc/GpsUploadManager$GPSHandler;

    iget-object v2, p0, Lcom/car/systemfunc/GpsUploadManager;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/car/systemfunc/GpsUploadManager$GPSHandler;-><init>(Lcom/car/systemfunc/GpsUploadManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/car/systemfunc/GpsUploadManager;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/car/systemfunc/GpsUploadManager;->mCloudWebSocketClient:Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.car.gotosleep"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.syswakeup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/systemfunc/GpsUploadManager;->mServer:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/car/systemfunc/GpsUploadManager;->openWebSocket(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/car/systemfunc/GpsUploadManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/GpsUploadManager;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/systemfunc/GpsUploadManager;Ljava/lang/Exception;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/car/systemfunc/GpsUploadManager;->doCloseWebSocket(Ljava/lang/Exception;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/car/systemfunc/GpsUploadManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/systemfunc/GpsUploadManager;->doOpenWebSocket(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/car/systemfunc/GpsUploadManager;Ljava/lang/String;[B)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/car/systemfunc/GpsUploadManager;->doSendWebsocketData(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method private doCloseWebSocket(Ljava/lang/Exception;I)V
    .locals 3

    iget-object v0, p0, Lcom/car/systemfunc/GpsUploadManager;->mCloudWebSocketClient:Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/GpsUploadManager;->mCloudWebSocketClient:Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;

    invoke-virtual {v0}, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/systemfunc/GpsUploadManager;->mCloudWebSocketClient:Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/car/systemfunc/GpsUploadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close websocket, err:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v0, p0, Lcom/car/systemfunc/GpsUploadManager;->mSleeping:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/GpsUploadManager;->mServer:Ljava/lang/String;

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/GpsUploadManager;->openWebSocket(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/car/systemfunc/GpsUploadManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/systemfunc/GpsUploadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close websocket, status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doOpenWebSocket(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/car/systemfunc/GpsUploadManager;->mCloudWebSocketClient:Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/car/systemfunc/GpsUploadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doOpenWebSocket:server = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;-><init>(Lcom/car/systemfunc/GpsUploadManager;Ljava/net/URI;)V

    iput-object v1, p0, Lcom/car/systemfunc/GpsUploadManager;->mCloudWebSocketClient:Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;

    iget-object v1, p0, Lcom/car/systemfunc/GpsUploadManager;->mCloudWebSocketClient:Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;

    invoke-virtual {v1}, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->connect()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/car/systemfunc/GpsUploadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenWebSocket ignored as exists:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/systemfunc/GpsUploadManager;->mCloudWebSocketClient:Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/car/systemfunc/GpsUploadManager;->doCloseWebSocket(Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private doSendWebsocketData(Ljava/lang/String;[B)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/car/systemfunc/GpsUploadManager;->mCloudWebSocketClient:Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/systemfunc/GpsUploadManager;->mCloudWebSocketClient:Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;

    invoke-virtual {v2}, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/car/systemfunc/GpsUploadManager;->mCloudWebSocketClient:Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;

    invoke-virtual {v2, p2}, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->send([B)V

    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    iget-object v2, p0, Lcom/car/systemfunc/GpsUploadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/systemfunc/GpsUploadManager;->mCloudWebSocketClient:Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;

    invoke-virtual {v2, p1}, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    :cond_1
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/car/systemfunc/GpsUploadManager;->doCloseWebSocket(Ljava/lang/Exception;I)V

    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public closeWebSocket()V
    .locals 2

    iget-object v0, p0, Lcom/car/systemfunc/GpsUploadManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method doUploadGps()V
    .locals 22

    const-string v17, "sys.current.gpsinfo"

    const-string v18, ""

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v17, ":"

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    array-length v0, v10

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    const/16 v17, 0x0

    aget-object v17, v10, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v17, 0x1

    aget-object v17, v10, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v17, 0x2

    aget-object v17, v10, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    ushr-int/lit8 v7, v6, 0x1e

    and-int/lit8 v15, v6, 0x7f

    const v17, 0xffff

    and-int v17, v17, v6

    ushr-int/lit8 v5, v17, 0x7

    shl-int/lit8 v17, v6, 0x2

    and-int/lit8 v17, v17, -0x1

    shr-int/lit8 v4, v17, 0x12

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v17, "sn"

    const-string v18, "ro.device.id"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v17, "lat"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v17, "lon"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v17, "altitude"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v17, "angle"

    rsub-int v0, v5, 0x168

    move/from16 v18, v0

    move/from16 v0, v18

    rem-int/lit16 v0, v0, 0x168

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v17, "speed"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v17, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v11, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/GpsUploadManager;->mWorkHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x3ea

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/GpsUploadManager;->mWorkHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/GpsUploadManager;->mWorkHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x3ec

    const-wide/16 v20, 0x2710

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/16 v3, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.car.gotosleep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/car/systemfunc/GpsUploadManager;->mSleeping:Z

    iget-object v1, p0, Lcom/car/systemfunc/GpsUploadManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/car/systemfunc/GpsUploadManager;->closeWebSocket()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.car.syswakeup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/car/systemfunc/GpsUploadManager;->mSleeping:Z

    iget-object v1, p0, Lcom/car/systemfunc/GpsUploadManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/systemfunc/GpsUploadManager;->mServer:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/car/systemfunc/GpsUploadManager;->openWebSocket(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public openWebSocket(Ljava/lang/String;I)V
    .locals 4

    const/16 v2, 0x3e8

    iget-object v1, p0, Lcom/car/systemfunc/GpsUploadManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/systemfunc/GpsUploadManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/car/systemfunc/GpsUploadManager;->mWorkHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
