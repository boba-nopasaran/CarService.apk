.class public interface abstract Lcom/car/voice/VoiceUI;
.super Ljava/lang/Object;
.source "VoiceUI.java"


# virtual methods
.method public abstract dismissUI()V
.end method

.method public abstract getSuggestionResult()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUIContext()Landroid/content/Context;
.end method

.method public abstract isPhoneCallIncoming()Z
.end method

.method public abstract isUIShowing()Z
.end method

.method public abstract onClear()V
.end method

.method public abstract onEngineError(Ljava/lang/String;)V
.end method

.method public abstract onEngineStopped()V
.end method

.method public abstract onNaviLocation(Ljava/lang/String;)V
.end method

.method public abstract onRecognizeError(Ljava/lang/String;)V
.end method

.method public abstract onRecognizeString(Ljava/lang/String;)V
.end method

.method public abstract onShowCommandTip()V
.end method

.method public abstract onShowPhoneCallIncoming(Ljava/lang/String;)V
.end method

.method public abstract onSpeech(Z)V
.end method

.method public abstract onSuggestionResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTipString(Ljava/lang/String;)V
.end method

.method public abstract onVolumeUpdate(I)V
.end method

.method public abstract prepareUI(ILjava/lang/String;)Z
.end method

.method public abstract setCallback(Lcom/car/voice/VoiceUICallback;)V
.end method

.method public abstract setPhoneCallIncoming(Z)V
.end method

.method public abstract setProcess(Z)V
.end method

.method public abstract setRemoteVoice(Lcom/car/voice/remote/RemoteVoice;)V
.end method

.method public abstract showUnSpeech()V
.end method

.method public abstract showUnknownAction()V
.end method
