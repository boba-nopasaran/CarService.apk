.class public interface abstract Lcom/car/jiazu/Remote$RemoteListener;
.super Ljava/lang/Object;
.source "Remote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/jiazu/Remote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteListener"
.end annotation


# virtual methods
.method public abstract onConnUpdata(Lcom/car/jiazu/Remote$ConnPara;I)V
.end method

.method public abstract onConnectFail()V
.end method

.method public abstract onConnected()V
.end method

.method public abstract onConnecting()V
.end method

.method public abstract onDisconnected()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onKeyReceiver(Lcom/car/jiazu/KeysClass$Keys;)V
.end method

.method public abstract onReady()V
.end method

.method public abstract onScanFinish()V
.end method

.method public abstract onStartConnect()V
.end method
