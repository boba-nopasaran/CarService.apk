.class public Lcom/car/cloud/WebSocketUtil;
.super Ljava/lang/Object;
.source "WebSocketUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/cloud/WebSocketUtil$MsgListener;,
        Lcom/car/cloud/WebSocketUtil$ReplyHandler;,
        Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;,
        Lcom/car/cloud/WebSocketUtil$FragementData;,
        Lcom/car/cloud/WebSocketUtil$CloudHandler;
    }
.end annotation


# static fields
.field public static final ERR:I = -0x1

.field public static final ERR_BAD_REQUEST:I = 0x4

.field public static final ERR_LOST_PARAM:I = 0x2

.field public static final ERR_OK:I = 0x0

.field public static final ERR_PEER_NOT_EXIST:I = 0x5

.field public static final ERR_SERVER_BUSY:I = 0x11

.field public static final ERR_SERVER_REDIRECTION:I = 0x12e

.field public static final ERR_UNMATCH_PROTOCOL:I = 0x1

.field private static final KEY_ACKBOND:Ljava/lang/String; = "ackbond"

.field private static final KEY_BONDLIST:Ljava/lang/String; = "bondlist"

.field private static final KEY_CAMERACHANGE:Ljava/lang/String; = "camerachange"

.field private static final KEY_CMD:Ljava/lang/String; = "cmd"

.field private static final KEY_CURGPS:Ljava/lang/String; = "curgps"

.field private static final KEY_DEVICELOGIN:Ljava/lang/String; = "devicelogin"

.field private static final KEY_GPSHISTORY:Ljava/lang/String; = "gpshis"

.field private static final KEY_GPSLIST:Ljava/lang/String; = "gpslist"

.field private static final KEY_KEEPALIVE:Ljava/lang/String; = "k"

.field private static final KEY_MSGLIST:Ljava/lang/String; = "msglist"

.field private static final KEY_ONLINEPREVIEW:Ljava/lang/String; = "preview"

.field private static final KEY_RELAY:Ljava/lang/String; = "relay"

.field private static final KEY_REMOVEBOND:Ljava/lang/String; = "removebond"

.field private static final KEY_REQUESTBOND:Ljava/lang/String; = "requestbond"

.field private static final KEY_SENDMSG:Ljava/lang/String; = "sendmsg"

.field private static final KEY_UPLOADTOKEN:Ljava/lang/String; = "uploadtoken"

.field private static final KEY_USERLOGIN:Ljava/lang/String; = "userlogin"

.field private static final KEY_VOICESENT:Ljava/lang/String; = "voicesent"

.field private static final MSG_CLOSE_WEBSOCKET:I = 0x3eb

.field private static final MSG_KEEPALIVE_TIMEOUT:I = 0x3fe

.field private static final MSG_KEEY_ALIVE:I = 0x3f2

.field private static final MSG_OPEN_WEBSOCKET:I = 0x3e8

.field private static final MSG_SEND_BINARY_MSG:I = 0x3e9

.field private static final MSG_SEND_TEXT_MSG:I = 0x3ea

.field public static final PREFERENCE_BONDLIST_LASTTIME:Ljava/lang/String; = "bondlist_lasttime"

.field public static final PREFERENCE_LOGIN_FIRMWARE:Ljava/lang/String; = "login_firmware"

.field public static final PREFERENCE_LOGIN_FLAG:Ljava/lang/String; = "login_flag"

.field public static final PREFERENCE_LOGIN_HEADIMGURL:Ljava/lang/String; = "login_headimgurl"

.field public static final PREFERENCE_LOGIN_MANUFACTURER:Ljava/lang/String; = "login_manufacturer"

.field public static final PREFERENCE_LOGIN_MODULETYPE:Ljava/lang/String; = "login_moduletype"

.field public static final PREFERENCE_LOGIN_NICKNAME:Ljava/lang/String; = "login_nickname"

.field public static final PREFERENCE_MSG_INDEX:Ljava/lang/String; = "msgindex"

.field private static final PROTOCOL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CarSvc_WebSocketUtil"

.field public static final TYPE_DEVICE:I = 0x1

.field public static final TYPE_USER:I = 0x2

.field public static final WS_STATUS_CLOSE:I = 0x1

.field public static final WS_STATUS_ERR:I = 0x2

.field public static final WS_STATUS_OPEN:I

.field private static mMe:Ljava/lang/String;

.field private static sInstance:Lcom/car/cloud/WebSocketUtil;


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mBeatHeartTimeout:J

.field private mBondListURI:Landroid/net/Uri;

.field private mCloudWebSocketClient:Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;

.field private mContext:Landroid/content/Context;

.field private mCookie:J

.field private mMsgListURI:Landroid/net/Uri;

.field private final mReplyHandlerList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/car/cloud/WebSocketUtil$ReplyHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field private mUIHandler:Landroid/os/Handler;

.field private mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v1, "WebSocketJNI"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_WebSocketUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t load CarAssistJNI library:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/car/cloud/WebSocketUtil;->mBeatHeartTimeout:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/car/cloud/WebSocketUtil;->mCookie:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mReplyHandlerList:Ljava/util/HashMap;

    sput-object p0, Lcom/car/cloud/WebSocketUtil;->sInstance:Lcom/car/cloud/WebSocketUtil;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/car/cloud/WebSocketUtil;->mMsgListURI:Landroid/net/Uri;

    iput-object p3, p0, Lcom/car/cloud/WebSocketUtil;->mBondListURI:Landroid/net/Uri;

    iput-object p4, p0, Lcom/car/cloud/WebSocketUtil;->mAuthority:Ljava/lang/String;

    iput p5, p0, Lcom/car/cloud/WebSocketUtil;->mType:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "websocket work"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mWorkThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/car/cloud/WebSocketUtil$CloudHandler;

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/car/cloud/WebSocketUtil$CloudHandler;-><init>(Lcom/car/cloud/WebSocketUtil;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mCloudWebSocketClient:Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;

    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    const/high16 v1, 0x1400000

    invoke-static {v0, v1}, Lcom/car/cloud/TraceCacheManager;->create(Landroid/content/Context;I)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/cloud/WebSocketCallbackProxy;

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/car/cloud/WebSocketCallbackProxy;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    return-void
.end method

.method static synthetic access$000(Lcom/car/cloud/WebSocketUtil;)I
    .locals 1

    iget v0, p0, Lcom/car/cloud/WebSocketUtil;->mType:I

    return v0
.end method

.method static synthetic access$100(Lcom/car/cloud/WebSocketUtil;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/car/cloud/WebSocketUtil;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;Lorg/json/JSONObject;[BLcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/car/cloud/WebSocketUtil;->sendWSBinaryMsg(Ljava/lang/String;Lorg/json/JSONObject;[BLcom/car/cloud/WebSocketUtil$ReplyHandler;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/cloud/WebSocketUtil;->doOpenWebSocket(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/car/cloud/WebSocketUtil;Ljava/lang/Exception;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/car/cloud/WebSocketUtil;->doCloseWebSocket(Ljava/lang/Exception;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;[B)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/car/cloud/WebSocketUtil;->doSendWebsocketData(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/car/cloud/WebSocketUtil;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/car/cloud/WebSocketUtil;Lorg/json/JSONObject;[BI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/car/cloud/WebSocketUtil;->doParseMessage(Lorg/json/JSONObject;[BI)V

    return-void
.end method

.method static synthetic access$1800(Lcom/car/cloud/WebSocketUtil;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/cloud/WebSocketUtil;->doParseBinary(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/car/cloud/WebSocketUtil;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mBondListURI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/car/cloud/WebSocketUtil;Ljava/nio/ByteBuffer;)Lorg/json/JSONObject;
    .locals 1

    invoke-direct {p0, p1}, Lcom/car/cloud/WebSocketUtil;->parseBinaryJson(Ljava/nio/ByteBuffer;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/cloud/WebSocketUtil;)Lcom/car/cloud/WebSocketCallbackProxy;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;Ljava/lang/String;ILcom/car/cloud/WebSocketUtil$MsgListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/car/cloud/WebSocketUtil;->doGetUnsentMsg(Ljava/lang/String;Ljava/lang/String;ILcom/car/cloud/WebSocketUtil$MsgListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/car/cloud/WebSocketUtil;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mMsgListURI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;JILjava/lang/String;Lcom/car/cloud/WebSocketUtil$MsgListener;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/car/cloud/WebSocketUtil;->doGetMsg(Ljava/lang/String;JILjava/lang/String;Lcom/car/cloud/WebSocketUtil$MsgListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/car/cloud/WebSocketUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/cloud/WebSocketUtil;->doGetAllMsg()V

    return-void
.end method

.method static synthetic access$800(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/WebSocketUtil$ReplyHandler;ILorg/json/JSONObject;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/car/cloud/WebSocketUtil;->callCloudReply(Lcom/car/cloud/WebSocketUtil$ReplyHandler;ILorg/json/JSONObject;[B)V

    return-void
.end method

.method static synthetic access$900(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/car/cloud/WebSocketUtil;->downloadGPSDataFromUrl(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private callCloudReply(Lcom/car/cloud/WebSocketUtil$ReplyHandler;ILorg/json/JSONObject;[B)V
    .locals 7

    iget-object v6, p0, Lcom/car/cloud/WebSocketUtil;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/cloud/WebSocketUtil$14;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/car/cloud/WebSocketUtil$14;-><init>(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/WebSocketUtil$ReplyHandler;ILorg/json/JSONObject;[B)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private checkReplyHandler(Lorg/json/JSONObject;[BI)Z
    .locals 12

    const-string v7, "f"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "relay"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "relayid"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    const-string v7, "cont"

    const/4 v10, 0x0

    invoke-virtual {p1, v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v10, p0, Lcom/car/cloud/WebSocketUtil;->mReplyHandlerList:Ljava/util/HashMap;

    monitor-enter v10

    const/16 v7, 0x64

    if-ne p3, v7, :cond_0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v7, p0, Lcom/car/cloud/WebSocketUtil;->mReplyHandlerList:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    :goto_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    invoke-direct {p0, v6, p3, p1, p2}, Lcom/car/cloud/WebSocketUtil;->callCloudReply(Lcom/car/cloud/WebSocketUtil$ReplyHandler;ILorg/json/JSONObject;[B)V

    const/4 v7, 0x1

    :goto_1
    return v7

    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/car/cloud/WebSocketUtil;->mReplyHandlerList:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    :cond_1
    const-string v7, "cookie"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    const-wide/16 v2, 0x0

    :try_start_2
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v2

    :goto_2
    iget-object v10, p0, Lcom/car/cloud/WebSocketUtil;->mReplyHandlerList:Ljava/util/HashMap;

    monitor-enter v10

    const/16 v7, 0x64

    if-ne v7, p3, :cond_2

    :try_start_3
    iget-object v7, p0, Lcom/car/cloud/WebSocketUtil;->mReplyHandlerList:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    :goto_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_3

    invoke-direct {p0, v6, p3, p1, p2}, Lcom/car/cloud/WebSocketUtil;->callCloudReply(Lcom/car/cloud/WebSocketUtil$ReplyHandler;ILorg/json/JSONObject;[B)V

    const/4 v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v7, "CarSvc_WebSocketUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cookie parse error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :try_start_4
    iget-object v7, p0, Lcom/car/cloud/WebSocketUtil;->mReplyHandlerList:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    goto :goto_3

    :catchall_1
    move-exception v7

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 6

    new-instance v0, Lcom/car/cloud/WebSocketUtil;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/car/cloud/WebSocketUtil;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;I)V

    sput-object v0, Lcom/car/cloud/WebSocketUtil;->sInstance:Lcom/car/cloud/WebSocketUtil;

    return-void
.end method

.method public static destory()V
    .locals 1

    sget-object v0, Lcom/car/cloud/WebSocketUtil;->sInstance:Lcom/car/cloud/WebSocketUtil;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/car/cloud/WebSocketUtil;->sInstance:Lcom/car/cloud/WebSocketUtil;

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    sget-object v0, Lcom/car/cloud/WebSocketUtil;->sInstance:Lcom/car/cloud/WebSocketUtil;

    invoke-virtual {v0}, Lcom/car/cloud/WebSocketUtil;->closeWebSocket()V

    return-void
.end method

.method private doCloseWebSocket(Ljava/lang/Exception;I)V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/car/cloud/WebSocketUtil;->mReplyHandlerList:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil;->mReplyHandlerList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    const-string v3, "CarSvc_WebSocketUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "socket closed, notify reply failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v1, v3, v5, v6}, Lcom/car/cloud/WebSocketUtil;->callCloudReply(Lcom/car/cloud/WebSocketUtil$ReplyHandler;ILorg/json/JSONObject;[B)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil;->mReplyHandlerList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil;->mCloudWebSocketClient:Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil;->mCloudWebSocketClient:Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;

    invoke-virtual {v3}, Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;->close()V

    iput-object v7, p0, Lcom/car/cloud/WebSocketUtil;->mCloudWebSocketClient:Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;

    if-eqz p1, :cond_2

    const-string v3, "CarSvc_WebSocketUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close websocket, err:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual {v3, p2}, Lcom/car/cloud/WebSocketCallbackProxy;->onWebSocketStatus(I)V

    :cond_1
    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    const/16 v4, 0x3f2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    const/16 v4, 0x3fe

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_2
    const-string v3, "CarSvc_WebSocketUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close websocket, status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private doGetAllMsg()V
    .locals 12

    iget-object v7, p0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/car/cloud/WebSocketUtil;->mMsgListURI:Landroid/net/Uri;

    sget-object v9, Lcom/car/cloud/WebSocketUtil;->mMe:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/car/cloud/CloudMsgProviderUtils;->getAllMsg(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v7, p0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual {v7, v1}, Lcom/car/cloud/WebSocketCallbackProxy;->onAllMsgList(Ljava/util/ArrayList;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/car/cloud/Type$MsgInfo;

    iget-wide v8, v7, Lcom/car/cloud/Type$MsgInfo;->msgIndex:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/car/cloud/Type$MsgInfo;

    iget-wide v2, v7, Lcom/car/cloud/Type$MsgInfo;->msgIndex:J

    :cond_0
    iget-object v7, p0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "msgindex"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v7, "CarSvc_WebSocketUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lastIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", msgIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v7, v2, v4

    if-eqz v7, :cond_1

    invoke-direct {p0, v2, v3}, Lcom/car/cloud/WebSocketUtil;->doGetMsglist(J)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private doGetMsg(Ljava/lang/String;JILjava/lang/String;Lcom/car/cloud/WebSocketUtil$MsgListener;)V
    .locals 12

    sget-object v2, Lcom/car/cloud/WebSocketUtil;->mMe:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil;->mMsgListURI:Landroid/net/Uri;

    sget-object v4, Lcom/car/cloud/WebSocketUtil;->mMe:Ljava/lang/String;

    move-object v5, p1

    move-wide v6, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v9}, Lcom/car/cloud/CloudMsgProviderUtils;->getMsgList(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz p6, :cond_0

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil;->mUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/car/cloud/WebSocketUtil$13;

    move-object/from16 v0, p6

    invoke-direct {v3, p0, v0, v10}, Lcom/car/cloud/WebSocketUtil$13;-><init>(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/WebSocketUtil$MsgListener;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private doGetMsglist(J)V
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "msgidx"

    invoke-virtual {v1, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "p"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "msglist"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private doGetUnsentMsg(Ljava/lang/String;Ljava/lang/String;ILcom/car/cloud/WebSocketUtil$MsgListener;)V
    .locals 7

    sget-object v0, Lcom/car/cloud/WebSocketUtil;->mMe:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil;->mMsgListURI:Landroid/net/Uri;

    sget-object v2, Lcom/car/cloud/WebSocketUtil;->mMe:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/car/cloud/CloudMsgProviderUtils;->getUnsentMsg(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/cloud/WebSocketUtil$12;

    invoke-direct {v1, p0, p4, v6}, Lcom/car/cloud/WebSocketUtil$12;-><init>(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/WebSocketUtil$MsgListener;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private doOpenWebSocket(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil;->mCloudWebSocketClient:Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;

    if-nez v1, :cond_0

    const-string v1, "CarSvc_WebSocketUtil"

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

    new-instance v1, Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;-><init>(Lcom/car/cloud/WebSocketUtil;Ljava/net/URI;)V

    iput-object v1, p0, Lcom/car/cloud/WebSocketUtil;->mCloudWebSocketClient:Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil;->mCloudWebSocketClient:Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;

    invoke-virtual {v1}, Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;->connect()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "CarSvc_WebSocketUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenWebSocket ignored as exists:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil;->mCloudWebSocketClient:Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;

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

    invoke-direct {p0, v0, v1}, Lcom/car/cloud/WebSocketUtil;->doCloseWebSocket(Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method private doParseBinary(Ljava/nio/ByteBuffer;)V
    .locals 5

    const-string v2, "CarSvc_WebSocketUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doParseBinary:length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/car/cloud/WebSocketUtil;->parseBinaryJson(Ljava/nio/ByteBuffer;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v0, v2, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_1
    const/16 v2, 0x64

    invoke-direct {p0, v1, v0, v2}, Lcom/car/cloud/WebSocketUtil;->doParseMessage(Lorg/json/JSONObject;[BI)V

    goto :goto_0
.end method

.method private doParseMessage(Lorg/json/JSONObject;[BI)V
    .locals 12

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/car/cloud/WebSocketUtil;->checkReplyHandler(Lorg/json/JSONObject;[BI)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v7, 0x64

    if-ne p3, v7, :cond_0

    const-string v7, "f"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "cmd"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, p1}, Lcom/car/cloud/WebSocketUtil;->handleCmd(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v7, "CarSvc_WebSocketUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doParseMessage:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v7, "relay"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, p1}, Lcom/car/cloud/WebSocketUtil;->handleRelay(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const-string v7, "devicelogin"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0, p1}, Lcom/car/cloud/WebSocketUtil;->handleDeviceLogin(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    const-string v7, "userlogin"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0, p1}, Lcom/car/cloud/WebSocketUtil;->handleUserLogin(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_5
    const-string v7, "k"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0}, Lcom/car/cloud/WebSocketUtil;->resetKeepAlive()V

    iget-object v7, p0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    const/16 v8, 0x3fe

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_6
    const-string v7, "bondlist"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {p0, p1}, Lcom/car/cloud/WebSocketUtil;->handleBondList(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_7
    const-string v7, "msglist"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-direct {p0, p1}, Lcom/car/cloud/WebSocketUtil;->handleMsgList(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_8
    const-string v7, "ackbond"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "removebond"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "gpshis"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "ret"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v7, "day"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual {v7, v1, v5}, Lcom/car/cloud/WebSocketCallbackProxy;->onGPSHistoryFileReceived(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    const-string v7, "curgps"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v0, Lcom/car/cloud/Type$GPSData;

    invoke-direct {v0}, Lcom/car/cloud/Type$GPSData;-><init>()V

    const-string v7, "sn"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "tm"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/car/cloud/Type$GPSData;->time:I

    const-string v7, "lat"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-double v8, v7

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    iput-wide v8, v0, Lcom/car/cloud/Type$GPSData;->latitude:D

    const-string v7, "lon"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-double v8, v7

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    iput-wide v8, v0, Lcom/car/cloud/Type$GPSData;->longitude:D

    const-string v7, "ex"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/high16 v7, -0x40000000    # -2.0f

    and-int/2addr v7, v3

    const/high16 v8, -0x40000000    # -2.0f

    if-ne v7, v8, :cond_a

    sget v7, Lcom/car/cloud/Type;->COORD_TYPE_GPS:I

    iput v7, v0, Lcom/car/cloud/Type$GPSData;->coordType:I

    shr-int/lit8 v7, v3, 0x10

    iput v7, v0, Lcom/car/cloud/Type$GPSData;->altitude:I

    const v7, 0xffff

    and-int/2addr v7, v3

    ushr-int/lit8 v7, v7, 0x7

    iput v7, v0, Lcom/car/cloud/Type$GPSData;->angle:I

    and-int/lit8 v7, v3, 0x7f

    iput v7, v0, Lcom/car/cloud/Type$GPSData;->speed:I

    :goto_1
    const-string v7, "CarSvc_WebSocketUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GPSData = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual {v7, v6, v0}, Lcom/car/cloud/WebSocketCallbackProxy;->onCurrentGPSPos(Ljava/lang/String;Lcom/car/cloud/Type$GPSData;)V

    goto/16 :goto_0

    :cond_a
    ushr-int/lit8 v7, v3, 0x1e

    iput v7, v0, Lcom/car/cloud/Type$GPSData;->coordType:I

    shl-int/lit8 v7, v3, 0x2

    and-int/lit8 v7, v7, -0x1

    shr-int/lit8 v7, v7, 0x12

    iput v7, v0, Lcom/car/cloud/Type$GPSData;->altitude:I

    const v7, 0xffff

    and-int/2addr v7, v3

    ushr-int/lit8 v7, v7, 0x7

    iput v7, v0, Lcom/car/cloud/Type$GPSData;->angle:I

    and-int/lit8 v7, v3, 0x7f

    iput v7, v0, Lcom/car/cloud/Type$GPSData;->speed:I

    goto :goto_1

    :cond_b
    const-string v7, "CarSvc_WebSocketUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recv unknown messsage:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private doSendWebsocketData(Ljava/lang/String;[B)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil;->mCloudWebSocketClient:Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil;->mCloudWebSocketClient:Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;

    invoke-virtual {v2}, Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil;->mCloudWebSocketClient:Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;

    invoke-virtual {v2, p2}, Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;->send([B)V

    :goto_0
    invoke-direct {p0}, Lcom/car/cloud/WebSocketUtil;->resetKeepAlive()V

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil;->mCloudWebSocketClient:Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;

    invoke-virtual {v2, p1}, Lcom/car/cloud/WebSocketUtil$CloudWebSocketClient;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    :cond_1
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/car/cloud/WebSocketUtil;->doCloseWebSocket(Ljava/lang/Exception;I)V

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private downloadGPSDataFromUrl(Ljava/lang/String;)[B
    .locals 15

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const-string v11, "CarSvc_WebSocketUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "code = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v11, 0xc8

    if-eq v2, v11, :cond_4

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    :try_start_2
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    move-object v11, v12

    :cond_3
    :goto_2
    return-object v11

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_3
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    const/4 v3, 0x0

    const/16 v11, 0x400

    new-array v1, v11, [B

    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    :goto_3
    const/4 v11, -0x1

    if-eq v6, v11, :cond_5

    const/4 v11, 0x0

    invoke-virtual {v7, v1, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v3, v6

    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    const-string v11, "CarSvc_WebSocketUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "total = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "CarSvc_WebSocketUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "count = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v8, v3, :cond_8

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v11

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    if-eqz v5, :cond_7

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_7
    :goto_4
    if-eqz v7, :cond_3

    :try_start_5
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_8
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    if-eqz v5, :cond_a

    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_a
    :goto_5
    if-eqz v7, :cond_b

    :try_start_7
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_b
    :goto_6
    move-object v11, v12

    goto/16 :goto_2

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v4

    :try_start_8
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    if-eqz v5, :cond_d

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :cond_d
    :goto_7
    if-eqz v7, :cond_b

    :try_start_a
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_6

    :catch_7
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_8
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_9
    move-exception v4

    :try_start_b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v10, :cond_e

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    if-eqz v5, :cond_f

    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    :cond_f
    :goto_8
    if-eqz v7, :cond_b

    :try_start_d
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_6

    :catch_a
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_b
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_c
    move-exception v4

    :try_start_e
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    if-eqz v5, :cond_11

    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    :cond_11
    :goto_9
    if-eqz v7, :cond_b

    :try_start_10
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    goto :goto_6

    :catch_d
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_e
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catchall_0
    move-exception v11

    if-eqz v10, :cond_12

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    if-eqz v5, :cond_13

    :try_start_11
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    :cond_13
    :goto_a
    if-eqz v7, :cond_14

    :try_start_12
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    :cond_14
    :goto_b
    throw v11

    :catch_f
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_10
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b
.end method

.method private getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move-object v6, v3

    :goto_0
    return-object v6

    :cond_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v2, v7, p2

    div-int v1, v4, p3

    const/4 v0, 0x1

    if-ge v2, v1, :cond_3

    move v0, v2

    :goto_1
    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v8, 0x2

    invoke-static {v3, p2, p3, v8}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v3, :cond_2

    if-eq v3, v6, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    :cond_2
    const-string v8, "CarSvc_WebSocketUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getImageThumbnail:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " return "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static getInstance()Lcom/car/cloud/WebSocketUtil;
    .locals 1

    sget-object v0, Lcom/car/cloud/WebSocketUtil;->sInstance:Lcom/car/cloud/WebSocketUtil;

    return-object v0
.end method

.method private handleBondList(Lorg/json/JSONObject;)V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/cloud/WebSocketUtil;->mType:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    const-string v27, "ret"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1

    const-string v27, "ret"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    const-string v27, "list"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    const-wide/16 v22, 0x0

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_5

    invoke-virtual {v14, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-static {v13}, Lcom/car/cloud/Type$UserInfo;->parseUserInfo(Lorg/json/JSONObject;)Lcom/car/cloud/Type$UserInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/car/cloud/Type$UserInfo;->status:I

    move/from16 v27, v0

    if-nez v27, :cond_4

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/car/cloud/Type$UserInfo;->bondupdatetime:J

    move-wide/from16 v28, v0

    cmp-long v27, v22, v28

    if-gez v27, :cond_3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/car/cloud/Type$UserInfo;->bondupdatetime:J

    move-wide/from16 v22, v0

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, v20

    iget v0, v0, Lcom/car/cloud/Type$UserInfo;->status:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const-wide/16 v28, 0x0

    cmp-long v27, v22, v28

    if-lez v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v27

    const-string v28, "bondlist_lasttime"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v22

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_3
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-gtz v27, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mBondListURI:Landroid/net/Uri;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/car/cloud/CloudMsgProviderUtils;->getAllUserList(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_8

    const-string v26, ""

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/car/cloud/Type$UserInfo;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/cloud/Type$UserInfo;->nickName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v27

    const-string v28, "bondlist_lasttime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :cond_7
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_8

    new-instance v12, Landroid/content/Intent;

    const-string v27, "com.car.usersdel"

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v27, "usersdel"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mBondListURI:Landroid/net/Uri;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/car/cloud/CloudMsgProviderUtils;->delAllUserList(Landroid/content/Context;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mMsgListURI:Landroid/net/Uri;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/car/cloud/CloudMsgProviderUtils;->delAllMsg(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/car/cloud/WebSocketCallbackProxy;->onUserBondlist(Ljava/util/ArrayList;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_0

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/car/cloud/Type$UserInfo;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/car/cloud/Type$UserInfo;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/car/cloud/Type$UserInfo;->bondupdatetime:J

    move-wide/from16 v28, v0

    iget-wide v0, v15, Lcom/car/cloud/Type$UserInfo;->bondupdatetime:J

    move-wide/from16 v30, v0

    cmp-long v27, v28, v30

    if-lez v27, :cond_a

    move-object/from16 v15, v20

    goto :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mBondListURI:Landroid/net/Uri;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/car/cloud/CloudMsgProviderUtils;->getAllUserList(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/car/cloud/Type$UserInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/car/cloud/Type$UserInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mBondListURI:Landroid/net/Uri;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/car/cloud/CloudMsgProviderUtils;->insertUser(Landroid/content/Context;Landroid/net/Uri;Lcom/car/cloud/Type$UserInfo;)Landroid/net/Uri;

    move-result-object v24

    const-string v27, "CarSvc_WebSocketUtil"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "insert user "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", uri = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_d
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mBondListURI:Landroid/net/Uri;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/car/cloud/CloudMsgProviderUtils;->updateUser(Landroid/content/Context;Landroid/net/Uri;Lcom/car/cloud/Type$UserInfo;)I

    const-string v27, "CarSvc_WebSocketUtil"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "user "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " already inserted to database, update it"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_9

    const-string v26, ""

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v27, "CarSvc_WebSocketUtil"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " has deleted"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/car/cloud/Type$UserInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/cloud/Type$UserInfo;->nickName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mBondListURI:Landroid/net/Uri;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/car/cloud/CloudMsgProviderUtils;->delUserList(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mMsgListURI:Landroid/net/Uri;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/car/cloud/CloudMsgProviderUtils;->delMsgs(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_11
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_9

    new-instance v12, Landroid/content/Intent;

    const-string v27, "com.car.usersdel"

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v27, "usersdel"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/car/cloud/WebSocketCallbackProxy;->onBondRequest(Lcom/car/cloud/Type$UserInfo;)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/cloud/WebSocketUtil;->mType:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    const-string v27, "ret"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v27, "list"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    const-wide/16 v22, 0x0

    const/4 v9, 0x0

    :goto_a
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_16

    invoke-virtual {v14, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-static {v13}, Lcom/car/cloud/Type$DeviceInfo;->parseDeviceInfo(Lorg/json/JSONObject;)Lcom/car/cloud/Type$DeviceInfo;

    move-result-object v8

    iget v0, v8, Lcom/car/cloud/Type$DeviceInfo;->status:I

    move/from16 v27, v0

    if-nez v27, :cond_14

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-wide v0, v8, Lcom/car/cloud/Type$DeviceInfo;->bondupdatetime:J

    move-wide/from16 v28, v0

    cmp-long v27, v22, v28

    if-gez v27, :cond_15

    iget-wide v0, v8, Lcom/car/cloud/Type$DeviceInfo;->bondupdatetime:J

    move-wide/from16 v22, v0

    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_16
    const-wide/16 v28, 0x0

    cmp-long v27, v22, v28

    if-lez v27, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v27

    const-string v28, "bondlist_lasttime"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v22

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-gtz v27, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mBondListURI:Landroid/net/Uri;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/car/cloud/CloudMsgProviderUtils;->delAllDeviceList(Landroid/content/Context;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mMsgListURI:Landroid/net/Uri;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/car/cloud/CloudMsgProviderUtils;->delAllMsg(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mBondListURI:Landroid/net/Uri;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/car/cloud/CloudMsgProviderUtils;->getAllDeviceList(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/cloud/Type$DeviceInfo;

    iget-object v0, v8, Lcom/car/cloud/Type$DeviceInfo;->serial:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v27

    const-string v28, "bondlist_lasttime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_b

    :cond_19
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/cloud/Type$DeviceInfo;

    iget-object v0, v8, Lcom/car/cloud/Type$DeviceInfo;->serial:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mBondListURI:Landroid/net/Uri;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Lcom/car/cloud/CloudMsgProviderUtils;->insertDevice(Landroid/content/Context;Landroid/net/Uri;Lcom/car/cloud/Type$DeviceInfo;)Landroid/net/Uri;

    move-result-object v24

    const-string v27, "CarSvc_WebSocketUtil"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "insert device "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v8, Lcom/car/cloud/Type$DeviceInfo;->serial:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", uri = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_1a
    iget-object v0, v8, Lcom/car/cloud/Type$DeviceInfo;->serial:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mBondListURI:Landroid/net/Uri;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Lcom/car/cloud/CloudMsgProviderUtils;->updatetDevice(Landroid/content/Context;Landroid/net/Uri;Lcom/car/cloud/Type$DeviceInfo;)I

    const-string v27, "CarSvc_WebSocketUtil"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "device "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v8, Lcom/car/cloud/Type$DeviceInfo;->serial:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " already inserted to database, update it"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_1b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_1c

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mBondListURI:Landroid/net/Uri;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/car/cloud/CloudMsgProviderUtils;->delDeviceList(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mMsgListURI:Landroid/net/Uri;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/car/cloud/CloudMsgProviderUtils;->delMsgs(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_e

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lcom/car/cloud/WebSocketCallbackProxy;->onDeviceBondlist(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private handleCmd(Lorg/json/JSONObject;)V
    .locals 9

    const-string v1, "cmd"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pickup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/car/cloud/WebSocketUtil;->mType:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_0

    const-string v1, "lng"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v1, "lat"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual/range {v1 .. v6}, Lcom/car/cloud/WebSocketCallbackProxy;->onPickupInfo(DDLjava/lang/String;)V

    const-string v1, "gpsi"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual {v1, v7}, Lcom/car/cloud/WebSocketCallbackProxy;->onGpsIntervalSet(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "gpsi"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual {v1, v7}, Lcom/car/cloud/WebSocketCallbackProxy;->onGpsIntervalSet(I)V

    goto :goto_0

    :cond_2
    const-string v1, "logout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual {v1}, Lcom/car/cloud/WebSocketCallbackProxy;->onLogout()V

    goto :goto_0
.end method

.method private handleDeviceLogin(Lorg/json/JSONObject;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    iget v6, p0, Lcom/car/cloud/WebSocketUtil;->mType:I

    if-ne v6, v11, :cond_4

    invoke-static {p1}, Lcom/car/cloud/Type$LoginInfo;->parseLoginInfo(Lorg/json/JSONObject;)Lcom/car/cloud/Type$LoginInfo;

    move-result-object v0

    iget-object v6, p0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual {v6, v0}, Lcom/car/cloud/WebSocketCallbackProxy;->onLonginStatus(Lcom/car/cloud/Type$LoginInfo;)V

    iget v6, v0, Lcom/car/cloud/Type$LoginInfo;->keepalive:I

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "bondlist_lasttime"

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-wide v6, v0, Lcom/car/cloud/Type$LoginInfo;->bondupdatetime:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    invoke-virtual {p0, v10}, Lcom/car/cloud/WebSocketUtil;->getBondList(Z)V

    :goto_0
    iget-wide v6, v0, Lcom/car/cloud/Type$LoginInfo;->msgindex:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const-string v6, "msgindex"

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iget-wide v8, v0, Lcom/car/cloud/Type$LoginInfo;->msgindex:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "msgindex"

    iget-wide v8, v0, Lcom/car/cloud/Type$LoginInfo;->msgindex:J

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget v6, v0, Lcom/car/cloud/Type$LoginInfo;->ret:I

    if-nez v6, :cond_1

    iget v6, v0, Lcom/car/cloud/Type$LoginInfo;->keepalive:I

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/car/cloud/WebSocketUtil;->mBeatHeartTimeout:J

    const-string v6, "CarSvc_WebSocketUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mBeatHeartTimeout = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/car/cloud/WebSocketUtil;->mBeatHeartTimeout:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/car/cloud/WebSocketUtil;->resetKeepAlive()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v11}, Lcom/car/cloud/WebSocketUtil;->getBondList(Z)V

    goto :goto_0

    :cond_3
    const-string v6, "CarSvc_WebSocketUtil"

    const-string v7, "Received suspend reply"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v6, "sn"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "online"

    invoke-virtual {p1, v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual {v6, v4, v1}, Lcom/car/cloud/WebSocketCallbackProxy;->onDeviceStatus(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private handleMsgList(Lorg/json/JSONObject;)V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v30

    const-wide/16 v22, 0x0

    const/16 v29, 0x0

    const-string v5, "ret"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "ret"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    :cond_0
    if-nez v29, :cond_e

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "list"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    const/16 v26, 0x0

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_b

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    sget-object v5, Lcom/car/cloud/WebSocketUtil;->mMe:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/car/cloud/Type$MsgInfo;->parseMsgInfo(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/car/cloud/Type$MsgInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/car/cloud/Type$MsgInfo;->msgIndex:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/car/cloud/Type$MsgInfo;->msgIndex:J

    move-wide/from16 v32, v0

    cmp-long v5, v22, v32

    if-gez v5, :cond_1

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/car/cloud/Type$MsgInfo;->msgIndex:J

    move-wide/from16 v22, v0

    :cond_1
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/car/cloud/Type$MsgInfo;->msgType:Ljava/lang/String;

    const-string v32, "alarm"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v25, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "time"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "time"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/car/cloud/Type$MsgInfo;->sendTime:J

    :cond_2
    const-string v5, "CarSvc_WebSocketUtil"

    invoke-virtual/range {v21 .. v21}, Lcom/car/cloud/Type$MsgInfo;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/car/cloud/Type$MsgInfo;->msgType:Ljava/lang/String;

    const-string v32, "pickup"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/car/cloud/Type$MsgInfo;->msgType:Ljava/lang/String;

    const-string v32, "appointment"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/cloud/WebSocketUtil;->mType:I

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v5, v0, :cond_2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/cloud/Type$MsgInfo;->msgType:Ljava/lang/String;

    move-object/from16 v26, v0

    new-instance v25, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "lng"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v5, "lat"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v5, "addr"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "gpsi"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/car/cloud/WebSocketCallbackProxy;->onGpsIntervalSet(I)V

    goto :goto_1

    :cond_6
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/car/cloud/Type$MsgInfo;->msgType:Ljava/lang/String;

    const-string v32, "notice"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    const-string v32, "{"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    const-string v32, "}"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v25, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "confirm"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v27

    const-string v5, "text"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    move-object/from16 v32, v0

    const-string v5, "text"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const/4 v5, 0x1

    move/from16 v0, v27

    if-ne v0, v5, :cond_7

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5}, Lcom/car/cloud/WebSocketCallbackProxy;->onNotice(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Lcom/car/cloud/WebSocketCallbackProxy;->onNotice(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/car/cloud/Type$MsgInfo;->msgType:Ljava/lang/String;

    const-string v32, "setprop"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    const-string v32, "{"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    const-string v32, "}"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v25, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "key"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v5, "val"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v16, Landroid/content/Intent;

    const-string v5, "com.car.setprop"

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "key"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "val"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_a
    const-string v5, "CarSvc_WebSocketUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "setprop Json format error:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    if-eqz v26, :cond_c

    const-string v5, "pickup"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual/range {v5 .. v10}, Lcom/car/cloud/WebSocketCallbackProxy;->onPickupInfo(DDLjava/lang/String;)V

    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mMsgListURI:Landroid/net/Uri;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mAuthority:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-static {v5, v0, v1, v2}, Lcom/car/cloud/CloudMsgProviderUtils;->batchInsertMsgList(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    new-instance v28, Lorg/json/JSONObject;

    invoke-direct/range {v28 .. v28}, Lorg/json/JSONObject;-><init>()V

    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14, v15}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v5, "list"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "msglist"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v32

    invoke-direct {v0, v5, v1, v2}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J

    :cond_d
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_e

    const-string v5, "ret"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_e
    const-wide/16 v32, 0x0

    cmp-long v5, v22, v32

    if-lez v5, :cond_f

    const-string v5, "msgindex"

    const-wide/16 v32, 0x0

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    cmp-long v5, v12, v22

    if-eqz v5, :cond_f

    invoke-interface/range {v30 .. v30}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v32, "msgindex"

    move-object/from16 v0, v32

    move-wide/from16 v1, v22

    invoke-interface {v5, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_f
    return-void

    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual/range {v5 .. v10}, Lcom/car/cloud/WebSocketCallbackProxy;->onAppointment(DDLjava/lang/String;)V

    goto :goto_3

    :cond_11
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/car/cloud/Type$MsgInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/car/cloud/WebSocketCallbackProxy;->onReceiveMsg(Lcom/car/cloud/Type$MsgInfo;)V

    goto :goto_4
.end method

.method private handleRelay(Lorg/json/JSONObject;)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v2, "relayid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/car/cloud/WebSocketUtil;->mType:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_7

    const-string v2, "ret"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cmd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v2, "peer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    const-string v2, "CarSvc_WebSocketUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown relay command:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with NULL peer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "tp"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "camid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v2, "passback"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual/range {v2 .. v7}, Lcom/car/cloud/WebSocketCallbackProxy;->onTakingPhoto(Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "vr"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "camid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v2, "length"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const-string v2, "passback"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    move-object v9, v3

    move-wide v10, v4

    move v12, v6

    move-object v14, v7

    invoke-virtual/range {v8 .. v14}, Lcom/car/cloud/WebSocketCallbackProxy;->onRecordingVideo(Ljava/lang/String;JIILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "gpslist"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v8, "get today gps data"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v28, Lorg/json/JSONObject;

    invoke-direct/range {v28 .. v28}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "cmd"

    const-string v8, "gpslist"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "peer"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "relayid"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "relay"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/car/cloud/WebSocketCallbackProxy;->onRequestTodayGPS(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "preview"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "camid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v2, "peerurl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    const-string v2, "CarSvc_WebSocketUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get living command: union_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " camid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " peerurl="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    move-object v15, v3

    move-wide/from16 v16, v4

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Lcom/car/cloud/WebSocketCallbackProxy;->onOnlinePreviewRequest(Ljava/lang/String;JLjava/lang/String;II)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "voicesent"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "ep"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v2, "bk"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v2, "objkey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    invoke-virtual/range {v20 .. v26}, Lcom/car/cloud/WebSocketCallbackProxy;->onVoiceReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "livekeep"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual {v2}, Lcom/car/cloud/WebSocketCallbackProxy;->onLiveHeartbeat()V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/car/cloud/WebSocketUtil;->mType:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_0

    const-string v2, "cmd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v2, "CarSvc_WebSocketUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown relay command:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleUserLogin(Lorg/json/JSONObject;)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    iget v7, p0, Lcom/car/cloud/WebSocketUtil;->mType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    invoke-static {p1}, Lcom/car/cloud/Type$LoginInfo;->parseLoginInfo(Lorg/json/JSONObject;)Lcom/car/cloud/Type$LoginInfo;

    move-result-object v0

    iget-object v7, p0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual {v7, v0}, Lcom/car/cloud/WebSocketCallbackProxy;->onLonginStatus(Lcom/car/cloud/Type$LoginInfo;)V

    iget-object v7, p0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "bondlist_lasttime"

    invoke-interface {v4, v7, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-wide v8, v0, Lcom/car/cloud/Type$LoginInfo;->bondupdatetime:J

    cmp-long v7, v2, v8

    if-gez v7, :cond_2

    invoke-virtual {p0, v6}, Lcom/car/cloud/WebSocketUtil;->getBondList(Z)V

    :goto_0
    iget-wide v6, v0, Lcom/car/cloud/Type$LoginInfo;->msgindex:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_0

    const-string v6, "msgindex"

    invoke-interface {v4, v6, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iget-wide v8, v0, Lcom/car/cloud/Type$LoginInfo;->msgindex:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "msgindex"

    iget-wide v8, v0, Lcom/car/cloud/Type$LoginInfo;->msgindex:J

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget v6, v0, Lcom/car/cloud/Type$LoginInfo;->ret:I

    if-nez v6, :cond_1

    iget v6, v0, Lcom/car/cloud/Type$LoginInfo;->keepalive:I

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/car/cloud/WebSocketUtil;->mBeatHeartTimeout:J

    const-string v6, "CarSvc_WebSocketUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mBeatHeartTimeout = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/car/cloud/WebSocketUtil;->mBeatHeartTimeout:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/car/cloud/WebSocketUtil;->resetKeepAlive()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/car/cloud/WebSocketUtil;->getBondList(Z)V

    goto :goto_0

    :cond_3
    const-string v7, "uid"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "online"

    invoke-virtual {p1, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v1, :cond_4

    :goto_2
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual {v6, v5, v1}, Lcom/car/cloud/WebSocketCallbackProxy;->onUserStatus(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    move v1, v6

    goto :goto_2
.end method

.method private parseBinaryJson(Ljava/nio/ByteBuffer;)Lorg/json/JSONObject;
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    int-to-char v0, v5

    if-nez v0, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    const-string v5, "CarSvc_WebSocketUtil"

    const-string v6, "parseBinaryJson no null-terminted"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v4

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "CarSvc_WebSocketUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doParseBinary:head = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v5, "CarSvc_WebSocketUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doParseBinary err:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "CarSvc_WebSocketUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not json, unknown head:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private resetKeepAlive()V
    .locals 4

    const/16 v1, 0x3f2

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/car/cloud/WebSocketUtil;->mBeatHeartTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private sendWSBinaryMsg(Ljava/lang/String;Lorg/json/JSONObject;[BLcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    .locals 16

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    array-length v4, v0

    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/car/cloud/WebSocketUtil;->mReplyHandlerList:Ljava/util/HashMap;

    monitor-enter v10

    :try_start_0
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/car/cloud/WebSocketUtil;->mCookie:J

    const-wide/16 v14, 0x1

    add-long v6, v12, v14

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/car/cloud/WebSocketUtil;->mCookie:J

    if-eqz p4, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/car/cloud/WebSocketUtil;->mReplyHandlerList:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v9, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "oss"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    const-string v9, "CarSvc_WebSocketUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Send binary:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",datalen="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-lez v4, :cond_2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    const/16 v10, 0x3e9

    invoke-virtual {v9, v10, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-wide v6

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_4
    const-string v5, ""

    goto/16 :goto_1

    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method

.method private sendWSBinaryMsg([B)J
    .locals 4

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    array-length v1, p1

    int-to-long v2, v1

    return-wide v2
.end method

.method private sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    .locals 12

    const-wide/16 v10, 0x1

    iget-object v7, p0, Lcom/car/cloud/WebSocketUtil;->mReplyHandlerList:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    iget-wide v8, p0, Lcom/car/cloud/WebSocketUtil;->mCookie:J

    add-long v0, v8, v10

    iput-wide v0, p0, Lcom/car/cloud/WebSocketUtil;->mCookie:J

    if-eqz p3, :cond_0

    const-string v6, "relay"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/car/cloud/WebSocketUtil;->mReplyHandlerList:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v9, Lcom/car/cloud/WebSocketUtil$11;

    invoke-direct {v9, p0, p3}, Lcom/car/cloud/WebSocketUtil$11;-><init>(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-wide v8, p0, Lcom/car/cloud/WebSocketUtil;->mCookie:J

    add-long v4, v8, v10

    iput-wide v4, p0, Lcom/car/cloud/WebSocketUtil;->mCookie:J

    const-string v6, "relayid"

    invoke-virtual {p2, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/car/cloud/WebSocketUtil;->mReplyHandlerList:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "CarSvc_WebSocketUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    const/16 v7, 0x3ea

    invoke-virtual {v6, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v6, p0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-wide v0

    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/car/cloud/WebSocketUtil;->mReplyHandlerList:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    :cond_2
    const-string v6, ""

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private workthreadRun(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public ackBond(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "uid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "status"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "p"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ackbond"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public closeWebSocket()V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public delMsg(J)V
    .locals 3

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil;->mMsgListURI:Landroid/net/Uri;

    invoke-static {v0, v1, p1, p2}, Lcom/car/cloud/CloudMsgProviderUtils;->delOneMsg(Landroid/content/Context;Landroid/net/Uri;J)V

    return-void
.end method

.method public deviceLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/car/cloud/WebSocketUtil;->mMe:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/car/cloud/WebSocketUtil;->nativeGetHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "login_moduletype"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "login_manufacturer"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v14, "login_firmware"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v14, "login_flag"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v14, "ro.product.class"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "headless"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    or-int/lit8 v9, v9, 0x2

    :cond_0
    const-string v14, "ro.market.area"

    const-string v15, "china"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "china"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    or-int/lit8 v9, v9, 0x4

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    const-string v15, "com.kaikaibao.android"

    invoke-static {v14, v15}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    or-int/lit8 v9, v9, 0x10

    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v5, 0x0

    :goto_0
    const-string v14, "msgindex"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v14, "sn"

    invoke-virtual {v4, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v5, :cond_3

    const-string v14, "module"

    move-object/from16 v0, p2

    invoke-virtual {v4, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "manufact"

    move-object/from16 v0, p1

    invoke-virtual {v4, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "fw"

    move-object/from16 v0, p3

    invoke-virtual {v4, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "flag"

    invoke-virtual {v4, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    const-string v14, "msgidx"

    invoke-virtual {v4, v14, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v14, "h"

    invoke-virtual {v4, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "p"

    const/16 v15, 0x64

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "devicelogin"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4, v15}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v14, "CarSvc_WebSocketUtil"

    const-string v15, "Exception:"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public deviceSuspend(ZLcom/car/cloud/WebSocketUtil$ReplyHandler;)V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "suspend"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "devicelogin"

    invoke-direct {p0, v2, v1, p2}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getAllMsglist()V
    .locals 1

    new-instance v0, Lcom/car/cloud/WebSocketUtil$6;

    invoke-direct {v0, p0}, Lcom/car/cloud/WebSocketUtil$6;-><init>(Lcom/car/cloud/WebSocketUtil;)V

    invoke-direct {p0, v0}, Lcom/car/cloud/WebSocketUtil;->workthreadRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBondList(Z)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v2, Lcom/car/cloud/WebSocketUtil$1;

    invoke-direct {v2, p0}, Lcom/car/cloud/WebSocketUtil$1;-><init>(Lcom/car/cloud/WebSocketUtil;)V

    invoke-direct {p0, v2}, Lcom/car/cloud/WebSocketUtil;->workthreadRun(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "bondlist"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getChatMsgList(Ljava/lang/String;JILcom/car/cloud/WebSocketUtil$MsgListener;)V
    .locals 8

    new-instance v1, Lcom/car/cloud/WebSocketUtil$5;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/car/cloud/WebSocketUtil$5;-><init>(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;JILcom/car/cloud/WebSocketUtil$MsgListener;)V

    invoke-direct {p0, v1}, Lcom/car/cloud/WebSocketUtil;->workthreadRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getGpsData(Ljava/lang/String;Ljava/lang/String;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)V
    .locals 5

    iget v2, p0, Lcom/car/cloud/WebSocketUtil;->mType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string v2, "CarSvc_WebSocketUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGPSData is used for user only:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/car/cloud/WebSocketUtil;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "peer"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cmd"

    const-string v3, "gpslist"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "arg1"

    const-string v3, "today"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "relay"

    invoke-direct {p0, v2, v1, p3}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string v2, ""

    if-ne p2, v2, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "sn"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "day"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "gpslist"

    invoke-direct {p0, v2, v1, p3}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/car/cloud/WebSocketUtil$9;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/car/cloud/WebSocketUtil$9;-><init>(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;Ljava/lang/String;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    invoke-direct {p0, v2}, Lcom/car/cloud/WebSocketUtil;->workthreadRun(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getMsg(J)Lcom/car/cloud/Type$MsgInfo;
    .locals 3

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil;->mMsgListURI:Landroid/net/Uri;

    invoke-static {v0, v1, p1, p2}, Lcom/car/cloud/CloudMsgProviderUtils;->getOneMsg(Landroid/content/Context;Landroid/net/Uri;J)Lcom/car/cloud/Type$MsgInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMsgList(Ljava/lang/String;JILjava/lang/String;Lcom/car/cloud/WebSocketUtil$MsgListener;)V
    .locals 10

    new-instance v1, Lcom/car/cloud/WebSocketUtil$4;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/car/cloud/WebSocketUtil$4;-><init>(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;JILjava/lang/String;Lcom/car/cloud/WebSocketUtil$MsgListener;)V

    invoke-direct {p0, v1}, Lcom/car/cloud/WebSocketUtil;->workthreadRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getUnsentMsgList(Ljava/lang/String;Ljava/lang/String;ILcom/car/cloud/WebSocketUtil$MsgListener;)V
    .locals 6

    new-instance v0, Lcom/car/cloud/WebSocketUtil$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/car/cloud/WebSocketUtil$2;-><init>(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;Ljava/lang/String;ILcom/car/cloud/WebSocketUtil$MsgListener;)V

    invoke-direct {p0, v0}, Lcom/car/cloud/WebSocketUtil;->workthreadRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getUploadToken(Ljava/lang/String;Ljava/lang/String;ILcom/car/cloud/WebSocketUtil$ReplyHandler;)V
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "file"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "idx"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "uploadtoken"

    invoke-direct {p0, v2, v1, p4}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public native nativeGetHash(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public notifyCameraChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "peer"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cmd"

    const-string v3, "camerachange"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cl"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "relay"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/car/cloud/WebSocketUtil;->sendWSBinaryMsg(Ljava/lang/String;Lorg/json/JSONObject;[BLcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v3, "notifyUserPreviewing err:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyUserCapturing(Ljava/lang/String;JLjava/lang/String;ILcom/car/cloud/WebSocketUtil$ReplyHandler;)V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "peer"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cmd"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "relayid"

    invoke-virtual {v1, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "capd"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cont"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    const-string v2, "prog"

    invoke-virtual {v1, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "relay"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, p6}, Lcom/car/cloud/WebSocketUtil;->sendWSBinaryMsg(Ljava/lang/String;Lorg/json/JSONObject;[BLcom/car/cloud/WebSocketUtil$ReplyHandler;)J

    :goto_1
    return-void

    :cond_0
    const-string v2, "cont"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v3, "notifyUserCapturing err:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public notifyUserCapturing(ZLjava/lang/String;JLcom/car/cloud/WebSocketUtil$ReplyHandler;)V
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "peer"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v2, "cmd"

    const-string v3, "vring"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v2, "relayid"

    invoke-virtual {v1, v2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "cont"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "relay"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, p5}, Lcom/car/cloud/WebSocketUtil;->sendWSBinaryMsg(Ljava/lang/String;Lorg/json/JSONObject;[BLcom/car/cloud/WebSocketUtil$ReplyHandler;)J

    :goto_1
    return-void

    :cond_0
    const-string v2, "cmd"

    const-string v3, "tping"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v3, "notifyUserCapturing err:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public notifyUserPreviewing(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/car/cloud/WebSocketUtil$ReplyHandler;)V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "peer"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cmd"

    const-string v3, "preview"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "relayid"

    invoke-virtual {v1, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "ep"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bk"

    invoke-virtual {v1, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sf"

    invoke-virtual {v1, v2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cl"

    invoke-virtual {v1, v2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "camid"

    invoke-virtual {v1, v2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ret"

    invoke-virtual {v1, v2, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "relay"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, p10}, Lcom/car/cloud/WebSocketUtil;->sendWSBinaryMsg(Ljava/lang/String;Lorg/json/JSONObject;[BLcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v3, "notifyUserPreviewing err:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyUserVoiceReceived(Ljava/lang/String;JLcom/car/cloud/WebSocketUtil$ReplyHandler;)V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "peer"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cmd"

    const-string v3, "voicesent"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "relayid"

    invoke-virtual {v1, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "ret"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "relay"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, p4}, Lcom/car/cloud/WebSocketUtil;->sendWSBinaryMsg(Ljava/lang/String;Lorg/json/JSONObject;[BLcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v3, "notifyUserPreviewing err:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public openWebSocket(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public recordVideo(Ljava/lang/String;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "peer"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cmd"

    const-string v3, "vr"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "wakeup"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "relay"

    invoke-direct {p0, v2, v1, p2}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerCallback(Lcom/car/cloud/WebSocketCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual {v0, p1}, Lcom/car/cloud/WebSocketCallbackProxy;->registerCallback(Lcom/car/cloud/WebSocketCallback;)V

    return-void
.end method

.method public removeBond(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget v2, p0, Lcom/car/cloud/WebSocketUtil;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "uid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v2, "removebond"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J

    :goto_1
    return-void

    :cond_0
    const-string v2, "sn"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public requestBond(Ljava/lang/String;Ljava/lang/String;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "sn"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uname"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "requestbond"

    invoke-direct {p0, v2, v1, p3}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGPSPos(Ljava/lang/String;I)V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "cmd"

    const-string v3, "subgps"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sn"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "on"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "cmd"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestPickup(Ljava/lang/String;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "cmd"

    const-string v3, "pickup"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sn"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cmd"

    invoke-direct {p0, v2, v1, p2}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendAppointmnetMsg(Lcom/car/cloud/Type$MsgInfo;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v2, Lcom/car/cloud/WebSocketUtil;->mMe:Ljava/lang/String;

    iput-object v2, p1, Lcom/car/cloud/Type$MsgInfo;->from:Ljava/lang/String;

    iget v2, p0, Lcom/car/cloud/WebSocketUtil;->mType:I

    if-ne v2, v3, :cond_1

    const-string v2, "uid"

    iget-object v3, p1, Lcom/car/cloud/Type$MsgInfo;->to:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    :goto_0
    const-string v2, "msgtp"

    iget-object v3, p1, Lcom/car/cloud/Type$MsgInfo;->msgType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cont"

    iget-object v3, p1, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "persist"

    iget v3, p1, Lcom/car/cloud/Type$MsgInfo;->persist:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v2, 0x1

    iput v2, p1, Lcom/car/cloud/Type$MsgInfo;->sentDone:I

    const-string v2, "sendmsg"

    new-instance v3, Lcom/car/cloud/WebSocketUtil$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/car/cloud/WebSocketUtil$7;-><init>(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/Type$MsgInfo;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    invoke-direct {p0, v2, v1, v3}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/car/cloud/Type$MsgInfo;->responseId:J

    iget-wide v2, p1, Lcom/car/cloud/Type$MsgInfo;->responseId:J

    :goto_1
    return-wide v2

    :cond_1
    iget v2, p0, Lcom/car/cloud/WebSocketUtil;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v2, "sn"

    iget-object v3, p1, Lcom/car/cloud/Type$MsgInfo;->to:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method public sendKeepAliveNow()V
    .locals 2

    const/16 v1, 0x3f2

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendPhoto2User(Ljava/lang/String;Ljava/lang/String;JLcom/car/cloud/WebSocketUtil$ReplyHandler;)V
    .locals 9

    new-instance v1, Lcom/car/cloud/WebSocketUtil$10;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/car/cloud/WebSocketUtil$10;-><init>(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;JLjava/lang/String;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    invoke-direct {p0, v1}, Lcom/car/cloud/WebSocketUtil;->workthreadRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendRawBinary([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/cloud/WebSocketUtil;->sendWSBinaryMsg([B)J

    return-void
.end method

.method public sendTextMsg(Lcom/car/cloud/Type$MsgInfo;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    .locals 12

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lcom/car/cloud/WebSocketUtil;->mMe:Ljava/lang/String;

    iput-object v1, p1, Lcom/car/cloud/Type$MsgInfo;->from:Ljava/lang/String;

    iget v1, p0, Lcom/car/cloud/WebSocketUtil;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "uid"

    iget-object v2, p1, Lcom/car/cloud/Type$MsgInfo;->to:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    :goto_0
    const-string v1, "msgtp"

    iget-object v2, p1, Lcom/car/cloud/Type$MsgInfo;->msgType:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cont"

    iget-object v2, p1, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "persist"

    iget v2, p1, Lcom/car/cloud/Type$MsgInfo;->persist:I

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-wide v2, p1, Lcom/car/cloud/Type$MsgInfo;->msgIndex:J

    const-wide/16 v10, -0x2

    cmp-long v1, v2, v10

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput v1, p1, Lcom/car/cloud/Type$MsgInfo;->sentDone:I

    :goto_1
    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil;->mMsgListURI:Landroid/net/Uri;

    invoke-static {v1, v2, p1}, Lcom/car/cloud/CloudMsgProviderUtils;->insertMsg(Landroid/content/Context;Landroid/net/Uri;Lcom/car/cloud/Type$MsgInfo;)Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_3

    const-wide/16 v2, -0x1

    :goto_2
    return-wide v2

    :cond_1
    iget v1, p0, Lcom/car/cloud/WebSocketUtil;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "sn"

    iget-object v2, p1, Lcom/car/cloud/Type$MsgInfo;->to:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_WebSocketUtil"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v2, -0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput v1, p1, Lcom/car/cloud/Type$MsgInfo;->sentDone:I

    goto :goto_1

    :cond_3
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    iget-wide v2, p1, Lcom/car/cloud/Type$MsgInfo;->msgIndex:J

    const-wide/16 v10, -0x2

    cmp-long v1, v2, v10

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v7, v2}, Lcom/car/cloud/WebSocketUtil;->callCloudReply(Lcom/car/cloud/WebSocketUtil$ReplyHandler;ILorg/json/JSONObject;[B)V

    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_5
    const-string v9, "sendmsg"

    new-instance v1, Lcom/car/cloud/WebSocketUtil$8;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/car/cloud/WebSocketUtil$8;-><init>(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/Type$MsgInfo;JLcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    invoke-direct {p0, v9, v7, v1}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/car/cloud/Type$MsgInfo;->responseId:J

    iget-wide v2, p1, Lcom/car/cloud/Type$MsgInfo;->responseId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public takePhoto(Ljava/lang/String;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "peer"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cmd"

    const-string v3, "tp"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "wakeup"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "relay"

    invoke-direct {p0, v2, v1, p2}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_WebSocketUtil"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/car/cloud/WebSocketCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil;->mWebSocketCallback:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-virtual {v0, p1}, Lcom/car/cloud/WebSocketCallbackProxy;->unregisterCallback(Lcom/car/cloud/WebSocketCallback;)V

    return-void
.end method

.method public updateMsgContent(JLjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/car/cloud/WebSocketUtil$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/car/cloud/WebSocketUtil$3;-><init>(Lcom/car/cloud/WebSocketUtil;JLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/car/cloud/WebSocketUtil;->workthreadRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public userLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    sput-object p1, Lcom/car/cloud/WebSocketUtil;->mMe:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/car/cloud/WebSocketUtil;->nativeGetHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/car/cloud/WebSocketUtil;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "login_nickname"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "login_headimgurl"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v3, 0x0

    :goto_0
    const-string v9, "msgindex"

    const-wide/16 v10, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v9, "uid"

    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    const-string v9, "nickname"

    invoke-virtual {v2, v9, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "img"

    invoke-virtual {v2, v9, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v9, "msgidx"

    invoke-virtual {v2, v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v9, "h"

    invoke-virtual {v2, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "p"

    const/16 v10, 0x64

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "userlogin"

    const/4 v10, 0x0

    invoke-direct {p0, v9, v2, v10}, Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v9, "CarSvc_WebSocketUtil"

    const-string v10, "Exception:"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
