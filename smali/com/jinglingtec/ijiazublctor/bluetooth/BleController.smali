.class public Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;
.super Ljava/lang/Object;
.source "BleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;
    }
.end annotation


# static fields
.field private static final BLE_EVENT_ADAPTER_INSTANCE:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;

.field private static final BLE_EVENT_BUS_INSTANCE:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

.field private static final TAG:Ljava/lang/String; = "BleController"

.field private static final insance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;


# instance fields
.field private bleConnectingTime:I

.field private curDeviceMacAddress:Ljava/lang/String;

.field private deviceCatetory:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

.field private isBleConnected:Z

.field private isBleConnecting:Z

.field private mDisconnectStatus:I

.field private mRegisterStatus:Z

.field private final mSupportedDeviceLock:Ljava/lang/Object;

.field private myContext:Landroid/content/Context;

.field private newMagicCode:Ljava/lang/String;

.field private threadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    invoke-direct {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;-><init>()V

    sput-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->insance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;->getInstance()Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;

    move-result-object v0

    sput-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->BLE_EVENT_ADAPTER_INSTANCE:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->getInstance()Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    move-result-object v0

    sput-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->BLE_EVENT_BUS_INSTANCE:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->mDisconnectStatus:I

    iput-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->threadHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->myContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->mRegisterStatus:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->mSupportedDeviceLock:Ljava/lang/Object;

    iput-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->curDeviceMacAddress:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isBleConnected:Z

    iput-boolean v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isBleConnecting:Z

    iput v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->bleConnectingTime:I

    iput-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->newMagicCode:Ljava/lang/String;

    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->DC_INVALID:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->deviceCatetory:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    const-string v0, "BleController"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$002(Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;I)I
    .locals 0

    iput p1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->mDisconnectStatus:I

    return p1
.end method

.method private bleCharacteristicChanged([B)V
    .locals 1

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->getInstance()Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->bleCharacteristicChanged([B)V

    :cond_0
    return-void
.end method

.method private bleConnectedChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isBleConnected:Z

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->getInstance()Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->bleConnectionChanged(Z)V

    :cond_0
    return-void
.end method

.method private checkBom(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isBleConnecting:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isBleConnected:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->DC_GENERAL_4_DIRECTION:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    iput-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->deviceCatetory:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    invoke-static {p1}, Lcom/jinglingtec/ijiazublctor/util/BleLibUtil;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ijiazu_debug1]checkBom bomStr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "10J003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->DC_CROWDFUNDING:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    iput-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->deviceCatetory:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    goto :goto_0

    :cond_2
    const-string v1, "BleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bom ==== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "10J010"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    const-string v1, "10J01F"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v1, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->DC_SWITCH_OK_RIGHT:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    iput-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->deviceCatetory:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    goto :goto_0
.end method

.method public static destroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "BleController"

    const-string v1, "destory ble controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->insance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    iget-boolean v0, v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->mRegisterStatus:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->BLE_EVENT_ADAPTER_INSTANCE:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;

    sget-object v1, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->insance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    iget-object v1, v1, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->myContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;->closeConnection(Landroid/content/Context;)V

    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->BLE_EVENT_BUS_INSTANCE:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    sget-object v1, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->insance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    iget-object v1, v1, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->myContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->unregister(Ljava/lang/Object;)V

    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->insance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    iput-boolean v2, v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->mRegisterStatus:Z

    :cond_0
    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->insance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    iput-boolean v2, v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isBleConnected:Z

    return-void
.end method

.method public static getInstance()Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;
    .locals 1

    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->insance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    return-object v0
.end method

.method private isIjiazuDevice([BLjava/lang/String;)Z
    .locals 12

    const-string v9, "BleController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ble_debug]isIjiazuDevice macaddr "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/jinglingtec/ijiazublctor/util/BleLibUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_0
    const-string v9, "BleController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ble_debug]isIjiazuDevice scanData hex "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, ":"

    const-string v10, ""

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const-string v9, "20140722"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v9, "20160105"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v9, "BleController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ble_debug]isIjiazuDevice scanData.indexOf(BleConstants.IJIAZU_SECRET_KEY) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "20140722"

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "BleController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ble_debug]isIjiazuDevice scanData.indexOf(macaddr) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v4, :cond_1

    if-ltz v6, :cond_2

    :cond_1
    if-gez v5, :cond_3

    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v10, v4, 0x18

    if-lt v9, v10, :cond_7

    const-string v9, "BleController"

    const-string v10, "[ble_debug]isIjiazuDevice scanData.length() >= (idxIjiazu + 24)"

    invoke-static {v9, v10}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0xc

    invoke-virtual {v8, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x18

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->checkBom(Ljava/lang/String;)V

    const/16 v9, 0x12

    new-array v7, v9, [B

    const/4 v9, 0x0

    invoke-static {v7, v9}, Ljava/util/Arrays;->fill([BB)V

    const/4 v9, 0x0

    const/16 v10, -0x6b

    aput-byte v10, v7, v9

    const/4 v9, 0x1

    const/16 v10, -0x43

    aput-byte v10, v7, v9

    invoke-static {p2}, Lcom/jinglingtec/ijiazublctor/util/BleLibUtil;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    :goto_1
    array-length v9, v1

    if-ge v3, v9, :cond_4

    add-int/lit8 v9, v3, 0x2

    aget-byte v10, v1, v3

    aput-byte v10, v7, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const-string v9, "BleController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ble_debug]newMagicCode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->newMagicCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->newMagicCode:Ljava/lang/String;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->newMagicCode:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v9, v2

    const/16 v10, 0xa

    if-ne v9, v10, :cond_5

    const/4 v3, 0x0

    :goto_2
    const/16 v9, 0xa

    if-ge v3, v9, :cond_5

    add-int/lit8 v9, v3, 0x8

    aget-byte v10, v2, v3

    aput-byte v10, v7, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->newMagicCode:Ljava/lang/String;

    :cond_6
    const-string v9, "BleController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ble_debug]isIjiazuDevice build magic code 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Lcom/jinglingtec/ijiazublctor/util/BleLibUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->setMagicCode([B)V

    :cond_7
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private onMYCharacteristicChanged(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicChangedEvent;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const-string v2, "BleController"

    const-string v3, "[ble_debug]onCharacteristicChanged"

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v2, "BleController"

    const-string v3, "[ble_debug]onCharacteristicChanged null"

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicChangedEvent;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lt v2, v7, :cond_0

    const-string v2, "BleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ble_debug]onCharacteristicChanged hex data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v1

    if-ne v2, v6, :cond_3

    const/16 v2, 0xb0

    aget-byte v3, v1, v5

    if-ne v2, v3, :cond_2

    aget-byte v2, v1, v7

    if-ne v6, v2, :cond_2

    invoke-virtual {p1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicChangedEvent;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->reStartBT(I)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->DC_SWITCH_OK_RIGHT:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->deviceCatetory:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    if-ne v2, v3, :cond_3

    aget-byte v2, v1, v5

    if-ne v6, v2, :cond_4

    aput-byte v8, v1, v5

    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->bleCharacteristicChanged([B)V

    goto :goto_0

    :cond_4
    aget-byte v2, v1, v5

    if-ne v8, v2, :cond_3

    aput-byte v6, v1, v5

    goto :goto_1
.end method

.method private onMYDiscoveredDevice(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveredDevicesEvent;)V
    .locals 6

    const-string v2, "BleController"

    const-string v3, "[ble_debug]onDiscoveredDevice"

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveredDevicesEvent;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "BleController"

    const-string v3, "[ble_debug]onDiscoveredDevice null"

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v2, "BleController"

    const-string v3, "[ble_debug]onDiscoveredDevice waiting lock"

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->mSupportedDeviceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v2, "BleController"

    const-string v4, "[ble_debug]onDiscoveredDevice got lock"

    invoke-static {v2, v4}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveredDevicesEvent;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ble_debug]onDiscoveredDevice mac "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v4

    if-ne v2, v4, :cond_2

    invoke-virtual {p1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveredDevicesEvent;->getScanData()[B

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveredDevicesEvent;->getScanData()[B

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isIjiazuDevice([BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "BleController"

    const-string v4, "[ble_debug]onDiscoveredDevice data null"

    invoke-static {v2, v4}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    sget-object v2, Lcom/jinglingtec/ijiazublctor/util/BleLibConstants;->myDeviceMac:Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/jinglingtec/ijiazublctor/util/BleLibConstants;->myDeviceMac:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "BleController"

    const-string v4, "[ble_debug]onDiscoveredDevice not my ijiazu device"

    invoke-static {v2, v4}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->newMagicCode:Ljava/lang/String;

    monitor-exit v3

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isBleConnecting:Z

    iput-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->curDeviceMacAddress:Ljava/lang/String;

    sget-object v2, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->BLE_EVENT_ADAPTER_INSTANCE:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->myContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;->stopScanning(Landroid/content/Context;)V

    sget-object v2, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->BLE_EVENT_ADAPTER_INSTANCE:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;

    invoke-virtual {v2, v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;->setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    sget-object v2, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->BLE_EVENT_ADAPTER_INSTANCE:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->myContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;->connectDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    const-string v2, "BleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ble_debug]onDiscoveredDevice success, MacAddress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private onMYDiscoveryService(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveryServiceEvent;)V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "BleController"

    const-string v3, "[ble_debug]onDiscoveryService"

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v2, "BleController"

    const-string v3, "[ble_debug]onDiscoveryService null event"

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveryServiceEvent;->getmStatus()I

    move-result v1

    const-string v2, "BleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ble_debug]onDiscoveryService _status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v2, "BleController"

    const-string v3, "[ble_debug]onDiscoveryService STATE_DISCONNECTED"

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isBleConnecting:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->curDeviceMacAddress:Ljava/lang/String;

    sget-object v2, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->BLE_EVENT_ADAPTER_INSTANCE:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->myContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;->closeConnection(Landroid/content/Context;)V

    sget-object v2, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->DC_INVALID:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    iput-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->deviceCatetory:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    const/16 v0, 0x81

    const/16 v2, 0x81

    iget v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->mDisconnectStatus:I

    if-ne v2, v3, :cond_1

    const-string v2, "BleController"

    const-string v3, "[ble_debug]onDiscoveryService STATE_DISCONNECTED and status code is 129,disable ble, wait 10 seconds and enable ble"

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v5}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->bleConnectedChanged(Z)V

    goto :goto_0

    :pswitch_2
    const-string v2, "BleController"

    const-string v3, "[ble_debug]onDiscoveryService STATE_CONNECTED"

    invoke-static {v2, v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isBleConnecting:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onMYServiceDiscovered(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ServiceDiscoveredEvent;)V
    .locals 2

    const-string v0, "BleController"

    const-string v1, "[ble_debug]onServiceDiscovered"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ServiceDiscoveredEvent;->getmStatus()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BleController"

    const-string v1, "[ble_debug]onServiceDiscovered \u5c5e\u6027\u8bfb\u53d6\u5b8c\u6bd5"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->bleConnectedChanged(Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ServiceDiscoveredEvent;->getmStatus()I

    move-result v0

    iput v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->mDisconnectStatus:I

    goto :goto_0
.end method

.method private reStartBT(I)V
    .locals 6

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->threadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->threadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$1;

    invoke-direct {v2, p0, v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$1;-><init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;Landroid/bluetooth/BluetoothAdapter;)V

    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private readMYDeviceID()V
    .locals 3

    const-string v1, "BleController"

    const-string v2, "[ble_debug]readDeviceID"

    invoke-static {v1, v2}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->writeSpecialData([B)V

    return-void
.end method

.method private readMYMoreData()V
    .locals 6

    const-string v3, "BleController"

    const-string v4, "[ble_debug]readMoreData"

    invoke-static {v3, v4}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7d0

    const/4 v2, 0x0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$2;

    invoke-direct {v3, p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$2;-><init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;)V

    const/16 v4, 0x7d0

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$3;

    invoke-direct {v3, p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$3;-><init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;)V

    const/16 v4, 0xfa0

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startMyScanBleDevice()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "BleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ble_debug]startScanBleDevice, is ble connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isBleConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isBleConnecting:Z

    if-eqz v0, :cond_2

    const-string v0, "BleController"

    const-string v1, "[ble_debug]startScanBleDevice : isBleConnecting, reset flag and return"

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_necessary(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->bleConnectingTime:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    iput-boolean v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isBleConnecting:Z

    iput v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->bleConnectingTime:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->bleConnectingTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->bleConnectingTime:I

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->mRegisterStatus:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->BLE_EVENT_BUS_INSTANCE:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;

    invoke-virtual {v0, p0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventBus;->register(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->mRegisterStatus:Z

    :cond_3
    iget-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isBleConnected:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->BLE_EVENT_ADAPTER_INSTANCE:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->myContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;->stopScanning(Landroid/content/Context;)V

    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->BLE_EVENT_ADAPTER_INSTANCE:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->myContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;->startScanning(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private updateMYDeviceID(Ljava/lang/String;)V
    .locals 6

    const-string v3, "BleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ble_debug]updateDeviceID deviceid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v3, 0x13

    new-array v2, v3, [B

    const/4 v3, 0x0

    const/16 v4, -0x4f

    aput-byte v4, v2, v3

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v1, v0

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->writeSpecialData([B)V

    return-void
.end method


# virtual methods
.method public getMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->curDeviceMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isBleConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isBleConnected:Z

    return v0
.end method

.method public isDeviceSupported()Z
    .locals 3

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->mSupportedDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->DC_CROWDFUNDING:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->deviceCatetory:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCharacteristicChanged(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicChangedEvent;)V
    .locals 0
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->onMYCharacteristicChanged(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/CharacteristicChangedEvent;)V

    return-void
.end method

.method public onDiscoveredDevice(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveredDevicesEvent;)V
    .locals 0
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->onMYDiscoveredDevice(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveredDevicesEvent;)V

    return-void
.end method

.method public onDiscoveryService(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveryServiceEvent;)V
    .locals 0
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->onMYDiscoveryService(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/DiscoveryServiceEvent;)V

    return-void
.end method

.method public onServiceDiscovered(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ServiceDiscoveredEvent;)V
    .locals 0
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->onMYServiceDiscovered(Lcom/jinglingtec/ijiazublctor/BleEventAdapter/events/ServiceDiscoveredEvent;)V

    return-void
.end method

.method public readDeviceBatteryLevel()V
    .locals 3

    const-string v1, "BleController"

    const-string v2, "[ble_debug]readDeviceBatteryLevel"

    invoke-static {v1, v2}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->writeSpecialData([B)V

    return-void
.end method

.method public readDeviceID()V
    .locals 0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->readMYDeviceID()V

    return-void
.end method

.method public readDoubleClickInterval()V
    .locals 3

    const-string v1, "BleController"

    const-string v2, "[ble_debug]readDoubleClickInterval"

    invoke-static {v1, v2}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->writeSpecialData([B)V

    return-void
.end method

.method public readMoreData()V
    .locals 0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->readMYMoreData()V

    return-void
.end method

.method public setParams(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 1

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->myContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->threadHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    return v0
.end method

.method public setReLaunch(Z)V
    .locals 0

    return-void
.end method

.method public startScanBleDevice()V
    .locals 0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->startMyScanBleDevice()V

    return-void
.end method

.method public stopScanBleDevice()V
    .locals 2

    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->BLE_EVENT_ADAPTER_INSTANCE:Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->myContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/BleEventAdapter;->stopScanning(Landroid/content/Context;)V

    return-void
.end method

.method public updateDeviceID(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->updateMYDeviceID(Ljava/lang/String;)V

    return-void
.end method

.method public updateDoubleClickInterval()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "BleController"

    const-string v2, "[ble_debug]updateDoubleClickInterval"

    invoke-static {v1, v2}, Lcom/jinglingtec/ijiazublctor/util/BleLibLogger;->ble_d_optional(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v0, v1, [B

    const/16 v1, -0x4c

    aput-byte v1, v0, v3

    aput-byte v3, v0, v3

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/BleEventAdapter/service/gatt/GattService;->writeSpecialData([B)V

    return-void
.end method
