.class public Lcom/car/systemfunc/IJiaZuSdk;
.super Ljava/lang/Object;
.source "IJiaZuSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;,
        Lcom/car/systemfunc/IJiaZuSdk$BTServiceListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CarSvc_IJiaZuSdk"

.field static sSparseIntArray:Landroid/util/SparseIntArray;


# instance fields
.field final NOTIFY_USER_BTK:I

.field final NOTIFY_USER_STATE:I

.field final REPEATED_COUNT_MAX:I

.field final SCAN_CHECKING:I

.field private ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

.field public mBluetoothInputDevice:Landroid/bluetooth/BluetoothInputDevice;

.field private final mBtKeyboardEnableObserver:Landroid/database/ContentObserver;

.field mBtName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDownTime:J

.field mEnabled:Z

.field mEverConnected:Z

.field private mHandler:Landroid/os/Handler;

.field mIsConnected:Z

.field private mListener:Lcom/car/systemfunc/IJiaZuSdk$BTServiceListener;

.field mNeedReport:Z

.field mRepatedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x5

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/car/systemfunc/IJiaZuSdk;->sSparseIntArray:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/car/systemfunc/IJiaZuSdk;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/IJiaZuSdk;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/16 v2, 0x87

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/IJiaZuSdk;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/16 v2, 0x8e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/IJiaZuSdk;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/IJiaZuSdk;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x1a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/car/systemfunc/IJiaZuSdk;->NOTIFY_USER_STATE:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/car/systemfunc/IJiaZuSdk;->SCAN_CHECKING:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/car/systemfunc/IJiaZuSdk;->NOTIFY_USER_BTK:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/car/systemfunc/IJiaZuSdk;->REPEATED_COUNT_MAX:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/car/systemfunc/IJiaZuSdk;->mDownTime:J

    iput v2, p0, Lcom/car/systemfunc/IJiaZuSdk;->mRepatedCount:I

    iput-boolean v2, p0, Lcom/car/systemfunc/IJiaZuSdk;->mEverConnected:Z

    iput-boolean v2, p0, Lcom/car/systemfunc/IJiaZuSdk;->mEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/systemfunc/IJiaZuSdk;->mBluetoothInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/systemfunc/IJiaZuSdk;->mNeedReport:Z

    iput-boolean v2, p0, Lcom/car/systemfunc/IJiaZuSdk;->mIsConnected:Z

    const-string v0, "ro.btkb.name"

    const-string v1, "\u4e91\u9a7e\u952e\u76d8"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/systemfunc/IJiaZuSdk;->mBtName:Ljava/lang/String;

    new-instance v0, Lcom/car/systemfunc/IJiaZuSdk$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/car/systemfunc/IJiaZuSdk$1;-><init>(Lcom/car/systemfunc/IJiaZuSdk;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/car/systemfunc/IJiaZuSdk;->mBtKeyboardEnableObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/car/systemfunc/IJiaZuSdk$2;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/IJiaZuSdk$2;-><init>(Lcom/car/systemfunc/IJiaZuSdk;)V

    iput-object v0, p0, Lcom/car/systemfunc/IJiaZuSdk;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/systemfunc/IJiaZuSdk$3;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/IJiaZuSdk$3;-><init>(Lcom/car/systemfunc/IJiaZuSdk;)V

    iput-object v0, p0, Lcom/car/systemfunc/IJiaZuSdk;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    return-void
.end method

.method static synthetic access$000(Lcom/car/systemfunc/IJiaZuSdk;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/IJiaZuSdk;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 8

    invoke-static {p1}, Lcom/car/common/ProviderUtils;->getBtKeyboardEnable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/car/systemfunc/IJiaZuSdk;->mEnabled:Z

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSdkFactory;->createIjiazuSDK()Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSdk;

    move-result-object v2

    const-string v3, "120700003"

    const-string v4, "testAppKey"

    iget-object v5, p0, Lcom/car/systemfunc/IJiaZuSdk;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    invoke-interface {v2, p1, v3, v4, v5}, Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSdk;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;)V

    iput-object p1, p0, Lcom/car/systemfunc/IJiaZuSdk;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/car/systemfunc/IJiaZuSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bt_keyboard_enable"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/car/systemfunc/IJiaZuSdk;->mBtKeyboardEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/car/systemfunc/IJiaZuSdk;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    new-instance v3, Lcom/car/systemfunc/IJiaZuSdk$BTServiceListener;

    invoke-direct {v3, p0}, Lcom/car/systemfunc/IJiaZuSdk$BTServiceListener;-><init>(Lcom/car/systemfunc/IJiaZuSdk;)V

    const/4 v4, 0x4

    invoke-virtual {v0, p1, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CarSvc_IJiaZuSdk"

    const-string v4, "Get INPUT_DEVICE failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.wakeup"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.gotosleep"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.btkb"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/systemfunc/IJiaZuSdk;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;

    invoke-direct {v4, p0}, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;-><init>(Lcom/car/systemfunc/IJiaZuSdk;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method isAccOn(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "status"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method reportBtKbStatus()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.btkb.report"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "connected"

    iget-boolean v2, p0, Lcom/car/systemfunc/IJiaZuSdk;->mIsConnected:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendEvent(III)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/car/systemfunc/IJiaZuSdk;->sendEvent(IIIJ)V

    return-void
.end method

.method sendEvent(IIIJ)V
    .locals 16

    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/car/systemfunc/IJiaZuSdk;->mRepatedCount:I

    :goto_0
    new-instance v3, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/car/systemfunc/IJiaZuSdk;->mDownTime:J

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    or-int/lit8 v2, p3, 0x8

    or-int/lit8 v14, v2, 0x40

    const/16 v15, 0x201

    move-wide/from16 v6, p4

    move/from16 v8, p2

    move/from16 v9, p1

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method
