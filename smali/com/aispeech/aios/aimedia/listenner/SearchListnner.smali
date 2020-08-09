.class public interface abstract Lcom/aispeech/aios/aimedia/listenner/SearchListnner;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onFMSearched(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/aimedia/bean/FMInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMusicSearched(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/aimedia/bean/MusicInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSearchError()V
.end method
