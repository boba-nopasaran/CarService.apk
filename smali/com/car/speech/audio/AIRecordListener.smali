.class public interface abstract Lcom/car/speech/audio/AIRecordListener;
.super Ljava/lang/Object;
.source "AIRecordListener.java"


# virtual methods
.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract onBufferReceived(J[BI)V
.end method

.method public abstract onException(Lcom/aispeech/AIError;)V
.end method

.method public abstract onRecordReleased()V
.end method

.method public abstract onRecordStarted(J)V
.end method

.method public abstract onRecordStopped(J)V
.end method
