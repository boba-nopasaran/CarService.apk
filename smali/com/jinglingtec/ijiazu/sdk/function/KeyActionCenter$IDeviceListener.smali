.class Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IDeviceListener;
.super Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback$Stub;
.source "KeyActionCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IDeviceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;


# direct methods
.method private constructor <init>(Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IDeviceListener;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IDeviceListener;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;)V

    return-void
.end method


# virtual methods
.method public onBleConnected(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IDeviceListener;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->access$200(Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "[yyn]KeyActionCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIjiazuKeyEvent event is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IDeviceListener;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    invoke-virtual {v0, p1}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->deviceConnectionChanged(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onIjiazuDeviceEvent(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v6, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IDeviceListener;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    invoke-static {v6}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->access$200(Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    const-string v6, "[yyn]KeyActionCenter"

    const-string v8, "onIjiazuDeviceEvent called... "

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->getStatus()I

    move-result v5

    const v6, 0xd8ff8

    if-ne v5, v6, :cond_0

    invoke-virtual {p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->getActionCode()I

    move-result v0

    const-string v6, "[yyn]KeyActionCenter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onIjiazuDeviceEvent battery is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IDeviceListener;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    invoke-virtual {v6, v0}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->deviceBatteryLevel(I)V

    :cond_0
    const v6, 0xd8ff7

    if-ne v5, v6, :cond_1

    invoke-virtual {p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jinglingtec/ijiazublctor/util/BleLibUtil;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "10B005"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v6, "[yyn]KeyActionCenter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onIjiazuDeviceEvent deviceId is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public onIjiazuKeyEvent(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IDeviceListener;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    invoke-static {v2}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->access$200(Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    const-string v2, "[yyn]KeyActionCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onIjiazuKeyEvent event is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->getActionCode()I

    move-result v0

    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IDeviceListener;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    invoke-static {v2, v1, v0}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->access$400(Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;II)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
