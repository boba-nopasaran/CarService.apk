.class Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IjiazuListener;
.super Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback$Stub;
.source "KeyActionCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IjiazuListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;


# direct methods
.method private constructor <init>(Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IjiazuListener;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IjiazuListener;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;)V

    return-void
.end method


# virtual methods
.method public onInit(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[yyn]KeyActionCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInit result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNewMenu(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[yyn]KeyActionCenter"

    const-string v1, "onNewMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IjiazuListener;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->access$200(Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IjiazuListener;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->access$300(Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;)Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRequestUpdateAppStatus()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[yyn]KeyActionCenter"

    const-string v1, "onRequestUpdateAppStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStatusChange(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[yyn]KeyActionCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChange active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
