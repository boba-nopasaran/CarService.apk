.class public Lcom/iflytek/mvw/MvwSession;
.super Ljava/lang/Object;
.source "MvwSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/mvw/MvwSession$OnMvwInitedRunnable;
    }
.end annotation


# static fields
.field public static final ISS_MVW_LANG_CHN:I = 0x0

.field public static final ISS_MVW_LANG_ENG:I = 0x1

.field public static final ISS_MVW_PARAM_AEC:Ljava/lang/String; = "mvw_enable_aec"

.field public static final ISS_MVW_PARAM_LSA:Ljava/lang/String; = "mvw_enable_lsa"

.field public static final ISS_MVW_PARAM_TMP_LOG_DIR:Ljava/lang/String; = "TmpLogDir"

.field public static final ISS_MVW_PARAM_VALUE_OFF:Ljava/lang/String; = "off"

.field public static final ISS_MVW_PARAM_VALUE_ON:Ljava/lang/String; = "on"

.field public static final ISS_MVW_SCENE_ANSWER_CALL:I = 0x8

.field public static final ISS_MVW_SCENE_CONFIRM:I = 0x2

.field public static final ISS_MVW_SCENE_GLOBAL:I = 0x1

.field public static final ISS_MVW_SCENE_SELECT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MvwSession"

.field private static instance:Lcom/iflytek/mvw/MvwSession;


# instance fields
.field private context:Landroid/content/Context;

.field private lock:Ljava/lang/Object;

.field private mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

.field private mvwAidlListener:Lcom/iflytek/speech/mvw/IMVWListener;

.field private mvwListener:Lcom/iflytek/mvw/IMvwListener;

.field private resDir:Ljava/lang/String;

.field private singletonflag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/mvw/MvwSession;->instance:Lcom/iflytek/mvw/MvwSession;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/mvw/IMvwListener;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/mvw/MvwSession;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    iput-object v0, p0, Lcom/iflytek/mvw/MvwSession;->mvwListener:Lcom/iflytek/mvw/IMvwListener;

    iput-object v0, p0, Lcom/iflytek/mvw/MvwSession;->resDir:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/iflytek/mvw/MvwSession;->singletonflag:Z

    new-instance v0, Lcom/iflytek/mvw/MvwSession$1;

    invoke-direct {v0, p0}, Lcom/iflytek/mvw/MvwSession$1;-><init>(Lcom/iflytek/mvw/MvwSession;)V

    iput-object v0, p0, Lcom/iflytek/mvw/MvwSession;->mvwAidlListener:Lcom/iflytek/speech/mvw/IMVWListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/mvw/MvwSession;->lock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "MvwSession"

    const-string v2, "new MvwSession"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/iflytek/mvw/MvwSession;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/mvw/MvwSession;->mvwListener:Lcom/iflytek/mvw/IMvwListener;

    iput-object p3, p0, Lcom/iflytek/mvw/MvwSession;->resDir:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/mvw/MvwSession;->singletonflag:Z

    invoke-virtual {p0}, Lcom/iflytek/mvw/MvwSession;->initService()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/iflytek/mvw/IMvwListener;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/mvw/MvwSession;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    iput-object v0, p0, Lcom/iflytek/mvw/MvwSession;->mvwListener:Lcom/iflytek/mvw/IMvwListener;

    iput-object v0, p0, Lcom/iflytek/mvw/MvwSession;->resDir:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/mvw/MvwSession;->singletonflag:Z

    new-instance v0, Lcom/iflytek/mvw/MvwSession$1;

    invoke-direct {v0, p0}, Lcom/iflytek/mvw/MvwSession$1;-><init>(Lcom/iflytek/mvw/MvwSession;)V

    iput-object v0, p0, Lcom/iflytek/mvw/MvwSession;->mvwAidlListener:Lcom/iflytek/speech/mvw/IMVWListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/mvw/MvwSession;->lock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "MvwSession"

    const-string v2, "new MvwSession"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/iflytek/mvw/MvwSession;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/mvw/MvwSession;->mvwListener:Lcom/iflytek/mvw/IMvwListener;

    iput-object p3, p0, Lcom/iflytek/mvw/MvwSession;->resDir:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/iflytek/mvw/MvwSession;->singletonflag:Z

    invoke-virtual {p0}, Lcom/iflytek/mvw/MvwSession;->initService()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/iflytek/mvw/MvwSession;)Lcom/iflytek/mvw/IMvwListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/mvw/MvwSession;->mvwListener:Lcom/iflytek/mvw/IMvwListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/mvw/MvwSession;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/mvw/MvwSession;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/mvw/MvwSession;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/mvw/MvwSession;->castInitState(ZI)V

    return-void
.end method

.method private castInitState(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/mvw/MvwSession;->mvwListener:Lcom/iflytek/mvw/IMvwListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/mvw/MvwSession;->mvwListener:Lcom/iflytek/mvw/IMvwListener;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/mvw/IMvwListener;->onVwInited(ZI)V

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/iflytek/mvw/IMvwListener;Ljava/lang/String;)Lcom/iflytek/mvw/MvwSession;
    .locals 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/iflytek/mvw/MvwSession;->instance:Lcom/iflytek/mvw/MvwSession;

    if-nez v0, :cond_3

    const-class v1, Lcom/iflytek/mvw/MvwSession;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/mvw/MvwSession;->instance:Lcom/iflytek/mvw/MvwSession;

    if-nez v0, :cond_2

    new-instance v0, Lcom/iflytek/mvw/MvwSession;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/iflytek/mvw/MvwSession;-><init>(Landroid/content/Context;Lcom/iflytek/mvw/IMvwListener;Ljava/lang/String;Z)V

    sput-object v0, Lcom/iflytek/mvw/MvwSession;->instance:Lcom/iflytek/mvw/MvwSession;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sget-object v0, Lcom/iflytek/mvw/MvwSession;->instance:Lcom/iflytek/mvw/MvwSession;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isCouldAppendAudioData()Z
    .locals 4

    invoke-static {}, Lcom/iflytek/speech/mvw/MVWSolution;->isCouldAppendAudioData()Z

    move-result v0

    const-string v1, "MvwSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCouldAppendAudioData return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static setMvwLanguage(I)I
    .locals 4

    invoke-static {p0}, Lcom/iflytek/speech/mvw/MVWSolution;->setMvwLanguage(I)I

    move-result v0

    const-string v1, "MvwSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMvwLanguage return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public declared-synchronized addStartScene(I)I
    .locals 4

    const/16 v1, 0x2710

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    if-nez v2, :cond_0

    const-string v2, "MvwSession"

    const-string v3, "addStartScene mIMVW is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    invoke-interface {v2, p1}, Lcom/iflytek/speech/mvw/IMVWService;->addStartMvwScene(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    const-string v1, "MvwSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized appendAudioData([B)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/16 v0, 0x2710

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string v1, "MvwSession"

    const-string v2, "appendAudioData return ISS_SUCCESS.(audioBuffer is null)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    array-length v2, p1

    invoke-interface {v1, p1, v2}, Lcom/iflytek/speech/mvw/IMVWService;->appendAudioData([BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized initService()V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v1, "MvwSession"

    const-string v2, "initService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    if-eqz v1, :cond_0

    const-string v1, "MvwSession"

    const-string v2, "Already inited."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/iflytek/mvw/MvwSession$OnMvwInitedRunnable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/iflytek/mvw/MvwSession$OnMvwInitedRunnable;-><init>(Lcom/iflytek/mvw/MvwSession;ZI)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->context:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mvwListener:Lcom/iflytek/mvw/IMvwListener;

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "MvwSession"

    const-string v2, "Context or mvwListener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/iflytek/mvw/MvwSession$OnMvwInitedRunnable;

    const/4 v3, 0x0

    const/16 v4, 0x277a

    invoke-direct {v2, p0, v3, v4}, Lcom/iflytek/mvw/MvwSession$OnMvwInitedRunnable;-><init>(Lcom/iflytek/mvw/MvwSession;ZI)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    new-instance v1, Lcom/iflytek/speech/mvw/MVWSolution;

    invoke-direct {v1}, Lcom/iflytek/speech/mvw/MVWSolution;-><init>()V

    iput-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    iget-object v2, p0, Lcom/iflytek/mvw/MvwSession;->resDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/mvw/MvwSession;->mvwAidlListener:Lcom/iflytek/speech/mvw/IMVWListener;

    invoke-interface {v1, v2, v3}, Lcom/iflytek/speech/mvw/IMVWService;->initMvw(Ljava/lang/String;Lcom/iflytek/speech/mvw/IMVWListener;)I

    move-result v0

    if-nez v0, :cond_3

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/iflytek/mvw/MvwSession$OnMvwInitedRunnable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/iflytek/mvw/MvwSession$OnMvwInitedRunnable;-><init>(Lcom/iflytek/mvw/MvwSession;ZI)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/iflytek/mvw/MvwSession$OnMvwInitedRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Lcom/iflytek/mvw/MvwSession$OnMvwInitedRunnable;-><init>(Lcom/iflytek/mvw/MvwSession;ZI)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized release()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/16 v0, 0x2710

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    invoke-interface {v1}, Lcom/iflytek/speech/mvw/IMVWService;->releaseMvw()I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    iget-boolean v1, p0, Lcom/iflytek/mvw/MvwSession;->singletonflag:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/mvw/MvwSession;->instance:Lcom/iflytek/mvw/MvwSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setMvwDefaultKeyWords(I)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/16 v0, 0x2710

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    invoke-interface {v1, p1}, Lcom/iflytek/speech/mvw/IMVWService;->setMvwDefaultKeyWords(I)I

    move-result v0

    const-string v1, "MvwSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMvwDefaultKeyWords return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setMvwKeyWords(ILjava/lang/String;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/16 v0, 0x2710

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    invoke-interface {v1, p1, p2}, Lcom/iflytek/speech/mvw/IMVWService;->setMvwKeyWords(ILjava/lang/String;)I

    move-result v0

    const-string v1, "MvwSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMvwKeyWords return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setParam(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/16 v0, 0x2710

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    invoke-interface {v1, p1, p2}, Lcom/iflytek/speech/mvw/IMVWService;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "MvwSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParam return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setThreshold(III)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/16 v0, 0x2710

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    invoke-interface {v1, p1, p2, p3}, Lcom/iflytek/speech/mvw/IMVWService;->setThreshold(III)I

    move-result v0

    const-string v1, "MvwSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setThreshold return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized start(I)I
    .locals 4

    const/16 v1, 0x2710

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    if-nez v2, :cond_0

    const-string v2, "MvwSession"

    const-string v3, "start mIMVW is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    invoke-interface {v2, p1}, Lcom/iflytek/speech/mvw/IMVWService;->startMvw(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    const-string v1, "MvwSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stop()I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/16 v0, 0x2710

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    invoke-interface {v1}, Lcom/iflytek/speech/mvw/IMVWService;->stopMvw()I

    move-result v0

    const-string v1, "MvwSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopScene(I)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/16 v0, 0x2710

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/mvw/MvwSession;->mIMVW:Lcom/iflytek/speech/mvw/IMVWService;

    invoke-interface {v1, p1}, Lcom/iflytek/speech/mvw/IMVWService;->stopMvwScene(I)I

    move-result v0

    const-string v1, "MvwSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopScene return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
