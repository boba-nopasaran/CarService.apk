.class public interface abstract Lcom/iflytek/speech/sr/ISRService;
.super Ljava/lang/Object;
.source "ISRService.java"


# virtual methods
.method public abstract appendAudioData(Ljava/lang/String;[BI)I
.end method

.method public abstract create(Ljava/lang/String;Lcom/iflytek/speech/sr/ISRListener;)Ljava/lang/String;
.end method

.method public abstract createEx(ILjava/lang/String;Lcom/iflytek/speech/sr/ISRListener;)Ljava/lang/String;
.end method

.method public abstract destroy(Ljava/lang/String;)I
.end method

.method public abstract endAudioData(Ljava/lang/String;)I
.end method

.method public abstract getActiveKey(Ljava/lang/String;)I
.end method

.method public abstract localNli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract mspSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sessionStart(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract sessionStop(Ljava/lang/String;)I
.end method

.method public abstract setMachineCode(Ljava/lang/String;)I
.end method

.method public abstract setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setSerialNumber(Ljava/lang/String;)I
.end method

.method public abstract uploadDict(Ljava/lang/String;Ljava/lang/String;I)I
.end method
