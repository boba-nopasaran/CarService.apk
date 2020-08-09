.class public interface abstract Lcom/car/httpserver/NanoHTTPD$AsyncRunner;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AsyncRunner"
.end annotation


# virtual methods
.method public abstract closeAll()V
.end method

.method public abstract closed(Lcom/car/httpserver/NanoHTTPD$ClientHandler;)V
.end method

.method public abstract exec(Lcom/car/httpserver/NanoHTTPD$ClientHandler;)V
.end method
