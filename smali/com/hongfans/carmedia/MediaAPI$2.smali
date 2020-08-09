.class final Lcom/hongfans/carmedia/MediaAPI$2;
.super Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;
.source "MediaAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hongfans/carmedia/MediaAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPlayListChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hongfans/rearview/services/api/ProgramDigtalModel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230\u64ad\u653e\u5217\u8868\u6539\u53d8 mOnPlayChangedListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$500()Lcom/hongfans/carmedia/OnPlayChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", list.size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$500()Lcom/hongfans/carmedia/OnPlayChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$500()Lcom/hongfans/carmedia/OnPlayChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hongfans/carmedia/OnPlayChangedListener;->OnPlayListChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public OnPlayMusicChanged(Lcom/hongfans/rearview/services/api/ProgramDigtalModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230\u64ad\u653e\u5185\u5bb9\u6539\u53d8\u3000mOnPlayChangedListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$500()Lcom/hongfans/carmedia/OnPlayChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", model "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$500()Lcom/hongfans/carmedia/OnPlayChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$500()Lcom/hongfans/carmedia/OnPlayChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hongfans/carmedia/OnPlayChangedListener;->OnPlayMusicChanged(Lcom/hongfans/rearview/services/api/ProgramDigtalModel;)V

    :cond_0
    return-void
.end method

.method public OnPlayStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230\u64ad\u653e\u72b6\u6001\u6539\u53d8 mOnPlayChangedListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$500()Lcom/hongfans/carmedia/OnPlayChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsBind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$000()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$500()Lcom/hongfans/carmedia/OnPlayChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$500()Lcom/hongfans/carmedia/OnPlayChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hongfans/carmedia/OnPlayChangedListener;->OnPlayStateChanged(I)V

    :cond_0
    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$600()Lcom/hongfans/carmedia/PlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$600()Lcom/hongfans/carmedia/PlayerStateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hongfans/carmedia/PlayerStateListener;->OnPlayStateChange(I)V

    :cond_1
    return-void
.end method
