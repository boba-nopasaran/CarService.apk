.class public interface abstract Lcom/tencent/wecarspeech/sdk/TASTelManager$ITelClient;
.super Ljava/lang/Object;
.source "TASTelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASTelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITelClient"
.end annotation


# virtual methods
.method public abstract answerInComingCall()V
.end method

.method public abstract call(Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;)V
.end method

.method public abstract getTelCallStatus()I
.end method

.method public abstract ignoreInComingCall()V
.end method

.method public abstract refuseInComingCall()V
.end method

.method public abstract viewCallRecord(I)V
.end method

.method public abstract viewPhonebook()V
.end method
