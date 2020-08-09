.class public interface abstract Lcom/aispeech/export/listeners/AIGrammarASRListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onBeginningOfSpeech()V
.end method

.method public abstract onEndOfSpeech()V
.end method

.method public abstract onError(Lcom/aispeech/AIError;)V
.end method

.method public abstract onInit(I)V
.end method

.method public abstract onReadyForSpeech()V
.end method

.method public abstract onResults(Lcom/aispeech/AIResult;)V
.end method

.method public abstract onRmsChanged(F)V
.end method

.method public abstract onUpdateCompleted(I)V
.end method
