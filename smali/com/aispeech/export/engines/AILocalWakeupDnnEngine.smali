.class public Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field private static h:I


# instance fields
.field private b:Lcom/aispeech/speech/b;

.field private c:Lcom/aispeech/a;

.field private d:Lcom/aispeech/b/h;

.field private e:Lcom/aispeech/c/o;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->a:Ljava/lang/String;

    const/16 v0, 0x4b0

    sput v0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->h:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aispeech/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aispeech/a;-><init>(Z)V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    const-string v1, "localWakeup"

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->n(Ljava/lang/String;)V

    new-instance v0, Lcom/aispeech/b/h;

    invoke-direct {v0}, Lcom/aispeech/b/h;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->d:Lcom/aispeech/b/h;

    new-instance v0, Lcom/aispeech/c/o;

    invoke-direct {v0}, Lcom/aispeech/c/o;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->e:Lcom/aispeech/c/o;

    new-instance v0, Lcom/aispeech/speech/b;

    invoke-direct {v0}, Lcom/aispeech/speech/b;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->b:Lcom/aispeech/speech/b;

    return-void
.end method

.method public static createInstance()Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;
    .locals 1

    new-instance v0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;-><init>()V

    return-object v0
.end method

.method public static getOneShotCacheTime()I
    .locals 1

    sget v0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->h:I

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->b:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->b:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->i()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->f:Ljava/lang/String;

    return-void
.end method

.method public feedData([B)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->b:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->b:Lcom/aispeech/speech/b;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/b;->a([B)V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p3}, Lcom/aispeech/a;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p4}, Lcom/aispeech/a;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->d:Lcom/aispeech/b/h;

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->f:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/aispeech/b/h;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->d:Lcom/aispeech/b/h;

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->a(Lcom/aispeech/b/c;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->b:Lcom/aispeech/speech/b;

    new-instance v1, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;

    invoke-direct {v1, p2}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;-><init>(Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;)V

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/c;Lcom/aispeech/a;)V

    return-void

    :cond_0
    sget-object v2, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Model file :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found !!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AISpeech Error"

    const-string v3, "res file name not set!"

    invoke-static {v2, v3}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/aispeech/a;->a([Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->d:Lcom/aispeech/b/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/b/h;->a(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public setDBable(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->g:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setEchoWavePath(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/aispeech/common/AIConstant;->NEW_ECHO_ENABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->e:Lcom/aispeech/c/o;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/o;->p(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setListener(Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->b:Lcom/aispeech/speech/b;

    new-instance v1, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;

    invoke-direct {v1, p1}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine$a;-><init>(Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;)V

    invoke-virtual {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/c;)V

    return-void
.end method

.method public setLuaResName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxSpeechTimeS(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->e:Lcom/aispeech/c/o;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/o;->e(I)V

    return-void
.end method

.method public setNetWorkState(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->b:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->b:Lcom/aispeech/speech/b;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOneShotCacheTime(I)V
    .locals 0

    sput p1, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->h:I

    return-void
.end method

.method public setResBin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->f:Ljava/lang/String;

    return-void
.end method

.method public setResBinPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->f:Ljava/lang/String;

    return-void
.end method

.method public setResStoragePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->o(Ljava/lang/String;)V

    return-void
.end method

.method public setSaveAudioPath(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setStopOnWakeupSuccess(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->e:Lcom/aispeech/c/o;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/o;->b(Z)V

    return-void
.end method

.method public setThreshold([F)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->e:Lcom/aispeech/c/o;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/o;->a([F)V

    return-void
.end method

.method public setTmpDir(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->l(Ljava/lang/String;)V

    return-void
.end method

.method public setTmpDirMaxSize(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->e(I)V

    return-void
.end method

.method public setUploadEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->c(Z)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Z)V

    return-void
.end method

.method public setUploadInterval(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->f(I)V

    return-void
.end method

.method public setUploadQueueSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->d(I)V

    return-void
.end method

.method public setUploadServer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->c:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->m(Ljava/lang/String;)V

    return-void
.end method

.method public setUseCustomFeed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->e:Lcom/aispeech/c/o;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/o;->k(Z)V

    return-void
.end method

.method public setUseIndividualThread(Z)V
    .locals 0

    return-void
.end method

.method public setUseOneShotFunction(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->e:Lcom/aispeech/c/o;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/o;->m(Z)V

    return-void
.end method

.method public setUseOutputBoundary(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->d:Lcom/aispeech/b/h;

    invoke-virtual {v0, p1}, Lcom/aispeech/b/h;->a(Z)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->e:Lcom/aispeech/c/o;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/o;->s(Ljava/lang/String;)V

    return-void
.end method

.method public setVolEnable(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->e:Lcom/aispeech/c/o;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/o;->j(Z)V

    return-void
.end method

.method public setWords([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->e:Lcom/aispeech/c/o;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/o;->a([Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->b:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->b:Lcom/aispeech/speech/b;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->e:Lcom/aispeech/c/o;

    invoke-virtual {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/d;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->b:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->b:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->f()V

    :cond_0
    return-void
.end method
