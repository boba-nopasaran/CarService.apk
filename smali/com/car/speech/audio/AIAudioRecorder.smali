.class public Lcom/car/speech/audio/AIAudioRecorder;
.super Ljava/lang/Object;
.source "AIAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/speech/audio/AIAudioRecorder$ReadRunnbale;
    }
.end annotation


# static fields
.field private static final AUDIORECORD_RETRY_TIMES:I = 0x4

.field public static final AUDIO_ENCODING_16BIT:I = 0x2

.field public static final AUDIO_SOURCE:I = 0x1

.field public static final INTERVAL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AIAudioRecorder"

.field private static audio_encoding:I

.field private static audio_source:I


# instance fields
.field private audioSampleRate:Lcom/car/speech/audio/AISampleRate;

.field private audio_channel:I

.field private audio_channel_num:I

.field private intervalTime:I

.field private mCacheQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIsNeedCaching:Z

.field private mIsNeedSendCachingData:Z

.field private volatile mIsRecording:Ljava/lang/Boolean;

.field private mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/car/speech/audio/AIRecordListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mOneShotLock:Ljava/util/concurrent/locks/Lock;

.field private mPool:Ljava/util/concurrent/ExecutorService;

.field private mQueueSize:I

.field private volatile mRecorder:Landroid/media/AudioRecord;

.field private mSemaphore:Ljava/util/concurrent/Semaphore;

.field private mSessionId:J

.field private maxRecordSec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/car/speech/audio/AIAudioRecorder;->audio_source:I

    const/4 v0, 0x2

    sput v0, Lcom/car/speech/audio/AIAudioRecorder;->audio_encoding:I

    return-void
.end method

.method public constructor <init>(Lcom/car/speech/audio/AIRecordListener;)V
    .locals 6

    sget-object v1, Lcom/car/speech/audio/AISampleRate;->SAMPLE_RATE_16K:Lcom/car/speech/audio/AISampleRate;

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/car/speech/audio/AIAudioRecorder;-><init>(Lcom/car/speech/audio/AISampleRate;IIZLcom/car/speech/audio/AIRecordListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/car/speech/audio/AISampleRate;IIZLcom/car/speech/audio/AIRecordListener;)V
    .locals 5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/car/speech/audio/AIAudioRecorder;->audio_channel:I

    iget v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->audio_channel:I

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->audio_channel_num:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->intervalTime:I

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mIsRecording:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mOneShotLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mCacheQueue:Ljava/util/Queue;

    iput v4, p0, Lcom/car/speech/audio/AIAudioRecorder;->mQueueSize:I

    iput-boolean v4, p0, Lcom/car/speech/audio/AIAudioRecorder;->mIsNeedCaching:Z

    iput-boolean v4, p0, Lcom/car/speech/audio/AIAudioRecorder;->mIsNeedSendCachingData:Z

    iput-object p1, p0, Lcom/car/speech/audio/AIAudioRecorder;->audioSampleRate:Lcom/car/speech/audio/AISampleRate;

    iput p3, p0, Lcom/car/speech/audio/AIAudioRecorder;->maxRecordSec:I

    iput p2, p0, Lcom/car/speech/audio/AIAudioRecorder;->intervalTime:I

    if-eqz p4, :cond_1

    move v0, v3

    :goto_1
    iput v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->audio_channel:I

    iget v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->audio_channel:I

    if-ne v0, v3, :cond_2

    :goto_2
    iput v1, p0, Lcom/car/speech/audio/AIAudioRecorder;->audio_channel_num:I

    invoke-direct {p0}, Lcom/car/speech/audio/AIAudioRecorder;->_newAudioRecorder()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private _newAudioRecorder()V
    .locals 6

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/car/speech/audio/AIAudioRecorder;->audioSampleRate:Lcom/car/speech/audio/AISampleRate;

    invoke-direct {p0, v3}, Lcom/car/speech/audio/AIAudioRecorder;->newInstance(Lcom/car/speech/audio/AISampleRate;)Landroid/media/AudioRecord;

    move-result-object v3

    iput-object v3, p0, Lcom/car/speech/audio/AIAudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    const-string v3, "AIAudioRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new Instance end, recorder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/speech/audio/AIAudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/speech/audio/AIAudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-nez v3, :cond_0

    new-instance v3, Lcom/aispeech/AIError;

    const v4, 0x114f5

    const-string v5, "\u65e0\u6cd5\u83b7\u53d6\u5f55\u97f3\u8bbe\u5907!"

    invoke-direct {v3, v4, v5}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/aispeech/AIError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/aispeech/AIError;->printStackTrace()V

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    const-wide/16 v4, 0x28

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    const-string v3, "AIAudioRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recorder.new() retry count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/aispeech/AIError; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, p0, Lcom/car/speech/audio/AIAudioRecorder;->mPool:Ljava/util/concurrent/ExecutorService;

    :goto_2
    return-void

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lcom/car/speech/audio/AIAudioRecorder;->onException(Lcom/aispeech/AIError;)V

    goto :goto_2
.end method

.method private _releaseAudioRecorder()V
    .locals 2

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    :cond_0
    const-string v0, "AIAudioRecorder"

    const-string v1, "Release AIAudioRecord, AudioRecord = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private _startAudioRecorder()Z
    .locals 6

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    const-string v3, "AIAudioRecorder"

    const-string v4, "recorder.startRecording()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/speech/audio/AIAudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v3, p0, Lcom/car/speech/audio/AIAudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    new-instance v3, Lcom/aispeech/AIError;

    const v4, 0x114f7

    const-string v5, "\u5f55\u97f3\u5931\u8d25!"

    invoke-direct {v3, v4, v5}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/aispeech/AIError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/aispeech/AIError;->printStackTrace()V

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    const-wide/16 v4, 0x28

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-wide v4, p0, Lcom/car/speech/audio/AIAudioRecorder;->mSessionId:J

    invoke-direct {p0, v4, v5}, Lcom/car/speech/audio/AIAudioRecorder;->onRecordStarted(J)V

    const-string v3, "AIAudioRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recorder.start() retry count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/aispeech/AIError; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x1

    :goto_2
    return v3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lcom/car/speech/audio/AIAudioRecorder;->onException(Lcom/aispeech/AIError;)V

    const/4 v3, 0x0

    goto :goto_2
.end method

.method private _stopAudioRecorder()V
    .locals 2

    const-string v0, "AIAudioRecorder"

    const-string v1, "AudioRecord.stop() before"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const-string v0, "AIAudioRecorder"

    const-string v1, "AudioRecord.stop() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/car/speech/audio/AIAudioRecorder;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/car/speech/audio/AIAudioRecorder;->readDataFromSoloAudioRecorderInloop(J)V

    return-void
.end method

.method private calcAudioSize(I)J
    .locals 2

    iget v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->audio_channel_num:I

    iget-object v1, p0, Lcom/car/speech/audio/AIAudioRecorder;->audioSampleRate:Lcom/car/speech/audio/AISampleRate;

    invoke-virtual {v1}, Lcom/car/speech/audio/AISampleRate;->getValue()I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Lcom/car/speech/audio/AIAudioRecorder;->audio_encoding:I

    mul-int/2addr v0, v1

    mul-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method private calc_buffer_size(Lcom/car/speech/audio/AISampleRate;)I
    .locals 7

    invoke-virtual {p1}, Lcom/car/speech/audio/AISampleRate;->getValue()I

    move-result v0

    iget v4, p0, Lcom/car/speech/audio/AIAudioRecorder;->audio_channel_num:I

    mul-int/2addr v4, v0

    sget v5, Lcom/car/speech/audio/AIAudioRecorder;->audio_encoding:I

    mul-int v1, v4, v5

    iget v4, p0, Lcom/car/speech/audio/AIAudioRecorder;->audio_channel:I

    sget v5, Lcom/car/speech/audio/AIAudioRecorder;->audio_encoding:I

    invoke-static {v0, v4, v5}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    mul-int/lit8 v1, v3, 0x2

    if-le v3, v1, :cond_0

    mul-int/lit8 v2, v1, 0x4

    if-ge v2, v3, :cond_1

    mul-int/lit8 v1, v3, 0x2

    :cond_0
    :goto_0
    const-string v4, "AIAudioRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MinBufferSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", BufferSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    mul-int/lit8 v4, v3, 0x2

    if-ge v2, v4, :cond_2

    mul-int/lit8 v1, v2, 0x2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private clearListener()V
    .locals 2

    const-string v0, "AIAudioRecorder"

    const-string v1, "clearListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public static generateSessionId()J
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/aispeech/common/Util;->generateRandom(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getReadBufferSize(Lcom/car/speech/audio/AISampleRate;I)I
    .locals 5

    invoke-virtual {p1}, Lcom/car/speech/audio/AISampleRate;->getValue()I

    move-result v0

    iget v2, p0, Lcom/car/speech/audio/AIAudioRecorder;->audio_channel_num:I

    mul-int/2addr v2, v0

    sget v3, Lcom/car/speech/audio/AIAudioRecorder;->audio_encoding:I

    mul-int/2addr v2, v3

    mul-int/2addr v2, p2

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AIAudioRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SampleRate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ReadBufferSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method private hasListener()Z
    .locals 1

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newInstance(Lcom/car/speech/audio/AISampleRate;)Landroid/media/AudioRecord;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/car/speech/audio/AIAudioRecorder;->calc_buffer_size(Lcom/car/speech/audio/AISampleRate;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v1, "AIAudioRecorder"

    const-string v2, "recorder.new() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/car/speech/audio/AIAudioRecorder;->audio_channel:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    const-string v1, "AIAudioRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUDIO_CHANNEL : stero  channel_num: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/speech/audio/AIAudioRecorder;->audio_channel_num:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Landroid/media/AudioRecord;

    sget v1, Lcom/car/speech/audio/AIAudioRecorder;->audio_source:I

    invoke-virtual {p1}, Lcom/car/speech/audio/AISampleRate;->getValue()I

    move-result v2

    iget v3, p0, Lcom/car/speech/audio/AIAudioRecorder;->audio_channel:I

    sget v4, Lcom/car/speech/audio/AIAudioRecorder;->audio_encoding:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    const-string v1, "AIAudioRecorder"

    const-string v2, "recorder.new() end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :goto_1
    return-object v0

    :cond_0
    const-string v1, "AIAudioRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUDIO_CHANNEL : mono channel_num: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/speech/audio/AIAudioRecorder;->audio_channel_num:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private onBufferReceived(J[BIZ)V
    .locals 5

    iget-object v2, p0, Lcom/car/speech/audio/AIAudioRecorder;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/speech/audio/AIRecordListener;

    if-eqz p5, :cond_1

    invoke-interface {v1}, Lcom/car/speech/audio/AIRecordListener;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocalWakeupDnnParams"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/car/speech/audio/AIRecordListener;->onBufferReceived(J[BI)V

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/car/speech/audio/AIRecordListener;->onBufferReceived(J[BI)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onException(Lcom/aispeech/AIError;)V
    .locals 3

    iget-object v2, p0, Lcom/car/speech/audio/AIAudioRecorder;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/speech/audio/AIRecordListener;

    invoke-interface {v1, p1}, Lcom/car/speech/audio/AIRecordListener;->onException(Lcom/aispeech/AIError;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onRecordReleased()V
    .locals 3

    iget-object v2, p0, Lcom/car/speech/audio/AIAudioRecorder;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/speech/audio/AIRecordListener;

    invoke-interface {v1}, Lcom/car/speech/audio/AIRecordListener;->onRecordReleased()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onRecordStarted(J)V
    .locals 3

    iget-object v2, p0, Lcom/car/speech/audio/AIAudioRecorder;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/speech/audio/AIRecordListener;

    invoke-interface {v1, p1, p2}, Lcom/car/speech/audio/AIRecordListener;->onRecordStarted(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onRecordStopped(J)V
    .locals 3

    iget-object v2, p0, Lcom/car/speech/audio/AIAudioRecorder;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/speech/audio/AIRecordListener;

    invoke-interface {v1, p1, p2}, Lcom/car/speech/audio/AIRecordListener;->onRecordStopped(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readDataFromSoloAudioRecorderInloop(J)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/speech/audio/AIAudioRecorder;->audioSampleRate:Lcom/car/speech/audio/AISampleRate;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/speech/audio/AIAudioRecorder;->intervalTime:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/car/speech/audio/AIAudioRecorder;->getReadBufferSize(Lcom/car/speech/audio/AISampleRate;I)I

    move-result v15

    new-array v10, v15, [B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/car/speech/audio/AIAudioRecorder;->maxRecordSec:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/car/speech/audio/AIAudioRecorder;->calcAudioSize(I)J

    move-result-wide v16

    const/4 v11, 0x0

    const-string v3, "AIAudioRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MAX Record Size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v3, "AIAudioRecorder"

    const-string v4, "AIAudioRecord.read()..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/speech/audio/AIAudioRecorder;->mIsRecording:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "stop end."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/car/speech/audio/AIAudioRecorder;->semaphoreV(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/speech/audio/AIAudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    const/4 v4, 0x0

    invoke-virtual {v3, v10, v4, v15}, Landroid/media/AudioRecord;->read([BII)I

    move-result v11

    if-lez v11, :cond_4

    new-array v2, v11, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v10, v3, v2, v4, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/speech/audio/AIAudioRecorder;->mOneShotLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/car/speech/audio/AIAudioRecorder;->mIsNeedCaching:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->getOneShotCacheTime()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/speech/audio/AIAudioRecorder;->intervalTime:I

    div-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/car/speech/audio/AIAudioRecorder;->mQueueSize:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/speech/audio/AIAudioRecorder;->mCacheQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/speech/audio/AIAudioRecorder;->mQueueSize:I

    if-le v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/speech/audio/AIAudioRecorder;->mCacheQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/speech/audio/AIAudioRecorder;->mCacheQueue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/car/speech/audio/AIAudioRecorder;->mIsNeedSendCachingData:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/car/speech/audio/AIAudioRecorder;->mIsNeedSendCachingData:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/speech/audio/AIAudioRecorder;->mCacheQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v7, v6

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/car/speech/audio/AIAudioRecorder;->onBufferReceived(J[BIZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v13

    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "stop end."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/car/speech/audio/AIAudioRecorder;->semaphoreV(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    :try_start_3
    invoke-direct/range {v7 .. v12}, Lcom/car/speech/audio/AIAudioRecorder;->onBufferReceived(J[BIZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/speech/audio/AIAudioRecorder;->mOneShotLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    const-string v4, "stop end."

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/car/speech/audio/AIAudioRecorder;->semaphoreV(Ljava/lang/String;)V

    throw v3

    :cond_4
    :try_start_4
    const-string v3, "AIAudioRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recorder error read size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private registerListener(Lcom/car/speech/audio/AIRecordListener;)V
    .locals 3

    const-string v0, "AIAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AIAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private semaphoreP(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/car/speech/audio/AIAudioRecorder;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    const-string v1, "SpeechEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Semaphore acquire : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private semaphoreV(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    const-string v0, "SpeechEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Semaphore release : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unRegisterListener(Lcom/car/speech/audio/AIRecordListener;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AIAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getAudioChannel()I
    .locals 1

    iget v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->audio_channel_num:I

    return v0
.end method

.method public getAudioEncoding()I
    .locals 1

    sget v0, Lcom/car/speech/audio/AIAudioRecorder;->audio_encoding:I

    return v0
.end method

.method public getReadBufferSize()I
    .locals 2

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->audioSampleRate:Lcom/car/speech/audio/AISampleRate;

    iget v1, p0, Lcom/car/speech/audio/AIAudioRecorder;->intervalTime:I

    invoke-direct {p0, v0, v1}, Lcom/car/speech/audio/AIAudioRecorder;->getReadBufferSize(Lcom/car/speech/audio/AISampleRate;I)I

    move-result v0

    return v0
.end method

.method public getSampleRate()Lcom/car/speech/audio/AISampleRate;
    .locals 1

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->audioSampleRate:Lcom/car/speech/audio/AISampleRate;

    return-object v0
.end method

.method public declared-synchronized isRecording()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mIsRecording:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRegistered(Lcom/car/speech/audio/AIRecordListener;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .locals 2

    const-string v0, "AIAudioRecorder"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/car/speech/audio/AIAudioRecorder;->clearListener()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/speech/audio/AIAudioRecorder;->stop(Lcom/car/speech/audio/AIRecordListener;)V

    invoke-direct {p0}, Lcom/car/speech/audio/AIAudioRecorder;->_releaseAudioRecorder()V

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public start(Lcom/car/speech/audio/AIRecordListener;)J
    .locals 4

    const-string v0, "AIAudioRecorder"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-direct {p0, p1}, Lcom/car/speech/audio/AIAudioRecorder;->registerListener(Lcom/car/speech/audio/AIRecordListener;)V

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mIsRecording:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AIAudioRecorder"

    const-string v1, "AudioRecorder has been started!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mSessionId:J

    invoke-interface {p1, v0, v1}, Lcom/car/speech/audio/AIRecordListener;->onRecordStarted(J)V

    :cond_0
    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-wide v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mSessionId:J

    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Lcom/car/speech/audio/AIAudioRecorder;->generateSessionId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mSessionId:J

    invoke-direct {p0}, Lcom/car/speech/audio/AIAudioRecorder;->_startAudioRecorder()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mIsRecording:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/car/speech/audio/AIAudioRecorder$ReadRunnbale;

    iget-wide v2, p0, Lcom/car/speech/audio/AIAudioRecorder;->mSessionId:J

    invoke-direct {v1, p0, v2, v3}, Lcom/car/speech/audio/AIAudioRecorder$ReadRunnbale;-><init>(Lcom/car/speech/audio/AIAudioRecorder;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mSessionId:J

    goto :goto_0
.end method

.method public startCachingData()V
    .locals 2

    const-string v0, "AIAudioRecorder"

    const-string v1, "startCachingData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mIsNeedCaching:Z

    return-void
.end method

.method public startSendCachingData()V
    .locals 2

    const-string v0, "AIAudioRecorder"

    const-string v1, "startSendCachingData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mOneShotLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mIsNeedCaching:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mIsNeedSendCachingData:Z

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mOneShotLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public stop(Lcom/car/speech/audio/AIRecordListener;)V
    .locals 2

    const-string v0, "AIAudioRecorder"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mIsRecording:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/car/speech/audio/AIAudioRecorder;->unRegisterListener(Lcom/car/speech/audio/AIRecordListener;)V

    :goto_0
    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const-string v0, "AIAudioRecorder"

    const-string v1, "the listener has been unRegistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "AIAudioRecorder"

    const-string v1, "stop recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mIsRecording:Ljava/lang/Boolean;

    const-string v0, "stop start."

    invoke-direct {p0, v0}, Lcom/car/speech/audio/AIAudioRecorder;->semaphoreP(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/car/speech/audio/AIAudioRecorder;->_stopAudioRecorder()V

    goto :goto_0

    :cond_2
    const-string v0, "AIAudioRecorder"

    const-string v1, "AudioRecorder has been stopped!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopCachingData()V
    .locals 2

    const-string v0, "AIAudioRecorder"

    const-string v1, "stopCachingData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/speech/audio/AIAudioRecorder;->mIsNeedCaching:Z

    return-void
.end method
