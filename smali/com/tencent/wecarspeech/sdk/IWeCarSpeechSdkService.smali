.class public interface abstract Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;
.super Ljava/lang/Object;
.source "IWeCarSpeechSdkService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService$Stub;
    }
.end annotation


# virtual methods
.method public abstract actionCall(Ljava/lang/String;Ljava/lang/String;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setWeCarSpeechSdkListener(Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
