.class public Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;
.super Ljava/lang/Object;
.source "BleSDKManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$1;,
        Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;
    }
.end annotation


# static fields
.field private static instance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;


# instance fields
.field public TAG:Ljava/lang/String;

.field private bleRole:I

.field private deviceListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;

.field private isBind:Z

.field private isBleConnected:Z

.field private myContext:Landroid/content/Context;

.field private referenceCount:I

.field private sdkManagerReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;

.field private thisThreadID:I

.field private threadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->instance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "blecontroller"

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->myContext:Landroid/content/Context;

    iput v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->referenceCount:I

    const/16 v0, 0x903

    iput v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->bleRole:I

    iput v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->thisThreadID:I

    iput-boolean v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->isBleConnected:Z

    iput-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->threadHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->sdkManagerReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;

    iput-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->deviceListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;

    iput-boolean v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->isBind:Z

    return-void
.end method

.method static synthetic access$100(Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;)I
    .locals 1

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->thisThreadID:I

    return v0
.end method

.method static synthetic access$200(Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->sendFeedbackOfQueryBleSDKRole()V

    return-void
.end method

.method static synthetic access$300(Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->receivedFeedbackOfQueryBLESDKServer(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->receivedBleConnectionChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->receivedBleDeviceNotificationDataFromBleServer(Landroid/content/Intent;)V

    return-void
.end method

.method private bleCharacteristicChanged_internal([B)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->deviceListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    array-length v4, p1

    if-ge v4, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    const-string v5, "[ble_debug]bleCharacteristicChanged listener is not null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data === "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-byte v4, p1, v8

    const/16 v5, -0x50

    if-ne v4, v5, :cond_4

    new-instance v1, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;

    invoke-direct {v1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;-><init>()V

    const v4, 0xd8ffe

    invoke-virtual {v1, v4}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->setKeyCode(I)V

    aget-byte v4, p1, v7

    if-ne v4, v7, :cond_3

    const v4, 0xd8fff

    invoke-virtual {v1, v4}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->setActionCode(I)V

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->deviceListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;

    invoke-interface {v4, v1}, Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;->onDeviceEvent(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;)V

    goto :goto_0

    :cond_3
    aget-byte v4, p1, v7

    if-ne v4, v9, :cond_2

    const v4, 0xd9000

    invoke-virtual {v1, v4}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->setActionCode(I)V

    goto :goto_1

    :cond_4
    aget-byte v4, p1, v8

    const/16 v5, -0x46

    if-ne v4, v5, :cond_7

    new-instance v1, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;

    invoke-direct {v1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;-><init>()V

    const v4, 0xd9008

    invoke-virtual {v1, v4}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->setKeyCode(I)V

    aget-byte v4, p1, v7

    if-ne v4, v7, :cond_6

    const v4, 0xd9009

    invoke-virtual {v1, v4}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->setActionCode(I)V

    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->deviceListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;

    invoke-interface {v4, v1}, Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;->onDeviceEvent(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;)V

    goto :goto_0

    :cond_6
    aget-byte v4, p1, v7

    if-ne v4, v9, :cond_5

    const v4, 0xd900a

    invoke-virtual {v1, v4}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->setActionCode(I)V

    goto :goto_2

    :cond_7
    aget-byte v4, p1, v8

    const/16 v5, -0x5f

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    const-string v5, "[ble_debug]bleCharacteristicChanged device id"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;

    invoke-direct {v1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;-><init>()V

    const v4, 0xd8ff7

    invoke-virtual {v1, v4}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->setStatus(I)V

    const/4 v4, 0x1

    aget-byte v4, p1, v4

    if-ne v4, v7, :cond_0

    const/16 v4, 0x12

    new-array v3, v4, [B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    const/4 v2, 0x2

    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_8

    add-int/lit8 v4, v2, -0x2

    aget-byte v5, p1, v2

    aput-byte v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    invoke-static {v3}, Lcom/jinglingtec/ijiazublctor/util/BleLibUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->setDeviceId(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->deviceListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;

    invoke-interface {v4, v1}, Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;->onDeviceEvent(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    aget-byte v4, p1, v8

    const/16 v5, -0x5e

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    const-string v5, "[ble_debug]bleCharacteristicChanged battery level"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v1, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;

    invoke-direct {v1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;-><init>()V

    const v4, 0xd8ff8

    invoke-virtual {v1, v4}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->setStatus(I)V

    const/4 v4, 0x1

    aget-byte v4, p1, v4

    if-ne v4, v7, :cond_0

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    invoke-virtual {v1, v4}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->setActionCode(I)V

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->deviceListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;

    invoke-interface {v4, v1}, Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;->onDeviceEvent(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    aget-byte v4, p1, v8

    const/16 v5, -0x5c

    if-ne v4, v5, :cond_b

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    const-string v5, "[bleCharacteristicChange Double time]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :try_start_2
    aget-byte v4, p1, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v4, v7, :cond_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_b
    aget-byte v4, p1, v8

    const/16 v5, -0x4c

    if-ne v4, v5, :cond_c

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    const-string v5, "[bleCharacteristicChange write time]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    const-string v5, "[ble_debug]bleCharacteristicChanged key feedback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-byte v4, p1, v8

    invoke-direct {p0, v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->getKeyCode(B)I

    move-result v4

    const v5, 0xd8fe0

    if-eq v4, v5, :cond_0

    aget-byte v4, p1, v7

    invoke-direct {p0, v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->getActionCode(B)I

    move-result v4

    const v5, 0xd8fea

    if-eq v4, v5, :cond_0

    new-instance v1, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;

    invoke-direct {v1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;-><init>()V

    aget-byte v4, p1, v8

    invoke-direct {p0, v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->getKeyCode(B)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->setKeyCode(I)V

    aget-byte v4, p1, v7

    invoke-direct {p0, v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->getActionCode(B)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->setActionCode(I)V

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->deviceListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;

    invoke-interface {v4, v1}, Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;->onDeviceKeyEvent(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;)V

    goto/16 :goto_0
.end method

.method private bleConnectionChanged_internal(IZ)V
    .locals 3

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    const-string v2, "[ble_debug]bleConnectedChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->deviceListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    const-string v2, "[ble_debug]bleConnectedChanged listener is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->deviceListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;

    invoke-interface {v1, p2}, Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;->onDeviceConnected(Z)V

    :cond_0
    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->threadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->threadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    if-eqz p2, :cond_2

    const/16 v1, 0x66

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x67

    goto :goto_0
.end method

.method private getActionCode(B)I
    .locals 1

    const v0, 0xd8fea

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0xd8feb

    goto :goto_0

    :pswitch_2
    const v0, 0xd8fec

    goto :goto_0

    :pswitch_3
    const v0, 0xd8fed

    goto :goto_0

    :pswitch_4
    const v0, 0xd8fee

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getInstance()Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;
    .locals 3

    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->instance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    invoke-direct {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;-><init>()V

    sput-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->instance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->instance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/services/IjiazuService;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->myContext:Landroid/content/Context;

    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->instance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    iget-object v0, v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->myContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->instance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->instance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    iget-object v2, v2, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->instance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    iget-object v2, v2, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->instance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    return-object v0
.end method

.method private getKeyCode(B)I
    .locals 1

    const v0, 0xd8fe0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const v0, 0xd8fe1

    goto :goto_0

    :sswitch_1
    const v0, 0xd8fe3

    goto :goto_0

    :sswitch_2
    const v0, 0xd8fe2

    goto :goto_0

    :sswitch_3
    const v0, 0xd8fe5

    goto :goto_0

    :sswitch_4
    const v0, 0xd8fe4

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private receivedBleConnectionChanged(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiveBleConnectionChanged, 111111111,  ThreadID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->thisThreadID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x901

    iget v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->bleRole:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "ble.device.connection.status"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->isBleConnected:Z

    iget-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->isBleConnected:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x902

    :goto_1
    iput v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->bleRole:I

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiveBleConnectionChanged, 222,  ThreadID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->thisThreadID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " receivedBleConnectionState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->isBleConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x501

    iget-boolean v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->isBleConnected:Z

    invoke-direct {p0, v0, v1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->bleConnectionChanged_internal(IZ)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x903

    goto :goto_1
.end method

.method private receivedBleDeviceNotificationDataFromBleServer(Landroid/content/Intent;)V
    .locals 6

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receivedBleDeviceNotificationDataFromBleServer, 111,  ThreadID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->thisThreadID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ble.sdk.thread.id"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->thisThreadID:I

    if-eq v3, v2, :cond_0

    const/16 v3, 0x902

    iget v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->bleRole:I

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "ble.device.notification.data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receivedBleDeviceNotificationDataFromBleServer, 222, data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->threadHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->threadHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v3, 0x302

    iput v3, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    invoke-direct {p0, v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->bleCharacteristicChanged_internal([B)V

    goto :goto_0
.end method

.method private receivedFeedbackOfQueryBLESDKServer(Landroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x902

    iput v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->bleRole:I

    const-string v0, "ble.device.connection.status"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->isBleConnected:Z

    const/16 v0, 0x500

    iget-boolean v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->isBleConnected:Z

    invoke-direct {p0, v0, v1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->bleConnectionChanged_internal(IZ)V

    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 4

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->myContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;-><init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$1;)V

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->sdkManagerReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->myContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->sdkManagerReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.ijiazu.ble.sdk.communication.filter"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendBleConnectionChaged(Z)V
    .locals 4

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBleConnectionChaged, ble connection state has changed  11111 ThreadID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->thisThreadID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bleRole:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->bleRole:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ijiazu.ble.sdk.communication.filter"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ble.sdk.thread.id"

    iget v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->thisThreadID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ble.sdk.mgr.command"

    const/16 v2, 0x912

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ble.device.connection.status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendBleDeviceNotificationData2BleClients([B)V
    .locals 4

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBleDeviceNotificationData2BleClients, data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ijiazu.ble.sdk.communication.filter"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ble.sdk.thread.id"

    iget v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->thisThreadID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ble.sdk.mgr.command"

    const/16 v2, 0x914

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ble.device.notification.data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendFeedbackOfQueryBleSDKRole()V
    .locals 4

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query BLE server, send feedback  111:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->thisThreadID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x901

    iget v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->bleRole:I

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query BLE server, send feedback  2222:, threadID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->thisThreadID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bleRole:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->bleRole:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bleConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->isBleConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ijiazu.ble.sdk.communication.filter"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ble.sdk.thread.id"

    iget v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->thisThreadID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ble.sdk.mgr.command"

    const/16 v2, 0x911

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ble.device.connection.status"

    iget-boolean v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->isBleConnected:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private sendQueryBleSDKServer()V
    .locals 4

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query BLE server:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->thisThreadID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ijiazu.ble.sdk.communication.filter"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ble.sdk.thread.id"

    iget v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->thisThreadID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ble.sdk.mgr.command"

    const/16 v2, 0x910

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private unregisterBroadcastReceivers()V
    .locals 2

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->myContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->sdkManagerReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->myContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->sdkManagerReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->sdkManagerReceiver:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;

    goto :goto_0
.end method


# virtual methods
.method public bleCharacteristicChanged([B)V
    .locals 3

    const/16 v1, 0x901

    iget v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->bleRole:I

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->sendBleDeviceNotificationData2BleClients([B)V

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->bleCharacteristicChanged_internal([B)V

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->threadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->threadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x302

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public bleConnectionChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bleConnectionChanged, new state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ThreadID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->thisThreadID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->isBleConnected:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bleConnectionChanged, new state equals to old state ThreadID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->thisThreadID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->sendBleConnectionChaged(Z)V

    const/16 v0, 0x301

    invoke-direct {p0, v0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->bleConnectionChanged_internal(IZ)V

    if-eqz p1, :cond_1

    const/16 v0, 0x901

    :goto_1
    iput v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->bleRole:I

    iput-boolean p1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->isBleConnected:Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x903

    goto :goto_1
.end method

.method public init(Landroid/os/Handler;)Z
    .locals 1

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->referenceCount:I

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->threadHandler:Landroid/os/Handler;

    :cond_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->thisThreadID:I

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->registerBroadcastReceivers()V

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->sendQueryBleSDKServer()V

    :cond_1
    iget v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->referenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->referenceCount:I

    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 1

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->referenceCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->referenceCount:I

    :cond_0
    iget v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->referenceCount:I

    if-lez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->instance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->instance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    invoke-direct {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->unregisterBroadcastReceivers()V

    const/4 v0, 0x0

    sput-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->instance:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    goto :goto_0
.end method

.method public setDeviceListener(Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->deviceListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;

    return-void
.end method
