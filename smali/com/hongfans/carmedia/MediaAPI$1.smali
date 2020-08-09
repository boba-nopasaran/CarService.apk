.class final Lcom/hongfans/carmedia/MediaAPI$1;
.super Landroid/content/BroadcastReceiver;
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

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6536\u5230\u9000\u51fa\u5e7f\u64ad mIsBind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$000()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$100()Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;->OnPlayStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$300()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$200()Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v1, "\u5df2\u8c03\u7528 unbindService"

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/hongfans/carmedia/MediaAPI;->access$002(Z)Z

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/hongfans/carmedia/MediaAPI;->access$402(Lcom/hongfans/rearview/services/api/IPlayManager;)Lcom/hongfans/rearview/services/api/IPlayManager;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->printE(Ljava/lang/String;)V

    goto :goto_1
.end method
