.class public interface abstract Lcom/ximalaya/speechcontrol/mediacontrol/IMediaControler;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addAdsStatusListener(Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;)V
.end method

.method public abstract addPlayerStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V
.end method

.method public abstract getCurPosition()I
.end method

.method public abstract getCurrIndex()I
.end method

.method public abstract getCurrentTrack()Lcom/ximalaya/ting/android/opensdk/model/track/Track;
.end method

.method public abstract getDuration()I
.end method

.method public abstract getPlayList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListSize()I
.end method

.method public abstract getPlayerStatus()I
.end method

.method public abstract hasNext()Z
.end method

.method public abstract hasPre()Z
.end method

.method public abstract init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isAdsActive()Z
.end method

.method public abstract isOnlineSource()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract play(I)Z
.end method

.method public abstract playCommontTrackList(Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;I",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract playNext()V
.end method

.method public abstract playPre()V
.end method

.method public abstract playRadio(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)Z
.end method

.method public abstract playTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Lcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract playTrackList(Ljava/util/List;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;I",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeAdsStatusListener(Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;)V
.end method

.method public abstract removePlayerStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V
.end method

.method public abstract seekTo(I)Z
.end method

.method public abstract stop()V
.end method
