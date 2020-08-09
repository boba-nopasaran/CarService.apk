.class public Lcom/car/httpserver/CarWebSocketServer;
.super Lorg/java_websocket/server/WebSocketServer;
.source "CarWebSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;
    }
.end annotation


# static fields
.field private static final ACTION_RECORDING_START:Ljava/lang/String; = "com.car.videorecorder.recording_start"

.field private static final ACTION_RECORDING_STOP:Ljava/lang/String; = "com.car.videorecorder.recording_stop"

.field private static final SYNC_FILE_PATHS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CarSvc_CarWebSocketServer"


# instance fields
.field private final mBrightnessObserver:Landroid/database/ContentObserver;

.field private mBrightnessVal:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraManager:Lcom/car/common/CameraServiceImpl;

.field private mContext:Landroid/content/Context;

.field private mFileScanner:Lcom/car/httpserver/FileScanner;

.field mHandler:Landroid/os/Handler;

.field private mLevel:I

.field private mListClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation
.end field

.field mLock:Ljava/lang/Object;

.field private mMyFileObservers:[Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;

.field private mNewFilesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/ContentObserver;

.field private mStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mVoicePromptEnabled:Z

.field private mVolume:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/car/common/CarPath;->getCapturePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/car/httpserver/CarWebSocketServer;->SYNC_FILE_PATHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/InetSocketAddress;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/car/httpserver/CarWebSocketServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    iput-boolean v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mVoicePromptEnabled:Z

    iput v2, p0, Lcom/car/httpserver/CarWebSocketServer;->mBrightnessVal:I

    iput v2, p0, Lcom/car/httpserver/CarWebSocketServer;->mVolume:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/car/httpserver/CarWebSocketServer;->mListClients:Ljava/util/List;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/car/httpserver/CarWebSocketServer;->mNewFilesList:Ljava/util/HashMap;

    sget-object v3, Lcom/car/httpserver/CarWebSocketServer;->SYNC_FILE_PATHS:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;

    iput-object v3, p0, Lcom/car/httpserver/CarWebSocketServer;->mMyFileObservers:[Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;

    new-instance v3, Lcom/car/httpserver/CarWebSocketServer$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/car/httpserver/CarWebSocketServer$1;-><init>(Lcom/car/httpserver/CarWebSocketServer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/car/httpserver/CarWebSocketServer;->mObserver:Landroid/database/ContentObserver;

    new-instance v3, Lcom/car/httpserver/CarWebSocketServer$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/car/httpserver/CarWebSocketServer$2;-><init>(Lcom/car/httpserver/CarWebSocketServer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/car/httpserver/CarWebSocketServer;->mBrightnessObserver:Landroid/database/ContentObserver;

    new-instance v3, Lcom/car/httpserver/CarWebSocketServer$3;

    invoke-direct {v3, p0}, Lcom/car/httpserver/CarWebSocketServer$3;-><init>(Lcom/car/httpserver/CarWebSocketServer;)V

    iput-object v3, p0, Lcom/car/httpserver/CarWebSocketServer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/car/httpserver/CarWebSocketServer$4;

    invoke-direct {v3, p0}, Lcom/car/httpserver/CarWebSocketServer$4;-><init>(Lcom/car/httpserver/CarWebSocketServer;)V

    iput-object v3, p0, Lcom/car/httpserver/CarWebSocketServer;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/car/httpserver/CarWebSocketServer;->mLock:Ljava/lang/Object;

    new-instance v3, Lcom/car/httpserver/CarWebSocketServer$5;

    invoke-direct {v3, p0}, Lcom/car/httpserver/CarWebSocketServer$5;-><init>(Lcom/car/httpserver/CarWebSocketServer;)V

    iput-object v3, p0, Lcom/car/httpserver/CarWebSocketServer;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/httpserver/Util;->getTTSMute(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mVoicePromptEnabled:Z

    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/httpserver/Util;->getWakeupSensity(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mLevel:I

    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/httpserver/Util;->getVoumleCurrent(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mVolume:I

    new-instance v1, Lcom/car/httpserver/FileScanner;

    invoke-direct {v1}, Lcom/car/httpserver/FileScanner;-><init>()V

    iput-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mFileScanner:Lcom/car/httpserver/FileScanner;

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/car/httpserver/CarWebSocketServer;->SYNC_FILE_PATHS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mMyFileObservers:[Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;

    new-instance v2, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;

    sget-object v3, Lcom/car/httpserver/CarWebSocketServer;->SYNC_FILE_PATHS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, p0, v3}, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;-><init>(Lcom/car/httpserver/CarWebSocketServer;Ljava/lang/String;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/car/httpserver/SelfTest;->create(Lcom/car/httpserver/CarWebSocketServer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/car/httpserver/CarWebSocketServer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/httpserver/CarWebSocketServer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mVoicePromptEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/car/httpserver/CarWebSocketServer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/car/httpserver/CarWebSocketServer;->mVoicePromptEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/car/httpserver/CarWebSocketServer;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mListClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/httpserver/CarWebSocketServer;)I
    .locals 1

    iget v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mLevel:I

    return v0
.end method

.method static synthetic access$302(Lcom/car/httpserver/CarWebSocketServer;I)I
    .locals 0

    iput p1, p0, Lcom/car/httpserver/CarWebSocketServer;->mLevel:I

    return p1
.end method

.method static synthetic access$400(Lcom/car/httpserver/CarWebSocketServer;)I
    .locals 1

    iget v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mBrightnessVal:I

    return v0
.end method

.method static synthetic access$402(Lcom/car/httpserver/CarWebSocketServer;I)I
    .locals 0

    iput p1, p0, Lcom/car/httpserver/CarWebSocketServer;->mBrightnessVal:I

    return p1
.end method

.method static synthetic access$500(Lcom/car/httpserver/CarWebSocketServer;)I
    .locals 1

    iget v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mVolume:I

    return v0
.end method

.method static synthetic access$502(Lcom/car/httpserver/CarWebSocketServer;I)I
    .locals 0

    iput p1, p0, Lcom/car/httpserver/CarWebSocketServer;->mVolume:I

    return p1
.end method

.method static synthetic access$600(Lcom/car/httpserver/CarWebSocketServer;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mNewFilesList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/car/httpserver/CarWebSocketServer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/httpserver/CarWebSocketServer;->notifyNewFile(Ljava/lang/String;)V

    return-void
.end method

.method private doParseGenericSetting(Ljava/lang/String;I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "system_volume"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/car/common/ProviderUtils;->setVolume(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "screen_brightness"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/car/common/ProviderUtils;->setBrightnessPercent(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const-string v2, "autosleeptime"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/car/common/ProviderUtils;->setAutoSleepTime(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const-string v2, "gsensor_sensitive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/car/common/ProviderUtils;->setGsensorSensitive(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    const-string v2, "gsensor_enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    if-ne p2, v0, :cond_5

    :goto_1
    invoke-static {v2, v0}, Lcom/car/common/ProviderUtils;->setGsensorEnbale(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    const-string v2, "video_lock_enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    if-ne p2, v0, :cond_7

    :goto_2
    invoke-static {v2, v0}, Lcom/car/common/ProviderUtils;->setVideoLockEnbale(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    const-string v2, "gps_enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    if-ne p2, v0, :cond_9

    :goto_3
    invoke-static {v2, v0}, Lcom/car/common/ProviderUtils;->setGPSEnable(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_3

    :cond_a
    const-string v2, "edog_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/car/common/ProviderUtils;->setEDogMode(Landroid/content/Context;I)V

    goto :goto_0

    :cond_b
    const-string v2, "bt_keyboard_enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    if-ne p2, v0, :cond_c

    :goto_4
    invoke-static {v2, v0}, Lcom/car/common/ProviderUtils;->setBtKeyboardEnable(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_c
    move v0, v1

    goto :goto_4

    :cond_d
    const-string v0, "slow_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/car/common/ProviderUtils;->setDvrSlowTime(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method private doProcessSetAction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const-string v1, "Setting.Status.Volume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mVolume:I

    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/car/httpserver/CarWebSocketServer;->mVolume:I

    invoke-static {v1, v2}, Lcom/car/httpserver/Util;->setVoumle(Landroid/content/Context;I)V

    const-string v1, "OK"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Setting.Status.Brightness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mBrightnessVal:I

    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/car/httpserver/CarWebSocketServer;->mBrightnessVal:I

    invoke-static {v1, v2}, Lcom/car/httpserver/Util;->setBrightness(Landroid/content/Context;I)V

    const-string v1, "OK"

    goto :goto_0

    :cond_1
    const-string v1, "Camera.Recording.Start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v1}, Lcom/car/common/CameraServiceImpl;->startRecording()V

    const-string v1, "OK"

    goto :goto_0

    :cond_2
    const-string v1, "FAIL"

    goto :goto_0

    :cond_3
    const-string v1, "Camera.Recording.Stop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v1}, Lcom/car/common/CameraServiceImpl;->stopRecording()V

    const-string v1, "OK"

    goto :goto_0

    :cond_4
    const-string v1, "FAIL"

    goto :goto_0

    :cond_5
    const-string v1, "Camera.Take.Photo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v1, v2}, Lcom/car/common/CameraServiceImpl;->takeFrontPicture(Ljava/lang/String;)Ljava/lang/String;

    :cond_8
    if-eqz v0, :cond_9

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v1, v2}, Lcom/car/common/CameraServiceImpl;->takeBackPicture(Ljava/lang/String;)Ljava/lang/String;

    :cond_a
    const-string v1, "OK"

    goto :goto_0

    :cond_b
    const-string v1, "FAIL"

    goto :goto_0

    :cond_c
    const-string v1, "Setting.Status.Wake.Up"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mLevel:I

    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/car/httpserver/CarWebSocketServer;->mLevel:I

    invoke-static {v1, v2}, Lcom/car/httpserver/Util;->setWakeupSensity(Landroid/content/Context;I)V

    const-string v1, "OK"

    goto/16 :goto_0

    :cond_d
    const-string v1, "Setting.Status.Voice.Prompt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mVoicePromptEnabled:Z

    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/car/httpserver/CarWebSocketServer;->mVoicePromptEnabled:Z

    invoke-static {v1, v2}, Lcom/car/httpserver/Util;->setTTSMute(Landroid/content/Context;Z)V

    const-string v1, "OK"

    goto/16 :goto_0

    :cond_e
    const-string v1, "FAIL"

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private notifyNewFile(Ljava/lang/String;)V
    .locals 12

    const-string v9, "CarSvc_CarWebSocketServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyNewFils : path = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/car/httpserver/Config;->VIDEO_PATH:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_1
    new-instance v4, Lcom/car/httpserver/FileInfo;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v4, v9, v10}, Lcom/car/httpserver/FileInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/car/httpserver/FileScanner;->fileSizeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/car/httpserver/FileInfo;->size:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    iput-wide v10, v4, Lcom/car/httpserver/FileInfo;->lsize:J

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    iput-wide v10, v4, Lcom/car/httpserver/FileInfo;->modifytime:J

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/car/httpserver/FileInfo;->isDirectory:Z

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/car/httpserver/FileInfo;->path:Ljava/lang/String;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "action"

    const-string v10, "sync_file"

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "path"

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/car/httpserver/Config;->VIDEO_PATH:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "type"

    const-string v10, "new"

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "name"

    iget-object v10, v4, Lcom/car/httpserver/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "path"

    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "size"

    iget-wide v10, v4, Lcom/car/httpserver/FileInfo;->lsize:J

    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v9, "dir"

    iget-boolean v10, v4, Lcom/car/httpserver/FileInfo;->isDirectory:Z

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v9, "time"

    iget-wide v10, v4, Lcom/car/httpserver/FileInfo;->modifytime:J

    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v9, "list"

    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "CarSvc_CarWebSocketServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "jso.toString() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/car/httpserver/CarWebSocketServer;->mListClients:Ljava/util/List;

    monitor-enter v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v9, p0, Lcom/car/httpserver/CarWebSocketServer;->mListClients:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/WebSocket;

    invoke-static {}, Lcom/car/httpserver/HttpRequestManager;->instance()Lcom/car/httpserver/HttpRequestManager;

    move-result-object v9

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v1, v11}, Lcom/car/httpserver/HttpRequestManager;->requestWebSocket(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v9
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private processDeleteAction(Lorg/java_websocket/WebSocket;Lorg/json/JSONArray;)V
    .locals 10

    invoke-static {p2}, Lcom/car/httpserver/FileScanner;->readJSONArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/car/httpserver/FileInfo;

    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/car/httpserver/Config;->VIDEO_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/car/httpserver/FileInfo;->getFullPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "CarSvc_CarWebSocketServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file.getAbsolutePath() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v1}, Lcom/car/httpserver/Util;->delFile(Ljava/io/File;)Z

    move-result v6

    :cond_1
    :goto_0
    if-nez v6, :cond_0

    :cond_2
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "action"

    const-string v8, "delete"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v6, :cond_4

    const-string v7, "result"

    const-string v8, "OK"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v7, "CarSvc_CarWebSocketServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "jso.toString() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/httpserver/HttpRequestManager;->instance()Lcom/car/httpserver/HttpRequestManager;

    move-result-object v7

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/car/httpserver/HttpRequestManager;->requestWebSocket(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_3
    invoke-static {v1}, Lcom/car/httpserver/Util;->delDir(Ljava/io/File;)Z

    move-result v6

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v7, "result"

    const-string v8, "FAIL"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private processDirAction(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 10

    const-string v7, "CarSvc_CarWebSocketServer"

    const-string v8, "processDirAction"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "CarSvc_CarWebSocketServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer;->mFileScanner:Lcom/car/httpserver/FileScanner;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/car/httpserver/Config;->VIDEO_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/car/httpserver/FileScanner;->startScanner(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "CarSvc_CarWebSocketServer"

    const-string v8, "==================="

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "CarSvc_CarWebSocketServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "list size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/httpserver/FileInfo;

    const-string v7, "CarSvc_CarWebSocketServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/car/httpserver/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v7, "CarSvc_CarWebSocketServer"

    const-string v8, "==================="

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "action"

    const-string v8, "dir"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "path"

    invoke-virtual {v5, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/httpserver/FileInfo;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "name"

    iget-object v8, v2, Lcom/car/httpserver/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "path"

    iget-object v8, v2, Lcom/car/httpserver/FileInfo;->path:Ljava/lang/String;

    sget-object v9, Lcom/car/httpserver/Config;->VIDEO_PATH:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "size"

    iget-wide v8, v2, Lcom/car/httpserver/FileInfo;->lsize:J

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "dir"

    iget-boolean v8, v2, Lcom/car/httpserver/FileInfo;->isDirectory:Z

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v7, "time"

    iget-wide v8, v2, Lcom/car/httpserver/FileInfo;->modifytime:J

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "sub"

    iget v8, v2, Lcom/car/httpserver/FileInfo;->sub:I

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void

    :cond_1
    :try_start_1
    const-string v7, "list"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "CarSvc_CarWebSocketServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "jso.toString() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/httpserver/HttpRequestManager;->instance()Lcom/car/httpserver/HttpRequestManager;

    move-result-object v7

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/car/httpserver/HttpRequestManager;->requestWebSocket(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private processDvrSet(Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "autosave_time"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/car/common/ProviderUtils;->setAutoSaveTime(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const-string v7, "mute_record"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/car/common/ProviderUtils;->setMuteRecord(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_4
    const-string v7, "front_quality"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/car/common/ProviderUtils;->setFrontCameraQuality(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v7, "gps_watermark"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/car/common/ProviderUtils;->setGPSWaterMark(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_6
    const-string v7, "restart"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/car/systemfunc/SettingsNotifier;->getInstance()Lcom/car/systemfunc/SettingsNotifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/car/systemfunc/SettingsNotifier;->restartDvr()V

    goto :goto_0

    :cond_7
    const-string v7, "sys_dag_socol"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    const-string v8, "com.daguerre.cd.vehicleMatics"

    invoke-static {v7, v8}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/car/common/ProviderUtils;->setBaiduEnable(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/car/common/ProviderUtils;->setEnableSocol(Landroid/content/Context;Z)V

    goto/16 :goto_0
.end method

.method private processGenericSet(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/car/httpserver/CarWebSocketServer;->doParseGenericSetting(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private processGetActions(Lorg/java_websocket/WebSocket;Lorg/json/JSONArray;)V
    .locals 17

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v14, "action"

    const-string v15, "get"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v4, v14, :cond_10

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v14, "CarDvr.Status.Device"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "CarDvr.Status.Device"

    const-string v15, "CarDvr"

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v14, "CarDvr.Status.Serialno"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "CarDvr.Status.Serialno"

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v14, "CarDvr.Status.Ability"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_5

    :cond_4
    const-string v14, "CarDvr.Status.Ability"

    const-string v15, "volume,brightness"

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_5
    const-string v14, "CarDvr.Status.Ability"

    const-string v15, "volume,brightness,voice"

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_6
    const-string v14, "Setting.Status.Volume"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/httpserver/Util;->getVoumleMin(Landroid/content/Context;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/httpserver/Util;->getVoumleMax(Landroid/content/Context;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/httpserver/Util;->getVoumleCurrent(Landroid/content/Context;)I

    move-result v1

    const-string v14, "Setting.Status.Volume"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "min:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",max:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",current:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    :cond_7
    const-string v14, "Setting.Status.Brightness"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/httpserver/Util;->getBrightnessMin(Landroid/content/Context;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/httpserver/Util;->getBrightnessMax(Landroid/content/Context;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/httpserver/Util;->getBrightnessCurrent(Landroid/content/Context;)I

    move-result v1

    const-string v14, "Setting.Status.Brightness"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "min:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",max:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",current:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    :cond_8
    const-string v14, "Camera.Recording.Status"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v14}, Lcom/car/common/CameraServiceImpl;->isRecording()Z

    move-result v11

    :cond_9
    if-eqz v11, :cond_a

    const-string v14, "Camera.Recording.Status"

    const-string v15, "true"

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    :cond_a
    const-string v14, "Camera.Recording.Status"

    const-string v15, "false"

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    :cond_b
    const-string v14, "Setting.Status.Wake.Up"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/httpserver/Util;->getWakeupSensity(Landroid/content/Context;)I

    move-result v12

    const-string v14, "Setting.Status.Wake.Up"

    invoke-virtual {v5, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_2

    :cond_c
    const-string v14, "Setting.Status.Voice.Prompt"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/httpserver/Util;->getTTSMute(Landroid/content/Context;)I

    move-result v14

    if-eqz v14, :cond_d

    const/4 v3, 0x1

    :goto_3
    const-string v14, "Setting.Status.Voice.Prompt"

    invoke-virtual {v5, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_2

    :cond_d
    const/4 v3, 0x0

    goto :goto_3

    :cond_e
    const-string v14, "Dvr.Sdcard.Status.Mount"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-static {}, Lcom/car/httpserver/Util;->isDVRSDcardmount()Z

    move-result v10

    const-string v14, "Dvr.Sdcard.Status.Mount"

    invoke-virtual {v5, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_2

    :cond_f
    const-string v14, "Carcontrol.Status.Version"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/httpserver/Util;->getCarControlVersion(Landroid/content/Context;)I

    move-result v13

    const-string v14, "Carcontrol.Status.Version"

    invoke-virtual {v5, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_2

    :cond_10
    const-string v14, "list"

    invoke-virtual {v6, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "CarSvc_CarWebSocketServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "jso.toString() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/httpserver/HttpRequestManager;->instance()Lcom/car/httpserver/HttpRequestManager;

    move-result-object v14

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lcom/car/httpserver/HttpRequestManager;->requestWebSocket(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private processNaviAction(Lorg/java_websocket/WebSocket;DDLjava/lang/String;)V
    .locals 10

    const/4 v8, 0x0

    :try_start_0
    const-string v1, "CarSvc_CarWebSocketServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====Start navi service, lat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",lon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/car/voice/cmd/Navi;->startNavi(Landroid/content/Context;DDLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    :goto_0
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    const-string v2, "navi"

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v8, :cond_0

    const-string v1, "result"

    const-string v2, "OK"

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v1, "CarSvc_CarWebSocketServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jso.toString() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/httpserver/HttpRequestManager;->instance()Lcom/car/httpserver/HttpRequestManager;

    move-result-object v1

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/car/httpserver/HttpRequestManager;->requestWebSocket(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_CarWebSocketServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_2
    const-string v1, "result"

    const-string v2, "FAIL"

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private processSetActions(Lorg/java_websocket/WebSocket;Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "action"

    const-string v7, "set"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/car/httpserver/CarWebSocketServer;->doProcessSetAction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const-string v6, "list"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "CarSvc_CarWebSocketServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "respond.toString() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/httpserver/HttpRequestManager;->instance()Lcom/car/httpserver/HttpRequestManager;

    move-result-object v6

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/car/httpserver/HttpRequestManager;->requestWebSocket(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processSyncFile(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 10

    const-string v7, "CarSvc_CarWebSocketServer"

    const-string v8, "processSyncFile"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "CarSvc_CarWebSocketServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer;->mFileScanner:Lcom/car/httpserver/FileScanner;

    invoke-virtual {v7, p2}, Lcom/car/httpserver/FileScanner;->startScanner(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "CarSvc_CarWebSocketServer"

    const-string v8, "==================="

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "CarSvc_CarWebSocketServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "list size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/httpserver/FileInfo;

    const-string v7, "CarSvc_CarWebSocketServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/car/httpserver/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v7, "CarSvc_CarWebSocketServer"

    const-string v8, "==================="

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "action"

    const-string v8, "sync_file"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "path"

    sget-object v8, Lcom/car/httpserver/Config;->VIDEO_PATH:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "type"

    const-string v8, "all"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/httpserver/FileInfo;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "name"

    iget-object v8, v2, Lcom/car/httpserver/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "path"

    iget-object v8, v2, Lcom/car/httpserver/FileInfo;->path:Ljava/lang/String;

    sget-object v9, Lcom/car/httpserver/Config;->VIDEO_PATH:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "size"

    iget-wide v8, v2, Lcom/car/httpserver/FileInfo;->lsize:J

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "dir"

    iget-boolean v8, v2, Lcom/car/httpserver/FileInfo;->isDirectory:Z

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v7, "time"

    iget-wide v8, v2, Lcom/car/httpserver/FileInfo;->modifytime:J

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void

    :cond_1
    :try_start_1
    const-string v7, "list"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "CarSvc_CarWebSocketServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "jso.toString() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/httpserver/HttpRequestManager;->instance()Lcom/car/httpserver/HttpRequestManager;

    move-result-object v7

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/car/httpserver/HttpRequestManager;->requestWebSocket(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public hasClients()Z
    .locals 2

    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mListClients:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mListClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

.method public onClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 2

    const-string v0, "CarSvc_CarWebSocketServer"

    const-string v1, "onClose"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mListClients:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mListClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "CarSvc_CarWebSocketServer"

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/httpserver/CarWebSocketServer;->mListClients:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mListClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 55

    const-string v4, "CarSvc_CarWebSocketServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "onMessage = "

    move-object/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v35, Lorg/json/JSONObject;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "action"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "set"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "list"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/car/httpserver/CarWebSocketServer;->processSetActions(Lorg/java_websocket/WebSocket;Lorg/json/JSONObject;)V

    :cond_0
    :goto_0
    const-string v4, "f"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "get"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "what"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v34

    if-eqz v34, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/car/httpserver/CarWebSocketServer;->reportSettings(Lorg/java_websocket/WebSocket;Lorg/json/JSONArray;)V

    :cond_1
    const-string v4, "property"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v43

    if-eqz v43, :cond_2

    const-string v4, "key"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v36, Lorg/json/JSONObject;

    invoke-direct/range {v36 .. v36}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "f"

    const-string v5, "report"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, ""

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    new-instance v42, Lorg/json/JSONObject;

    invoke-direct/range {v42 .. v42}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "key"

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "value"

    move-object/from16 v0, v42

    move-object/from16 v1, v50

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "property"

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "CarSvc_CarWebSocketServer"

    invoke-virtual/range {v36 .. v36}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/httpserver/HttpRequestManager;->instance()Lcom/car/httpserver/HttpRequestManager;

    move-result-object v4

    invoke-virtual/range {v36 .. v36}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/car/httpserver/HttpRequestManager;->requestWebSocket(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_2
    const-string v4, "get"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "list"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/car/httpserver/CarWebSocketServer;->processGetActions(Lorg/java_websocket/WebSocket;Lorg/json/JSONArray;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_3
    const-string v4, "dir"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "path"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/car/httpserver/CarWebSocketServer;->processDirAction(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v4, "delete"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "list"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/car/httpserver/CarWebSocketServer;->processDeleteAction(Lorg/java_websocket/WebSocket;Lorg/json/JSONArray;)V

    goto/16 :goto_0

    :cond_6
    const-string v4, "navi"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "latitude"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v4, "longitude"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v8

    const/4 v10, 0x0

    :try_start_4
    const-string v4, "name"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v10

    :goto_2
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    :try_start_5
    invoke-direct/range {v4 .. v10}, Lcom/car/httpserver/CarWebSocketServer;->processNaviAction(Lorg/java_websocket/WebSocket;DDLjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v4, "sync_file"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v16, Lcom/car/httpserver/CarWebSocketServer;->SYNC_FILE_PATHS:[Ljava/lang/String;

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v39, v0

    const/16 v29, 0x0

    :goto_3
    move/from16 v0, v29

    move/from16 v1, v39

    if-ge v0, v1, :cond_0

    aget-object v41, v16, v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/car/httpserver/CarWebSocketServer;->processSyncFile(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    :cond_8
    const-string v4, "self_test"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "item"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static {}, Lcom/car/httpserver/SelfTest;->instance()Lcom/car/httpserver/SelfTest;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v4, v0, v1}, Lcom/car/httpserver/SelfTest;->processAction(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_9
    const-string v4, "set"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "generic"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    if-eqz v27, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/car/httpserver/CarWebSocketServer;->processGenericSet(Lorg/json/JSONObject;)V

    :cond_a
    const-string v4, "softap"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v48

    if-eqz v48, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v53 .. v53}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v52

    const-string v4, "ssid"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v52

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v4, "pwd"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v52

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual/range {v53 .. v53}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_18

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const/4 v4, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_b
    :goto_4
    const-string v4, "dvr"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/car/httpserver/CarWebSocketServer;->processDvrSet(Lorg/json/JSONObject;)V

    :cond_c
    const-string v4, "sdcard"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v47

    if-eqz v47, :cond_d

    const-string v4, "format"

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_d

    invoke-static {}, Lcom/car/systemfunc/SettingsNotifier;->getInstance()Lcom/car/systemfunc/SettingsNotifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/systemfunc/SettingsNotifier;->formatSdcard()V

    :cond_d
    const-string v4, "bondlist"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    if-eqz v17, :cond_e

    const-string v4, "del"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_e

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_e

    invoke-static {}, Lcom/car/systemfunc/SettingsNotifier;->getInstance()Lcom/car/systemfunc/SettingsNotifier;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/car/systemfunc/SettingsNotifier;->delUser(Ljava/lang/String;)V

    :cond_e
    const-string v4, "update"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v49

    if-eqz v49, :cond_f

    const-string v4, "install"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "install"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_f

    invoke-static {}, Lcom/car/systemfunc/SettingsNotifier;->getInstance()Lcom/car/systemfunc/SettingsNotifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/systemfunc/SettingsNotifier;->installUpdate()V

    :cond_f
    :goto_5
    const-string v4, "adas"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_14

    const-string v4, "adas_calibration"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "adas_calibration"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    const-string v5, "adas_calibration"

    move/from16 v0, v18

    invoke-static {v4, v5, v0}, Lcom/car/common/ProviderUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_10
    const-string v4, "adas_config_x"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "adas_config_y"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "adas_config_x"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    const-string v4, "adas_config_y"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    new-instance v31, Landroid/content/Intent;

    const-string v4, "com.car.adasconfig"

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "adas_config_x"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "adas_config_y"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_11
    const-string v4, "adas_report"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "adas_report"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    const-string v5, "adas_report"

    move/from16 v0, v45

    invoke-static {v4, v5, v0}, Lcom/car/common/ProviderUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_12
    const-string v4, "adas_report2"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "adas_report2"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    const-string v5, "adas_report2"

    move/from16 v0, v45

    invoke-static {v4, v5, v0}, Lcom/car/common/ProviderUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_13
    const-string v4, "adas_report3"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "adas_report3"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    const-string v5, "adas_report3"

    move/from16 v0, v45

    invoke-static {v4, v5, v0}, Lcom/car/common/ProviderUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_14
    const-string v4, "lang"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v38

    if-eqz v38, :cond_15

    const-string v4, "locale"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_15

    invoke-static {}, Lcom/car/systemfunc/SettingsNotifier;->getInstance()Lcom/car/systemfunc/SettingsNotifier;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lcom/car/systemfunc/SettingsNotifier;->updateLocale(Ljava/lang/String;)V

    :cond_15
    const-string v4, "factory"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    if-eqz v25, :cond_16

    const-string v4, "reset"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v46

    const/4 v4, 0x1

    move/from16 v0, v46

    if-ne v0, v4, :cond_16

    new-instance v31, Landroid/content/Intent;

    const-string v4, "com.car.factory"

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_16
    const-string v4, "provider"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v44

    if-eqz v44, :cond_17

    const-string v4, "key"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v4, "value"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v50

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v37

    move/from16 v1, v50

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_17
    const-string v4, "property"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v43

    if-eqz v43, :cond_2

    const-string v4, "key"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v4, "value"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_18
    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto/16 :goto_4

    :cond_19
    const-string v4, "check"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "check"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-static {}, Lcom/car/systemfunc/SettingsNotifier;->getInstance()Lcom/car/systemfunc/SettingsNotifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/systemfunc/SettingsNotifier;->checkUpdate()V

    goto/16 :goto_5

    :cond_1a
    const-string v4, "broadcast"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "intent"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v31

    if-eqz v31, :cond_2

    const-string v4, "action"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v28, Landroid/content/Intent;

    move-object/from16 v0, v28

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v32

    :cond_1b
    :goto_6
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    const-string v4, "action"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v4

    if-nez v4, :cond_1b

    :try_start_6
    move-object/from16 v0, v31

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CarSvc_CarWebSocketServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v54, ":"

    move-object/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    :catch_2
    move-exception v4

    :try_start_7
    move-object/from16 v0, v31

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v50

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "CarSvc_CarWebSocketServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v54, ":"

    move-object/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v50

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :catch_3
    move-exception v4

    :try_start_8
    move-object/from16 v0, v31

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v50

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    move-wide/from16 v2, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "CarSvc_CarWebSocketServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v54, ":"

    move-object/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v50

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_6

    :catch_4
    move-exception v4

    :try_start_9
    move-object/from16 v0, v31

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v50

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "CarSvc_CarWebSocketServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v54, ":"

    move-object/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v50

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_6

    :catch_5
    move-exception v4

    :try_start_a
    const-string v4, "CarSvc_CarWebSocketServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Not supported for "

    move-object/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_1c
    const-string v4, "CarSvc_CarWebSocketServer"

    const-string v5, "Try 2 send broadcast from ws"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    :catch_6
    move-exception v4

    goto/16 :goto_2
.end method

.method public onOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/ClientHandshake;)V
    .locals 6

    const-string v2, "CarSvc_CarWebSocketServer"

    const-string v3, "onOpen"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/httpserver/CarWebSocketServer;->mListClients:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/car/httpserver/CarWebSocketServer;->mListClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/WebSocket;

    invoke-interface {v1}, Lorg/java_websocket/WebSocket;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-interface {p1}, Lorg/java_websocket/WebSocket;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/java_websocket/WebSocket;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    const-string v2, "CarSvc_CarWebSocketServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/java_websocket/WebSocket;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/httpserver/CarWebSocketServer;->mListClients:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method reportSettings(Lorg/java_websocket/WebSocket;Lorg/json/JSONArray;)V
    .locals 17

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v13, "f"

    const-string v14, "report"

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v6, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v6, v13, :cond_f

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "generic"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "autosleeptime"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getAutoSleepTime(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v13, "gsensor_enable"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getGsensorEnbale(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v13, "video_lock_enable"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getVideoLockEnbale(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v13, "gsensor_sensitive"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getGsensorSensitive(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v13, "screen_brightness"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getBrightnessPercent(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v13, "system_volume"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getVoumleCurrent(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v13, "mobile_network"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getMobileNetwork(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "gps_enable"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/car/common/ProviderUtils;->getGPSEnable(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v5, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v13, "edog_mode"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getEDogModeFromDb(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v13, "btkb_disabled"

    const-string v14, "ro.btkb.disabled"

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v13, "bt_keyboard_enable"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getBtKeyboardEnable(Landroid/content/Context;)Z

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v13, "manufacturer"

    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "model"

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "board"

    sget-object v14, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "cpu_abi"

    sget-object v14, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    const-string v14, "phone"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    const-string v13, "imei"

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "iccid"

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "ro.dvr.slow"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "slow_time"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getDvrSlowTime(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    const-string v13, "ro.func.flag"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    and-int/lit8 v13, v4, 0x8

    if-eqz v13, :cond_2

    const-string v13, "mcu_voltage"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getMcuVoltage(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    const-string v14, "com.daguerre.cd.vehicleMatics"

    invoke-static {v13, v14}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "sys_dag_socol"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getBaiduEnable(Landroid/content/Context;)Z

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    const-string v13, "generic"

    invoke-virtual {v7, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_6
    const-string v13, "softap"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    const-string v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "ssid"

    iget-object v14, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "pwd"

    iget-object v14, v11, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "softap"

    invoke-virtual {v7, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    const-string v13, "dvr"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "autosave_time"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getAutoSaveTime(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v13, "stoppreview_time"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getStopPreviewTime(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v13, "front_quality"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getFrontCameraQuality(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "mute_record"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getMuteRecord(Landroid/content/Context;)Z

    move-result v14

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v13, "show_float_button"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getShowFloatButton(Landroid/content/Context;)Z

    move-result v14

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v13, "gps_watermark"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/car/common/ProviderUtils;->getGPSWaterMark(Landroid/content/Context;)Z

    move-result v14

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v13, "dvr"

    invoke-virtual {v7, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    :cond_8
    const-string v13, "adas"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "enable"

    const-string v14, "sys.adas.ok"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v1, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v13, "adas_calibration"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    const-string v15, "adas_calibration"

    invoke-static {v14, v15}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v1, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v13, "adas_report"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    const-string v15, "adas_report"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v1, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v13, "adas_report2"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    const-string v15, "adas_report2"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v1, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v13, "adas_report3"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    const-string v15, "adas_report3"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v1, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v13, "adas"

    invoke-virtual {v7, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    :cond_9
    const-string v13, "bondlist"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-static {}, Lcom/car/systemfunc/SettingsNotifier;->getInstance()Lcom/car/systemfunc/SettingsNotifier;

    move-result-object v13

    invoke-virtual {v13}, Lcom/car/systemfunc/SettingsNotifier;->reportBondlist()V

    goto/16 :goto_3

    :cond_a
    const-string v13, "sdcard"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-static {}, Lcom/car/systemfunc/SettingsNotifier;->getInstance()Lcom/car/systemfunc/SettingsNotifier;

    move-result-object v13

    invoke-virtual {v13}, Lcom/car/systemfunc/SettingsNotifier;->reportSdcard()V

    goto/16 :goto_3

    :cond_b
    const-string v13, "mobile"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-static {}, Lcom/car/systemfunc/SettingsNotifier;->getInstance()Lcom/car/systemfunc/SettingsNotifier;

    move-result-object v13

    invoke-virtual {v13}, Lcom/car/systemfunc/SettingsNotifier;->reportMobile()V

    goto/16 :goto_3

    :cond_c
    const-string v13, "update"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-static {}, Lcom/car/systemfunc/SettingsNotifier;->getInstance()Lcom/car/systemfunc/SettingsNotifier;

    move-result-object v13

    invoke-virtual {v13}, Lcom/car/systemfunc/SettingsNotifier;->reportUpdate()V

    goto/16 :goto_3

    :cond_d
    const-string v13, "cpuinfo"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-static {}, Lcom/car/systemfunc/SettingsNotifier;->getInstance()Lcom/car/systemfunc/SettingsNotifier;

    move-result-object v13

    invoke-virtual {v13}, Lcom/car/systemfunc/SettingsNotifier;->reportCpuInfo()V

    goto/16 :goto_3

    :cond_e
    const-string v13, "lang"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static {}, Lcom/car/systemfunc/SettingsNotifier;->getInstance()Lcom/car/systemfunc/SettingsNotifier;

    move-result-object v13

    invoke-virtual {v13}, Lcom/car/systemfunc/SettingsNotifier;->reportLang()V

    goto/16 :goto_3

    :cond_f
    const-string v13, "CarSvc_CarWebSocketServer"

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/httpserver/HttpRequestManager;->instance()Lcom/car/httpserver/HttpRequestManager;

    move-result-object v13

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Lcom/car/httpserver/HttpRequestManager;->requestWebSocket(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 4

    iget-object v3, p0, Lcom/car/httpserver/CarWebSocketServer;->mListClients:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/car/httpserver/CarWebSocketServer;->mListClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/WebSocket;

    invoke-static {}, Lcom/car/httpserver/HttpRequestManager;->instance()Lcom/car/httpserver/HttpRequestManager;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/car/httpserver/HttpRequestManager;->requestWebSocket(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setCameraManagerService(Lcom/car/common/CameraServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/CarWebSocketServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    return-void
.end method

.method public start()V
    .locals 9

    invoke-super {p0}, Lorg/java_websocket/server/WebSocketServer;->start()V

    invoke-static {}, Lcom/car/httpserver/HttpRequestManager;->create()V

    iget-object v5, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/car/httpserver/Util;->URI:Landroid/net/Uri;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/car/httpserver/CarWebSocketServer;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v5, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/car/httpserver/CarWebSocketServer;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.car.videorecorder.recording_start"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.car.videorecorder.recording_stop"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/car/httpserver/CarWebSocketServer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "file"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/car/httpserver/CarWebSocketServer;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mMyFileObservers:[Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    invoke-virtual {v2}, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->startWatching()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-super {p0}, Lorg/java_websocket/server/WebSocketServer;->stop()V

    invoke-static {}, Lcom/car/httpserver/HttpRequestManager;->destory()V

    iget-object v4, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/car/httpserver/CarWebSocketServer;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/car/httpserver/CarWebSocketServer;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/car/httpserver/CarWebSocketServer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v4, p0, Lcom/car/httpserver/CarWebSocketServer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/car/httpserver/CarWebSocketServer;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/car/httpserver/CarWebSocketServer;->mMyFileObservers:[Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/car/httpserver/CarWebSocketServer$MyFileObserver;->stopWatching()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
