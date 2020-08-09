.class public final Lcom/car/voice/VoiceRecognizerService;
.super Landroid/app/Service;
.source "VoiceRecognizerService.java"

# interfaces
.implements Lcom/car/voice/VoiceUICallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/voice/VoiceRecognizerService$MyIVoiceRecognizer;,
        Lcom/car/voice/VoiceRecognizerService$MyHandler;
    }
.end annotation


# static fields
.field public static final ACTION_RECORDING_SLEEP:Ljava/lang/String; = "com.car.gotosleep"

.field private static final DEBUG:Z = true

.field private static final REQ_REC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarSvc_VoiceRecognizeService"

.field private static final TTS_PALY:I = 0x2


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCallStatus:I

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/car/common/IVoiceRecognizerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactsObserver:Landroid/database/ContentObserver;

.field private mCurCallingPid:I

.field private mCurReqId:I

.field private final mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

.field private final mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

.field private final mHandler:Lcom/car/voice/VoiceRecognizerService$MyHandler;

.field private final mMyBind:Lcom/car/voice/VoiceRecognizerService$MyIVoiceRecognizer;

.field private mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mParam:Ljava/lang/String;

.field private mRecType:I

.field private mRequestRunning:Z

.field mSleep:Z

.field private mVoiceUI:Lcom/car/voice/VoiceUI;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWeatherForcast:Lcom/car/systemfunc/WeatherForcast;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/car/voice/VoiceRecognizerService$MyIVoiceRecognizer;

    invoke-direct {v0, p0, v1}, Lcom/car/voice/VoiceRecognizerService$MyIVoiceRecognizer;-><init>(Lcom/car/voice/VoiceRecognizerService;Lcom/car/voice/VoiceRecognizerService$1;)V

    iput-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mMyBind:Lcom/car/voice/VoiceRecognizerService$MyIVoiceRecognizer;

    new-instance v0, Lcom/car/voice/VoiceEngineFactory;

    invoke-direct {v0}, Lcom/car/voice/VoiceEngineFactory;-><init>()V

    iput-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    new-instance v0, Lcom/car/voice/RecDefaultProcess;

    invoke-direct {v0}, Lcom/car/voice/RecDefaultProcess;-><init>()V

    iput-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/car/voice/VoiceRecognizerService$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/car/voice/VoiceRecognizerService$MyHandler;-><init>(Lcom/car/voice/VoiceRecognizerService;Lcom/car/voice/VoiceRecognizerService$1;)V

    iput-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mHandler:Lcom/car/voice/VoiceRecognizerService$MyHandler;

    new-instance v0, Lcom/car/systemfunc/WeatherForcast;

    invoke-direct {v0}, Lcom/car/systemfunc/WeatherForcast;-><init>()V

    iput-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mWeatherForcast:Lcom/car/systemfunc/WeatherForcast;

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/voice/VoiceRecognizerService;->mRecType:I

    iput-object v1, p0, Lcom/car/voice/VoiceRecognizerService;->mParam:Ljava/lang/String;

    const/16 v0, 0x10

    iput v0, p0, Lcom/car/voice/VoiceRecognizerService;->mCallStatus:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/voice/VoiceRecognizerService;->mSleep:Z

    new-instance v0, Lcom/car/voice/VoiceRecognizerService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/car/voice/VoiceRecognizerService$1;-><init>(Lcom/car/voice/VoiceRecognizerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mContactsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/car/voice/VoiceRecognizerService$3;

    invoke-direct {v0, p0}, Lcom/car/voice/VoiceRecognizerService$3;-><init>(Lcom/car/voice/VoiceRecognizerService;)V

    iput-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Lcom/car/voice/VoiceRecognizerService$4;

    invoke-direct {v0, p0}, Lcom/car/voice/VoiceRecognizerService$4;-><init>(Lcom/car/voice/VoiceRecognizerService;)V

    iput-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$200(Lcom/car/voice/VoiceRecognizerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/voice/VoiceRecognizerService;->enableWakeupListener(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/car/voice/VoiceRecognizerService;)Lcom/car/voice/VoiceUI;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mVoiceUI:Lcom/car/voice/VoiceUI;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/voice/VoiceRecognizerService;)Lcom/car/voice/RecDefaultProcess;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/voice/VoiceRecognizerService;)Lcom/car/voice/VoiceRecognizerService$MyHandler;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mHandler:Lcom/car/voice/VoiceRecognizerService$MyHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/voice/VoiceRecognizerService;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/car/voice/VoiceRecognizerService;->enableWakeupListener(ZZ)V

    return-void
.end method

.method private enableWakeupListener(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/car/voice/VoiceRecognizerService;->mSleep:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private enableWakeupListener(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/car/voice/VoiceRecognizerService;->mSleep:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private invokeCallback(IILjava/lang/String;Z)V
    .locals 6

    iget-object v4, p0, Lcom/car/voice/VoiceRecognizerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/car/voice/VoiceRecognizerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/car/voice/VoiceRecognizerService;->mCurCallingPid:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/car/voice/VoiceRecognizerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/car/common/IVoiceRecognizerCallback;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/car/common/IVoiceRecognizerCallback;->onRecognizeResult(IILjava/lang/String;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "CarSvc_VoiceRecognizeService"

    const-string v5, "onRecognizerResult error:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/car/voice/VoiceRecognizerService;->mCurCallingPid:I

    iget-object v4, p0, Lcom/car/voice/VoiceRecognizerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private stopCurrentRequest()V
    .locals 4

    iget-boolean v0, p0, Lcom/car/voice/VoiceRecognizerService;->mRequestRunning:Z

    if-eqz v0, :cond_0

    const-string v0, "CarSvc_VoiceRecognizeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop current request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/voice/VoiceRecognizerService;->mCurReqId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/voice/VoiceRecognizerService;->mRequestRunning:Z

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    invoke-virtual {v0}, Lcom/car/voice/VoiceEngineFactory;->stopRecognizeNoDismissUI()V

    iget v0, p0, Lcom/car/voice/VoiceRecognizerService;->mCurCallingPid:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/car/voice/VoiceRecognizerService;->mCurReqId:I

    const/4 v1, -0x1

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/car/voice/VoiceRecognizerService;->invokeCallback(IILjava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized doRequestRecognizer(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/car/voice/VoiceRecognizerService;->stopCurrentRequest()V

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/car/voice/VoiceEngineFactory;->startRecognize(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/voice/VoiceRecognizerService;->mRequestRunning:Z

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/car/voice/VoiceRecognizerService;->mCurCallingPid:I

    iget v0, p0, Lcom/car/voice/VoiceRecognizerService;->mCurReqId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/car/voice/VoiceRecognizerService;->mCurReqId:I

    iget v0, p0, Lcom/car/voice/VoiceRecognizerService;->mCurReqId:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/voice/VoiceRecognizerService;->mCurReqId:I

    :cond_0
    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    if-ne p3, v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/voice/VoiceRecognizerService;->mCurCallingPid:I

    :cond_1
    const-string v0, "CarSvc_VoiceRecognizeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/voice/VoiceRecognizerService;->mCurCallingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/voice/VoiceRecognizerService;->mCurReqId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/car/voice/VoiceRecognizerService;->mCurReqId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "CarSvc_VoiceRecognizeService"

    const-string v1, "onBind called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mMyBind:Lcom/car/voice/VoiceRecognizerService$MyIVoiceRecognizer;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    invoke-virtual {p0}, Lcom/car/voice/VoiceRecognizerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/car/common/voice/DebugUtil;->sContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/car/voice/VoiceRecognizerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "CarSvc_VoiceRecognizeService"

    const-string v4, " onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/car/voice/VoiceRecognizerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/car/voice/VoiceRecognizerService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v3, Lcom/car/voice/ui/VoiceUIImpl;

    invoke-direct {v3, v0}, Lcom/car/voice/ui/VoiceUIImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/car/voice/VoiceRecognizerService;->mVoiceUI:Lcom/car/voice/VoiceUI;

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v3, p0}, Lcom/car/voice/VoiceUI;->setCallback(Lcom/car/voice/VoiceUICallback;)V

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    iget-object v4, p0, Lcom/car/voice/VoiceRecognizerService;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-virtual {v3, v0, v4}, Lcom/car/voice/VoiceEngineFactory;->create(Landroid/content/Context;Lcom/car/voice/VoiceUI;)V

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    iget-object v4, p0, Lcom/car/voice/VoiceRecognizerService;->mVoiceUI:Lcom/car/voice/VoiceUI;

    iget-object v5, p0, Lcom/car/voice/VoiceRecognizerService;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    invoke-virtual {v3, v4, v5}, Lcom/car/voice/RecDefaultProcess;->create(Lcom/car/voice/VoiceUI;Lcom/car/voice/VoiceEngineFactory;)V

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService;->mWeatherForcast:Lcom/car/systemfunc/WeatherForcast;

    iget-object v4, p0, Lcom/car/voice/VoiceRecognizerService;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    iget-object v5, p0, Lcom/car/voice/VoiceRecognizerService;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-virtual {v3, v0, v4, v5}, Lcom/car/systemfunc/WeatherForcast;->create(Landroid/content/Context;Lcom/car/voice/VoiceEngineFactory;Lcom/car/voice/VoiceUI;)V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/car/voice/VoiceRecognizerService;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-virtual {v3, v4}, Lcom/car/utils/TipPlayer;->setVoiceUI(Lcom/car/voice/VoiceUI;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.car.btphone.action"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.bthpone.connected.notify"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.gotosleep"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.syswakeup"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/car/voice/VoiceRecognizerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/car/voice/VoiceRecognizerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sensity"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/car/voice/VoiceRecognizerService;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/car/voice/VoiceRecognizerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const/16 v3, 0xa

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/car/voice/VoiceRecognizerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "CarSvc_VoiceRecognizeService"

    const-string v1, " onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    invoke-virtual {v0}, Lcom/car/voice/VoiceEngineFactory;->destroy()V

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    invoke-virtual {v0}, Lcom/car/voice/RecDefaultProcess;->destroy()V

    invoke-static {}, Lcom/car/utils/SoundPlayer;->destory()V

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/car/voice/VoiceRecognizerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    const/16 v9, 0x10

    const/4 v8, 0x2

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const-string v4, "CarSvc_VoiceRecognizeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " onStartCommand "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "init"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p0}, Lcom/car/common/CarUtil;->isInCommunication(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, p0, Lcom/car/voice/VoiceRecognizerService;->mCallStatus:I

    if-ne v4, v9, :cond_6

    iget-object v4, p0, Lcom/car/voice/VoiceRecognizerService;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v4}, Lcom/car/voice/VoiceUI;->isUIShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/car/voice/VoiceRecognizerService;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v4}, Lcom/car/voice/VoiceUI;->dismissUI()V

    :cond_1
    :goto_0
    return v8

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/car/voice/VoiceRecognizerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    const/4 v3, 0x1

    :cond_3
    const-string v4, "sys.voice.reply"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    invoke-virtual {v4, v2, v7}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    :cond_4
    const/4 v4, -0x1

    iput v4, p0, Lcom/car/voice/VoiceRecognizerService;->mRecType:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/car/voice/VoiceRecognizerService;->mParam:Ljava/lang/String;

    iget-object v6, p0, Lcom/car/voice/VoiceRecognizerService;->mHandler:Lcom/car/voice/VoiceRecognizerService$MyHandler;

    new-instance v7, Lcom/car/voice/VoiceRecognizerService$2;

    invoke-direct {v7, p0}, Lcom/car/voice/VoiceRecognizerService$2;-><init>(Lcom/car/voice/VoiceRecognizerService;)V

    if-eqz v3, :cond_5

    const-wide/16 v4, 0x1f4

    :goto_1
    invoke-virtual {v6, v7, v4, v5}, Lcom/car/voice/VoiceRecognizerService$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_6
    invoke-static {p0}, Lcom/car/common/CarUtil;->isInCommunication(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_7

    iget v4, p0, Lcom/car/voice/VoiceRecognizerService;->mCallStatus:I

    if-eq v4, v9, :cond_1

    :cond_7
    invoke-virtual {p0}, Lcom/car/voice/VoiceRecognizerService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onVoiceUIDismiss()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/car/voice/VoiceRecognizerService;->mRequestRunning:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/car/voice/VoiceRecognizerService;->stopCurrentRequest()V

    :cond_0
    iget-object v1, p0, Lcom/car/voice/VoiceRecognizerService;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    invoke-virtual {v1}, Lcom/car/voice/VoiceEngineFactory;->stopRecognize()V

    iget-object v1, p0, Lcom/car/voice/VoiceRecognizerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/car/voice/VoiceRecognizerService;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget v1, p0, Lcom/car/voice/VoiceRecognizerService;->mCallStatus:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    invoke-direct {p0, v3}, Lcom/car/voice/VoiceRecognizerService;->enableWakeupListener(Z)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.voice.assist"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "showing"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/car/voice/VoiceRecognizerService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/car/voice/VoiceRecognizerService;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v1, v3}, Lcom/car/voice/VoiceUI;->setPhoneCallIncoming(Z)V

    iget-object v1, p0, Lcom/car/voice/VoiceRecognizerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/voice/VoiceRecognizerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/car/voice/VoiceRecognizerService;->enableWakeupListener(Z)V

    goto :goto_0
.end method

.method public onVoiceUIRestartRecognizer()V
    .locals 3

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v0}, Lcom/car/voice/VoiceUI;->onClear()V

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v0}, Lcom/car/voice/VoiceUI;->onShowCommandTip()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/voice/VoiceRecognizerService;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    invoke-virtual {p0, v0, v1, v2}, Lcom/car/voice/VoiceRecognizerService;->doRequestRecognizer(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)I

    return-void
.end method

.method public onVoiceUIResult(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    invoke-virtual {v0, p1}, Lcom/car/voice/VoiceEngineFactory;->setVoiceUIResult(Ljava/lang/String;)V

    return-void
.end method

.method public onVoiceUIShow()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    iget v1, p0, Lcom/car/voice/VoiceRecognizerService;->mRecType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/voice/VoiceRecognizerService;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    invoke-virtual {p0, v4, v1, v2}, Lcom/car/voice/VoiceRecognizerService;->doRequestRecognizer(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)I

    :cond_0
    :goto_0
    invoke-direct {p0, v4}, Lcom/car/voice/VoiceRecognizerService;->enableWakeupListener(Z)V

    iget-object v1, p0, Lcom/car/voice/VoiceRecognizerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/car/voice/VoiceRecognizerService;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v5, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.voice.assist"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "showing"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/car/voice/VoiceRecognizerService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/car/voice/VoiceRecognizerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void

    :cond_1
    iget v1, p0, Lcom/car/voice/VoiceRecognizerService;->mRecType:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/car/voice/VoiceRecognizerService;->mRecType:I

    iget-object v2, p0, Lcom/car/voice/VoiceRecognizerService;->mParam:Ljava/lang/String;

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    invoke-virtual {p0, v1, v2, v3}, Lcom/car/voice/VoiceRecognizerService;->doRequestRecognizer(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)I

    goto :goto_0
.end method

.method declared-synchronized releaseRecognize(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "CarSvc_VoiceRecognizeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseRecognize reqId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",curPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/voice/VoiceRecognizerService;->mCurCallingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/voice/VoiceRecognizerService;->mCurReqId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/car/voice/VoiceRecognizerService;->mRequestRunning:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/car/voice/VoiceRecognizerService;->mCurReqId:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    invoke-virtual {v0}, Lcom/car/voice/VoiceEngineFactory;->stopRecognize()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/voice/VoiceRecognizerService;->mCurCallingPid:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/voice/VoiceRecognizerService;->mRequestRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method requestRecognizer(ILjava/lang/String;)I
    .locals 3

    const-string v0, "CarSvc_VoiceRecognizeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestRecognizer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    invoke-virtual {p0, p1, p2, v0}, Lcom/car/voice/VoiceRecognizerService;->doRequestRecognizer(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)I

    move-result v0

    return v0
.end method

.method declared-synchronized setCallback(Lcom/car/common/IVoiceRecognizerCallback;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CarSvc_VoiceRecognizeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setCallback  to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/car/voice/VoiceRecognizerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
