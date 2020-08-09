.class public interface abstract Lcom/car/voice/VoiceEngineFactory$VoiceListener;
.super Ljava/lang/Object;
.source "VoiceEngineFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/voice/VoiceEngineFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VoiceListener"
.end annotation


# virtual methods
.method public abstract onBeginOfSpeech()V
.end method

.method public abstract onEndOfSpeech()V
.end method

.method public abstract onResult(IILjava/lang/String;Z)Z
.end method

.method public abstract onVolumeChanged(I)V
.end method
