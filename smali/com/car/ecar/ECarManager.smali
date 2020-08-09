.class public Lcom/car/ecar/ECarManager;
.super Ljava/lang/Object;
.source "ECarManager.java"


# static fields
.field static sInstance:Lcom/car/ecar/ECarManager;


# instance fields
.field TAG:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mIsCharging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/car/ecar/ECarManager;->sInstance:Lcom/car/ecar/ECarManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CarSvc_ECarManager"

    iput-object v0, p0, Lcom/car/ecar/ECarManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/ecar/ECarManager;->mIsCharging:Z

    new-instance v0, Lcom/car/ecar/ECarManager$1;

    invoke-direct {v0, p0}, Lcom/car/ecar/ECarManager$1;-><init>(Lcom/car/ecar/ECarManager;)V

    iput-object v0, p0, Lcom/car/ecar/ECarManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static getInstance()Lcom/car/ecar/ECarManager;
    .locals 1

    sget-object v0, Lcom/car/ecar/ECarManager;->sInstance:Lcom/car/ecar/ECarManager;

    return-object v0
.end method


# virtual methods
.method accNotify(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ecar.recv"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "ecarSendKey"

    if-eqz p1, :cond_0

    const-string v1, "ACC_ON"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cmdType"

    const-string v2, "standCMD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "keySet"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/ecar/ECarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "ACC_OFF"

    goto :goto_0
.end method

.method apkUpgrade(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/car/ecar/ECarManager;->TAG:Ljava/lang/String;

    const-string v1, "apkUpgrade: Not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deinit()V
    .locals 2

    iget-object v0, p0, Lcom/car/ecar/ECarManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/ecar/ECarManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/car/ecar/ECarManager;->sInstance:Lcom/car/ecar/ECarManager;

    return-void
.end method

.method doReportBTState(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ecar.recv"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ecarSendKey"

    const-string v2, "BluetoothState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cmdType"

    const-string v2, "standCMD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "keySet"

    const-string v2, "state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "state"

    if-eqz p1, :cond_0

    const-string v1, "2"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/ecar/ECarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "1"

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

    iget-object v1, p0, Lcom/car/ecar/ECarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    sput-object p0, Lcom/car/ecar/ECarManager;->sInstance:Lcom/car/ecar/ECarManager;

    iput-object p1, p0, Lcom/car/ecar/ECarManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.ecar.send"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.bthpone.connected.notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.btphone.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/ecar/ECarManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method makeCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.btphone.CALL_OUTGOING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "callnum"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "callnoui"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/ecar/ECarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method reportBTState()V
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.car.bthpone.connected.notify"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/car/ecar/ECarManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/car/ecar/ECarManager$2;

    invoke-direct {v0, p0}, Lcom/car/ecar/ECarManager$2;-><init>(Lcom/car/ecar/ECarManager;)V

    invoke-virtual {v4, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    const-string v4, "connected"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/car/ecar/ECarManager;->doReportBTState(Z)V

    iget-object v4, p0, Lcom/car/ecar/ECarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method reportCallState(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ecar.recv"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ecarSendKey"

    const-string v2, "CallState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cmdType"

    const-string v2, "standCMD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "keySet"

    const-string v2, "state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "state"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/ecar/ECarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method setAPN()V
    .locals 2

    iget-object v0, p0, Lcom/car/ecar/ECarManager;->TAG:Ljava/lang/String;

    const-string v1, "setAPN: Not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method startNavi(Landroid/content/Intent;)V
    .locals 10

    const-string v1, "baidu_poiName"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "baidu_latitude"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "baidu_longitude"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    iget-object v1, p0, Lcom/car/ecar/ECarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static/range {v1 .. v6}, Lcom/car/voice/cmd/Navi;->startNavi(Landroid/content/Context;DDLjava/lang/String;)V

    return-void
.end method
