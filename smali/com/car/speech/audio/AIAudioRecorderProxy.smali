.class public Lcom/car/speech/audio/AIAudioRecorderProxy;
.super Ljava/lang/Object;
.source "AIAudioRecorderProxy.java"

# interfaces
.implements Lcom/car/speech/audio/IAudioRecorder;


# static fields
.field public static final INVALID_TOKEN:J = 0x3b9aca00L

.field private static final TAG:Ljava/lang/String; = "AIAudioRecorderProxy"

.field private static mCount:I

.field public static mNeedFilterData:Z

.field private static sAIAudioRecorder:Lcom/car/speech/audio/AIAudioRecorder;

.field private static sLock:Ljava/util/concurrent/locks/Lock;

.field private static sRefCount:I


# instance fields
.field private mTokenId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lcom/car/speech/audio/AIAudioRecorderProxy;->sRefCount:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sLock:Ljava/util/concurrent/locks/Lock;

    sput-boolean v1, Lcom/car/speech/audio/AIAudioRecorderProxy;->mNeedFilterData:Z

    sput v1, Lcom/car/speech/audio/AIAudioRecorderProxy;->mCount:I

    return-void
.end method

.method private constructor <init>(Lcom/car/speech/audio/AISampleRate;IIZLcom/car/speech/audio/AIRecordListener;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x3b9aca00

    iput-wide v0, p0, Lcom/car/speech/audio/AIAudioRecorderProxy;->mTokenId:J

    sget-object v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-direct {p0}, Lcom/car/speech/audio/AIAudioRecorderProxy;->generateTokenId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/car/speech/audio/AIAudioRecorderProxy;->mTokenId:J

    invoke-static {}, Lcom/car/speech/audio/AIAudioRecorderProxy;->refCountEqualZero()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/car/speech/audio/AIAudioRecorder;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/car/speech/audio/AIAudioRecorder;-><init>(Lcom/car/speech/audio/AISampleRate;IIZLcom/car/speech/audio/AIRecordListener;)V

    sput-object v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sAIAudioRecorder:Lcom/car/speech/audio/AIAudioRecorder;

    :cond_0
    invoke-direct {p0}, Lcom/car/speech/audio/AIAudioRecorderProxy;->incrRefCount()V

    sget-object v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public static create(Lcom/car/speech/audio/AISampleRate;IIZLcom/car/speech/audio/AIRecordListener;)Lcom/car/speech/audio/AIAudioRecorderProxy;
    .locals 6

    new-instance v0, Lcom/car/speech/audio/AIAudioRecorderProxy;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/car/speech/audio/AIAudioRecorderProxy;-><init>(Lcom/car/speech/audio/AISampleRate;IIZLcom/car/speech/audio/AIRecordListener;)V

    return-object v0
.end method

.method private decrRefCount()V
    .locals 4

    sget v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sRefCount:I

    const-string v0, "AIAudioRecorderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A proxy release, TokenId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/car/speech/audio/AIAudioRecorderProxy;->mTokenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", decrease RefCount, current : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/car/speech/audio/AIAudioRecorderProxy;->sRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private generateTokenId()J
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/aispeech/common/Util;->generateRandom(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private incrRefCount()V
    .locals 4

    sget v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sRefCount:I

    const-string v0, "AIAudioRecorderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A proxy create, TokenId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/car/speech/audio/AIAudioRecorderProxy;->mTokenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", increase RefCount, current : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/car/speech/audio/AIAudioRecorderProxy;->sRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static refCountEqualZero()Z
    .locals 1

    sget v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sRefCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAudioChannel()I
    .locals 1

    sget-object v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sAIAudioRecorder:Lcom/car/speech/audio/AIAudioRecorder;

    invoke-virtual {v0}, Lcom/car/speech/audio/AIAudioRecorder;->getAudioChannel()I

    move-result v0

    return v0
.end method

.method public getAudioEncoding()I
    .locals 1

    sget-object v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sAIAudioRecorder:Lcom/car/speech/audio/AIAudioRecorder;

    invoke-virtual {v0}, Lcom/car/speech/audio/AIAudioRecorder;->getAudioEncoding()I

    move-result v0

    return v0
.end method

.method public getSampleRate()Lcom/car/speech/audio/AISampleRate;
    .locals 1

    sget-object v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sAIAudioRecorder:Lcom/car/speech/audio/AIAudioRecorder;

    invoke-virtual {v0}, Lcom/car/speech/audio/AIAudioRecorder;->getSampleRate()Lcom/car/speech/audio/AISampleRate;

    move-result-object v0

    return-object v0
.end method

.method public isRecording(Lcom/car/speech/audio/AIRecordListener;)Z
    .locals 1

    sget-object v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sAIAudioRecorder:Lcom/car/speech/audio/AIAudioRecorder;

    invoke-virtual {v0}, Lcom/car/speech/audio/AIAudioRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sAIAudioRecorder:Lcom/car/speech/audio/AIAudioRecorder;

    invoke-virtual {v0, p1}, Lcom/car/speech/audio/AIAudioRecorder;->isRegistered(Lcom/car/speech/audio/AIRecordListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseRecorder()V
    .locals 6

    const-wide/32 v4, 0x3b9aca00

    const/4 v2, 0x0

    sget-object v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-wide v0, p0, Lcom/car/speech/audio/AIAudioRecorderProxy;->mTokenId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/car/speech/audio/AIAudioRecorderProxy;->decrRefCount()V

    invoke-static {}, Lcom/car/speech/audio/AIAudioRecorderProxy;->refCountEqualZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AIAudioRecorderProxy"

    const-string v1, "refCountEqualZero releaseRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sAIAudioRecorder:Lcom/car/speech/audio/AIAudioRecorder;

    invoke-virtual {v0}, Lcom/car/speech/audio/AIAudioRecorder;->release()V

    sput v2, Lcom/car/speech/audio/AIAudioRecorderProxy;->mCount:I

    sput-boolean v2, Lcom/car/speech/audio/AIAudioRecorderProxy;->mNeedFilterData:Z

    :cond_0
    iput-wide v4, p0, Lcom/car/speech/audio/AIAudioRecorderProxy;->mTokenId:J

    :cond_1
    sget-object v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public startCachingData()V
    .locals 1

    sget-object v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sAIAudioRecorder:Lcom/car/speech/audio/AIAudioRecorder;

    invoke-virtual {v0}, Lcom/car/speech/audio/AIAudioRecorder;->startCachingData()V

    return-void
.end method

.method public startRecorder(Lcom/car/speech/audio/AIRecordListener;)J
    .locals 3

    const-wide/16 v0, -0x1

    sget v2, Lcom/car/speech/audio/AIAudioRecorderProxy;->mCount:I

    if-nez v2, :cond_0

    sget v2, Lcom/car/speech/audio/AIAudioRecorderProxy;->mCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/car/speech/audio/AIAudioRecorderProxy;->mCount:I

    :goto_0
    sget-object v2, Lcom/car/speech/audio/AIAudioRecorderProxy;->sAIAudioRecorder:Lcom/car/speech/audio/AIAudioRecorder;

    invoke-virtual {v2, p1}, Lcom/car/speech/audio/AIAudioRecorder;->start(Lcom/car/speech/audio/AIRecordListener;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/car/speech/audio/AIAudioRecorderProxy;->mNeedFilterData:Z

    goto :goto_0
.end method

.method public startSendCachingData()V
    .locals 1

    sget-object v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sAIAudioRecorder:Lcom/car/speech/audio/AIAudioRecorder;

    invoke-virtual {v0}, Lcom/car/speech/audio/AIAudioRecorder;->startSendCachingData()V

    return-void
.end method

.method public unRegisterRecorder(Lcom/car/speech/audio/AIRecordListener;)V
    .locals 1

    sget-object v0, Lcom/car/speech/audio/AIAudioRecorderProxy;->sAIAudioRecorder:Lcom/car/speech/audio/AIAudioRecorder;

    invoke-virtual {v0, p1}, Lcom/car/speech/audio/AIAudioRecorder;->stop(Lcom/car/speech/audio/AIRecordListener;)V

    return-void
.end method
