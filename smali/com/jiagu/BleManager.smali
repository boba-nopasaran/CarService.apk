.class public Lcom/jiagu/BleManager;
.super Ljava/lang/Object;
.source "BleManager.java"

# interfaces
.implements Lcom/jiagu/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiagu/BleManager$Request;
    }
.end annotation


# static fields
.field private static final BLEMANAGER_INIT_ADAPTER_NULL:I = -0x2

.field private static final BLEMANAGER_INIT_DONE:I = 0x0

.field private static final BLEMANAGER_INIT_MANAGER_NULL:I = -0x1

.field private static final MAX_CONNECT_NUM:I = 0x10

.field private static final SCAN_PERIOD:J = 0x2710L

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/jiagu/BleManager;


# instance fields
.field private enEventBus:Z

.field private isScanning:Z

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothGattMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mConnectedAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mHandlerScan:Landroid/os/Handler;

.field private final mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mOnConnectionStateChangeListener:Lcom/jiagu/BleListener$OnConnectionStateChangeListener;

.field private mOnDataAvailableListener:Lcom/jiagu/BleListener$OnDataAvailableListener;

.field private mOnLeScanListener:Lcom/jiagu/BleListener$OnLeScanListener;

.field private mOnMtuChangedListener:Lcom/jiagu/BleListener$OnMtuChangedListener;

.field private mOnReadRemoteRssiListener:Lcom/jiagu/BleListener$OnReadRemoteRssiListener;

.field private mOnServicesDiscoveredListener:Lcom/jiagu/BleListener$OnServicesDiscoveredListener;

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/jiagu/BleManager$Request;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnableScan:Ljava/lang/Runnable;

.field protected mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private mScanLeDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiagu/BleDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jiagu/BleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/jiagu/BleManager;->instance:Lcom/jiagu/BleManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiagu/BleManager;->mScanLeDeviceList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiagu/BleManager;->enEventBus:Z

    new-instance v0, Lcom/jiagu/BleManager$1;

    invoke-direct {v0, p0}, Lcom/jiagu/BleManager$1;-><init>(Lcom/jiagu/BleManager;)V

    iput-object v0, p0, Lcom/jiagu/BleManager;->mRunnableScan:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiagu/BleManager;->mHandlerScan:Landroid/os/Handler;

    new-instance v0, Lcom/jiagu/BleManager$2;

    invoke-direct {v0, p0}, Lcom/jiagu/BleManager$2;-><init>(Lcom/jiagu/BleManager;)V

    iput-object v0, p0, Lcom/jiagu/BleManager;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/jiagu/BleManager$3;

    invoke-direct {v0, p0}, Lcom/jiagu/BleManager$3;-><init>(Lcom/jiagu/BleManager;)V

    iput-object v0, p0, Lcom/jiagu/BleManager;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    :cond_0
    new-instance v0, Lcom/jiagu/BleManager$4;

    invoke-direct {v0, p0}, Lcom/jiagu/BleManager$4;-><init>(Lcom/jiagu/BleManager;)V

    iput-object v0, p0, Lcom/jiagu/BleManager;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    iput-object p1, p0, Lcom/jiagu/BleManager;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/jiagu/BleManager;->instance:Lcom/jiagu/BleManager;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    sget-object v0, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "BleService initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private QueueClear(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiagu/BleManager$Request;

    invoke-static {v1}, Lcom/jiagu/BleManager$Request;->access$1200(Lcom/jiagu/BleManager$Request;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v4, "remove request"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/jiagu/BleManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/jiagu/BleManager;->isScanning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/jiagu/BleManager;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/jiagu/BleManager;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jiagu/BleManager;->broadcastUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnConnectionStateChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mOnConnectionStateChangeListener:Lcom/jiagu/BleListener$OnConnectionStateChangeListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/jiagu/BleManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jiagu/BleManager;->broadcastUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/jiagu/BleManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jiagu/BleManager;->QueueClear(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/jiagu/BleManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mConnectedAddressList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnServicesDiscoveredListener;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mOnServicesDiscoveredListener:Lcom/jiagu/BleListener$OnServicesDiscoveredListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiagu/BleManager;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnDataAvailableListener;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mOnDataAvailableListener:Lcom/jiagu/BleListener$OnDataAvailableListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/jiagu/BleManager;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/jiagu/BleManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/jiagu/BleManager;->nextRequest()V

    return-void
.end method

.method static synthetic access$2400(Lcom/jiagu/BleManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jiagu/BleManager;->broadcastUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$2500(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnReadRemoteRssiListener;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mOnReadRemoteRssiListener:Lcom/jiagu/BleListener$OnReadRemoteRssiListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnMtuChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mOnMtuChangedListener:Lcom/jiagu/BleListener$OnMtuChangedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnLeScanListener;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mOnLeScanListener:Lcom/jiagu/BleListener$OnLeScanListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiagu/BleManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jiagu/BleManager;->broadcastUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/jiagu/BleManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/jiagu/BleManager;->enEventBus:Z

    return v0
.end method

.method static synthetic access$600(Lcom/jiagu/BleManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mScanLeDeviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jiagu/BleManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private broadcastUpdate(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jiagu/BleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private broadcastUpdate(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/jiagu/BleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "address"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/jiagu/BleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private broadcastUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/jiagu/BleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private broadcastUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "uuid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "value"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/jiagu/BleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jiagu/BleManager;
    .locals 1

    sget-object v0, Lcom/jiagu/BleManager;->instance:Lcom/jiagu/BleManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jiagu/BleManager;

    invoke-direct {v0, p0}, Lcom/jiagu/BleManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jiagu/BleManager;->instance:Lcom/jiagu/BleManager;

    :cond_0
    sget-object v0, Lcom/jiagu/BleManager;->instance:Lcom/jiagu/BleManager;

    return-object v0
.end method

.method private declared-synchronized nextRequest()V
    .locals 5

    const/4 v4, 0x1

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/jiagu/BleManager$Request;

    move-object v2, v0

    if-nez v2, :cond_0

    sget-object v3, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v4, "request=null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/jiagu/BleManager$Request;->access$700(Lcom/jiagu/BleManager$Request;)Z

    move-result v3

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v4, "FlagUsed=true"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_2
    sget-object v3, Lcom/jiagu/BleManager$5;->$SwitchMap$com$jiagu$BleManager$Request$Type:[I

    invoke-static {v2}, Lcom/jiagu/BleManager$Request;->access$1100(Lcom/jiagu/BleManager$Request;)Lcom/jiagu/BleManager$Request$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiagu/BleManager$Request$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-static {v2}, Lcom/jiagu/BleManager$Request;->access$1200(Lcom/jiagu/BleManager$Request;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/jiagu/BleManager$Request;->access$1300(Lcom/jiagu/BleManager$Request;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/jiagu/BleManager;->readCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v2}, Lcom/jiagu/BleManager$Request;->access$1300(Lcom/jiagu/BleManager$Request;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-static {v2}, Lcom/jiagu/BleManager$Request;->access$1400(Lcom/jiagu/BleManager$Request;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    invoke-static {v2}, Lcom/jiagu/BleManager$Request;->access$1200(Lcom/jiagu/BleManager$Request;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/jiagu/BleManager;->writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0

    :pswitch_3
    invoke-static {v2}, Lcom/jiagu/BleManager$Request;->access$1300(Lcom/jiagu/BleManager$Request;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-static {v2}, Lcom/jiagu/BleManager$Request;->access$1400(Lcom/jiagu/BleManager$Request;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    invoke-static {v2}, Lcom/jiagu/BleManager$Request;->access$1200(Lcom/jiagu/BleManager$Request;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/jiagu/BleManager;->writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public EnableNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 6

    iget-object v4, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    iget-object v4, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    :cond_0
    sget-object v4, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v5, "BluetoothAdapter not initialized"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-eqz p4, :cond_2

    const-string v4, "00002902-0000-1000-8000-00805F9B34FB"

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    if-eqz p5, :cond_3

    sget-object v4, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    :goto_1
    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    :cond_2
    invoke-virtual {v0, v1, p5}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v4

    goto :goto_0

    :cond_3
    sget-object v4, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    goto :goto_1
.end method

.method public close()V
    .locals 3

    iget-object v1, p0, Lcom/jiagu/BleManager;->mConnectedAddressList:Ljava/util/List;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/jiagu/BleManager;->mConnectedAddressList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/jiagu/BleManager;->mConnectedAddressList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public close(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mConnectedAddressList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/jiagu/BleManager;->isScanning:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/jiagu/BleManager;->scanLeDevice(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/jiagu/BleManager;->getConnectDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v5, 0x10

    if-le v2, v5, :cond_1

    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lcom/jiagu/BleManager;->mConnectedAddressList:Ljava/util/List;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jiagu/BleManager;->mConnectedAddressList:Ljava/util/List;

    :cond_2
    iget-object v2, p0, Lcom/jiagu/BleManager;->mConnectedAddressList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v3, "This is device already connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/jiagu/BleManager;->enEventBus:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/jiagu/BleEventBus$Message;->MSG_TYPE_GATT_CONNECTED:Lcom/jiagu/BleEventBus$Message;

    invoke-static {v2, p1}, Lcom/jiagu/BleEventBus;->post(Lcom/jiagu/BleEventBus$Message;Ljava/lang/Object;)V

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_5

    if-nez p1, :cond_6

    :cond_5
    sget-object v2, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v4, "BluetoothAdapter not initialized or unspecified address."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    :cond_7
    iget-object v2, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/jiagu/BleManager;->mConnectedAddressList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v5, "Trying to use an existing mBluetoothGatt for connection."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v4

    goto :goto_0

    :cond_8
    move v2, v3

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_a

    sget-object v2, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v4, "Device not found. Unable to connect."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/jiagu/BleManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/jiagu/BleManager;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v1, v2, v3, v5}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v3, "Trying to create a new connection."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/jiagu/BleManager;->mConnectedAddressList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto/16 :goto_0

    :cond_b
    move v2, v3

    goto/16 :goto_0
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "BluetoothAdapter not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0
.end method

.method public discoverServices(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    goto :goto_0
.end method

.method public enableBluetooth(Z)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnectNum()I
    .locals 1

    invoke-virtual {p0}, Lcom/jiagu/BleManager;->getConnectDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getScanLeDevice()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jiagu/BleDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jiagu/BleManager;->mScanLeDeviceList:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedGattService(Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattService;
    .locals 2

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedGattServices(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public initialize()I
    .locals 2

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiagu/BleManager;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to initialize BluetoothManager."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    sget-object v0, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to initialize BluetoothAdapter."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnect(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mConnectedAddressList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnEventBus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jiagu/BleManager;->enEventBus:Z

    return v0
.end method

.method public isEnableBluetooth()Z
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isScanning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jiagu/BleManager;->isScanning:Z

    return v0
.end method

.method public isSupportBle()Z
    .locals 2

    iget-object v0, p0, Lcom/jiagu/BleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized readBle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiagu/BleListener$OnCharacteristic;)Z
    .locals 8

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    sget-object v5, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "r mQueue ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v1, p4}, Lcom/jiagu/BleManager$Request;->newReadRequest(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/jiagu/BleListener$OnCharacteristic;)Lcom/jiagu/BleManager$Request;

    move-result-object v2

    iget-object v5, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    sget-object v5, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "r1 mQueue ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/jiagu/BleManager$Request;->access$702(Lcom/jiagu/BleManager$Request;Z)Z

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized readBle(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/jiagu/BleListener$OnCharacteristic;)Z
    .locals 8

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    sget-object v5, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "r mQueue ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v1, p4}, Lcom/jiagu/BleManager$Request;->newReadRequest(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/jiagu/BleListener$OnCharacteristic;)Lcom/jiagu/BleManager$Request;

    move-result-object v2

    iget-object v5, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    sget-object v5, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "r1 mQueue ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/jiagu/BleManager$Request;->access$702(Lcom/jiagu/BleManager$Request;Z)Z

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public readCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    sget-object v0, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "readCharacteristic"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "BluetoothAdapter not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0
.end method

.method public readCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iget-object v2, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    :cond_0
    return-void
.end method

.method public readDescriptor(Ljava/lang/String;Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 2

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "BluetoothGatt is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    goto :goto_0
.end method

.method public readDescriptor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    iget-object v3, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v4, "BluetoothGatt is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGatt;

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-static {p4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    iget-object v3, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v3

    goto :goto_0
.end method

.method public readRemoteRssi(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result v0

    goto :goto_0
.end method

.method public requestMtu(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    iget-object v0, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result v0

    goto :goto_0
.end method

.method public scanLeDevice(Z)V
    .locals 2

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Lcom/jiagu/BleManager;->scanLeDevice(ZJ)Z

    return-void
.end method

.method public scanLeDevice(ZJ)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jiagu/BleManager;->scanLeDevice(ZJ[Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public scanLeDevice(ZJ[Ljava/util/UUID;)Z
    .locals 10

    const/16 v7, 0x15

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/jiagu/BleManager;->isScanning:Z

    if-ne v5, p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p1, :cond_6

    iget-object v5, p0, Lcom/jiagu/BleManager;->mHandlerScan:Landroid/os/Handler;

    iget-object v6, p0, Lcom/jiagu/BleManager;->mRunnableScan:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v5, p0, Lcom/jiagu/BleManager;->mScanLeDeviceList:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/jiagu/BleManager;->mScanLeDeviceList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_5

    new-instance v5, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_3

    array-length v6, p4

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v2, p4, v5

    new-instance v7, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v7}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    new-instance v8, Landroid/os/ParcelUuid;

    invoke-direct {v8, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v7, v8}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v5

    if-nez v5, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v4

    iget-object v5, p0, Lcom/jiagu/BleManager;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v4, v0, v1, v5}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    :goto_2
    iput-boolean v3, p0, Lcom/jiagu/BleManager;->isScanning:Z

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v5, p0, Lcom/jiagu/BleManager;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v4, p4, v5}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    goto :goto_2

    :cond_6
    iput-boolean v4, p0, Lcom/jiagu/BleManager;->isScanning:Z

    iget-object v5, p0, Lcom/jiagu/BleManager;->mHandlerScan:Landroid/os/Handler;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/jiagu/BleManager;->mHandlerScan:Landroid/os/Handler;

    iget-object v6, p0, Lcom/jiagu/BleManager;->mRunnableScan:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_7
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_9

    iget-object v5, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v5

    if-nez v5, :cond_8

    move v3, v4

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v4

    iget-object v5, p0, Lcom/jiagu/BleManager;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v4, v5}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :goto_3
    const-string v4, "com.jiagu.blelib.ACTION_SCAN_FINISHED"

    invoke-direct {p0, v4}, Lcom/jiagu/BleManager;->broadcastUpdate(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jiagu/BleManager;->mScanLeDeviceList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiagu/BleManager;->mScanLeDeviceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v5, p0, Lcom/jiagu/BleManager;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    goto :goto_3
.end method

.method public serOnReadRemoteRssiListener(Lcom/jiagu/BleListener$OnReadRemoteRssiListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jiagu/BleManager;->mOnReadRemoteRssiListener:Lcom/jiagu/BleListener$OnReadRemoteRssiListener;

    return-void
.end method

.method public setCharacteristicNotification(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .locals 3

    iget-object v1, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v2, "BluetoothAdapter not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, p2, p3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    const-string v1, "00002902-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    if-eqz p3, :cond_2

    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    :goto_1
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    iget-object v1, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    goto :goto_1
.end method

.method public setCharacteristicNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    iget-object v3, p0, Lcom/jiagu/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    sget-object v3, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    const-string v4, "BluetoothAdapter not initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGatt;

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iget-object v3, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v0, p4}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    const-string v3, "00002902-0000-1000-8000-00805F9B34FB"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    if-eqz p4, :cond_2

    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    :goto_1
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    iget-object v3, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    goto :goto_1
.end method

.method public setEnEventBus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jiagu/BleManager;->enEventBus:Z

    return-void
.end method

.method public setOnConnectListener(Lcom/jiagu/BleListener$OnConnectionStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jiagu/BleManager;->mOnConnectionStateChangeListener:Lcom/jiagu/BleListener$OnConnectionStateChangeListener;

    return-void
.end method

.method public setOnDataAvailableListener(Lcom/jiagu/BleListener$OnDataAvailableListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jiagu/BleManager;->mOnDataAvailableListener:Lcom/jiagu/BleListener$OnDataAvailableListener;

    return-void
.end method

.method public setOnLeScanListener(Lcom/jiagu/BleListener$OnLeScanListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jiagu/BleManager;->mOnLeScanListener:Lcom/jiagu/BleListener$OnLeScanListener;

    return-void
.end method

.method public setOnMtuChangedListener(Lcom/jiagu/BleListener$OnMtuChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jiagu/BleManager;->mOnMtuChangedListener:Lcom/jiagu/BleListener$OnMtuChangedListener;

    return-void
.end method

.method public setOnServicesDiscoveredListener(Lcom/jiagu/BleListener$OnServicesDiscoveredListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jiagu/BleManager;->mOnServicesDiscoveredListener:Lcom/jiagu/BleListener$OnServicesDiscoveredListener;

    return-void
.end method

.method public declared-synchronized writeBle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLcom/jiagu/BleListener$OnCharacteristic;)Z
    .locals 8

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_2

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    sget-object v5, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "w mQueue ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v1, p4, p5, p6}, Lcom/jiagu/BleManager$Request;->newWriteRequest(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[BZLcom/jiagu/BleListener$OnCharacteristic;)Lcom/jiagu/BleManager$Request;

    move-result-object v2

    iget-object v5, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    sget-object v5, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "w1 mQueue ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/jiagu/BleManager$Request;->access$702(Lcom/jiagu/BleManager$Request;Z)Z

    invoke-virtual {v1, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    if-nez p5, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    :cond_1
    :goto_0
    monitor-exit p0

    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized writeBle(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[BZLcom/jiagu/BleListener$OnCharacteristic;)Z
    .locals 8

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    sget-object v5, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "w mQueue ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v1, p4, p5, p6}, Lcom/jiagu/BleManager$Request;->newWriteRequest(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[BZLcom/jiagu/BleListener$OnCharacteristic;)Lcom/jiagu/BleManager$Request;

    move-result-object v2

    iget-object v5, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    sget-object v5, Lcom/jiagu/BleManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "w1 mQueue ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/jiagu/BleManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/jiagu/BleManager$Request;->access$702(Lcom/jiagu/BleManager$Request;Z)Z

    invoke-virtual {v1, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    if-nez p5, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    :cond_1
    :goto_0
    monitor-exit p0

    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public writeCharacteristic(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 2

    iget-object v1, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    iget-object v3, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(Ljava/lang/String;)Z

    if-nez p5, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public writeCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)Z
    .locals 4

    iget-object v3, p0, Lcom/jiagu/BleManager;->mBluetoothGattMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    if-nez p5, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
