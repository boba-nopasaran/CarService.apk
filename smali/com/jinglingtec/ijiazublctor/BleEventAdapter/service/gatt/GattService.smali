.class public Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;
.super Landroid/app/Service;
.source "GattService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final mErrorStatus:I = 0x81

.field public static magicCode:[B

.field private static s_gattService:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;


# instance fields
.field private final BLE_EVENT_BUS:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

.field public final TAG:Ljava/lang/String;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mGattCallBack:Landroid/bluetooth/BluetoothGattCallback;

.field private mGattCharacteristics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNotifyChar:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mWriteChar:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->magicCode:[B

    sput-object v0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->s_gattService:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "GattService"

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->getInstance()Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->BLE_EVENT_BUS:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mGattCharacteristics:Ljava/util/List;

    new-instance v0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;

    invoke-direct {v0, p0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService$1;-><init>(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)V

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mGattCallBack:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGatt;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->BLE_EVENT_BUS:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->write2Device([B)V

    return-void
.end method

.method static synthetic access$202(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;
    .locals 0

    sput-object p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->s_gattService:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->setmGattServicesList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->getWriteCharacteristics()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->setmWriteChar(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic access$600(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->getNotifyCharacteristics()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->setmNotifyChar(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic access$800(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;Landroid/bluetooth/BluetoothGatt;ILandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->registerNotifyChar(Landroid/bluetooth/BluetoothGatt;ILandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;)Landroid/bluetooth/BluetoothGatt;
    .locals 1

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->getmBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyCharacteristics()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 7

    const/4 v6, -0x1

    const-string v5, "0000ff02-0000-1000-8000-00805f9b34fb"

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iget-object v5, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mGattCharacteristics:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_0
    if-le v3, v6, :cond_2

    iget-object v5, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mGattCharacteristics:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_1
    if-le v4, v6, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_2
    return-object v1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private getWriteCharacteristics()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 9

    const/4 v8, -0x1

    const-string v5, "0000ff01-0000-1000-8000-00805f9b34fb"

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iget-object v5, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mGattCharacteristics:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_0
    if-le v3, v8, :cond_2

    iget-object v5, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mGattCharacteristics:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_1
    if-le v4, v8, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    const-string v5, "GattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ble_debug_gatt]getWriteCharacteristics uuid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_2
    return-object v1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private getmBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method private registerNotifyChar(Landroid/bluetooth/BluetoothGatt;ILandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p1, p3, v4}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    const-string v5, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v3

    sget-object v5, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result v1

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static setMagicCode([B)V
    .locals 0

    sput-object p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->magicCode:[B

    return-void
.end method

.method private setmGattServicesList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mGattCharacteristics:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setmNotifyChar(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mNotifyChar:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method private setmWriteChar(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mWriteChar:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method private write2Device([B)V
    .locals 3

    const-string v0, "GattService"

    const-string v1, "[ble_debug_gatt]write2Device"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mWriteChar:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const-string v0, "GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to write byte array, but something wrong, mBluetoothGatt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWriteChar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mWriteChar:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GattService"

    const-string v1, "[ble_debug_gatt]write2Device error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mWriteChar:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mWriteChar:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    const-string v0, "GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ble_debug_gatt]write2Device data 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/jinglingtec/ijiazublctor/util/BleLibUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeSpecialData([B)V
    .locals 3

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ble_debug]writeSpecialData 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/jinglingtec/ijiazublctor/util/BleLibUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->s_gattService:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->s_gattService:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;

    invoke-direct {v0, p0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->write2Device([B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getmNotifyChar()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mNotifyChar:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public getmWriteChar()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mWriteChar:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "GattService"

    const-string v1, "[ble_debug_gatt]onBind"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "GattService"

    const-string v1, "[ble_debug_gatt]onCreate"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "GattService"

    const-string v1, "[ble_debug_gatt]onDestroy"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "GattService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    const-string v0, "GattService"

    const-string v1, "[ble_debug_gatt]onDestroy mBluetoothGatt.close()"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const/4 v3, 0x2

    const-string v1, "GattService"

    const-string v2, "[ble_debug_gatt]onStartCommand"

    invoke-static {v1, v2}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GattService"

    const-string v2, "[ble_debug_gatt]mBluetoothGatt != null"

    invoke-static {v1, v2}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;->getInstance()Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mGattCallBack:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iput-object v1, p0, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0
.end method
