.class public interface abstract Lcom/car/speech/audio/IAudioRecorder;
.super Ljava/lang/Object;
.source "IAudioRecorder.java"


# virtual methods
.method public abstract getAudioChannel()I
.end method

.method public abstract getAudioEncoding()I
.end method

.method public abstract getSampleRate()Lcom/car/speech/audio/AISampleRate;
.end method

.method public abstract isRecording(Lcom/car/speech/audio/AIRecordListener;)Z
.end method

.method public abstract releaseRecorder()V
.end method

.method public abstract startCachingData()V
.end method

.method public abstract startRecorder(Lcom/car/speech/audio/AIRecordListener;)J
.end method

.method public abstract startSendCachingData()V
.end method

.method public abstract unRegisterRecorder(Lcom/car/speech/audio/AIRecordListener;)V
.end method
