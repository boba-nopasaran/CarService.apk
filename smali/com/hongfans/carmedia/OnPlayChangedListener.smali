.class public interface abstract Lcom/hongfans/carmedia/OnPlayChangedListener;
.super Ljava/lang/Object;
.source "OnPlayChangedListener.java"


# virtual methods
.method public abstract OnPlayListChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hongfans/rearview/services/api/ProgramDigtalModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract OnPlayMusicChanged(Lcom/hongfans/rearview/services/api/ProgramDigtalModel;)V
.end method

.method public abstract OnPlayStateChanged(I)V
.end method
