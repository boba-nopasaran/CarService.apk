.class public interface abstract Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;
.super Ljava/lang/Object;
.source "AIOSMusicListener.java"


# virtual methods
.method public abstract getPlayState()I
.end method

.method public abstract onExit()V
.end method

.method public abstract onNext()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPlay()V
.end method

.method public abstract onPlayList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/sdk/bean/Music;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPrev()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSearch(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/sdk/bean/SearchMusic;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSetPlayMode(Ljava/lang/String;)V
.end method

.method public abstract onStop()V
.end method

.method public abstract onSyncMusicsFinished(Z)Ljava/lang/String;
.end method
