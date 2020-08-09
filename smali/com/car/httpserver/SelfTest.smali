.class public Lcom/car/httpserver/SelfTest;
.super Landroid/content/BroadcastReceiver;
.source "SelfTest.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field private static final MSG_LED:I = 0x2

.field private static final MSG_TEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarSvc_SelfTest"

.field private static sIns:Lcom/car/httpserver/SelfTest;


# instance fields
.field final CHECK_TIME:I

.field private error_limit:F

.field private mContext:Landroid/content/Context;

.field mEverFound:Z

.field private mGySensor:Landroid/hardware/Sensor;

.field mGySensorEventListener:Landroid/hardware/SensorEventListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsRecord:Z

.field mLedColors:[Ljava/lang/String;

.field mLedIndex:I

.field mLedOn:Z

.field private mMagSensor:Landroid/hardware/Sensor;

.field mMagSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field mPowerLedOn:Z

.field private mRecordFile:Ljava/io/File;

.field private mSensor:Landroid/hardware/Sensor;

.field mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStopRecordToPlay:Ljava/lang/Runnable;

.field mTimeCalculation:J

.field private mWebSocket:Lcom/car/httpserver/CarWebSocketServer;

.field private standard:F

.field private xlimit:F

.field private ylimit:F

.field private zlimit:F


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/car/httpserver/CarWebSocketServer;)V
    .locals 4

    const v2, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/sdcard0/record.mp3"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/car/httpserver/SelfTest;->mRecordFile:Ljava/io/File;

    const v0, 0x411ccccd    # 9.8f

    iput v0, p0, Lcom/car/httpserver/SelfTest;->standard:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/car/httpserver/SelfTest;->error_limit:F

    iput v2, p0, Lcom/car/httpserver/SelfTest;->xlimit:F

    iput v2, p0, Lcom/car/httpserver/SelfTest;->ylimit:F

    iput v2, p0, Lcom/car/httpserver/SelfTest;->zlimit:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/car/httpserver/SelfTest;->mTimeCalculation:J

    const/4 v0, 0x5

    iput v0, p0, Lcom/car/httpserver/SelfTest;->CHECK_TIME:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "blueled"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "greenled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "redled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "offrgbled"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/car/httpserver/SelfTest;->mLedColors:[Ljava/lang/String;

    iput v3, p0, Lcom/car/httpserver/SelfTest;->mLedIndex:I

    iput-boolean v3, p0, Lcom/car/httpserver/SelfTest;->mLedOn:Z

    iput-boolean v3, p0, Lcom/car/httpserver/SelfTest;->mPowerLedOn:Z

    iput-boolean v3, p0, Lcom/car/httpserver/SelfTest;->mEverFound:Z

    new-instance v0, Lcom/car/httpserver/SelfTest$1;

    invoke-direct {v0, p0}, Lcom/car/httpserver/SelfTest$1;-><init>(Lcom/car/httpserver/SelfTest;)V

    iput-object v0, p0, Lcom/car/httpserver/SelfTest;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/httpserver/SelfTest$2;

    invoke-direct {v0, p0}, Lcom/car/httpserver/SelfTest$2;-><init>(Lcom/car/httpserver/SelfTest;)V

    iput-object v0, p0, Lcom/car/httpserver/SelfTest;->mStopRecordToPlay:Ljava/lang/Runnable;

    new-instance v0, Lcom/car/httpserver/SelfTest$3;

    invoke-direct {v0, p0}, Lcom/car/httpserver/SelfTest$3;-><init>(Lcom/car/httpserver/SelfTest;)V

    iput-object v0, p0, Lcom/car/httpserver/SelfTest;->mMagSensorEventListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/car/httpserver/SelfTest$4;

    invoke-direct {v0, p0}, Lcom/car/httpserver/SelfTest$4;-><init>(Lcom/car/httpserver/SelfTest;)V

    iput-object v0, p0, Lcom/car/httpserver/SelfTest;->mGySensorEventListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/car/httpserver/SelfTest$5;

    invoke-direct {v0, p0}, Lcom/car/httpserver/SelfTest$5;-><init>(Lcom/car/httpserver/SelfTest;)V

    iput-object v0, p0, Lcom/car/httpserver/SelfTest;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, Lcom/car/httpserver/SelfTest;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/car/httpserver/SelfTest;->mWebSocket:Lcom/car/httpserver/CarWebSocketServer;

    sput-object p0, Lcom/car/httpserver/SelfTest;->sIns:Lcom/car/httpserver/SelfTest;

    const-string v0, "CarSvc_SelfTest"

    const-string v1, "created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/car/httpserver/SelfTest;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/httpserver/SelfTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/httpserver/SelfTest;->stopRecord()V

    return-void
.end method

.method static synthetic access$200(Lcom/car/httpserver/SelfTest;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mRecordFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/httpserver/SelfTest;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/httpserver/SelfTest;->playAudioRecord(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$400(Lcom/car/httpserver/SelfTest;)Lcom/car/httpserver/CarWebSocketServer;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mWebSocket:Lcom/car/httpserver/CarWebSocketServer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/httpserver/SelfTest;)F
    .locals 1

    iget v0, p0, Lcom/car/httpserver/SelfTest;->standard:F

    return v0
.end method

.method static synthetic access$600(Lcom/car/httpserver/SelfTest;)F
    .locals 1

    iget v0, p0, Lcom/car/httpserver/SelfTest;->xlimit:F

    return v0
.end method

.method static synthetic access$700(Lcom/car/httpserver/SelfTest;)F
    .locals 1

    iget v0, p0, Lcom/car/httpserver/SelfTest;->error_limit:F

    return v0
.end method

.method static synthetic access$800(Lcom/car/httpserver/SelfTest;)F
    .locals 1

    iget v0, p0, Lcom/car/httpserver/SelfTest;->ylimit:F

    return v0
.end method

.method static synthetic access$900(Lcom/car/httpserver/SelfTest;)F
    .locals 1

    iget v0, p0, Lcom/car/httpserver/SelfTest;->zlimit:F

    return v0
.end method

.method public static create(Lcom/car/httpserver/CarWebSocketServer;)V
    .locals 3

    const-string v1, "CarSvc_SelfTest"

    const-string v2, "create"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/ServiceApplication;->getInstance()Lcom/car/ServiceApplication;

    move-result-object v0

    new-instance v1, Lcom/car/httpserver/SelfTest;

    invoke-direct {v1, v0, p0}, Lcom/car/httpserver/SelfTest;-><init>(Landroid/content/Context;Lcom/car/httpserver/CarWebSocketServer;)V

    return-void
.end method

.method public static instance()Lcom/car/httpserver/SelfTest;
    .locals 1

    sget-object v0, Lcom/car/httpserver/SelfTest;->sIns:Lcom/car/httpserver/SelfTest;

    return-object v0
.end method

.method private playAudioRecord(Ljava/io/File;)V
    .locals 4

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    :try_start_0
    const-string v1, "CarSvc_SelfTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playAudioRecord, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startRecord()V
    .locals 6

    const-string v1, "CarSvc_SelfTest"

    const-string v2, "startRecord"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v2, 0x3e80

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mRecordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mRecordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/car/httpserver/SelfTest;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/car/httpserver/SelfTest;->mIsRecord:Z

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/car/httpserver/SelfTest;->mStopRecordToPlay:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/car/httpserver/SelfTest;->mStopRecordToPlay:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private stopRecord()V
    .locals 3

    const-string v1, "CarSvc_SelfTest"

    const-string v2, "stopRecord"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/car/httpserver/SelfTest;->mIsRecord:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/car/httpserver/SelfTest;->mIsRecord:Z

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/car/httpserver/SelfTest;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "CarSvc_SelfTest"

    const-string v1, "audio record complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2

    const-string v0, "CarSvc_SelfTest"

    const-string v1, "audio record error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/httpserver/SelfTest;->mIsRecord:Z

    invoke-direct {p0}, Lcom/car/httpserver/SelfTest;->stopRecord()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.car.mic_pressed"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/car/httpserver/SelfTest;->mLedOn:Z

    if-nez v8, :cond_1

    :goto_0
    iput-boolean v6, p0, Lcom/car/httpserver/SelfTest;->mLedOn:Z

    const-string v7, "/sys/power/led_set_control"

    iget-boolean v6, p0, Lcom/car/httpserver/SelfTest;->mLedOn:Z

    if-eqz v6, :cond_2

    const-string v6, "led0on"

    :goto_1
    invoke-virtual {p0, v7, v6}, Lcom/car/httpserver/SelfTest;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v6, v7

    goto :goto_0

    :cond_2
    const-string v6, "led0off"

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.car.f10.pressed"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "down"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v8, p0, Lcom/car/httpserver/SelfTest;->mPowerLedOn:Z

    if-nez v8, :cond_4

    :goto_3
    iput-boolean v6, p0, Lcom/car/httpserver/SelfTest;->mPowerLedOn:Z

    const-string v7, "/sys/power/led_set_control"

    iget-boolean v6, p0, Lcom/car/httpserver/SelfTest;->mPowerLedOn:Z

    if-eqz v6, :cond_5

    const-string v6, "led1on"

    :goto_4
    invoke-virtual {p0, v7, v6}, Lcom/car/httpserver/SelfTest;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v6, v7

    goto :goto_3

    :cond_5
    const-string v6, "led1off"

    goto :goto_4

    :cond_6
    const-string v7, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v6, "CarSvc_SelfTest"

    const-string v7, "discovery started"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const-string v7, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v6, "CarSvc_SelfTest"

    const-string v7, "discovery finished"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_8
    const/16 v6, 0x78

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    const/16 v6, 0x17

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    goto :goto_2

    :cond_9
    const-string v7, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    const-string v7, "CarSvc_SelfTest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is nearby"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iput-boolean v6, p0, Lcom/car/httpserver/SelfTest;->mEverFound:Z

    :try_start_0
    const-string v6, "f"

    const-string v7, "report"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "passed"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "bluetooth"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/car/httpserver/SelfTest;->mWebSocket:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/car/httpserver/SelfTest;->mWebSocket:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public processAction(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x3

    const-string v0, "CarSvc_SelfTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "mic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/car/httpserver/SelfTest;->startRecord()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "gsensor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/car/httpserver/SelfTest;->reportOther()V

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/car/httpserver/SelfTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/car/httpserver/SelfTest;->mSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/car/httpserver/SelfTest;->mMagSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/car/httpserver/SelfTest;->mGySensor:Landroid/hardware/Sensor;

    :cond_2
    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/car/httpserver/SelfTest;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mMagSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMagSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/car/httpserver/SelfTest;->mMagSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_3
    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mGySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mGySensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/car/httpserver/SelfTest;->mGySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_4
    const-string v0, "gsensor_end"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mMagSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mMagSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_5
    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mGySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/car/httpserver/SelfTest;->mGySensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "sim_lock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/httpserver/SelfTest;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.lock"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public reportOther()V
    .locals 4

    iget-object v2, p0, Lcom/car/httpserver/SelfTest;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.car.mic_pressed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.car.f10.pressed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/car/httpserver/SelfTest;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    return-void
.end method

.method writeSysValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const-string v2, "CarSvc_SelfTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
