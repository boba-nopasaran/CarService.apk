.class public Lcom/car/jiazu/NewJiazuManager;
.super Ljava/lang/Object;
.source "NewJiazuManager.java"


# instance fields
.field private final mBtKeyboardEnableObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field mEnabled:Z

.field private final mRemoteServiceConnection:Landroid/content/ServiceConnection;

.field mScanEnable:Z

.field private mService:Lcom/car/jiazu/RemoteService;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/jiazu/NewJiazuManager;->mScanEnable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/jiazu/NewJiazuManager;->mEnabled:Z

    new-instance v0, Lcom/car/jiazu/NewJiazuManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/car/jiazu/NewJiazuManager$1;-><init>(Lcom/car/jiazu/NewJiazuManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/car/jiazu/NewJiazuManager;->mBtKeyboardEnableObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/car/jiazu/NewJiazuManager$2;

    invoke-direct {v0, p0}, Lcom/car/jiazu/NewJiazuManager$2;-><init>(Lcom/car/jiazu/NewJiazuManager;)V

    iput-object v0, p0, Lcom/car/jiazu/NewJiazuManager;->mRemoteServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/car/jiazu/NewJiazuManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/NewJiazuManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/car/jiazu/NewJiazuManager;Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/RemoteService;
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/NewJiazuManager;->mService:Lcom/car/jiazu/RemoteService;

    return-object p1
.end method

.method private bindservice(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/car/jiazu/RemoteService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/car/jiazu/NewJiazuManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/car/jiazu/NewJiazuManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/ProviderUtils;->getBtKeyboardEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/car/jiazu/NewJiazuManager;->mScanEnable:Z

    iget-object v0, p0, Lcom/car/jiazu/NewJiazuManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/jiazu/NewJiazuManager;->mRemoteServiceConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0, v0, v1}, Lcom/car/jiazu/NewJiazuManager;->bindservice(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/car/jiazu/NewJiazuManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bt_keyboard_enable"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/car/jiazu/NewJiazuManager;->mBtKeyboardEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setScanEnable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/car/jiazu/NewJiazuManager;->mScanEnable:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/car/jiazu/NewJiazuManager;->mService:Lcom/car/jiazu/RemoteService;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/car/jiazu/NewJiazuManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/jiazu/NewJiazuManager;->mRemoteServiceConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0, v0, v1}, Lcom/car/jiazu/NewJiazuManager;->bindservice(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/jiazu/NewJiazuManager;->mService:Lcom/car/jiazu/RemoteService;

    invoke-virtual {v0}, Lcom/car/jiazu/RemoteService;->RemoteEnable()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/car/jiazu/NewJiazuManager;->mService:Lcom/car/jiazu/RemoteService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/jiazu/NewJiazuManager;->mService:Lcom/car/jiazu/RemoteService;

    invoke-virtual {v0}, Lcom/car/jiazu/RemoteService;->RemoteDisable()V

    goto :goto_0
.end method
