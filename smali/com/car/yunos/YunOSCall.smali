.class public Lcom/car/yunos/YunOSCall;
.super Ljava/lang/Object;
.source "YunOSCall.java"


# static fields
.field public static final ACCEPT:I = 0x1

.field public static final ACTION_BT_POWER:Ljava/lang/String; = "com.yunos.intent.BT_POWER"

.field public static final ACTION_PHONE_COMMAND:Ljava/lang/String; = "com.yunos.intent.PHONE_COMMAND"

.field public static final ACTION_START_BT_SETTINGS:Ljava/lang/String; = "com.yunos.intent.BLUETOOTH_SETTINGS"

.field public static final ACTION_SYNC_CALLLOG_COMPLETED:Ljava/lang/String; = "com.yunos.intent.SYNC_CALLLOG_COMPLETED"

.field public static final ACTION_SYNC_CONTACT_COMPLETED:Ljava/lang/String; = "com.yunos.intent.SYNC_CONTACT_COMPLETED"

.field public static final CONTACTS_READ_ERROR:I = 0x3ed

.field public static final CONTACTS_READ_FINISHED:I = 0x3ec

.field public static final CONTACTS_READ_START:I = 0x3eb

.field public static final CONTACTS_SYNC_FINISHED:I = 0x3ea

.field public static final CONTACTS_SYNC_ING:I = 0x3e9

.field public static final CONTACTS_SYNC_NONE:I = 0x3e7

.field public static final CONTACTS_SYNC_START:I = 0x3e8

.field public static final DEV_CALLLOG_NOFITY:Ljava/lang/String; = "com.car.bthpone.calllog.notify"

.field public static final DEV_CONNECTED_NOFITY:Ljava/lang/String; = "com.car.bthpone.connected.notify"

.field public static final DEV_CONTACTS_NOFITY:Ljava/lang/String; = "com.car.bthpone.contacts.notify"

.field public static final DIALTEL:I = 0x4

.field public static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "phonenumber"

.field public static final EXTRA_PHONE_OPERATE:Ljava/lang/String; = "phoneaction"

.field public static final EXTRA_POWER_OP:Ljava/lang/String; = "power"

.field public static final HANGUP:I = 0x3

.field public static final POWER_OFF:I = 0x0

.field public static final POWER_ON:I = 0x1

.field public static final REDIALTEL:I = 0x5

.field static sInstance:Lcom/car/yunos/YunOSCall;


# instance fields
.field TAG:Ljava/lang/String;

.field mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBTConnected:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mIsCharging:Z

.field mIsIncomingCall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/car/yunos/YunOSCall;->sInstance:Lcom/car/yunos/YunOSCall;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "CarSvc_YunOSCall"

    iput-object v1, p0, Lcom/car/yunos/YunOSCall;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/car/yunos/YunOSCall;->mIsCharging:Z

    iput-boolean v2, p0, Lcom/car/yunos/YunOSCall;->mIsIncomingCall:Z

    iput-boolean v2, p0, Lcom/car/yunos/YunOSCall;->mBTConnected:Z

    new-instance v1, Lcom/car/yunos/YunOSCall$1;

    invoke-direct {v1, p0}, Lcom/car/yunos/YunOSCall$1;-><init>(Lcom/car/yunos/YunOSCall;)V

    iput-object v1, p0, Lcom/car/yunos/YunOSCall;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/car/yunos/YunOSCall;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.btphone.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.bthpone.calllog.notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.bthpone.connected.notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.bthpone.contacts.notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yunos.intent.PHONE_COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yunos.intent.BLUETOOTH_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yunos.intent.BT_POWER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/yunos/YunOSCall;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/car/yunos/YunOSCall;->reportBTState()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/car/yunos/YunOSCall;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/car/yunos/YunOSCall;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    const-string v2, "bt_enable"

    iget-object v1, p0, Lcom/car/yunos/YunOSCall;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-static {p1, v2, v1}, Lcom/car/yunos/AliExtOpt;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "bt_display_name"

    iget-object v2, p0, Lcom/car/yunos/YunOSCall;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/car/yunos/AliExtOpt;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "bt_mac"

    iget-object v2, p0, Lcom/car/yunos/YunOSCall;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/car/yunos/AliExtOpt;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void

    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/car/yunos/YunOSCall;
    .locals 1

    sget-object v0, Lcom/car/yunos/YunOSCall;->sInstance:Lcom/car/yunos/YunOSCall;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/yunos/YunOSCall;

    invoke-direct {v0, p0}, Lcom/car/yunos/YunOSCall;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/car/yunos/YunOSCall;->sInstance:Lcom/car/yunos/YunOSCall;

    :cond_0
    sget-object v0, Lcom/car/yunos/YunOSCall;->sInstance:Lcom/car/yunos/YunOSCall;

    return-object v0
.end method


# virtual methods
.method acceptCall()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.btphone.useraction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "accept"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/yunos/YunOSCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method doReportBTState(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/car/yunos/YunOSCall;->mBTConnected:Z

    iget-object v1, p0, Lcom/car/yunos/YunOSCall;->mContext:Landroid/content/Context;

    const-string v2, "bt_status"

    if-eqz p1, :cond_0

    const-string v0, "3"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/car/yunos/AliExtOpt;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method hangupCall()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.btphone.useraction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "accept"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/yunos/YunOSCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method makeCall(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.btphone.CALL_OUTGOING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "callnum"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/yunos/YunOSCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method redial()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.btphone.CALL_REDIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/yunos/YunOSCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method reportBTState()V
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.car.bthpone.connected.notify"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/car/yunos/YunOSCall;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/car/yunos/YunOSCall$2;

    invoke-direct {v0, p0}, Lcom/car/yunos/YunOSCall$2;-><init>(Lcom/car/yunos/YunOSCall;)V

    invoke-virtual {v4, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    const-string v4, "connected"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/car/yunos/YunOSCall;->doReportBTState(Z)V

    iget-object v4, p0, Lcom/car/yunos/YunOSCall;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
