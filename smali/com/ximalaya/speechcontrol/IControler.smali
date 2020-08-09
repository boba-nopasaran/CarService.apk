.class public interface abstract Lcom/ximalaya/speechcontrol/IControler;
.super Ljava/lang/Object;


# virtual methods
.method public abstract browseAlbums(JIILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getAlbumByCategoryId(JIILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCategoryList(Lcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getHisListTracks(Lcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/HistoryModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getHotContent(ZIILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZII",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract getSourseLists(Ljava/lang/String;IIIILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "IIII",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract getTrackListByLastTrackId(JJILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/LastPlayTrackList;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerServiceBindSuccessCallBack(Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;)V
.end method

.method public abstract setCategoryId(ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPlayByAlbumTracks(Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
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

.method public abstract setPlayByTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Lcom/ximalaya/speechcontrol/IMainDataCallback;)V
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

.method public abstract setPlayModel(Ljava/lang/String;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stopAndExitApp()V
.end method
