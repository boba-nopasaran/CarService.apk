.class Lcom/jiagu/BleManager$3;
.super Landroid/bluetooth/le/ScanCallback;
.source "BleManager.java"


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

    iput-object p1, p0, Lcom/jiagu/BleManager$3;->this$0:Lcom/jiagu/BleManager;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    iget-object v0, p0, Lcom/jiagu/BleManager$3;->this$0:Lcom/jiagu/BleManager;

    const-string v1, "com.jiagu.blelib.ACTION_SCAN_FAILED"

    invoke-static {v0, v1, p1}, Lcom/jiagu/BleManager;->access$1000(Lcom/jiagu/BleManager;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/jiagu/BleManager$3;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$300(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnLeScanListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiagu/BleManager$3;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$300(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnLeScanListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jiagu/BleListener$OnLeScanListener;->onScanFailed(I)V

    :cond_0
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    new-instance v0, Lcom/jiagu/BleDevice;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v3

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/jiagu/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;I[B)V

    iget-object v2, p0, Lcom/jiagu/BleManager$3;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$500(Lcom/jiagu/BleManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/jiagu/BleEventBus$Message;->MSG_TYPE_BLE_DEVICE:Lcom/jiagu/BleEventBus$Message;

    invoke-static {v2, v0}, Lcom/jiagu/BleEventBus;->post(Lcom/jiagu/BleEventBus$Message;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/jiagu/BleManager$3;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$300(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnLeScanListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiagu/BleManager$3;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$300(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnLeScanListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v4

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/jiagu/BleListener$OnLeScanListener;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.jiagu.blelib.ACTION_BLUETOOTH_DEVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "device"

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "rssi"

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "scanRecord"

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v2, "address"

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/jiagu/BleManager$3;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$900(Lcom/jiagu/BleManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    iget-object v2, p0, Lcom/jiagu/BleManager$3;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$600(Lcom/jiagu/BleManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/jiagu/BleManager$3;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$600(Lcom/jiagu/BleManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/jiagu/BleManager;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScanResult: name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", scanRecord: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
