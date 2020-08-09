.class public final Lcom/car/utils/TipPlayer;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TipPlayer.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/utils/TipPlayer$TTSDoneNotifier;
    }
.end annotation


# static fields
.field static final MSG_TTS_WATCHDOG:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CarSvc_TipPlayer"

.field static final TYPE_NAME:[Ljava/lang/String;

.field private static sInstance:Lcom/car/utils/TipPlayer;


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field mCurSerial:I

.field mEverAudioRequest:Z

.field private mHandler:Landroid/os/Handler;

.field mHasText2Say:Z

.field private mInitOK:Z

.field mIsVoiceRecognizing:Z

.field mLock:Ljava/lang/Object;

.field mNotifySerial:I

.field private mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field mParams:Landroid/os/Bundle;

.field mPlayingId:Ljava/lang/String;

.field mTTSDoneNotifier:Lcom/car/utils/TipPlayer$TTSDoneNotifier;

.field mTask2Run:Ljava/lang/Runnable;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTtsTaskID:I

.field mVoiceUI:Lcom/car/voice/VoiceUI;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "H"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "R"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "N"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "N"

    aput-object v2, v0, v1

    sput-object v0, Lcom/car/utils/TipPlayer;->TYPE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    iput-object v0, p0, Lcom/car/utils/TipPlayer;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iput v1, p0, Lcom/car/utils/TipPlayer;->mCurSerial:I

    iput-object v0, p0, Lcom/car/utils/TipPlayer;->mPlayingId:Ljava/lang/String;

    iput-object v0, p0, Lcom/car/utils/TipPlayer;->mTask2Run:Ljava/lang/Runnable;

    iput v1, p0, Lcom/car/utils/TipPlayer;->mNotifySerial:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/car/utils/TipPlayer;->mParams:Landroid/os/Bundle;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/car/utils/TipPlayer;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/car/utils/TipPlayer;->mHasText2Say:Z

    iput-boolean v1, p0, Lcom/car/utils/TipPlayer;->mEverAudioRequest:Z

    new-instance v0, Lcom/car/utils/TipPlayer$1;

    invoke-direct {v0, p0}, Lcom/car/utils/TipPlayer$1;-><init>(Lcom/car/utils/TipPlayer;)V

    iput-object v0, p0, Lcom/car/utils/TipPlayer;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/utils/TipPlayer;->mTtsTaskID:I

    new-instance v0, Lcom/car/utils/TipPlayer$3;

    invoke-direct {v0, p0}, Lcom/car/utils/TipPlayer$3;-><init>(Lcom/car/utils/TipPlayer;)V

    iput-object v0, p0, Lcom/car/utils/TipPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/car/utils/TipPlayer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private doPlaySpeech(Ljava/lang/String;ILjava/lang/String;)I
    .locals 7

    const/16 v6, 0x64

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v2, "CarSvc_TipPlayer"

    const-string v3, "doPlaySpeech str is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/common/CarUtil;->isInCommunication(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p3}, Lcom/car/utils/TipPlayer;->onDone(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/car/utils/TipPlayer;->mInitOK:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/car/utils/TipPlayer;->mIsVoiceRecognizing:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mParams:Landroid/os/Bundle;

    const-string v4, "volume"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/car/utils/TipPlayer$2;

    invoke-direct {v4, p0, p3, p1}, Lcom/car/utils/TipPlayer$2;-><init>(Lcom/car/utils/TipPlayer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Lcom/car/utils/TipPlayer;->mParams:Landroid/os/Bundle;

    invoke-virtual {v3, p1, p2, v4, p3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    const-string v3, "CarSvc_TipPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "speech="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", speechId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", queueMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsVoiceRecognizing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/car/utils/TipPlayer;->mIsVoiceRecognizing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    invoke-virtual {p0, p3}, Lcom/car/utils/TipPlayer;->onError(Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/car/utils/TipPlayer;->mPlayingId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/car/utils/TipPlayer;->mHasText2Say:Z

    invoke-virtual {p0}, Lcom/car/utils/TipPlayer;->reInit()V

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mParams:Landroid/os/Bundle;

    const-string v4, "volume"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/car/utils/TipPlayer;->mHasText2Say:Z

    :cond_4
    move v1, v2

    goto/16 :goto_0
.end method

.method public static instance()Lcom/car/utils/TipPlayer;
    .locals 1

    sget-object v0, Lcom/car/utils/TipPlayer;->sInstance:Lcom/car/utils/TipPlayer;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/car/utils/TipPlayer;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/car/utils/TipPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/car/utils/TipPlayer;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    sput-object p0, Lcom/car/utils/TipPlayer;->sInstance:Lcom/car/utils/TipPlayer;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/car/utils/TipPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/utils/TipPlayer;->mCurSerial:I

    return-void
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/car/utils/TipPlayer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public isTTSPlaying(Ljava/lang/Runnable;)Z
    .locals 2

    iget-object v1, p0, Lcom/car/utils/TipPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/car/utils/TipPlayer;->mHasText2Say:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mPlayingId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mTask2Run:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/car/utils/TipPlayer;->mTask2Run:Ljava/lang/Runnable;

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public needNotifyIfDone(Lcom/car/utils/TipPlayer$TTSDoneNotifier;)V
    .locals 1

    iget v0, p0, Lcom/car/utils/TipPlayer;->mCurSerial:I

    iput v0, p0, Lcom/car/utils/TipPlayer;->mNotifySerial:I

    iput-object p1, p0, Lcom/car/utils/TipPlayer;->mTTSDoneNotifier:Lcom/car/utils/TipPlayer$TTSDoneNotifier;

    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "CarSvc_TipPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDone:utteranceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPlayingId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/utils/TipPlayer;->mPlayingId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/car/utils/TipPlayer;->mEverAudioRequest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/car/utils/TipPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iput-boolean v3, p0, Lcom/car/utils/TipPlayer;->mEverAudioRequest:Z

    :cond_0
    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mPlayingId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mPlayingId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/car/utils/TipPlayer;->mHasText2Say:Z

    iput-object v4, p0, Lcom/car/utils/TipPlayer;->mPlayingId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/car/utils/TipPlayer;->try2StartTask(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/car/utils/TipPlayer;->mNotifySerial:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/car/utils/TipPlayer;->mNotifySerial:I

    iget v1, p0, Lcom/car/utils/TipPlayer;->mCurSerial:I

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mTTSDoneNotifier:Lcom/car/utils/TipPlayer$TTSDoneNotifier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mTTSDoneNotifier:Lcom/car/utils/TipPlayer$TTSDoneNotifier;

    invoke-interface {v0}, Lcom/car/utils/TipPlayer$TTSDoneNotifier;->onTTSDone()V

    :cond_2
    iput-object v4, p0, Lcom/car/utils/TipPlayer;->mTTSDoneNotifier:Lcom/car/utils/TipPlayer$TTSDoneNotifier;

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/utils/TipPlayer;->mNotifySerial:I

    :cond_3
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "CarSvc_TipPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:utteranceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/car/utils/TipPlayer;->mEverAudioRequest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/car/utils/TipPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iput-boolean v3, p0, Lcom/car/utils/TipPlayer;->mEverAudioRequest:Z

    :cond_0
    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mPlayingId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mPlayingId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/car/utils/TipPlayer;->mHasText2Say:Z

    iput-object v4, p0, Lcom/car/utils/TipPlayer;->mPlayingId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/car/utils/TipPlayer;->try2StartTask(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/car/utils/TipPlayer;->mNotifySerial:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/car/utils/TipPlayer;->mNotifySerial:I

    iget v1, p0, Lcom/car/utils/TipPlayer;->mCurSerial:I

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mTTSDoneNotifier:Lcom/car/utils/TipPlayer$TTSDoneNotifier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mTTSDoneNotifier:Lcom/car/utils/TipPlayer$TTSDoneNotifier;

    invoke-interface {v0}, Lcom/car/utils/TipPlayer$TTSDoneNotifier;->onTTSDone()V

    :cond_2
    iput-object v4, p0, Lcom/car/utils/TipPlayer;->mTTSDoneNotifier:Lcom/car/utils/TipPlayer$TTSDoneNotifier;

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/utils/TipPlayer;->mNotifySerial:I

    :cond_3
    return-void
.end method

.method public onInit(I)V
    .locals 5

    const-string v2, "CarSvc_TipPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TTS init return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/car/utils/TipPlayer;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/car/utils/TipPlayer;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const v3, 0x3fa66666    # 1.3f

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/car/utils/TipPlayer;->mInitOK:Z

    :goto_1
    const-string v2, "CarSvc_TipPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TTS setLanguage return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.tts.init"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/utils/TipPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/car/utils/TipPlayer;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/car/utils/TipPlayer;->mInitOK:Z

    goto :goto_1
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/car/utils/TipPlayer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-object p1, p0, Lcom/car/utils/TipPlayer;->mPlayingId:Ljava/lang/String;

    iget-object v2, p0, Lcom/car/utils/TipPlayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/voice/cmd/Music;->isKuwoInstalled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/car/utils/TipPlayer;->mEverAudioRequest:Z

    iget-object v2, p0, Lcom/car/utils/TipPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v2, v3, v4, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    const-string v2, "CarSvc_TipPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStart:utteranceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", requestAudioFocus succeed?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v0, v1, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playSpeech(Ljava/lang/String;I)I
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mPlayingId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mPlayingId:Ljava/lang/String;

    const-string v4, "_N"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v3, "persist.tts.mute"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return v6

    :cond_1
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/car/common/CarUtil;->isAliYunOS()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v0, Landroid/content/Intent;

    const-string v3, "aios.intent.action.SPEAK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "aios.intent.extra.TEXT"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "aios.intent.extra.PRIORITY"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    if-nez v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v3, "aios.intent.action.SHUTUP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "aios.intent.extra.TTSID"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    invoke-static {p1}, Lcom/aispeech/aios/sdk/manager/AIOSTTSManager;->speak(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.bidostar.tts"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "content"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "mode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_6

    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "ro.vol.recover"

    iget-object v5, p0, Lcom/car/utils/TipPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v7, v4, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_6
    invoke-static {}, Lcom/car/speech/MiniSpeech;->getIntance()Lcom/car/speech/MiniSpeech;

    move-result-object v3

    sget-object v4, Lcom/car/utils/TipPlayer;->TYPE_NAME:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, p1, v4}, Lcom/car/speech/MiniSpeech;->playTts(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_a

    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_8

    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "ro.vol.recover"

    iget-object v5, p0, Lcom/car/utils/TipPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v7, v4, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.txznet.adapter.recv"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "key_type"

    const/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "action"

    const-string v4, "tts"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "text"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eq p2, v7, :cond_9

    if-eq p2, v8, :cond_9

    const-string v3, "type"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_9
    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_b

    invoke-static {}, Lcom/car/tencent/TencentTts;->getInstance()Lcom/car/tencent/TencentTts;

    move-result-object v3

    sget-object v4, Lcom/car/utils/TipPlayer;->TYPE_NAME:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, p1, v4}, Lcom/car/tencent/TencentTts;->playTts(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_c

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.tencent.tts"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "content"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "type"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/car/utils/TipPlayer;->mCurSerial:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/car/utils/TipPlayer;->mCurSerial:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/car/utils/TipPlayer;->TYPE_NAME:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v1, v3}, Lcom/car/utils/TipPlayer;->doPlaySpeech(Ljava/lang/String;ILjava/lang/String;)I

    goto/16 :goto_0
.end method

.method reInit()V
    .locals 2

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/car/utils/TipPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/car/utils/TipPlayer;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    return-void
.end method

.method public removeTaskIfExist()V
    .locals 2

    iget-object v1, p0, Lcom/car/utils/TipPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mTask2Run:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/utils/TipPlayer;->mTask2Run:Ljava/lang/Runnable;

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

.method public removeTaskIfExist(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v1, p0, Lcom/car/utils/TipPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mTask2Run:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mTask2Run:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/utils/TipPlayer;->mTask2Run:Ljava/lang/Runnable;

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

.method public setRecognizingStatus(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/car/utils/TipPlayer;->mIsVoiceRecognizing:Z

    const-string v0, "CarSvc_TipPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVoiceRecognizing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/car/utils/TipPlayer;->mIsVoiceRecognizing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVoiceUI(Lcom/car/voice/VoiceUI;)V
    .locals 0

    iput-object p1, p0, Lcom/car/utils/TipPlayer;->mVoiceUI:Lcom/car/voice/VoiceUI;

    return-void
.end method

.method try2StartTask(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/car/utils/TipPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mTask2Run:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v0, "CarSvc_TipPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and ready to start Runnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/utils/TipPlayer;->mTask2Run:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/utils/TipPlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/car/utils/TipPlayer;->mTask2Run:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/utils/TipPlayer;->mTask2Run:Ljava/lang/Runnable;

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
