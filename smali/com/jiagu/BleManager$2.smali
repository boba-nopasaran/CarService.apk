.class Lcom/jiagu/BleManager$2;
.super Ljava/lang/Object;
.source "BleManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiagu/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiagu/BleManager;


# direct methods
.method constructor <init>(Lcom/jiagu/BleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/jiagu/BleManager$2;->this$0:Lcom/jiagu/BleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 5

    invoke-static {}, Lcom/jiagu/BleManager;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/jiagu/BleDevice;

    invoke-direct {v0, p1, p2, p3}, Lcom/jiagu/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;I[B)V

    iget-object v2, p0, Lcom/jiagu/BleManager$2;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$500(Lcom/jiagu/BleManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/jiagu/BleEventBus$Message;->MSG_TYPE_BLE_DEVICE:Lcom/jiagu/BleEventBus$Message;

    invoke-static {v2, v0}, Lcom/jiagu/BleEventBus;->post(Lcom/jiagu/BleEventBus$Message;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/jiagu/BleManager$2;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$300(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnLeScanListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiagu/BleManager$2;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$300(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnLeScanListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/jiagu/BleListener$OnLeScanListener;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.jiagu.blelib.ACTION_BLUETOOTH_DEVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "device"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "rssi"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "scanRecord"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v2, "address"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/jiagu/BleManager$2;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$900(Lcom/jiagu/BleManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/jiagu/BleManager$2;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$600(Lcom/jiagu/BleManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/jiagu/BleManager$2;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$600(Lcom/jiagu/BleManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
