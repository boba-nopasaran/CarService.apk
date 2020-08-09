.class public Lcom/car/jiazu/Remote;
.super Ljava/lang/Object;
.source "Remote.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/jiazu/Remote$ParsedAd;,
        Lcom/car/jiazu/Remote$ConnPara;,
        Lcom/car/jiazu/Remote$RemoteWriteListener;,
        Lcom/car/jiazu/Remote$RemoteListener;
    }
.end annotation


# static fields
.field public static final REMOTE_CONN_PARAM_CHARACTERISTIC:Ljava/lang/String; = "00002a04-0000-1000-8000-00805f9b34fb"

.field public static final REMOTE_CONN_PARAM_CHARACTERISTIC2:Ljava/lang/String; = "0000ff10-0000-1000-8000-00805f9b34fb"

.field public static final REMOTE_DATA_CHARACTERISTIC:Ljava/lang/String; = "0000fd11-0000-1000-8000-00805f9b34fb"

.field public static final REMOTE_DATA_CHARACTERISTIC2:Ljava/lang/String; = "0000ff11-0000-1000-8000-00805f9b34fb"

.field public static final REMOTE_INIT_DONE:I = 0x0

.field public static final REMOTE_INIT_ERROR_NOT_OPEN_BLUETOOTH:I = -0x3

.field public static final REMOTE_INIT_ERROR_NOT_SUPPORT_BLE:I = -0x4

.field public static final REMOTE_INIT_ERROR_NULL_ADAPTER:I = -0x2

.field public static final REMOTE_INIT_ERROR_NULL_MANAGER:I = -0x1

.field public static final REMOTE_SERVICE:Ljava/lang/String; = "0000fd10-0000-1000-8000-00805f9b34fb"

.field public static final REMOTE_SERVICE2:Ljava/lang/String; = "0000ff10-0000-1000-8000-00805f9b34fb"

.field public static final REMOTE_STATE_CONNECTED:I = 0x2

.field public static final REMOTE_STATE_CONNECTING:I = 0x1

.field public static final REMOTE_STATE_DISCONNECT:I = 0x0

.field public static final REMOTE_STATE_READY:I = 0x3

.field public static final REMOTE_UUID:Ljava/util/UUID;

.field public static final REMOTE_UUID2:Ljava/util/UUID;

.field private static final SCAN_INTERVAL:I = 0x32

.field private static final SCAN_PERIOD:J = 0x1f40L

.field public static final SERVICE_UUID_GENERIC_ACCESS:Ljava/lang/String; = "00001800-0000-1000-8000-00805f9b34fb"

.field public static final SERVICE_UUID_GENERIC_ACCESS2:Ljava/lang/String; = "0000180f-0000-1000-8000-00805f9b34fb"


# instance fields
.field private AutoScanEnable:Z

.field private final REMOTE_UUIDS:[Ljava/util/UUID;

.field final TAG:Ljava/lang/String;

.field private bleManager:Lcom/jiagu/BleManager;

.field private mConnPara:Lcom/car/jiazu/Remote$ConnPara;

.field private final mConnectBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mConnectFailRunnable:Ljava/lang/Runnable;

.field mConnectHandler:Landroid/os/Handler;

.field mConnectRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mDisconnectBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDiscoveredBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mKeyOrder:I

.field mKeyboardType:I

.field private mRemoteListener:Lcom/car/jiazu/Remote$RemoteListener;

.field private final mRemoteReceiverBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mRssiFilters:I

.field private final mScanDeviceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mScanFinishBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mac:Ljava/lang/String;

.field private scanEnable:Z

.field private scanInterval:J

.field private scanPeriod:J

.field private state:I

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00001812-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/car/jiazu/Remote;->REMOTE_UUID:Ljava/util/UUID;

    const-string v0, "0000ff10-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/car/jiazu/Remote;->REMOTE_UUID2:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CarSvc_mybt"

    iput-object v0, p0, Lcom/car/jiazu/Remote;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/UUID;

    sget-object v1, Lcom/car/jiazu/Remote;->REMOTE_UUID:Ljava/util/UUID;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/car/jiazu/Remote;->REMOTE_UUID2:Ljava/util/UUID;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/car/jiazu/Remote;->REMOTE_UUIDS:[Ljava/util/UUID;

    const-wide/16 v0, 0x1f40

    iput-wide v0, p0, Lcom/car/jiazu/Remote;->scanPeriod:J

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/car/jiazu/Remote;->scanInterval:J

    iput-object v4, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    const/16 v0, -0x50

    iput v0, p0, Lcom/car/jiazu/Remote;->mRssiFilters:I

    iput-boolean v3, p0, Lcom/car/jiazu/Remote;->AutoScanEnable:Z

    iput-boolean v3, p0, Lcom/car/jiazu/Remote;->scanEnable:Z

    iput v3, p0, Lcom/car/jiazu/Remote;->mKeyboardType:I

    iput v3, p0, Lcom/car/jiazu/Remote;->mKeyOrder:I

    iput v3, p0, Lcom/car/jiazu/Remote;->state:I

    iput-object v4, p0, Lcom/car/jiazu/Remote;->mRemoteListener:Lcom/car/jiazu/Remote$RemoteListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/car/jiazu/Remote;->mConnectHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/jiazu/Remote$1;

    invoke-direct {v0, p0}, Lcom/car/jiazu/Remote$1;-><init>(Lcom/car/jiazu/Remote;)V

    iput-object v0, p0, Lcom/car/jiazu/Remote;->mConnectRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/car/jiazu/Remote$2;

    invoke-direct {v0, p0}, Lcom/car/jiazu/Remote$2;-><init>(Lcom/car/jiazu/Remote;)V

    iput-object v0, p0, Lcom/car/jiazu/Remote;->mConnectFailRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/car/jiazu/Remote$3;

    invoke-direct {v0, p0}, Lcom/car/jiazu/Remote$3;-><init>(Lcom/car/jiazu/Remote;)V

    iput-object v0, p0, Lcom/car/jiazu/Remote;->mScanDeviceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/car/jiazu/Remote$4;

    invoke-direct {v0, p0}, Lcom/car/jiazu/Remote$4;-><init>(Lcom/car/jiazu/Remote;)V

    iput-object v0, p0, Lcom/car/jiazu/Remote;->mScanFinishBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/car/jiazu/Remote$5;

    invoke-direct {v0, p0}, Lcom/car/jiazu/Remote$5;-><init>(Lcom/car/jiazu/Remote;)V

    iput-object v0, p0, Lcom/car/jiazu/Remote;->mConnectBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/car/jiazu/Remote$6;

    invoke-direct {v0, p0}, Lcom/car/jiazu/Remote$6;-><init>(Lcom/car/jiazu/Remote;)V

    iput-object v0, p0, Lcom/car/jiazu/Remote;->mDisconnectBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/car/jiazu/Remote$7;

    invoke-direct {v0, p0}, Lcom/car/jiazu/Remote$7;-><init>(Lcom/car/jiazu/Remote;)V

    iput-object v0, p0, Lcom/car/jiazu/Remote;->mDiscoveredBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/car/jiazu/Remote$8;

    invoke-direct {v0, p0}, Lcom/car/jiazu/Remote$8;-><init>(Lcom/car/jiazu/Remote;)V

    iput-object v0, p0, Lcom/car/jiazu/Remote;->mRemoteReceiverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lcom/jiagu/BleManager;->getInstance(Landroid/content/Context;)Lcom/jiagu/BleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    iput-object p1, p0, Lcom/car/jiazu/Remote;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mScanDeviceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.jiagu.blelib.ACTION_BLUETOOTH_DEVICE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mScanFinishBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.jiagu.blelib.ACTION_SCAN_FINISHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mConnectBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.jiagu.blelib.ACTION_GATT_CONNECTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mDisconnectBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.jiagu.blelib.ACTION_GATT_DISCONNECTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mDiscoveredBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.jiagu.blelib.ACTION_GATT_SERVICES_DISCOVERED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mRemoteReceiverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.jiagu.blelib.ACTION_GATT_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mRemoteListener:Lcom/car/jiazu/Remote$RemoteListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/jiazu/Remote;)I
    .locals 1

    iget v0, p0, Lcom/car/jiazu/Remote;->state:I

    return v0
.end method

.method static synthetic access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mConnPara:Lcom/car/jiazu/Remote$ConnPara;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/car/jiazu/Remote;Lcom/car/jiazu/Remote$ConnPara;)Lcom/car/jiazu/Remote$ConnPara;
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/Remote;->mConnPara:Lcom/car/jiazu/Remote$ConnPara;

    return-object p1
.end method

.method static synthetic access$102(Lcom/car/jiazu/Remote;I)I
    .locals 0

    iput p1, p0, Lcom/car/jiazu/Remote;->state:I

    return p1
.end method

.method static synthetic access$200(Lcom/car/jiazu/Remote;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/car/jiazu/Remote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/car/jiazu/Remote;)Lcom/jiagu/BleManager;
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/jiazu/Remote;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/jiazu/Remote;->AutoScanEnable:Z

    return v0
.end method

.method static synthetic access$500(Lcom/car/jiazu/Remote;)I
    .locals 1

    iget v0, p0, Lcom/car/jiazu/Remote;->mRssiFilters:I

    return v0
.end method

.method static synthetic access$600(Lcom/car/jiazu/Remote;)I
    .locals 1

    iget v0, p0, Lcom/car/jiazu/Remote;->version:I

    return v0
.end method

.method static synthetic access$602(Lcom/car/jiazu/Remote;I)I
    .locals 0

    iput p1, p0, Lcom/car/jiazu/Remote;->version:I

    return p1
.end method

.method static synthetic access$700(Lcom/car/jiazu/Remote;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/jiazu/Remote;->scanEnable:Z

    return v0
.end method

.method static synthetic access$800(Lcom/car/jiazu/Remote;)J
    .locals 2

    iget-wide v0, p0, Lcom/car/jiazu/Remote;->scanPeriod:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/car/jiazu/Remote;)J
    .locals 2

    iget-wide v0, p0, Lcom/car/jiazu/Remote;->scanInterval:J

    return-wide v0
.end method

.method public static parseData([B)Lcom/car/jiazu/Remote$ParsedAd;
    .locals 14

    new-instance v6, Lcom/car/jiazu/Remote$ParsedAd;

    invoke-direct {v6}, Lcom/car/jiazu/Remote$ParsedAd;-><init>()V

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return-object v6

    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    add-int/lit8 v9, v1, -0x1

    int-to-byte v1, v9

    packed-switch v8, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    iput-byte v9, v6, Lcom/car/jiazu/Remote$ParsedAd;->flags:B

    add-int/lit8 v9, v1, -0x1

    int-to-byte v1, v9

    goto :goto_1

    :goto_2
    :pswitch_2
    const/4 v9, 0x2

    if-lt v1, v9, :cond_3

    iget-object v9, v6, Lcom/car/jiazu/Remote$ParsedAd;->uuids:Ljava/util/ArrayList;

    const-string v10, "%08x-0000-1000-8000-00805f9b34fb"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v13

    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v1, -0x2

    int-to-byte v1, v9

    goto :goto_2

    :goto_3
    :pswitch_3
    const/4 v9, 0x4

    if-lt v1, v9, :cond_3

    iget-object v9, v6, Lcom/car/jiazu/Remote$ParsedAd;->uuids:Ljava/util/ArrayList;

    const-string v10, "%08x-0000-1000-8000-00805f9b34fb"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v1, -0x4

    int-to-byte v1, v9

    goto :goto_3

    :goto_4
    :pswitch_4
    const/16 v9, 0x10

    if-lt v1, v9, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    iget-object v9, v6, Lcom/car/jiazu/Remote$ParsedAd;->uuids:Ljava/util/ArrayList;

    new-instance v10, Ljava/util/UUID;

    invoke-direct {v10, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v1, -0x10

    int-to-byte v1, v9

    goto :goto_4

    :pswitch_5
    new-array v7, v1, [B

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/car/jiazu/Remote$ParsedAd;->localName:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    iput-short v9, v6, Lcom/car/jiazu/Remote$ParsedAd;->manufacturer:S

    add-int/lit8 v9, v1, -0x2

    int-to-byte v1, v9

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public Disable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/jiazu/Remote;->AutoScanEnable:Z

    invoke-virtual {p0}, Lcom/car/jiazu/Remote;->Disconnect()V

    invoke-virtual {p0}, Lcom/car/jiazu/Remote;->StopScan()V

    return-void
.end method

.method public Disconnect()V
    .locals 2

    iget v0, p0, Lcom/car/jiazu/Remote;->state:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiagu/BleManager;->disconnect(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiagu/BleManager;->close(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public Enable()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/jiazu/Remote;->AutoScanEnable:Z

    invoke-virtual {p0}, Lcom/car/jiazu/Remote;->StartScan()Z

    move-result v0

    return v0
.end method

.method public EnableNeglectLongdelayPacket(ZLcom/car/jiazu/Remote$RemoteWriteListener;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v4, v0, [B

    const/16 v0, 0x9

    aput-byte v0, v4, v5

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v0, v5

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v4, v1

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    const-string v2, "00001800-0000-1000-8000-00805f9b34fb"

    const-string v3, "00002a04-0000-1000-8000-00805f9b34fb"

    new-instance v6, Lcom/car/jiazu/Remote$18;

    invoke-direct {v6, p0, p2}, Lcom/car/jiazu/Remote$18;-><init>(Lcom/car/jiazu/Remote;Lcom/car/jiazu/Remote$RemoteWriteListener;)V

    invoke-virtual/range {v0 .. v6}, Lcom/jiagu/BleManager;->writeBle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLcom/jiagu/BleListener$OnCharacteristic;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public EnableSlowAdv(ZLcom/car/jiazu/Remote$RemoteWriteListener;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v4, v0, [B

    const/16 v0, 0xa

    aput-byte v0, v4, v5

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v4, v1

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    const-string v2, "00001800-0000-1000-8000-00805f9b34fb"

    const-string v3, "00002a04-0000-1000-8000-00805f9b34fb"

    new-instance v6, Lcom/car/jiazu/Remote$19;

    invoke-direct {v6, p0, p2}, Lcom/car/jiazu/Remote$19;-><init>(Lcom/car/jiazu/Remote;Lcom/car/jiazu/Remote$RemoteWriteListener;)V

    invoke-virtual/range {v0 .. v6}, Lcom/jiagu/BleManager;->writeBle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLcom/jiagu/BleListener$OnCharacteristic;)Z

    move-result v0

    return v0

    :cond_0
    move v0, v5

    goto :goto_0
.end method

.method public EnableWakeupCycle(ZLcom/car/jiazu/Remote$RemoteWriteListener;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v4, v0, [B

    const/16 v0, 0x8

    aput-byte v0, v4, v5

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v4, v1

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    const-string v2, "00001800-0000-1000-8000-00805f9b34fb"

    const-string v3, "00002a04-0000-1000-8000-00805f9b34fb"

    new-instance v6, Lcom/car/jiazu/Remote$17;

    invoke-direct {v6, p0, p2}, Lcom/car/jiazu/Remote$17;-><init>(Lcom/car/jiazu/Remote;Lcom/car/jiazu/Remote$RemoteWriteListener;)V

    invoke-virtual/range {v0 .. v6}, Lcom/jiagu/BleManager;->writeBle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLcom/jiagu/BleListener$OnCharacteristic;)Z

    move-result v0

    return v0

    :cond_0
    move v0, v5

    goto :goto_0
.end method

.method public ReadConnPara()Z
    .locals 5

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    const-string v2, "00001800-0000-1000-8000-00805f9b34fb"

    const-string v3, "00002a04-0000-1000-8000-00805f9b34fb"

    new-instance v4, Lcom/car/jiazu/Remote$9;

    invoke-direct {v4, p0}, Lcom/car/jiazu/Remote$9;-><init>(Lcom/car/jiazu/Remote;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jiagu/BleManager;->readBle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiagu/BleListener$OnCharacteristic;)Z

    move-result v0

    return v0
.end method

.method public SetFastAdvInterval(ILcom/car/jiazu/Remote$RemoteWriteListener;)Z
    .locals 7

    const/4 v0, 0x2

    const/4 v5, 0x0

    new-array v4, v0, [B

    aput-byte v0, v4, v5

    const/4 v0, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    const-string v2, "00001800-0000-1000-8000-00805f9b34fb"

    const-string v3, "00002a04-0000-1000-8000-00805f9b34fb"

    new-instance v6, Lcom/car/jiazu/Remote$11;

    invoke-direct {v6, p0, p2}, Lcom/car/jiazu/Remote$11;-><init>(Lcom/car/jiazu/Remote;Lcom/car/jiazu/Remote$RemoteWriteListener;)V

    invoke-virtual/range {v0 .. v6}, Lcom/jiagu/BleManager;->writeBle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLcom/jiagu/BleListener$OnCharacteristic;)Z

    move-result v0

    return v0
.end method

.method public SetLastFastAdv(ILcom/car/jiazu/Remote$RemoteWriteListener;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v4, v0, [B

    const/4 v0, 0x4

    aput-byte v0, v4, v5

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0x7

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    const-string v2, "00001800-0000-1000-8000-00805f9b34fb"

    const-string v3, "00002a04-0000-1000-8000-00805f9b34fb"

    new-instance v6, Lcom/car/jiazu/Remote$13;

    invoke-direct {v6, p0, p2}, Lcom/car/jiazu/Remote$13;-><init>(Lcom/car/jiazu/Remote;Lcom/car/jiazu/Remote$RemoteWriteListener;)V

    invoke-virtual/range {v0 .. v6}, Lcom/jiagu/BleManager;->writeBle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLcom/jiagu/BleListener$OnCharacteristic;)Z

    move-result v0

    return v0
.end method

.method public SetLastSlowAdv(ILcom/car/jiazu/Remote$RemoteWriteListener;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v4, v0, [B

    const/4 v0, 0x5

    aput-byte v0, v4, v5

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0xf

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    const-string v2, "00001800-0000-1000-8000-00805f9b34fb"

    const-string v3, "00002a04-0000-1000-8000-00805f9b34fb"

    new-instance v6, Lcom/car/jiazu/Remote$14;

    invoke-direct {v6, p0, p2}, Lcom/car/jiazu/Remote$14;-><init>(Lcom/car/jiazu/Remote;Lcom/car/jiazu/Remote$RemoteWriteListener;)V

    invoke-virtual/range {v0 .. v6}, Lcom/jiagu/BleManager;->writeBle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLcom/jiagu/BleListener$OnCharacteristic;)Z

    move-result v0

    return v0
.end method

.method public SetSlowAdvInterval(ILcom/car/jiazu/Remote$RemoteWriteListener;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v4, v0, [B

    const/4 v0, 0x3

    aput-byte v0, v4, v5

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0xf

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    const-string v2, "00001800-0000-1000-8000-00805f9b34fb"

    const-string v3, "00002a04-0000-1000-8000-00805f9b34fb"

    new-instance v6, Lcom/car/jiazu/Remote$12;

    invoke-direct {v6, p0, p2}, Lcom/car/jiazu/Remote$12;-><init>(Lcom/car/jiazu/Remote;Lcom/car/jiazu/Remote$RemoteWriteListener;)V

    invoke-virtual/range {v0 .. v6}, Lcom/jiagu/BleManager;->writeBle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLcom/jiagu/BleListener$OnCharacteristic;)Z

    move-result v0

    return v0
.end method

.method public SetWakeupCycle(ILcom/car/jiazu/Remote$RemoteWriteListener;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v4, v0, [B

    const/4 v0, 0x7

    aput-byte v0, v4, v5

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0xf

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    const-string v2, "00001800-0000-1000-8000-00805f9b34fb"

    const-string v3, "00002a04-0000-1000-8000-00805f9b34fb"

    new-instance v6, Lcom/car/jiazu/Remote$16;

    invoke-direct {v6, p0, p2}, Lcom/car/jiazu/Remote$16;-><init>(Lcom/car/jiazu/Remote;Lcom/car/jiazu/Remote$RemoteWriteListener;)V

    invoke-virtual/range {v0 .. v6}, Lcom/jiagu/BleManager;->writeBle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLcom/jiagu/BleListener$OnCharacteristic;)Z

    move-result v0

    return v0
.end method

.method public StartScan()Z
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/jiazu/Remote;->scanEnable:Z

    iget-wide v0, p0, Lcom/car/jiazu/Remote;->scanPeriod:J

    invoke-virtual {p0, v0, v1}, Lcom/car/jiazu/Remote;->StartScan(J)Z

    move-result v0

    return v0
.end method

.method public StartScan(J)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mConnectHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/car/jiazu/Remote;->mConnectFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mConnectHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/car/jiazu/Remote;->mConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v1}, Lcom/jiagu/BleManager;->isScanning()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CarSvc_mybt"

    const-string v2, "StartScan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    iget-object v2, p0, Lcom/car/jiazu/Remote;->REMOTE_UUIDS:[Ljava/util/UUID;

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/jiagu/BleManager;->scanLeDevice(ZJ[Ljava/util/UUID;)Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public StopScan()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/car/jiazu/Remote;->scanEnable:Z

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v0, v1}, Lcom/jiagu/BleManager;->scanLeDevice(Z)V

    :cond_0
    return-void
.end method

.method public WriteConfig(IIIIIIZLcom/car/jiazu/Remote$RemoteWriteListener;)Z
    .locals 7

    const/4 v1, 0x4

    const/4 v5, 0x0

    const/4 v0, 0x5

    new-array v4, v0, [B

    const/4 v0, 0x6

    aput-byte v0, v4, v5

    const/4 v2, 0x1

    and-int/lit8 v0, p6, 0xf

    shl-int/lit8 v3, v0, 0x4

    if-eqz p7, :cond_0

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    const/4 v0, 0x2

    and-int/lit16 v2, p2, 0xff

    shl-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    const/4 v0, 0x3

    and-int/lit8 v2, p1, 0x7

    shl-int/lit8 v2, v2, 0x4

    and-int/lit8 v3, p3, 0xf

    or-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    and-int/lit8 v0, p5, 0xf

    shl-int/lit8 v0, v0, 0x3

    and-int/lit8 v2, p4, 0x7

    or-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    const-string v2, "00001800-0000-1000-8000-00805f9b34fb"

    const-string v3, "00002a04-0000-1000-8000-00805f9b34fb"

    new-instance v6, Lcom/car/jiazu/Remote$15;

    invoke-direct {v6, p0, p8}, Lcom/car/jiazu/Remote$15;-><init>(Lcom/car/jiazu/Remote;Lcom/car/jiazu/Remote$RemoteWriteListener;)V

    invoke-virtual/range {v0 .. v6}, Lcom/jiagu/BleManager;->writeBle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLcom/jiagu/BleListener$OnCharacteristic;)Z

    move-result v0

    return v0

    :cond_0
    move v0, v5

    goto :goto_0
.end method

.method public WriteConnPara(IIII)Z
    .locals 7

    const/4 v5, 0x0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    int-to-double v0, p1

    div-double/2addr v0, v2

    double-to-int p1, v0

    int-to-double v0, p2

    div-double/2addr v0, v2

    double-to-int p2, v0

    div-int/lit8 p4, p4, 0xa

    const/16 v0, 0x9

    new-array v4, v0, [B

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    const/4 v0, 0x1

    div-int/lit16 v1, p1, 0x100

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    const/4 v0, 0x2

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    const/4 v0, 0x3

    div-int/lit16 v1, p2, 0x100

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    const/4 v0, 0x4

    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    const/4 v0, 0x5

    div-int/lit16 v1, p3, 0x100

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    const/4 v0, 0x6

    and-int/lit16 v1, p4, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    const/4 v0, 0x7

    div-int/lit16 v1, p4, 0x100

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    const-string v2, "00001800-0000-1000-8000-00805f9b34fb"

    const-string v3, "00002a04-0000-1000-8000-00805f9b34fb"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/jiagu/BleManager;->writeBle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLcom/jiagu/BleListener$OnCharacteristic;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mScanDeviceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mScanFinishBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mConnectBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mDisconnectBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mDiscoveredBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mRemoteReceiverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/car/jiazu/Remote;->Disable()V

    return-void
.end method

.method public getBleManager()Lcom/jiagu/BleManager;
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    return-object v0
.end method

.method public getConnPara()Lcom/car/jiazu/Remote$ConnPara;
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mConnPara:Lcom/car/jiazu/Remote$ConnPara;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getRssiFilters()I
    .locals 1

    iget v0, p0, Lcom/car/jiazu/Remote;->mRssiFilters:I

    return v0
.end method

.method public getScanInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/car/jiazu/Remote;->scanInterval:J

    return-wide v0
.end method

.method public getScanPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/car/jiazu/Remote;->scanPeriod:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/car/jiazu/Remote;->state:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/car/jiazu/Remote;->version:I

    return v0
.end method

.method public getmRemoteListener()Lcom/car/jiazu/Remote$RemoteListener;
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/Remote;->mRemoteListener:Lcom/car/jiazu/Remote$RemoteListener;

    return-object v0
.end method

.method public initialize()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/jiazu/Remote;->initialize(Lcom/car/jiazu/Remote$RemoteListener;)I

    move-result v0

    return v0
.end method

.method public initialize(Lcom/car/jiazu/Remote$RemoteListener;)I
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/car/jiazu/Remote;->mRemoteListener:Lcom/car/jiazu/Remote$RemoteListener;

    :cond_0
    iget-object v1, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v1}, Lcom/jiagu/BleManager;->initialize()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v1}, Lcom/jiagu/BleManager;->isEnableBluetooth()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, -0x3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    invoke-virtual {v1}, Lcom/jiagu/BleManager;->isSupportBle()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, -0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 2

    iget v0, p0, Lcom/car/jiazu/Remote;->state:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBleManager(Lcom/jiagu/BleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    return-void
.end method

.method public setKeyDly(IILcom/car/jiazu/Remote$RemoteWriteListener;)Z
    .locals 7

    const/16 v0, 0xff

    const/4 v5, 0x0

    const/4 v1, 0x1

    if-le p1, v0, :cond_2

    const/16 p1, 0xff

    :cond_0
    :goto_0
    if-le p2, v0, :cond_3

    const/16 p2, 0xff

    :cond_1
    :goto_1
    const/4 v0, 0x3

    new-array v4, v0, [B

    const/16 v0, 0xb

    aput-byte v0, v4, v5

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    const/4 v0, 0x2

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    const-string v2, "00001800-0000-1000-8000-00805f9b34fb"

    const-string v3, "00002a04-0000-1000-8000-00805f9b34fb"

    new-instance v6, Lcom/car/jiazu/Remote$20;

    invoke-direct {v6, p0, p3}, Lcom/car/jiazu/Remote$20;-><init>(Lcom/car/jiazu/Remote;Lcom/car/jiazu/Remote$RemoteWriteListener;)V

    invoke-virtual/range {v0 .. v6}, Lcom/jiagu/BleManager;->writeBle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLcom/jiagu/BleListener$OnCharacteristic;)Z

    move-result v0

    return v0

    :cond_2
    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    if-ge p1, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_1
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    return-void
.end method

.method public setRssiFilters(I)V
    .locals 0

    iput p1, p0, Lcom/car/jiazu/Remote;->mRssiFilters:I

    return-void
.end method

.method public setScanInterval(J)V
    .locals 1

    iput-wide p1, p0, Lcom/car/jiazu/Remote;->scanInterval:J

    return-void
.end method

.method public setScanPeriod(J)V
    .locals 1

    iput-wide p1, p0, Lcom/car/jiazu/Remote;->scanPeriod:J

    return-void
.end method

.method public setTxPower(ILcom/car/jiazu/Remote$RemoteWriteListener;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    const/4 p1, 0x7

    :cond_0
    :goto_0
    const/4 v0, 0x2

    new-array v4, v0, [B

    aput-byte v1, v4, v5

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    iget-object v0, p0, Lcom/car/jiazu/Remote;->bleManager:Lcom/jiagu/BleManager;

    iget-object v1, p0, Lcom/car/jiazu/Remote;->mac:Ljava/lang/String;

    const-string v2, "00001800-0000-1000-8000-00805f9b34fb"

    const-string v3, "00002a04-0000-1000-8000-00805f9b34fb"

    new-instance v6, Lcom/car/jiazu/Remote$10;

    invoke-direct {v6, p0, p2}, Lcom/car/jiazu/Remote$10;-><init>(Lcom/car/jiazu/Remote;Lcom/car/jiazu/Remote$RemoteWriteListener;)V

    invoke-virtual/range {v0 .. v6}, Lcom/jiagu/BleManager;->writeBle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLcom/jiagu/BleListener$OnCharacteristic;)Z

    move-result v0

    return v0

    :cond_1
    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/car/jiazu/Remote;->version:I

    return-void
.end method

.method public setmRemoteListener(Lcom/car/jiazu/Remote$RemoteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/Remote;->mRemoteListener:Lcom/car/jiazu/Remote$RemoteListener;

    return-void
.end method
