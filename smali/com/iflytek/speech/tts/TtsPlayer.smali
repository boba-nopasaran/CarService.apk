.class public Lcom/iflytek/speech/tts/TtsPlayer;
.super Ljava/lang/Object;
.source "TtsPlayer.java"

# interfaces
.implements Lcom/iflytek/speech/ITtsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;,
        Lcom/iflytek/speech/tts/TtsPlayer$AudioTrackSteamState;
    }
.end annotation


# static fields
.field private static cnt:I = 0x0

.field private static iInitState:I = 0x0

.field private static final mAudioFormat:I = 0x2

.field private static final mChannelConfig:I = 0x4

.field private static final mSampleRateInHz:I = 0x3e80


# instance fields
.field private mAudioTrack:Landroid/media/AudioTrack;

.field private final mAudioTrackLock:Ljava/util/concurrent/locks/Lock;

.field private mAudioTrackSteamState:I

.field private final mAudioWriteWorkingFunc:Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;

.field private mITTSListener:Lcom/iflytek/speech/tts/ITTSListener;

.field private mMinBufferSizeInBytes:I

.field private final mNativeHandle:Lcom/iflytek/speech/NativeHandle;

.field private mOnDataReadyFlag:Z

.field private mThreadAudioWrite:Ljava/lang/Thread;

.field private final mWorkingThreadSyncObj:Ljava/lang/Object;

.field private nPreTextIndex:I

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/speech/tts/TtsPlayer;->cnt:I

    const/4 v0, -0x1

    sput v0, Lcom/iflytek/speech/tts/TtsPlayer;->iInitState:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TtsPlayer_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/iflytek/speech/tts/TtsPlayer;->cnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackLock:Ljava/util/concurrent/locks/Lock;

    iput-object v3, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    iput v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mMinBufferSizeInBytes:I

    iput-object v3, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mITTSListener:Lcom/iflytek/speech/tts/ITTSListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->nPreTextIndex:I

    iput-boolean v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mOnDataReadyFlag:Z

    new-instance v0, Lcom/iflytek/speech/NativeHandle;

    invoke-direct {v0}, Lcom/iflytek/speech/NativeHandle;-><init>()V

    iput-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iput v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mWorkingThreadSyncObj:Ljava/lang/Object;

    new-instance v0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;

    invoke-direct {v0, p0, v3}, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;-><init>(Lcom/iflytek/speech/tts/TtsPlayer;Lcom/iflytek/speech/tts/TtsPlayer$1;)V

    iput-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioWriteWorkingFunc:Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;

    iput-object v3, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mThreadAudioWrite:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    const-string v1, "new TtsPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    const-string v1, "initRes start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v2}, Lcom/iflytek/speech/libisstts;->initRes(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/iflytek/speech/tts/TtsPlayer;->iInitState:I

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRes end, ret is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/iflytek/speech/tts/TtsPlayer;->iInitState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/speech/tts/TtsPlayer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mWorkingThreadSyncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/speech/tts/TtsPlayer;)Landroid/media/AudioTrack;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$202(Lcom/iflytek/speech/tts/TtsPlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p1
.end method

.method static synthetic access$300(Lcom/iflytek/speech/tts/TtsPlayer;)Lcom/iflytek/speech/NativeHandle;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iflytek/speech/tts/TtsPlayer;)I
    .locals 1

    iget v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mMinBufferSizeInBytes:I

    return v0
.end method

.method static synthetic access$500(Lcom/iflytek/speech/tts/TtsPlayer;)I
    .locals 1

    iget v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    return v0
.end method

.method static synthetic access$502(Lcom/iflytek/speech/tts/TtsPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    return p1
.end method

.method static synthetic access$600(Lcom/iflytek/speech/tts/TtsPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mOnDataReadyFlag:Z

    return v0
.end method

.method static synthetic access$700(Lcom/iflytek/speech/tts/TtsPlayer;)Lcom/iflytek/speech/tts/ITTSListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mITTSListener:Lcom/iflytek/speech/tts/ITTSListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/iflytek/speech/tts/TtsPlayer;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method


# virtual methods
.method public GetInitState()I
    .locals 1

    sget v0, Lcom/iflytek/speech/tts/TtsPlayer;->iInitState:I

    return v0
.end method

.method public Init(I)I
    .locals 11

    const/16 v8, 0x277a

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget v0, Lcom/iflytek/speech/tts/TtsPlayer;->cnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/iflytek/speech/tts/TtsPlayer;->cnt:I

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    const-string v1, "Init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v0, p0}, Lcom/iflytek/speech/libisstts;->create(Lcom/iflytek/speech/NativeHandle;Lcom/iflytek/speech/ITtsListener;)V

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget v0, v0, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "libisstts.create failed. ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget v2, v2, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget v0, v0, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3e80

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mMinBufferSizeInBytes:I

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMinBufferSizeInBytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mMinBufferSizeInBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mMinBufferSizeInBytes:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: AudioTrack.getMinBufferSize(16000, 4, 2) ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mMinBufferSizeInBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_4

    new-instance v0, Landroid/media/AudioTrack;

    const/16 v2, 0x3e80

    const/4 v3, 0x4

    const/4 v4, 0x2

    iget v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mMinBufferSizeInBytes:I

    mul-int/lit8 v5, v1, 0x3

    const/4 v6, 0x1

    move v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v10, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    const-string v1, "Error: Can\'t init AudioRecord!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new AudioTrack(streamType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mThreadAudioWrite:Ljava/lang/Thread;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioWriteWorkingFunc:Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;

    invoke-virtual {v0}, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->clearExitFlag()V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioWriteWorkingFunc:Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;

    const-string v2, "mThreadAudioWrite"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mThreadAudioWrite:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mThreadAudioWrite:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move v0, v9

    goto/16 :goto_0

    :catch_0
    move-exception v7

    move v0, v8

    goto/16 :goto_0
.end method

.method public Pause()I
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/16 v0, 0x2710

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    const-string v3, "Pause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mThreadAudioWrite:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget-wide v2, v2, Lcom/iflytek/speech/NativeHandle;->native_point:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    if-ne v0, v6, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iput v6, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_3
    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mWorkingThreadSyncObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mWorkingThreadSyncObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Release()I
    .locals 3

    iget-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    const-string v2, "Release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    iput v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    iget-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioWriteWorkingFunc:Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;

    invoke-virtual {v1}, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->setExitFlag()V

    iget-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mThreadAudioWrite:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mThreadAudioWrite:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mThreadAudioWrite:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v1}, Lcom/iflytek/speech/libisstts;->destroy(Lcom/iflytek/speech/NativeHandle;)V

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public Resume()I
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x2710

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    const-string v3, "Resume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mThreadAudioWrite:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget-wide v2, v2, Lcom/iflytek/speech/NativeHandle;->native_point:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    if-ne v0, v6, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iput v6, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_3
    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mWorkingThreadSyncObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mWorkingThreadSyncObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public SetParam(II)I
    .locals 4

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    const-string v1, "SetParam"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget-wide v0, v0, Lcom/iflytek/speech/NativeHandle;->native_point:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x2710

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v0, p1, p2}, Lcom/iflytek/speech/libisstts;->setParam(Lcom/iflytek/speech/NativeHandle;II)V

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget v0, v0, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    goto :goto_0
.end method

.method public SetParamEx(ILjava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    const-string v1, "SetParamEx"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget-wide v0, v0, Lcom/iflytek/speech/NativeHandle;->native_point:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x2710

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v0, p1, p2}, Lcom/iflytek/speech/libisstts;->setParamEx(Lcom/iflytek/speech/NativeHandle;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget v0, v0, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    goto :goto_0
.end method

.method public Start(Ljava/lang/String;)I
    .locals 8

    const-wide/16 v6, 0x0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    const-string v4, "Start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mThreadAudioWrite:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget-wide v4, v3, Lcom/iflytek/speech/NativeHandle;->native_point:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    const-string v3, "Start error."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    const-string v3, "mAudioTrack == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mThreadAudioWrite:Ljava/lang/Thread;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    const-string v3, "mThreadAudioWrite == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget-wide v2, v2, Lcom/iflytek/speech/NativeHandle;->native_point:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    const-string v3, "mNativeHandle.native_point == 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/speech/tts/TtsPlayer;->Stop()I

    iget v3, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->nPreTextIndex:I

    iput-boolean v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mOnDataReadyFlag:Z

    iget-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start text : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "[p400]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v1, v0}, Lcom/iflytek/speech/libisstts;->start(Lcom/iflytek/speech/NativeHandle;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget v1, v1, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget v1, v1, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    iput v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    iget-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    iget-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    :cond_6
    iget-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v3, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mWorkingThreadSyncObj:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mWorkingThreadSyncObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    move v1, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public Stop()I
    .locals 6

    const/16 v0, 0x2710

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    const-string v3, "Stop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mThreadAudioWrite:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget-wide v2, v2, Lcom/iflytek/speech/NativeHandle;->native_point:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackSteamState:I

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v0}, Lcom/iflytek/speech/libisstts;->stop(Lcom/iflytek/speech/NativeHandle;)V

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_3
    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mAudioTrackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v2, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mWorkingThreadSyncObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mWorkingThreadSyncObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mITTSListener:Lcom/iflytek/speech/tts/ITTSListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mITTSListener:Lcom/iflytek/speech/tts/ITTSListener;

    invoke-interface {v0}, Lcom/iflytek/speech/tts/ITTSListener;->onTTSPlayInterrupted()V

    :cond_4
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDataReady()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    const-string v1, "onDataReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mOnDataReadyFlag:Z

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mITTSListener:Lcom/iflytek/speech/tts/ITTSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mITTSListener:Lcom/iflytek/speech/tts/ITTSListener;

    invoke-interface {v0}, Lcom/iflytek/speech/tts/ITTSListener;->onTTSPlayBegin()V

    :cond_0
    iget-object v1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mWorkingThreadSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mWorkingThreadSyncObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProgress(II)V
    .locals 3

    iget v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->nPreTextIndex:I

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mITTSListener:Lcom/iflytek/speech/tts/ITTSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mITTSListener:Lcom/iflytek/speech/tts/ITTSListener;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/speech/tts/ITTSListener;->onTTSProgressReturn(II)V

    :cond_0
    iput p1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->nPreTextIndex:I

    return-void
.end method

.method public setListener(Lcom/iflytek/speech/tts/ITTSListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/speech/tts/TtsPlayer;->mITTSListener:Lcom/iflytek/speech/tts/ITTSListener;

    return-void
.end method
