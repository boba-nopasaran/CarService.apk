.class Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "GattService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;


# direct methods
.method constructor <init>(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5

    const-string v2, "GattService"

    const-string v3, "[ble_debug_gatt]onCharacteristicChanged"

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-static {v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ble_debug_gatt]onCharacteristicChanged 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$100(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    move-result-object v2

    new-instance v3, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicChangedEvent;

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicChangedEvent;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-virtual {v2, v3}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    const-string v0, "GattService"

    const-string v1, "[ble_debug_gatt]onCharacteristicRead"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3

    const-string v0, "GattService"

    const-string v1, "[ble_debug_gatt]onCharacteristicWrite"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$100(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    move-result-object v0

    new-instance v1, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicWriteEvent;

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicWriteEvent;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const-string v0, "GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ble_debug_gatt_test]onConnectionStateChange BluetoothGatt is mBluetoothGatt? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ble_debug_gatt_test]onConnectionStateChange newState(0 is disconnected, 2 is connected) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ble_debug_gatt_test]onConnectionStateChange status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p3, v3, :cond_2

    if-nez p2, :cond_2

    const-string v0, "GattService"

    const-string v1, "[ble_debug_gatt]onConnectionStateChange STATE_CONNECTED"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GattService"

    const-string v1, "\u84dd\u7259\u5df2\u8fde\u63a5"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$100(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    move-result-object v0

    new-instance v1, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveryServiceEvent;

    invoke-direct {v1, v3}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveryServiceEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const-string v0, "GattService"

    const-string v1, "[ble_debug_gatt]onConnectionStateChange STATE_DISCONNECTED"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GattService"

    const-string v1, "\u84dd\u7259\u8fde\u63a5\u65ad\u5f00 -- \u4ece\u8bbe\u5907\u7aef\u65ad\u5f00"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$202(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "GattService"

    const-string v1, "[ble_debug_gatt]onConnectionStateChange STATE_DISCONNECTED mBluetoothGatt.close()"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v0, v4}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$002(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    :cond_3
    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$100(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    move-result-object v0

    new-instance v1, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveryServiceEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveryServiceEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3

    const-string v0, "GattService"

    const-string v1, "[ble_debug_gatt]onDescriptorRead"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$100(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    move-result-object v0

    new-instance v1, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DescriptorReadEvent;

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DescriptorReadEvent;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3

    const-string v0, "GattService"

    const-string v1, "[ble_debug_gatt]onDescriptorWrite"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    const-string v0, "GattService"

    const-string v1, "try to write magic code, onDescriptorWrite"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    const-string v0, "GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register ok, magicCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->magicCode:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->magicCode:[B

    if-eqz v0, :cond_0

    const-string v0, "GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ble_debug_gatt]onDescriptorWrite magicCode 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->magicCode:[B

    invoke-static {v2}, Lcom/jinglingtec/ijiazublctor/util/BleLibUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    sget-object v1, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->magicCode:[B

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$1000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;[B)V

    const/4 v0, 0x0

    sput-object v0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->magicCode:[B

    :cond_0
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    const-string v0, "GattService"

    const-string v1, "[ble_debug_gatt]onReadRemoteRssi"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$100(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    move-result-object v0

    new-instance v1, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ReadRemoteRssiEvent;

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ReadRemoteRssiEvent;-><init>(Landroid/bluetooth/BluetoothGatt;II)V

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    const-string v0, "GattService"

    const-string v1, "[ble_debug_gatt]onReliableWriteCompleted"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$100(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    move-result-object v0

    new-instance v1, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ReliableWriteCompleted;

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ReliableWriteCompleted;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 5

    const-string v2, "GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ble_debug_gatt]onServicesDiscovered status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v2, v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$300(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;Ljava/util/List;)V

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v3}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$400(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$500(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v3}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$600(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$700(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-virtual {v2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->getmNotifyChar()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-virtual {v3}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->getmNotifyChar()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-static {v2, p1, p2, v3}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$800(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;Landroid/bluetooth/BluetoothGatt;ILandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "GattService"

    const-string v3, "[ble_debug_gatt]Notify register ok"

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$202(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$100(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    move-result-object v2

    new-instance v3, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ServiceDiscoveredEvent;

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$900(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ServiceDiscoveredEvent;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-virtual {v2, v3}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->post(Ljava/lang/Object;)V

    const-string v2, "GattService"

    const-string v3, "[ble_debug_gatt]onServicesDiscovered GATT_SUCCESS finish"

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "GattService"

    const-string v3, "[ble_debug_gatt]onServicesDiscovered mErrorStatus"

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$100(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    move-result-object v2

    new-instance v3, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ServiceDiscoveredEvent;

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;->this$0:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->access$900(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ServiceDiscoveredEvent;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-virtual {v2, v3}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x81 -> :sswitch_1
    .end sparse-switch
.end method
