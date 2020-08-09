.class public Lcom/car/voice/VoiceEngineFactory;
.super Ljava/lang/Object;
.source "VoiceEngineFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/voice/VoiceEngineFactory$VoiceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSvc_VoiceEngineFactory"


# instance fields
.field private mCallback:Lcom/car/common/VoiceRecognizerCallback;

.field private mCurrentReqID:I

.field private mDefaultCallback:Lcom/car/common/VoiceRecognizerCallback;

.field private mParam:Ljava/lang/String;

.field private mRecType:I

.field final mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

.field private final mVoiceEngineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/voice/IVoiceEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceListener:Lcom/car/voice/VoiceEngineFactory$VoiceListener;

.field private mVoiceUI:Lcom/car/voice/VoiceUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/voice/VoiceEngineFactory;->mVoiceEngineList:Ljava/util/List;

    invoke-static {}, Lcom/car/voice/remote/RemoteVoice;->getInstance()Lcom/car/voice/remote/RemoteVoice;

    move-result-object v0

    iput-object v0, p0, Lcom/car/voice/VoiceEngineFactory;->mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/voice/VoiceEngineFactory;->mRecType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/voice/VoiceEngineFactory;->mCurrentReqID:I

    new-instance v0, Lcom/car/voice/VoiceEngineFactory$1;

    invoke-direct {v0, p0}, Lcom/car/voice/VoiceEngineFactory$1;-><init>(Lcom/car/voice/VoiceEngineFactory;)V

    iput-object v0, p0, Lcom/car/voice/VoiceEngineFactory;->mVoiceListener:Lcom/car/voice/VoiceEngineFactory$VoiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/voice/VoiceUI;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory;->mVoiceUI:Lcom/car/voice/VoiceUI;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/voice/VoiceEngineFactory;)I
    .locals 1

    iget v0, p0, Lcom/car/voice/VoiceEngineFactory;->mCurrentReqID:I

    return v0
.end method

.method static synthetic access$200(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/common/VoiceRecognizerCallback;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory;->mDefaultCallback:Lcom/car/common/VoiceRecognizerCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/voice/VoiceEngineFactory;)Lcom/car/common/VoiceRecognizerCallback;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory;->mCallback:Lcom/car/common/VoiceRecognizerCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/voice/VoiceEngineFactory;)I
    .locals 1

    iget v0, p0, Lcom/car/voice/VoiceEngineFactory;->mRecType:I

    return v0
.end method


# virtual methods
.method create(Landroid/content/Context;Lcom/car/voice/VoiceUI;)V
    .locals 2

    iput-object p2, p0, Lcom/car/voice/VoiceEngineFactory;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory;->mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

    iget-object v1, p0, Lcom/car/voice/VoiceEngineFactory;->mVoiceListener:Lcom/car/voice/VoiceEngineFactory$VoiceListener;

    invoke-virtual {v0, p1, v1}, Lcom/car/voice/remote/RemoteVoice;->create(Landroid/content/Context;Lcom/car/voice/VoiceEngineFactory$VoiceListener;)V

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory;->mVoiceUI:Lcom/car/voice/VoiceUI;

    iget-object v1, p0, Lcom/car/voice/VoiceEngineFactory;->mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

    invoke-interface {v0, v1}, Lcom/car/voice/VoiceUI;->setRemoteVoice(Lcom/car/voice/remote/RemoteVoice;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    iget-object v2, p0, Lcom/car/voice/VoiceEngineFactory;->mVoiceEngineList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/voice/IVoiceEngine;

    invoke-interface {v1}, Lcom/car/voice/IVoiceEngine;->destroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method doStart()V
    .locals 4

    const/4 v2, 0x4

    iget v0, p0, Lcom/car/voice/VoiceEngineFactory;->mRecType:I

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/car/utils/TipPlayer;->setRecognizingStatus(Z)V

    :cond_0
    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory;->mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

    invoke-virtual {v0}, Lcom/car/voice/remote/RemoteVoice;->isActiveNow()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/car/voice/VoiceEngineFactory;->mRecType:I

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory;->mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

    iget v1, p0, Lcom/car/voice/VoiceEngineFactory;->mCurrentReqID:I

    iget v2, p0, Lcom/car/voice/VoiceEngineFactory;->mRecType:I

    iget-object v3, p0, Lcom/car/voice/VoiceEngineFactory;->mParam:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/voice/remote/RemoteVoice;->start(IILjava/lang/String;)V

    goto :goto_0
.end method

.method doStop()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/voice/VoiceEngineFactory;->doStop(Z)V

    return-void
.end method

.method doStop(Z)V
    .locals 4

    iget-object v2, p0, Lcom/car/voice/VoiceEngineFactory;->mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

    invoke-virtual {v2}, Lcom/car/voice/remote/RemoteVoice;->isActiveNow()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/car/voice/VoiceEngineFactory;->mVoiceEngineList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/voice/IVoiceEngine;

    invoke-interface {v1}, Lcom/car/voice/IVoiceEngine;->isVoiceEngineEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/car/voice/IVoiceEngine;->stop()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/car/voice/VoiceEngineFactory;->mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

    invoke-virtual {v2, p1}, Lcom/car/voice/remote/RemoteVoice;->stop(Z)V

    :cond_2
    if-eqz p1, :cond_3

    const-string v2, "CarSvc_VoiceEngineFactory"

    const-string v3, "Remove waiting task"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/car/utils/TipPlayer;->removeTaskIfExist(Ljava/lang/Runnable;)V

    :goto_1
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/car/utils/TipPlayer;->setRecognizingStatus(Z)V

    return-void

    :cond_3
    const-string v2, "CarSvc_VoiceEngineFactory"

    const-string v3, "Don\'t remove waiting task if exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getCurReqId()I
    .locals 1

    iget v0, p0, Lcom/car/voice/VoiceEngineFactory;->mCurrentReqID:I

    return v0
.end method

.method public getRecType()I
    .locals 1

    iget v0, p0, Lcom/car/voice/VoiceEngineFactory;->mRecType:I

    return v0
.end method

.method public run()V
    .locals 2

    iget v0, p0, Lcom/car/voice/VoiceEngineFactory;->mRecType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/car/voice/VoiceEngineFactory;->doStop()V

    iget v0, p0, Lcom/car/voice/VoiceEngineFactory;->mCurrentReqID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/car/voice/VoiceEngineFactory;->mCurrentReqID:I

    iget v0, p0, Lcom/car/voice/VoiceEngineFactory;->mCurrentReqID:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/voice/VoiceEngineFactory;->mCurrentReqID:I

    :cond_0
    invoke-virtual {p0}, Lcom/car/voice/VoiceEngineFactory;->doStart()V

    :cond_1
    return-void
.end method

.method public setDefaultCallback(Lcom/car/common/VoiceRecognizerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/VoiceEngineFactory;->mDefaultCallback:Lcom/car/common/VoiceRecognizerCallback;

    return-void
.end method

.method public setVoiceUIResult(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v0, v3}, Lcom/car/voice/VoiceUI;->onSpeech(Z)V

    invoke-virtual {p0}, Lcom/car/voice/VoiceEngineFactory;->stopRecognizeNoDismissUI()V

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory;->mCallback:Lcom/car/common/VoiceRecognizerCallback;

    iget v1, p0, Lcom/car/voice/VoiceEngineFactory;->mCurrentReqID:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v3, p1, v2}, Lcom/car/common/VoiceRecognizerCallback;->onRecognizeResult(IILjava/lang/String;Z)Z

    return-void
.end method

.method public showRemoteProgress(Z)V
    .locals 1

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory;->mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

    invoke-virtual {v0}, Lcom/car/voice/remote/RemoteVoice;->isActiveNow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory;->mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

    invoke-virtual {v0, p1}, Lcom/car/voice/remote/RemoteVoice;->showProgress(Z)V

    :cond_0
    return-void
.end method

.method public startRecognize(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/car/voice/VoiceEngineFactory;->startRecognize(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;Z)Z

    move-result v0

    return v0
.end method

.method public startRecognize(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;Z)Z
    .locals 4

    const/4 v3, 0x1

    if-nez p4, :cond_0

    iget-object v2, p0, Lcom/car/voice/VoiceEngineFactory;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v2, p1, p2}, Lcom/car/voice/VoiceUI;->prepareUI(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_0
    iput-object p3, p0, Lcom/car/voice/VoiceEngineFactory;->mCallback:Lcom/car/common/VoiceRecognizerCallback;

    iput p1, p0, Lcom/car/voice/VoiceEngineFactory;->mRecType:I

    iput-object p2, p0, Lcom/car/voice/VoiceEngineFactory;->mParam:Ljava/lang/String;

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/car/utils/TipPlayer;->isTTSPlaying(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/car/voice/VoiceEngineFactory;->mVoiceEngineList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/voice/IVoiceEngine;

    invoke-interface {v1}, Lcom/car/voice/IVoiceEngine;->isVoiceEngineEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/car/voice/IVoiceEngine;->stop()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/car/voice/VoiceEngineFactory;->mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

    invoke-virtual {v2}, Lcom/car/voice/remote/RemoteVoice;->isActiveNow()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/car/voice/VoiceEngineFactory;->mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

    invoke-virtual {v2}, Lcom/car/voice/remote/RemoteVoice;->stop()V

    :cond_3
    iget v2, p0, Lcom/car/voice/VoiceEngineFactory;->mCurrentReqID:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/car/voice/VoiceEngineFactory;->mCurrentReqID:I

    iget v2, p0, Lcom/car/voice/VoiceEngineFactory;->mCurrentReqID:I

    if-gez v2, :cond_4

    iput v3, p0, Lcom/car/voice/VoiceEngineFactory;->mCurrentReqID:I

    :cond_4
    invoke-virtual {p0}, Lcom/car/voice/VoiceEngineFactory;->doStart()V

    :cond_5
    return v3
.end method

.method public stopRecognize()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/car/common/voice/VoiceHelp;->muteTTS(Z)V

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v0, v1}, Lcom/car/voice/VoiceUI;->onSpeech(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/car/voice/VoiceEngineFactory;->doStop(Z)V

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v0}, Lcom/car/voice/VoiceUI;->dismissUI()V

    return-void
.end method

.method public stopRecognizeNoDismissUI()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/car/common/voice/VoiceHelp;->muteTTS(Z)V

    iget-object v0, p0, Lcom/car/voice/VoiceEngineFactory;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v0, v1}, Lcom/car/voice/VoiceUI;->onSpeech(Z)V

    invoke-virtual {p0}, Lcom/car/voice/VoiceEngineFactory;->doStop()V

    return-void
.end method
