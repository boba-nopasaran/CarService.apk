.class public interface abstract Lcom/car/deviceserver/DeviceServer$Listener;
.super Ljava/lang/Object;
.source "DeviceServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/deviceserver/DeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDevServerConnectStatus(I)V
.end method

.method public abstract onDevServerJsonMessage(Lcom/car/deviceserver/JsonCodec$BaseMsg;)V
.end method
