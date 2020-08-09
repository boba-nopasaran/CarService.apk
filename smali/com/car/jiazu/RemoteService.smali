.class public Lcom/car/jiazu/RemoteService;
.super Landroid/app/Service;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/jiazu/RemoteService$MyReceiver;,
        Lcom/car/jiazu/RemoteService$LocalBinder;,
        Lcom/car/jiazu/RemoteService$RemoteUiListener;
    }
.end annotation


# static fields
.field public static final APP_KEY_CODE_CENTRE:I = 0x0

.field public static final APP_KEY_CODE_DOWN:I = 0x2

.field public static final APP_KEY_CODE_LEFT:I = 0x3

.field public static final APP_KEY_CODE_NULL:I = -0x1

.field public static final APP_KEY_CODE_RIGHT:I = 0x4

.field public static final APP_KEY_CODE_UP:I = 0x1

.field private static final DOUBLE_CLICK_DELAY:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "CarSvc_jiazuRemoteService"

.field private static instance:Lcom/car/jiazu/RemoteService;


# instance fields
.field final key_map:[[I

.field private final mBinder:Landroid/os/IBinder;

.field private final mBtKeyboardEnableObserver:Landroid/database/ContentObserver;

.field mBtName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mIsConnected:Z

.field private mRemoteHandler:Landroid/os/Handler;

.field private mRemoteUiListener:Lcom/car/jiazu/RemoteService$RemoteUiListener;

.field old_keys:Lcom/car/jiazu/KeysClass$Keys;

.field private remote:Lcom/car/jiazu/Remote;

.field remoteListener:Lcom/car/jiazu/Remote$RemoteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/car/jiazu/RemoteService;->instance:Lcom/car/jiazu/RemoteService;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/car/jiazu/RemoteService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/car/jiazu/RemoteService$LocalBinder;-><init>(Lcom/car/jiazu/RemoteService;)V

    iput-object v0, p0, Lcom/car/jiazu/RemoteService;->mBinder:Landroid/os/IBinder;

    iput-boolean v2, p0, Lcom/car/jiazu/RemoteService;->mIsConnected:Z

    iput-object v1, p0, Lcom/car/jiazu/RemoteService;->remote:Lcom/car/jiazu/Remote;

    iput-object v1, p0, Lcom/car/jiazu/RemoteService;->mRemoteUiListener:Lcom/car/jiazu/RemoteService$RemoteUiListener;

    const-string v0, "ro.btkb.name"

    const-string v1, "\u4e91\u9a7e\u952e\u76d8"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/jiazu/RemoteService;->mBtName:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/car/jiazu/RemoteService;->key_map:[[I

    new-instance v0, Lcom/car/jiazu/RemoteService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/car/jiazu/RemoteService$1;-><init>(Lcom/car/jiazu/RemoteService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/car/jiazu/RemoteService;->mBtKeyboardEnableObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/car/jiazu/RemoteService$2;

    invoke-direct {v0, p0}, Lcom/car/jiazu/RemoteService$2;-><init>(Lcom/car/jiazu/RemoteService;)V

    iput-object v0, p0, Lcom/car/jiazu/RemoteService;->remoteListener:Lcom/car/jiazu/Remote$RemoteListener;

    new-instance v0, Lcom/car/jiazu/RemoteService$3;

    invoke-direct {v0, p0}, Lcom/car/jiazu/RemoteService$3;-><init>(Lcom/car/jiazu/RemoteService;)V

    iput-object v0, p0, Lcom/car/jiazu/RemoteService;->mRemoteHandler:Landroid/os/Handler;

    sput-object p0, Lcom/car/jiazu/RemoteService;->instance:Lcom/car/jiazu/RemoteService;

    iput-object p0, p0, Lcom/car/jiazu/RemoteService;->mContext:Landroid/content/Context;

    return-void

    :array_0
    .array-data 4
        0x6d
        0x13
        0x14
        0x15
        0x16
    .end array-data

    :array_1
    .array-data 4
        0x8e
        0x18
        0x19
        0x1a
        0x87
    .end array-data
.end method

.method private InputKeyCode(Lcom/car/jiazu/KeysClass$KeyVal;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/car/jiazu/KeysClass$KeyVal;

    invoke-direct {v0}, Lcom/car/jiazu/KeysClass$KeyVal;-><init>()V

    const/4 v4, -0x1

    iput v4, v0, Lcom/car/jiazu/KeysClass$KeyVal;->val:I

    const-string v3, ""

    iget v4, p1, Lcom/car/jiazu/KeysClass$KeyVal;->delay:I

    const/16 v6, 0x1f4

    if-le v4, v6, :cond_1

    move v4, v5

    :goto_0
    iput v4, p1, Lcom/car/jiazu/KeysClass$KeyVal;->delay:I

    iget v4, p1, Lcom/car/jiazu/KeysClass$KeyVal;->val:I

    sparse-switch v4, :sswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u672a\u5b9a\u4e49 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p1, Lcom/car/jiazu/KeysClass$KeyVal;->val:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget v4, v0, Lcom/car/jiazu/KeysClass$KeyVal;->val:I

    if-ltz v4, :cond_0

    const-string v4, "ro.btkb.redirect"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.car.btkb"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "keycode"

    iget v5, v0, Lcom/car/jiazu/KeysClass$KeyVal;->val:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/jiazu/RemoteService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget v4, p1, Lcom/car/jiazu/KeysClass$KeyVal;->delay:I

    goto :goto_0

    :sswitch_0
    iput v5, v0, Lcom/car/jiazu/KeysClass$KeyVal;->val:I

    const-string v3, "\u4e2d\u952e"

    goto :goto_1

    :sswitch_1
    const/4 v4, 0x1

    iput v4, v0, Lcom/car/jiazu/KeysClass$KeyVal;->val:I

    const-string v3, "\u4e0a\u952e"

    goto :goto_1

    :sswitch_2
    const/4 v4, 0x2

    iput v4, v0, Lcom/car/jiazu/KeysClass$KeyVal;->val:I

    const-string v3, "\u4e0b\u952e"

    goto :goto_1

    :sswitch_3
    const/4 v4, 0x3

    iput v4, v0, Lcom/car/jiazu/KeysClass$KeyVal;->val:I

    const-string v3, "\u5de6\u952e"

    goto :goto_1

    :sswitch_4
    const/4 v4, 0x4

    iput v4, v0, Lcom/car/jiazu/KeysClass$KeyVal;->val:I

    const-string v3, "\u53f3\u952e"

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/car/jiazu/RemoteService;->InputKeyCode1(Lcom/car/jiazu/KeysClass$KeyVal;)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_0
        0x4c -> :sswitch_2
        0x52 -> :sswitch_1
        0x56 -> :sswitch_4
    .end sparse-switch
.end method

.method private InputKeyCode1(Lcom/car/jiazu/KeysClass$KeyVal;)V
    .locals 2

    iget-object v0, p0, Lcom/car/jiazu/RemoteService;->key_map:[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v1, p1, Lcom/car/jiazu/KeysClass$KeyVal;->val:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/car/jiazu/RemoteService;->simulateKeystroke(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/car/jiazu/RemoteService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/RemoteService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/jiazu/RemoteService;Lcom/car/jiazu/KeysClass$Keys;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/jiazu/RemoteService;->keys_ui(Lcom/car/jiazu/KeysClass$Keys;)V

    return-void
.end method

.method static synthetic access$200(Lcom/car/jiazu/RemoteService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/car/jiazu/RemoteService;->broadcastLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/RemoteService$RemoteUiListener;
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/RemoteService;->mRemoteUiListener:Lcom/car/jiazu/RemoteService$RemoteUiListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/Remote;
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/RemoteService;->remote:Lcom/car/jiazu/Remote;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/jiazu/RemoteService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/jiazu/RemoteService;->error_ui(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/car/jiazu/RemoteService;Lcom/car/jiazu/KeysClass$KeyVal;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/jiazu/RemoteService;->InputKeyCode(Lcom/car/jiazu/KeysClass$KeyVal;)V

    return-void
.end method

.method private broadcastLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private error_ui(I)V
    .locals 3

    const-string v0, "CarSvc_jiazuRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR CODE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/car/jiazu/RemoteService;->broadcastLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private keys_ui(Lcom/car/jiazu/KeysClass$Keys;)V
    .locals 3

    iget-object v1, p0, Lcom/car/jiazu/RemoteService;->old_keys:Lcom/car/jiazu/KeysClass$Keys;

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/car/jiazu/KeysClass$Keys;->order:I

    iget-object v2, p0, Lcom/car/jiazu/RemoteService;->old_keys:Lcom/car/jiazu/KeysClass$Keys;

    iget v2, v2, Lcom/car/jiazu/KeysClass$Keys;->order:I

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/car/jiazu/RemoteService;->mRemoteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-object p1, p0, Lcom/car/jiazu/RemoteService;->old_keys:Lcom/car/jiazu/KeysClass$Keys;

    :cond_1
    return-void
.end method

.method private simulateKeystroke(I)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "CarSvc_jiazuRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simulateKeystroke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/car/jiazu/RemoteService;->broadcastLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3, v3}, Lcom/car/jiazu/RemoteService;->sendEvent(III)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v3}, Lcom/car/jiazu/RemoteService;->sendEvent(III)V

    return-void
.end method


# virtual methods
.method public RemoteDisable()V
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/RemoteService;->remote:Lcom/car/jiazu/Remote;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/jiazu/RemoteService;->remote:Lcom/car/jiazu/Remote;

    invoke-virtual {v0}, Lcom/car/jiazu/Remote;->Disable()V

    :cond_0
    return-void
.end method

.method public RemoteEnable()V
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/RemoteService;->remote:Lcom/car/jiazu/Remote;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/jiazu/RemoteService;->remote:Lcom/car/jiazu/Remote;

    invoke-virtual {v0}, Lcom/car/jiazu/Remote;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/jiazu/RemoteService;->remote:Lcom/car/jiazu/Remote;

    invoke-virtual {v0}, Lcom/car/jiazu/Remote;->Enable()Z

    :cond_0
    return-void
.end method

.method public getRemoteUiListener()Lcom/car/jiazu/RemoteService$RemoteUiListener;
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/RemoteService;->mRemoteUiListener:Lcom/car/jiazu/RemoteService$RemoteUiListener;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/RemoteService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v1, Lcom/car/jiazu/Remote;

    invoke-direct {v1, p0}, Lcom/car/jiazu/Remote;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/car/jiazu/RemoteService;->remote:Lcom/car/jiazu/Remote;

    iget-object v1, p0, Lcom/car/jiazu/RemoteService;->remote:Lcom/car/jiazu/Remote;

    const/16 v2, -0x50

    invoke-virtual {v1, v2}, Lcom/car/jiazu/Remote;->setRssiFilters(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.car.btkb"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/jiazu/RemoteService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/car/jiazu/RemoteService$MyReceiver;

    invoke-direct {v2, p0}, Lcom/car/jiazu/RemoteService$MyReceiver;-><init>(Lcom/car/jiazu/RemoteService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/jiazu/RemoteService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bt_keyboard_enable"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/car/jiazu/RemoteService;->mBtKeyboardEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/car/jiazu/RemoteService;->remote:Lcom/car/jiazu/Remote;

    invoke-virtual {v0}, Lcom/car/jiazu/Remote;->close()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    iget-object v1, p0, Lcom/car/jiazu/RemoteService;->remote:Lcom/car/jiazu/Remote;

    iget-object v2, p0, Lcom/car/jiazu/RemoteService;->remoteListener:Lcom/car/jiazu/Remote$RemoteListener;

    invoke-virtual {v1, v2}, Lcom/car/jiazu/Remote;->initialize(Lcom/car/jiazu/Remote$RemoteListener;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/car/jiazu/RemoteService;->RemoteEnable()V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/car/jiazu/RemoteService;->error_ui(I)V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/car/jiazu/RemoteService;->instance:Lcom/car/jiazu/RemoteService;

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method reportBtKbStatus()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.btkb.report"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "connected"

    iget-boolean v2, p0, Lcom/car/jiazu/RemoteService;->mIsConnected:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/jiazu/RemoteService;->mContext:Landroid/content/Context;

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

    invoke-virtual/range {v0 .. v5}, Lcom/car/jiazu/RemoteService;->sendEvent(IIIJ)V

    return-void
.end method

.method sendEvent(IIIJ)V
    .locals 14

    const/4 v0, 0x0

    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    or-int/lit8 v4, p3, 0x8

    or-int/lit8 v12, v4, 0x40

    const/16 v13, 0x201

    move-wide/from16 v4, p4

    move/from16 v6, p2

    move v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method public setRemoteUiListener(Lcom/car/jiazu/RemoteService$RemoteUiListener;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/RemoteService;->mRemoteUiListener:Lcom/car/jiazu/RemoteService$RemoteUiListener;

    return-void
.end method
