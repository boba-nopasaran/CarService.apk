.class public Lcom/iflytek/tts/TtsSession;
.super Ljava/lang/Object;
.source "TtsSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/tts/TtsSession$OnTtsInitedRunnable;
    }
.end annotation


# static fields
.field private static cnt:I

.field private static mResDir:Ljava/lang/String;

.field private static mTTSService:Lcom/iflytek/speech/tts/ITTSService;

.field private static mTtsInitListener:Lcom/iflytek/tts/ITtsInitListener;


# instance fields
.field private lock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

.field private final mNativeHandle:Lcom/iflytek/speech/NativeHandle;

.field private mTtsAidlListener:Lcom/iflytek/speech/tts/ITTSListener;

.field private mTtsListener:Lcom/iflytek/tts/ITtsListener;

.field private mVoidTtsListener:Lcom/iflytek/speech/ITtsListener;

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/tts/TtsSession;->cnt:I

    sput-object v1, Lcom/iflytek/tts/TtsSession;->mResDir:Ljava/lang/String;

    sput-object v1, Lcom/iflytek/tts/TtsSession;->mTtsInitListener:Lcom/iflytek/tts/ITtsInitListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/tts/ITtsInitListener;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TtsSession_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/iflytek/tts/TtsSession;->cnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/tts/TtsSession;->tag:Ljava/lang/String;

    iput-object v2, p0, Lcom/iflytek/tts/TtsSession;->mTtsListener:Lcom/iflytek/tts/ITtsListener;

    iput-object v2, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    iput-object v2, p0, Lcom/iflytek/tts/TtsSession;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/iflytek/tts/TtsSession$1;

    invoke-direct {v0, p0}, Lcom/iflytek/tts/TtsSession$1;-><init>(Lcom/iflytek/tts/TtsSession;)V

    iput-object v0, p0, Lcom/iflytek/tts/TtsSession;->mTtsAidlListener:Lcom/iflytek/speech/tts/ITTSListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/tts/TtsSession;->lock:Ljava/lang/Object;

    new-instance v0, Lcom/iflytek/speech/NativeHandle;

    invoke-direct {v0}, Lcom/iflytek/speech/NativeHandle;-><init>()V

    iput-object v0, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    new-instance v0, Lcom/iflytek/tts/TtsSession$2;

    invoke-direct {v0, p0}, Lcom/iflytek/tts/TtsSession$2;-><init>(Lcom/iflytek/tts/TtsSession;)V

    iput-object v0, p0, Lcom/iflytek/tts/TtsSession;->mVoidTtsListener:Lcom/iflytek/speech/ITtsListener;

    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->tag:Ljava/lang/String;

    const-string v2, "new TtsSession()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/iflytek/tts/TtsSession;->cnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/iflytek/tts/TtsSession;->cnt:I

    iput-object p1, p0, Lcom/iflytek/tts/TtsSession;->mContext:Landroid/content/Context;

    sput-object p2, Lcom/iflytek/tts/TtsSession;->mTtsInitListener:Lcom/iflytek/tts/ITtsInitListener;

    sput-object p3, Lcom/iflytek/tts/TtsSession;->mResDir:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/tts/TtsSession;->initService()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/iflytek/tts/TtsSession;)Lcom/iflytek/tts/ITtsListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mTtsListener:Lcom/iflytek/tts/ITtsListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/tts/TtsSession;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/tts/TtsSession;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/tts/TtsSession;->castInitState(ZI)V

    return-void
.end method

.method private castInitState(ZI)V
    .locals 3

    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTtsInitListener:Lcom/iflytek/tts/ITtsInitListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "castInitState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTtsInitListener:Lcom/iflytek/tts/ITtsInitListener;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/tts/ITtsInitListener;->onTtsInited(ZI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroySynthToGetPcm()I
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget-wide v2, v1, Lcom/iflytek/speech/NativeHandle;->native_point:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/16 v0, 0x2710

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v1}, Lcom/iflytek/speech/libisstts;->destroy(Lcom/iflytek/speech/NativeHandle;)V

    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iput-wide v4, v1, Lcom/iflytek/speech/NativeHandle;->native_point:J

    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget v0, v1, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    const/4 v2, 0x0

    iput v2, v1, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    goto :goto_0
.end method

.method public getAudioData([BI[I)I
    .locals 4

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget-wide v0, v0, Lcom/iflytek/speech/NativeHandle;->native_point:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x2710

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v0, p1, p2, p3}, Lcom/iflytek/speech/libisstts;->getAudioData(Lcom/iflytek/speech/NativeHandle;[BI[I)V

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget v0, v0, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    goto :goto_0
.end method

.method public declared-synchronized initService()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->tag:Ljava/lang/String;

    const-string v2, "initService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->tag:Ljava/lang/String;

    const-string v2, "initService: mContext == null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/iflytek/tts/TtsSession$OnTtsInitedRunnable;

    const/4 v3, 0x0

    const/16 v4, 0x277a

    invoke-direct {v2, p0, v3, v4}, Lcom/iflytek/tts/TtsSession$OnTtsInitedRunnable;-><init>(Lcom/iflytek/tts/TtsSession;ZI)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/iflytek/tts/TtsSession;->mResDir:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->tag:Ljava/lang/String;

    const-string v2, "initService: mResDir == null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/iflytek/tts/TtsSession$OnTtsInitedRunnable;

    const/4 v3, 0x0

    const/16 v4, 0x277a

    invoke-direct {v2, p0, v3, v4}, Lcom/iflytek/tts/TtsSession$OnTtsInitedRunnable;-><init>(Lcom/iflytek/tts/TtsSession;ZI)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/iflytek/speech/tts/TtsSolution;->getInstance()Lcom/iflytek/speech/tts/TtsSolution;

    move-result-object v1

    sput-object v1, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    sget-object v1, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    sget-object v2, Lcom/iflytek/tts/TtsSession;->mResDir:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/iflytek/speech/tts/ITTSService;->createTtsPlayerInst(Ljava/lang/String;)Lcom/iflytek/speech/tts/TtsPlayerInst;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    invoke-interface {v1}, Lcom/iflytek/speech/tts/TtsPlayerInst;->sessionInitState()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRes is failed. ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/iflytek/tts/TtsSession$OnTtsInitedRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Lcom/iflytek/tts/TtsSession$OnTtsInitedRunnable;-><init>(Lcom/iflytek/tts/TtsSession;ZI)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/iflytek/tts/TtsSession$OnTtsInitedRunnable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/iflytek/tts/TtsSession$OnTtsInitedRunnable;-><init>(Lcom/iflytek/tts/TtsSession;ZI)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public pauseSpeak()I
    .locals 2

    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/speech/tts/TtsSolution;->getInstance()Lcom/iflytek/speech/tts/TtsSolution;

    move-result-object v0

    sput-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    :cond_0
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    if-nez v0, :cond_1

    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    sget-object v1, Lcom/iflytek/tts/TtsSession;->mResDir:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/tts/ITTSService;->createTtsPlayerInst(Ljava/lang/String;)Lcom/iflytek/speech/tts/TtsPlayerInst;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    :cond_1
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    invoke-interface {v0}, Lcom/iflytek/speech/tts/TtsPlayerInst;->pauseSpeak()I

    move-result v0

    return v0
.end method

.method public resumeSpeak()I
    .locals 2

    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/speech/tts/TtsSolution;->getInstance()Lcom/iflytek/speech/tts/TtsSolution;

    move-result-object v0

    sput-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    :cond_0
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    if-nez v0, :cond_1

    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    sget-object v1, Lcom/iflytek/tts/TtsSession;->mResDir:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/tts/ITTSService;->createTtsPlayerInst(Ljava/lang/String;)Lcom/iflytek/speech/tts/TtsPlayerInst;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    :cond_1
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    invoke-interface {v0}, Lcom/iflytek/speech/tts/TtsPlayerInst;->resumeSpeak()I

    move-result v0

    return v0
.end method

.method public sessionStart(Lcom/iflytek/tts/ITtsListener;I)I
    .locals 3

    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/speech/tts/TtsSolution;->getInstance()Lcom/iflytek/speech/tts/TtsSolution;

    move-result-object v0

    sput-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    :cond_0
    iput-object p1, p0, Lcom/iflytek/tts/TtsSession;->mTtsListener:Lcom/iflytek/tts/ITtsListener;

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    if-nez v0, :cond_1

    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    sget-object v2, Lcom/iflytek/tts/TtsSession;->mResDir:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/iflytek/speech/tts/ITTSService;->createTtsPlayerInst(Ljava/lang/String;)Lcom/iflytek/speech/tts/TtsPlayerInst;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    :cond_1
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    invoke-interface {v0, p2}, Lcom/iflytek/speech/tts/TtsPlayerInst;->sessionBegin(I)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sessionStop()I
    .locals 3

    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/speech/tts/TtsSolution;->getInstance()Lcom/iflytek/speech/tts/TtsSolution;

    move-result-object v0

    sput-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    :cond_0
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    if-nez v0, :cond_1

    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    sget-object v2, Lcom/iflytek/tts/TtsSession;->mResDir:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/iflytek/speech/tts/ITTSService;->createTtsPlayerInst(Ljava/lang/String;)Lcom/iflytek/speech/tts/TtsPlayerInst;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    :cond_1
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    invoke-interface {v0}, Lcom/iflytek/speech/tts/TtsPlayerInst;->sessionStop()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setParam(II)I
    .locals 2

    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/speech/tts/TtsSolution;->getInstance()Lcom/iflytek/speech/tts/TtsSolution;

    move-result-object v0

    sput-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    :cond_0
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    if-nez v0, :cond_1

    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    sget-object v1, Lcom/iflytek/tts/TtsSession;->mResDir:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/tts/ITTSService;->createTtsPlayerInst(Ljava/lang/String;)Lcom/iflytek/speech/tts/TtsPlayerInst;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    :cond_1
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/speech/tts/TtsPlayerInst;->setParam(II)I

    move-result v0

    return v0
.end method

.method public setParamEx(ILjava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/speech/tts/TtsSolution;->getInstance()Lcom/iflytek/speech/tts/TtsSolution;

    move-result-object v0

    sput-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    :cond_0
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    if-nez v0, :cond_1

    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    sget-object v1, Lcom/iflytek/tts/TtsSession;->mResDir:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/tts/ITTSService;->createTtsPlayerInst(Ljava/lang/String;)Lcom/iflytek/speech/tts/TtsPlayerInst;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    :cond_1
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/speech/tts/TtsPlayerInst;->setParamEx(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setParamSynthToGetPcm(II)I
    .locals 4

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget-wide v0, v0, Lcom/iflytek/speech/NativeHandle;->native_point:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x2710

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v0, p1, p2}, Lcom/iflytek/speech/libisstts;->setParam(Lcom/iflytek/speech/NativeHandle;II)V

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget v0, v0, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    goto :goto_0
.end method

.method public startSpeak(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/speech/tts/TtsSolution;->getInstance()Lcom/iflytek/speech/tts/TtsSolution;

    move-result-object v0

    sput-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/16 v0, 0x277a

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    if-nez v0, :cond_3

    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    sget-object v1, Lcom/iflytek/tts/TtsSession;->mResDir:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/tts/ITTSService;->createTtsPlayerInst(Ljava/lang/String;)Lcom/iflytek/speech/tts/TtsPlayerInst;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    :cond_3
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->mTtsAidlListener:Lcom/iflytek/speech/tts/ITTSListener;

    invoke-interface {v0, p1, v1}, Lcom/iflytek/speech/tts/TtsPlayerInst;->startSpeak(Ljava/lang/String;Lcom/iflytek/speech/tts/ITTSListener;)I

    move-result v0

    goto :goto_0
.end method

.method public startSynthToGetPcm(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget-wide v2, v1, Lcom/iflytek/speech/NativeHandle;->native_point:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    sget-object v1, Lcom/iflytek/tts/TtsSession;->mResDir:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/iflytek/speech/libisstts;->initRes(Ljava/lang/String;I)I

    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget v1, v1, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget v0, v0, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget-object v2, p0, Lcom/iflytek/tts/TtsSession;->mVoidTtsListener:Lcom/iflytek/speech/ITtsListener;

    invoke-static {v1, v2}, Lcom/iflytek/speech/libisstts;->create(Lcom/iflytek/speech/NativeHandle;Lcom/iflytek/speech/ITtsListener;)V

    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget v1, v1, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget v0, v0, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v1, p1}, Lcom/iflytek/speech/libisstts;->start(Lcom/iflytek/speech/NativeHandle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopSpeak()I
    .locals 2

    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/speech/tts/TtsSolution;->getInstance()Lcom/iflytek/speech/tts/TtsSolution;

    move-result-object v0

    sput-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    :cond_0
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    if-nez v0, :cond_1

    sget-object v0, Lcom/iflytek/tts/TtsSession;->mTTSService:Lcom/iflytek/speech/tts/ITTSService;

    sget-object v1, Lcom/iflytek/tts/TtsSession;->mResDir:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/iflytek/speech/tts/ITTSService;->createTtsPlayerInst(Ljava/lang/String;)Lcom/iflytek/speech/tts/TtsPlayerInst;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    :cond_1
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mItts:Lcom/iflytek/speech/tts/TtsPlayerInst;

    invoke-interface {v0}, Lcom/iflytek/speech/tts/TtsPlayerInst;->stopSpeak()I

    move-result v0

    return v0
.end method

.method public stopSynthToGetPcm()I
    .locals 4

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget-wide v0, v0, Lcom/iflytek/speech/NativeHandle;->native_point:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x2710

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v0}, Lcom/iflytek/speech/libisstts;->stop(Lcom/iflytek/speech/NativeHandle;)V

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    iget v0, v0, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    goto :goto_0
.end method
