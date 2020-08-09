.class public Lcom/aispeech/export/engines/AICloudASREngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/export/engines/AICloudASREngine$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private a:Lcom/aispeech/speech/b;

.field private b:Lcom/aispeech/a;

.field private c:Lcom/aispeech/c/d;

.field private d:Lcom/aispeech/export/engines/AICloudASREngine$a;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/aispeech/export/engines/AICloudASREngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aispeech/export/engines/AICloudASREngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aispeech/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/aispeech/a;-><init>(Z)V

    iput-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    new-instance v0, Lcom/aispeech/c/d;

    invoke-direct {v0}, Lcom/aispeech/c/d;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    new-instance v0, Lcom/aispeech/speech/b;

    invoke-direct {v0}, Lcom/aispeech/speech/b;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->a:Lcom/aispeech/speech/b;

    new-instance v0, Lcom/aispeech/export/engines/AICloudASREngine$a;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AICloudASREngine$a;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->d:Lcom/aispeech/export/engines/AICloudASREngine$a;

    return-void
.end method

.method public static createInstance()Lcom/aispeech/export/engines/AICloudASREngine;
    .locals 1

    new-instance v0, Lcom/aispeech/export/engines/AICloudASREngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AICloudASREngine;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/aispeech/export/engines/AICloudASREngine;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/aispeech/export/engines/AICloudASREngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AICloudASREngine;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->a:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->a:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->f()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->a:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->a:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->i()V

    :cond_0
    return-void
.end method

.method public feedData([B)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->a:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->a:Lcom/aispeech/speech/b;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/b;->a([B)V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/aispeech/export/listeners/AIASRListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->d:Lcom/aispeech/export/engines/AICloudASREngine$a;

    iput-object p2, v0, Lcom/aispeech/export/engines/AICloudASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p3}, Lcom/aispeech/a;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p4}, Lcom/aispeech/a;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AICloudASREngine;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0}, Lcom/aispeech/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    const-string v1, "ws://s.api.aispeech.com:1028,ws://s.api.aispeech.com:80"

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->k(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->a:Lcom/aispeech/speech/b;

    iget-object v1, p0, Lcom/aispeech/export/engines/AICloudASREngine;->d:Lcom/aispeech/export/engines/AICloudASREngine$a;

    iget-object v2, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/c;Lcom/aispeech/a;)V

    return-void
.end method

.method public notifyWakeup()V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aispeech/c/d;->a(J)V

    return-void
.end method

.method public setAttachAudioUrl(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->c(Z)V

    return-void
.end method

.method public setDBable(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AICloudASREngine;->e:Ljava/lang/String;

    return-void
.end method

.method public setDefaultIp([[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->a([[Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->w(Ljava/lang/String;)V

    return-void
.end method

.method public setEchoWavePath(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/aispeech/common/AIConstant;->NEW_ECHO_ENABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->p(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHttpTransferTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->c(I)V

    return-void
.end method

.method public setListener(Lcom/aispeech/export/listeners/AIASRListener;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->d:Lcom/aispeech/export/engines/AICloudASREngine$a;

    iput-object p1, v0, Lcom/aispeech/export/engines/AICloudASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    return-void
.end method

.method public setLuaResName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxSpeechTimeS(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->e(I)V

    return-void
.end method

.method public setNBest(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->a(I)V

    return-void
.end method

.method public setNetWorkState(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->a:Lcom/aispeech/speech/b;

    invoke-virtual {v0, p1}, Lcom/aispeech/speech/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setNoSpeechTimeOut(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->f(I)V

    return-void
.end method

.method public setOneShotIntervalTimeThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->i(I)V

    return-void
.end method

.method public setPauseTime(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->a(I)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->h(I)V

    return-void
.end method

.method public setRTMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->b(I)V

    return-void
.end method

.method public setRes(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setResStoragePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->o(Ljava/lang/String;)V

    return-void
.end method

.method public setSampleRate(Lcom/aispeech/AISampleRate;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0}, Lcom/aispeech/a;->d()Lcom/aispeech/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aispeech/d/a;->a(Lcom/aispeech/AISampleRate;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->a(Lcom/aispeech/AISampleRate;)V

    return-void
.end method

.method public setSaveWavePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->g(Ljava/lang/String;)V

    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->k(Ljava/lang/String;)V

    return-void
.end method

.method public setServerConnectTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(I)V

    return-void
.end method

.method public setTmpDir(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->l(Ljava/lang/String;)V

    return-void
.end method

.method public setUploadEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Z)V

    return-void
.end method

.method public setUploadInterval(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->f(I)V

    return-void
.end method

.method public setUseCnConf(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->g(Z)V

    return-void
.end method

.method public setUseCustomFeed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->k(Z)V

    return-void
.end method

.method public setUseEmotion(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->e(Z)V

    return-void
.end method

.method public setUseIndividualThread(Z)V
    .locals 0

    return-void
.end method

.method public setUseOneShotFunction(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->m(Z)V

    return-void
.end method

.method public setUsePinyin(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->h(Z)V

    return-void
.end method

.method public setUseSex(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->f(Z)V

    return-void
.end method

.method public setUseTxtPost(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->d(Z)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->s(Ljava/lang/String;)V

    return-void
.end method

.method public setUserKey(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setVadEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->a(Z)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->i(Z)V

    return-void
.end method

.method public setVadResource(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->b:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setVolEnable(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/d;->j(Z)V

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->a:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->a:Lcom/aispeech/speech/b;

    iget-object v1, p0, Lcom/aispeech/export/engines/AICloudASREngine;->c:Lcom/aispeech/c/d;

    invoke-virtual {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/d;)V

    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->a:Lcom/aispeech/speech/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudASREngine;->a:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->e()V

    :cond_0
    return-void
.end method
