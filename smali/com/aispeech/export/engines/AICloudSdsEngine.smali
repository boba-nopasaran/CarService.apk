.class public Lcom/aispeech/export/engines/AICloudSdsEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/export/engines/AICloudSdsEngine$a;
    }
.end annotation


# instance fields
.field private a:Lcom/aispeech/speech/b;

.field private b:Lcom/aispeech/a;

.field private c:Lcom/aispeech/c/f;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/aispeech/export/engines/AICloudSdsEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aispeech/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/aispeech/a;-><init>(Z)V

    iput-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    new-instance v0, Lcom/aispeech/c/f;

    invoke-direct {v0}, Lcom/aispeech/c/f;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    new-instance v0, Lcom/aispeech/speech/b;

    invoke-direct {v0}, Lcom/aispeech/speech/b;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->a:Lcom/aispeech/speech/b;

    return-void
.end method

.method public static createInstance()Lcom/aispeech/export/engines/AICloudSdsEngine;
    .locals 1

    new-instance v0, Lcom/aispeech/export/engines/AICloudSdsEngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AICloudSdsEngine;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->a:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->a:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->f()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->a:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->a:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->i()V

    :cond_0
    return-void
.end method

.method public feedData([B)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->a:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->a:Lcom/aispeech/speech/b;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/b;->a([B)V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/aispeech/export/listeners/AISdsListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p3}, Lcom/aispeech/a;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p4}, Lcom/aispeech/a;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->a:Lcom/aispeech/speech/b;

    new-instance v1, Lcom/aispeech/export/engines/AICloudSdsEngine$a;

    invoke-direct {v1, p2}, Lcom/aispeech/export/engines/AICloudSdsEngine$a;-><init>(Lcom/aispeech/export/listeners/AISdsListener;)V

    iget-object v2, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/c;Lcom/aispeech/a;)V

    return-void
.end method

.method public notifyWakeup()V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aispeech/c/f;->a(J)V

    return-void
.end method

.method public setCommonWakeupWord([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->a([Ljava/lang/String;)V

    return-void
.end method

.method public setCommonWakeupWordPinyin([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->b([Ljava/lang/String;)V

    return-void
.end method

.method public setContextId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setCustomWakeupWord([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->c([Ljava/lang/String;)V

    return-void
.end method

.method public setCustomWakeupWordPinyin([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->d([Ljava/lang/String;)V

    return-void
.end method

.method public setDBable(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->d:Ljava/lang/String;

    return-void
.end method

.method public setDefaultIp([[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->a([[Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDlgDomain(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->h(Ljava/lang/String;)V

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->g(Ljava/lang/String;)V

    return-void
.end method

.method public setEchoWavePath(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/aispeech/common/AIConstant;->NEW_ECHO_ENABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->p(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHttpTransferTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->c(I)V

    return-void
.end method

.method public setLastServiceType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->k(Ljava/lang/String;)V

    return-void
.end method

.method public setLbsCity(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->i(Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/aispeech/export/listeners/AISdsListener;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->a:Lcom/aispeech/speech/b;

    new-instance v1, Lcom/aispeech/export/engines/AICloudSdsEngine$a;

    invoke-direct {v1, p1}, Lcom/aispeech/export/engines/AICloudSdsEngine$a;-><init>(Lcom/aispeech/export/listeners/AISdsListener;)V

    invoke-virtual {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/c;)V

    return-void
.end method

.method public setLuaResName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxSpeechTimeS(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->e(I)V

    return-void
.end method

.method public setNbest(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->a(I)V

    return-void
.end method

.method public setNetWorkState(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->a:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->a:Lcom/aispeech/speech/b;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNoSpeechTimeOut(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->f(I)V

    return-void
.end method

.method public setOneShotIntervalTimeThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->i(I)V

    return-void
.end method

.method public setPauseTime(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->a(I)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->h(I)V

    return-void
.end method

.method public setPrevDomain(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->j(Ljava/lang/String;)V

    return-void
.end method

.method public setRTMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->b(I)V

    return-void
.end method

.method public setRes(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setResStoragePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->o(Ljava/lang/String;)V

    return-void
.end method

.method public setSampleRate(Lcom/aispeech/AISampleRate;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->a(Lcom/aispeech/AISampleRate;)V

    return-void
.end method

.method public setSaveWavePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->g(Ljava/lang/String;)V

    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->k(Ljava/lang/String;)V

    return-void
.end method

.method public setServerConnectTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(I)V

    return-void
.end method

.method public setTmpDir(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->l(Ljava/lang/String;)V

    return-void
.end method

.method public setTmpDirMaxSize(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->e(I)V

    return-void
.end method

.method public setUploadEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Z)V

    return-void
.end method

.method public setUploadInterval(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->f(I)V

    return-void
.end method

.method public setUploadServer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->m(Ljava/lang/String;)V

    return-void
.end method

.method public setUseCustomFeed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->k(Z)V

    return-void
.end method

.method public setUseOneShotFunction(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->m(Z)V

    return-void
.end method

.method public setUsePinyin(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->c(Z)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->s(Ljava/lang/String;)V

    return-void
.end method

.method public setVadEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->a(Z)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->i(Z)V

    return-void
.end method

.method public setVadResource(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setWakeupWord(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->l(Ljava/lang/String;)V

    return-void
.end method

.method public startWithRecording()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->a:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aispeech/c/f;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aispeech/c/f;->a(Z)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->a:Lcom/aispeech/speech/b;

    iget-object v1, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/d;)V

    :cond_0
    return-void
.end method

.method public startWithText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->a:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/f;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aispeech/c/f;->a(Z)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->a:Lcom/aispeech/speech/b;

    iget-object v1, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->c:Lcom/aispeech/c/f;

    invoke-virtual {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/d;)V

    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->a:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine;->a:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->e()V

    :cond_0
    return-void
.end method
