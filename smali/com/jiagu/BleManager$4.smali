.class Lcom/jiagu/BleManager$4;
.super Landroid/bluetooth/BluetoothGattCallback;
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

    iput-object p1, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5

    invoke-static {}, Lcom/jiagu/BleManager;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCharacteristicChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$2000(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnDataAvailableListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$2000(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnDataAvailableListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/jiagu/BleListener$OnDataAvailableListener;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_0
    iget-object v0, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    const-string v1, "com.jiagu.blelib.ACTION_GATT_NOTIFICATION"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jiagu/BleManager;->access$2400(Lcom/jiagu/BleManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6

    invoke-static {}, Lcom/jiagu/BleManager;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onCharacteristicRead"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v3}, Lcom/jiagu/BleManager;->access$2000(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnDataAvailableListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v3}, Lcom/jiagu/BleManager;->access$2000(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnDataAvailableListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/jiagu/BleListener$OnDataAvailableListener;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    :cond_0
    const-string v0, "com.jiagu.blelib.ACTION_GATT_READ"

    new-instance v2, Lcom/jiagu/Bean/BleAttBean;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2, p3}, Lcom/jiagu/Bean/BleAttBean;-><init>(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    iget-object v3, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v3}, Lcom/jiagu/BleManager;->access$500(Lcom/jiagu/BleManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/jiagu/BleEventBus$Message;->MSG_TYPE_GATT_READ:Lcom/jiagu/BleEventBus$Message;

    invoke-static {v3, v2}, Lcom/jiagu/BleEventBus;->post(Lcom/jiagu/BleEventBus$Message;Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/jiagu/BleManager;->access$800()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1mQueue ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v5}, Lcom/jiagu/BleManager;->access$2100(Lcom/jiagu/BleManager;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v3}, Lcom/jiagu/BleManager;->access$2100(Lcom/jiagu/BleManager;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiagu/BleManager$Request;

    invoke-static {}, Lcom/jiagu/BleManager;->access$800()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2mQueue ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v5}, Lcom/jiagu/BleManager;->access$2100(Lcom/jiagu/BleManager;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/jiagu/BleManager$Request;->access$2200(Lcom/jiagu/BleManager$Request;)Lcom/jiagu/BleListener$OnCharacteristic;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez p3, :cond_3

    invoke-static {v1}, Lcom/jiagu/BleManager$Request;->access$2200(Lcom/jiagu/BleManager$Request;)Lcom/jiagu/BleListener$OnCharacteristic;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/jiagu/BleListener$OnCharacteristic;->onSuccess(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v3}, Lcom/jiagu/BleManager;->access$2300(Lcom/jiagu/BleManager;)V

    return-void

    :cond_3
    invoke-static {v1}, Lcom/jiagu/BleManager$Request;->access$2200(Lcom/jiagu/BleManager$Request;)Lcom/jiagu/BleListener$OnCharacteristic;

    move-result-object v3

    invoke-interface {v3, p1, p3}, Lcom/jiagu/BleListener$OnCharacteristic;->onError(Landroid/bluetooth/BluetoothGatt;I)V

    goto :goto_0
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 9

    invoke-static {}, Lcom/jiagu/BleManager;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onCharacteristicWrite"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/jiagu/BleManager;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_0

    invoke-static {}, Lcom/jiagu/BleManager;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Write: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v6

    aget-byte v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    const-string v5, "com.jiagu.blelib.ACTION_DESCRIPTOR_WRITE"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/jiagu/BleManager;->access$2400(Lcom/jiagu/BleManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    new-instance v3, Lcom/jiagu/Bean/BleAttBean;

    invoke-direct {v3, v0, p2, p3}, Lcom/jiagu/Bean/BleAttBean;-><init>(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    iget-object v4, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v4}, Lcom/jiagu/BleManager;->access$500(Lcom/jiagu/BleManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/jiagu/BleEventBus$Message;->MSG_TYPE_GATT_WRITE:Lcom/jiagu/BleEventBus$Message;

    invoke-static {v4, v3}, Lcom/jiagu/BleEventBus;->post(Lcom/jiagu/BleEventBus$Message;Ljava/lang/Object;)V

    :cond_1
    iget-object v4, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v4}, Lcom/jiagu/BleManager;->access$2100(Lcom/jiagu/BleManager;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiagu/BleManager$Request;

    invoke-static {v2}, Lcom/jiagu/BleManager$Request;->access$2200(Lcom/jiagu/BleManager$Request;)Lcom/jiagu/BleListener$OnCharacteristic;

    move-result-object v4

    if-eqz v4, :cond_2

    if-nez p3, :cond_3

    invoke-static {v2}, Lcom/jiagu/BleManager$Request;->access$2200(Lcom/jiagu/BleManager$Request;)Lcom/jiagu/BleListener$OnCharacteristic;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/jiagu/BleListener$OnCharacteristic;->onSuccess(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v4}, Lcom/jiagu/BleManager;->access$2300(Lcom/jiagu/BleManager;)V

    return-void

    :cond_3
    invoke-static {v2}, Lcom/jiagu/BleManager$Request;->access$2200(Lcom/jiagu/BleManager$Request;)Lcom/jiagu/BleListener$OnCharacteristic;

    move-result-object v4

    invoke-interface {v4, p1, p3}, Lcom/jiagu/BleListener$OnCharacteristic;->onError(Landroid/bluetooth/BluetoothGatt;I)V

    goto :goto_1
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4

    iget-object v2, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$1500(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnConnectionStateChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$1500(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnConnectionStateChangeListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/jiagu/BleListener$OnConnectionStateChangeListener;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_3

    const-string v0, "com.jiagu.blelib.ACTION_GATT_DISCONNECTED"

    invoke-static {}, Lcom/jiagu/BleManager;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Disconnected from GATT server."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2, v0, v1}, Lcom/jiagu/BleManager;->access$1600(Lcom/jiagu/BleManager;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$500(Lcom/jiagu/BleManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/jiagu/BleEventBus$Message;->MSG_TYPE_GATT_DISCONNECTED:Lcom/jiagu/BleEventBus$Message;

    invoke-static {v2, v1}, Lcom/jiagu/BleEventBus;->post(Lcom/jiagu/BleEventBus$Message;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-virtual {v2, v1}, Lcom/jiagu/BleManager;->close(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2, v1}, Lcom/jiagu/BleManager;->access$1700(Lcom/jiagu/BleManager;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v2, 0x1

    if-ne p3, v2, :cond_4

    const-string v0, "com.jiagu.blelib.ACTION_GATT_CONNECTING"

    invoke-static {}, Lcom/jiagu/BleManager;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Connecting to GATT server."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2, v0, v1}, Lcom/jiagu/BleManager;->access$1600(Lcom/jiagu/BleManager;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$500(Lcom/jiagu/BleManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/jiagu/BleEventBus$Message;->MSG_TYPE_GATT_CONNECTING:Lcom/jiagu/BleEventBus$Message;

    invoke-static {v2, v1}, Lcom/jiagu/BleEventBus;->post(Lcom/jiagu/BleEventBus$Message;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-ne p3, v2, :cond_6

    const-string v0, "com.jiagu.blelib.ACTION_GATT_CONNECTED"

    iget-object v2, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2, v0, v1}, Lcom/jiagu/BleManager;->access$1600(Lcom/jiagu/BleManager;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$500(Lcom/jiagu/BleManager;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/jiagu/BleEventBus$Message;->MSG_TYPE_GATT_CONNECTED:Lcom/jiagu/BleEventBus$Message;

    invoke-static {v2, v1}, Lcom/jiagu/BleEventBus;->post(Lcom/jiagu/BleEventBus$Message;Ljava/lang/Object;)V

    :cond_5
    invoke-static {}, Lcom/jiagu/BleManager;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Connected to GATT server."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    if-ne p3, v2, :cond_2

    iget-object v2, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$1800(Lcom/jiagu/BleManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v0, "com.jiagu.blelib.ACTION_GATT_DISCONNECTING"

    invoke-static {}, Lcom/jiagu/BleManager;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Disconnecting from GATT server."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2, v0, v1}, Lcom/jiagu/BleManager;->access$1600(Lcom/jiagu/BleManager;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v2}, Lcom/jiagu/BleManager;->access$500(Lcom/jiagu/BleManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/jiagu/BleEventBus$Message;->MSG_TYPE_GATT_DISCONNECTING:Lcom/jiagu/BleEventBus$Message;

    invoke-static {v2, v1}, Lcom/jiagu/BleEventBus;->post(Lcom/jiagu/BleEventBus$Message;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2

    invoke-static {}, Lcom/jiagu/BleManager;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDescriptorRead"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$2000(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnDataAvailableListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$2000(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnDataAvailableListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/jiagu/BleListener$OnDataAvailableListener;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    :cond_0
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    const-string v1, "com.jiagu.blelib.ACTION_DESCRIPTOR_WRITE"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jiagu/BleManager;->access$2400(Lcom/jiagu/BleManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$2600(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnMtuChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$2600(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnMtuChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/jiagu/BleListener$OnMtuChangedListener;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    :cond_0
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$2500(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnReadRemoteRssiListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$2500(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnReadRemoteRssiListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/jiagu/BleListener$OnReadRemoteRssiListener;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    :cond_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    iget-object v0, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$1900(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnServicesDiscoveredListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$1900(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnServicesDiscoveredListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/jiagu/BleListener$OnServicesDiscoveredListener;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    :cond_0
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$500(Lcom/jiagu/BleManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jiagu/BleEventBus$Message;->MSG_TYPE_GATT_SERVICES_DISCOVERED:Lcom/jiagu/BleEventBus$Message;

    invoke-static {v0, p1}, Lcom/jiagu/BleEventBus;->post(Lcom/jiagu/BleEventBus$Message;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/jiagu/BleManager$4;->this$0:Lcom/jiagu/BleManager;

    const-string v1, "com.jiagu.blelib.ACTION_GATT_SERVICES_DISCOVERED"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jiagu/BleManager;->access$1600(Lcom/jiagu/BleManager;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/jiagu/BleManager;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesDiscovered received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
