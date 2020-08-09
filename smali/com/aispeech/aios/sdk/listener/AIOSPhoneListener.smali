.class public interface abstract Lcom/aispeech/aios/sdk/listener/AIOSPhoneListener;
.super Ljava/lang/Object;
.source "AIOSPhoneListener.java"


# virtual methods
.method public abstract acceptIncoming()V
.end method

.method public abstract getBTStatus()Z
.end method

.method public abstract makeCall(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onSyncContactsResult(Z)Ljava/lang/String;
.end method

.method public abstract rejectIncoming()V
.end method
