.class public Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;
.super Ljava/lang/Thread;
.source "BluetoothThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;,
        Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BluetoothStateReceiver;
    }
.end annotation


# static fields
.field private static final LOOPING_BLE_DEVICE_INTERVAL_MAX:J = 0x5265c00L

.field private static final LOOPING_BLE_DEVICE_INTERVAL_MIN:J = 0x2ee0L

.field private static bluetoothThread:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

.field private static lLoopBleDeviceInterval:J


# instance fields
.field public final TAG:Ljava/lang/String;

.field private bluetoothStateReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BluetoothStateReceiver;

.field private commPortReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;

.field private handlerBleThread:Landroid/os/Handler;

.field private isBluetoothEnabled:Z

.field private myContext:Landroid/content/Context;

.field private stopScanBleDevice:Z

.field private utilBleController:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->bluetoothThread:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    const-wide/16 v0, 0x2ee0

    sput-wide v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->lLoopBleDeviceInterval:J

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "BluetoothThread"

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->myContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->handlerBleThread:Landroid/os/Handler;

    iput-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->utilBleController:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    iput-boolean v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->isBluetoothEnabled:Z

    iput-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->bluetoothStateReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BluetoothStateReceiver;

    iput-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->commPortReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;

    iput-boolean v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->stopScanBleDevice:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->handleControllerMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->isBluetoothEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->isBluetoothEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->utilBleController:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    return-object v0
.end method

.method static synthetic access$300()J
    .locals 2

    sget-wide v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->lLoopBleDeviceInterval:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->handlerBleThread:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->onBluetoothEnabled()V

    return-void
.end method

.method static synthetic access$800(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->onBluetoothDisabled()V

    return-void
.end method

.method static synthetic access$900(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->broadcastBleConnectState()V

    return-void
.end method

.method private broadcastBleConnectState()V
    .locals 5

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->myContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->utilBleController:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->utilBleController:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    invoke-virtual {v2}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isBleConnected()Z

    move-result v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.ijiazu.notification.filter"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.ijiazu.notification.category"

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.ijiazu.ble.connection.changed"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v1, :cond_2

    const-string v2, "com.ijiazu.ble.mac.address"

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->utilBleController:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    invoke-virtual {v3}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->myContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "BluetoothThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast ble connection state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private broadcastKeyAction([B)V
    .locals 4

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->myContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ijiazu.notification.filter"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.ijiazu.notification.category"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.ijiazu.key.action.data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "BluetoothThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ble_debug]broadcastKeyAction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/jinglingtec/ijiazublctor/util/BleLibUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;
    .locals 1

    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->bluetoothThread:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-direct {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;-><init>()V

    sput-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->bluetoothThread:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    :cond_0
    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->bluetoothThread:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    return-object v0
.end method

.method private handleControllerMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v4, 0x67

    const/16 v3, 0x66

    const-string v0, "BluetoothThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ble_debug]handleControllerMessage msg.what is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v0, "BluetoothThread"

    const-string v1, "[ble_debug]handleControllerMessage SCAN_BLE_DEVICE"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->utilBleController:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->stopScanBleDevice:Z

    if-nez v0, :cond_0

    const-string v0, "BluetoothThread"

    const-string v1, "[ble_debug]handleControllerMessage SCAN_BLE_DEVICE startScanBleDevice"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->utilBleController:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->startScanBleDevice()V

    goto :goto_0

    :sswitch_1
    const-string v0, "BluetoothThread"

    const-string v1, "[ble_debug]handleControllerMessage STOP_SCAN_BLE_DEVICE"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->utilBleController:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    if-eqz v0, :cond_0

    const-string v0, "BluetoothThread"

    const-string v1, "[ble_debug]handleControllerMessage SCAN_BLE_DEVICE STOP_SCAN_BLE_DEVICE"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->utilBleController:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->stopScanBleDevice()V

    goto :goto_0

    :sswitch_2
    const-string v0, "BluetoothThread"

    const-string v1, "[ble_debug]handleControllerMessage KILL_BLE_THREAD"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->lLoopBleDeviceInterval:J

    goto :goto_0

    :sswitch_3
    const-string v0, "BluetoothThread"

    const-string v1, "[ble_debug]handleControllerMessage READ_SPECIFIC_PROPERTY"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->utilBleController:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    if-eqz v0, :cond_0

    const-string v0, "BluetoothThread"

    const-string v1, "[ble_debug]handleControllerMessage READ_SPECIFIC_PROPERTY readMoreData"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->utilBleController:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->readMoreData()V

    goto :goto_0

    :sswitch_4
    const-string v0, "BluetoothThread"

    const-string v1, "[ble_debug]handleControllerMessage BLE_CHARACTERISTIC_CHANGED"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->broadcastKeyAction([B)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->broadcastBleConnectState()V

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_1

    const-string v0, "BluetoothThread"

    const-string v1, "[ble_debug]handleControllerMessage BLE_CONNECTION_CHANGED BLE_CONNECTED"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->handlerBleThread:Landroid/os/Handler;

    const/16 v1, 0x801

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v0, :cond_0

    const-string v0, "BluetoothThread"

    const-string v1, "[ble_debug]handleControllerMessage BLE_CONNECTION_CHANGED BLE_DISCONNECTED"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->loopingBleDevice()V

    goto/16 :goto_0

    :sswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->stopScanBleDevice:Z

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->destroy()V

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->broadcastBleConnectState()V

    goto/16 :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->stopScanBleDevice:Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x201 -> :sswitch_0
        0x202 -> :sswitch_1
        0x301 -> :sswitch_5
        0x302 -> :sswitch_4
        0x501 -> :sswitch_6
        0x700 -> :sswitch_2
        0x801 -> :sswitch_3
    .end sparse-switch
.end method

.method private initThread()V
    .locals 4

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->myContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibUtil;->isBluetoothEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->isBluetoothEnabled:Z

    new-instance v1, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$1;

    invoke-direct {v1, p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$1;-><init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)V

    iput-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->handlerBleThread:Landroid/os/Handler;

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->getInstance()Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    move-result-object v1

    iput-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->utilBleController:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->utilBleController:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->myContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->handlerBleThread:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->setParams(Landroid/content/Context;Landroid/os/Handler;)Z

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->loopingBleDevice()V

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->registerReceivers()V

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->getInstance()Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->handlerBleThread:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->init(Landroid/os/Handler;)Z

    return-void
.end method

.method private loopingBleDevice()V
    .locals 4

    iget-boolean v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->isBluetoothEnabled:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$2;

    invoke-direct {v0, p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$2;-><init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)V

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->handlerBleThread:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private onBluetoothDisabled()V
    .locals 2

    const-string v0, "BluetoothThread"

    const-string v1, "\u624b\u673a\u84dd\u7259\u5173\u95ed . . ."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->isBluetoothEnabled:Z

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->destroy()V

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->broadcastBleConnectState()V

    return-void
.end method

.method private onBluetoothEnabled()V
    .locals 2

    const-string v0, "BluetoothThread"

    const-string v1, "\u624b\u673a\u84dd\u7259\u6253\u5f00 . . ."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->isBluetoothEnabled:Z

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->loopingBleDevice()V

    return-void
.end method

.method private quitBleThread()V
    .locals 2

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->unregisterReceivers()V

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->destroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->utilBleController:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->getInstance()Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->release()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method private registerReceivers()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->myContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BluetoothStateReceiver;

    invoke-direct {v0, p0, v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BluetoothStateReceiver;-><init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$1;)V

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->bluetoothStateReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BluetoothStateReceiver;

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->myContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->bluetoothStateReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BluetoothStateReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;

    invoke-direct {v0, p0, v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;-><init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$1;)V

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->commPortReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->myContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->commPortReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.ijiazu.cmd.filter"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static releaseThread()V
    .locals 2

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->lLoopBleDeviceInterval:J

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->getInstance()Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    move-result-object v0

    iget-object v0, v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->handlerBleThread:Landroid/os/Handler;

    const/16 v1, 0x202

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private reset()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "BluetoothThread"

    const-string v1, "[ble_debug]reset"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->myContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->utilBleController:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    return-void
.end method

.method public static startThread()V
    .locals 2

    const-wide/16 v0, 0x2ee0

    sput-wide v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->lLoopBleDeviceInterval:J

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->getInstance()Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    move-result-object v0

    invoke-direct {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->loopingBleDevice()V

    return-void
.end method

.method private unregisterReceivers()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->myContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->bluetoothStateReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BluetoothStateReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->myContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->bluetoothStateReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BluetoothStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->bluetoothStateReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BluetoothStateReceiver;

    :cond_2
    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->commPortReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->myContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->commPortReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->commPortReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v1, "BluetoothThread"

    const-string v2, "start enter run() method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->initThread()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "BluetoothThread"

    const-string v2, " exit thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setParams(Landroid/content/Context;)Z
    .locals 1

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->myContext:Landroid/content/Context;

    const/4 v0, 0x1

    return v0
.end method
