.class public Lcom/car/voice/ui/VoiceUIImpl;
.super Ljava/lang/Object;
.source "VoiceUIImpl.java"

# interfaces
.implements Lcom/car/voice/VoiceUI;


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSvc_VoiceUIImpl"

.field private static sIns:Lcom/car/voice/ui/VoiceUIImpl;


# instance fields
.field private mCallback:Lcom/car/voice/VoiceUICallback;

.field private mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

.field private mUIContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/car/voice/ui/VoiceUIImpl;->mUIContext:Landroid/content/Context;

    sput-object p0, Lcom/car/voice/ui/VoiceUIImpl;->sIns:Lcom/car/voice/ui/VoiceUIImpl;

    return-void
.end method

.method public static instance()Lcom/car/voice/ui/VoiceUIImpl;
    .locals 1

    sget-object v0, Lcom/car/voice/ui/VoiceUIImpl;->sIns:Lcom/car/voice/ui/VoiceUIImpl;

    return-object v0
.end method


# virtual methods
.method public dismissUI()V
    .locals 1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/voice/ui/VoiceUIActivity;->dismissUI()V

    :cond_0
    return-void
.end method

.method public getSuggestionResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/voice/ui/VoiceUIActivity;->getSuggestionResult()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUIContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIImpl;->mUIContext:Landroid/content/Context;

    return-object v0
.end method

.method getVoiceUICallback()Lcom/car/voice/VoiceUICallback;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIImpl;->mCallback:Lcom/car/voice/VoiceUICallback;

    return-object v0
.end method

.method public isPhoneCallIncoming()Z
    .locals 1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/voice/ui/VoiceUIActivity;->isPhoneCallIncoming()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUIShowing()Z
    .locals 1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVoiceUIActivityRunningForeground(Landroid/content/Context;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CarSvc_VoiceUIImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVoiceUIActivityRunningForeground: className="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.car.voice.ui.VoiceUIActivity"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public onClear()V
    .locals 1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/voice/ui/VoiceUIActivity;->onClear()V

    :cond_0
    return-void
.end method

.method public onEngineError(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->onEngineError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEngineStopped()V
    .locals 1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/voice/ui/VoiceUIActivity;->onEngineStopped()V

    :cond_0
    return-void
.end method

.method public onNaviLocation(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->onNaviLocation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRecognizeError(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->onRecognizeError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRecognizeString(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->onRecognizeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShowCommandTip()V
    .locals 1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/voice/ui/VoiceUIActivity;->onShowCommandTip()V

    :cond_0
    return-void
.end method

.method public onShowPhoneCallIncoming(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->onShowPhoneCallIncoming(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSpeech(Z)V
    .locals 1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->onSpeech(Z)V

    :cond_0
    return-void
.end method

.method public onSuggestionResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->onSuggestionResult(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIImpl;->mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

    invoke-virtual {v0, p1}, Lcom/car/voice/remote/RemoteVoice;->sendSuggestionResult(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onTipString(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIImpl;->mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

    invoke-virtual {v0, p1}, Lcom/car/voice/remote/RemoteVoice;->sendTips(Ljava/lang/String;)V

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->onTipString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVolumeUpdate(I)V
    .locals 1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->onVolumeUpdate(I)V

    :cond_0
    return-void
.end method

.method public prepareUI(ILjava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIImpl;->mUIContext:Landroid/content/Context;

    const-class v3, Lcom/car/voice/ui/VoiceUIActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x30000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIImpl;->mUIContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/car/voice/ui/VoiceUIActivity;->prepareUI(ILjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setCallback(Lcom/car/voice/VoiceUICallback;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/ui/VoiceUIImpl;->mCallback:Lcom/car/voice/VoiceUICallback;

    return-void
.end method

.method public setPhoneCallIncoming(Z)V
    .locals 1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->setPhoneCallIncoming(Z)V

    :cond_0
    return-void
.end method

.method public setProcess(Z)V
    .locals 1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->setProcess(Z)V

    :cond_0
    return-void
.end method

.method public setRemoteVoice(Lcom/car/voice/remote/RemoteVoice;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/ui/VoiceUIImpl;->mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

    return-void
.end method

.method public showUnSpeech()V
    .locals 1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/voice/ui/VoiceUIActivity;->showUnSpeech()V

    :cond_0
    return-void
.end method

.method public showUnknownAction()V
    .locals 1

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->instance()Lcom/car/voice/ui/VoiceUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/voice/ui/VoiceUIActivity;->showUnknownAction()V

    :cond_0
    return-void
.end method
