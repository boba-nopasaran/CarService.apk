.class public interface abstract Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onBufferReceived([B)V
.end method

.method public abstract onError(Lcom/aispeech/AIError;)V
.end method

.method public abstract onInit(I)V
.end method

.method public abstract onReadyForSpeech()V
.end method

.method public abstract onRecorderReleased()V
.end method

.method public abstract onRmsChanged(F)V
.end method

.method public abstract onWakeup(Ljava/lang/String;DLjava/lang/String;)V
.end method

.method public abstract onWakeupEngineStopped()V
.end method
