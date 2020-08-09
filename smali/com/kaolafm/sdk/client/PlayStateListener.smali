.class public abstract Lcom/kaolafm/sdk/client/PlayStateListener;
.super Lcom/kaolafm/sdk/client/PlayListener$Stub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/PlayListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCompleted()V
.end method

.method public abstract onError(Lcom/kaolafm/sdk/client/ErrorInfo;)V
.end method

.method public abstract onPause(Lcom/kaolafm/sdk/client/Music;)V
.end method

.method public abstract onPlayMusic(Lcom/kaolafm/sdk/client/Music;)V
.end method

.method public abstract onPlaying(Lcom/kaolafm/sdk/client/Music;)V
.end method

.method public abstract onProgress(Lcom/kaolafm/sdk/client/Music;J)V
.end method

.method public abstract onStartPrepare(Lcom/kaolafm/sdk/client/Music;)V
.end method
