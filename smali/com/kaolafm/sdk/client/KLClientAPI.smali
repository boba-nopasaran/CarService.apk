.class public Lcom/kaolafm/sdk/client/KLClientAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;
    }
.end annotation


# static fields
.field public static final ACTION_CLIENT:Ljava/lang/String; = "com.kaolafm.sdk.client"

.field public static final EXTRA_COMMAND_EXIT_APP:Ljava/lang/String; = "extra_command_exit_app"

.field public static final EXTRA_KEY_COMMAND:Ljava/lang/String; = "extra_key_command"

.field public static final KEY_AUTO:Ljava/lang/String; = "auto"

.field public static final KEY_PHONE:Ljava/lang/String; = "phone"

.field public static final LOG_TAG:Ljava/lang/String; = "kaolafm.clientsdk"

.field private static final PACKAGE_NAME_EDOG:Ljava/lang/String; = "com.edog.car"

.field private static final PACKAGE_NAME_KAOLAFM:Ljava/lang/String; = "com.itings.myradio"

.field public static final PARAM_AUTO_PLAY:Ljava/lang/String; = "auto_play"

.field public static final PARAM_SHOW_UI:Ljava/lang/String; = "show_ui"

.field private static final VERSION:I = 0x84

.field private static mInstance:Lcom/kaolafm/sdk/client/KLClientAPI;


# instance fields
.field private mAppLifecycleListener:Lcom/kaolafm/sdk/client/AppLifecycleListener;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mFocusStatus:I

.field private mKey:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private mServiceConnection:Lcom/kaolafm/sdk/client/IServiceConnection;

.field private needRegister:Z

.field private openReceiver:Landroid/content/BroadcastReceiver;

.field private playStateListener:Lcom/kaolafm/sdk/client/PlayStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-direct {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;-><init>()V

    sput-object v0, Lcom/kaolafm/sdk/client/KLClientAPI;->mInstance:Lcom/kaolafm/sdk/client/KLClientAPI;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->needRegister:Z

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$1;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/KLClientAPI$1;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    iput-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v0, -0x1

    iput v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mFocusStatus:I

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$24;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/KLClientAPI$24;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    iput-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->openReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;
    .locals 1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    return-object v0
.end method

.method static synthetic access$002(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/IClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    return-object p1
.end method

.method static synthetic access$100(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/AppLifecycleListener;
    .locals 1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mAppLifecycleListener:Lcom/kaolafm/sdk/client/AppLifecycleListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kaolafm/sdk/client/KLClientAPI;)Landroid/os/IBinder$DeathRecipient;
    .locals 1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kaolafm/sdk/client/KLClientAPI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->needRegister:Z

    return v0
.end method

.method static synthetic access$400(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/PlayStateListener;
    .locals 1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->playStateListener:Lcom/kaolafm/sdk/client/PlayStateListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/PlayStateListener;)Lcom/kaolafm/sdk/client/PlayStateListener;
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->playStateListener:Lcom/kaolafm/sdk/client/PlayStateListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mServiceConnection:Lcom/kaolafm/sdk/client/IServiceConnection;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kaolafm/sdk/client/KLClientAPI;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kaolafm/sdk/client/KLClientAPI;ILjava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/kaolafm/sdk/client/KLClientAPI;->searchByType(ILjava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V

    return-void
.end method

.method static synthetic access$800(Lcom/kaolafm/sdk/client/KLClientAPI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method private bindService(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kaolafm.sdk.client"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static getInstance()Lcom/kaolafm/sdk/client/KLClientAPI;
    .locals 1

    sget-object v0, Lcom/kaolafm/sdk/client/KLClientAPI;->mInstance:Lcom/kaolafm/sdk/client/KLClientAPI;

    return-object v0
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/KLClientAPI;->unBindService()V

    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mKey:Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.itings.myradio"

    iput-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPackageName:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/kaolafm/sdk/client/KLClientAPI$2;

    invoke-direct {v1, p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI$2;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Lcom/kaolafm/sdk/client/KLClientAPI;->bindService(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/KLClientAPI;->registerOpenReceiver()V

    return-void

    :cond_0
    const-string v0, "com.edog.car"

    iput-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/kaolafm/sdk/client/KLClientAPI;->init(Landroid/content/Context;Ljava/lang/String;Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;->onConnected()V

    goto :goto_0
.end method

.method private registerOpenReceiver()V
    .locals 4

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->openReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.kaolafm.auto.home.appOpen.action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private searchByType(ILjava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0x4f4d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/kaolafm/sdk/client/IClientAPI;->searchByType(ILjava/lang/String;IILcom/kaolafm/sdk/client/ISearchResultV2;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    new-instance v1, Lcom/kaolafm/sdk/client/KLClientAPI$18;

    invoke-direct {v1, p0, p5}, Lcom/kaolafm/sdk/client/KLClientAPI$18;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/SearchResultV2;)V

    invoke-interface {v0, p2, v1}, Lcom/kaolafm/sdk/client/IClientAPI;->search(Ljava/lang/String;Lcom/kaolafm/sdk/client/ISearchResult;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private unBindService()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mServiceConn:Landroid/content/ServiceConnection;

    iput-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    :cond_0
    return-void
.end method

.method private unregisterOpenReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->openReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public backward()V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$13;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/KLClientAPI$13;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public download()V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$11;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/KLClientAPI$11;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public execute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    invoke-interface {v1, p1}, Lcom/kaolafm/sdk/client/IClientAPI;->execute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;Lcom/kaolafm/sdk/client/ExecuteResult;)V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/kaolafm/sdk/client/KLClientAPI$25;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Ljava/lang/String;Lcom/kaolafm/sdk/client/ExecuteResult;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public exitApp()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kaolafm.sdk.client"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_key_command"

    const-string v2, "extra_command_exit_app"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public forward()V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$12;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/KLClientAPI$12;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public getCurrentFocusChangeState()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mFocusStatus:I

    return v0
.end method

.method public getCurrentMusicInfo()Lcom/kaolafm/sdk/client/Music;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    invoke-interface {v1}, Lcom/kaolafm/sdk/client/IClientAPI;->getCurrentMusicInfo()Lcom/kaolafm/sdk/client/Music;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getPlayState()Lcom/kaolafm/sdk/client/PlayState;
    .locals 2

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    invoke-interface {v0}, Lcom/kaolafm/sdk/client/IClientAPI;->getPlayState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sget-object v1, Lcom/kaolafm/sdk/client/PlayState;->PLAYING:Lcom/kaolafm/sdk/client/PlayState;

    invoke-virtual {v1}, Lcom/kaolafm/sdk/client/PlayState;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/kaolafm/sdk/client/PlayState;->PLAYING:Lcom/kaolafm/sdk/client/PlayState;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v0, Lcom/kaolafm/sdk/client/PlayState;->PAUSED:Lcom/kaolafm/sdk/client/PlayState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/kaolafm/sdk/client/PlayState;->PAUSED:Lcom/kaolafm/sdk/client/PlayState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/kaolafm/sdk/client/PlayState;->PAUSED:Lcom/kaolafm/sdk/client/PlayState;

    goto :goto_0
.end method

.method public getProgress()J
    .locals 3

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    invoke-interface {v2}, Lcom/kaolafm/sdk/client/IClientAPI;->getProgress()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRadioList(Lcom/kaolafm/sdk/client/RadioResult;)V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$14;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/KLClientAPI$14;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/RadioResult;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public getVersion()I
    .locals 1

    const/16 v0, 0x84

    return v0
.end method

.method public hasNext()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    invoke-interface {v1}, Lcom/kaolafm/sdk/client/IClientAPI;->hasNext()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hasPre()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    invoke-interface {v1}, Lcom/kaolafm/sdk/client/IClientAPI;->hasPre()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->init(Landroid/content/Context;Ljava/lang/String;Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public isKaolaFMRunning()Z
    .locals 4

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kaolafm/sdk/client/Utils;->isAppRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "kaolafm.clientsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isKaolaFMRunning:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public launchApp(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->launchApp(ZZ)V

    return-void
.end method

.method public launchApp(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "kaolafm.client"

    const-string v1, "can\'t find package of com.edog.car"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "auto_play"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "show_ui"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/KLClientAPI;->unBindService()V

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/KLClientAPI;->unregisterOpenReceiver()V

    return-void
.end method

.method public pause()V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$4;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/KLClientAPI$4;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public play()V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$3;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/KLClientAPI$3;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public play(Lcom/kaolafm/sdk/client/Music;)V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$7;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/KLClientAPI$7;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/Music;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public play(Lcom/kaolafm/sdk/client/SearchData;)V
    .locals 3

    const-string v0, "kaolafm.clientsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":KLClientAPI: play."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$9;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/KLClientAPI$9;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/SearchData;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public play(Ljava/lang/String;Lcom/kaolafm/sdk/client/PlayResult;)V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/kaolafm/sdk/client/KLClientAPI$10;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Ljava/lang/String;Lcom/kaolafm/sdk/client/PlayResult;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public play(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kaolafm/sdk/client/Music;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/kaolafm/sdk/client/KLClientAPI$8;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Ljava/util/List;I)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public playNext()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->playNext(Lcom/kaolafm/sdk/client/PlayResult;)V

    return-void
.end method

.method public playNext(Lcom/kaolafm/sdk/client/PlayResult;)V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$5;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/KLClientAPI$5;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/PlayResult;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public playPre()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->playPre(Lcom/kaolafm/sdk/client/PlayResult;)V

    return-void
.end method

.method public playPre(Lcom/kaolafm/sdk/client/PlayResult;)V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$6;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/KLClientAPI$6;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/PlayResult;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public registerAppLifecycleListener(Lcom/kaolafm/sdk/client/AppLifecycleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mAppLifecycleListener:Lcom/kaolafm/sdk/client/AppLifecycleListener;

    return-void
.end method

.method public registerAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 3

    const-string v0, "kaolafm.clientsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":KLClientAPI: registerAudioFocusChangeListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->unregisterAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$22;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/KLClientAPI$22;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    goto :goto_0
.end method

.method public removePlayListener(Lcom/kaolafm/sdk/client/PlayStateListener;)V
    .locals 1

    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->playStateListener:Lcom/kaolafm/sdk/client/PlayStateListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->needRegister:Z

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    invoke-interface {v0, p1}, Lcom/kaolafm/sdk/client/IClientAPI;->removePlayListener(Lcom/kaolafm/sdk/client/PlayListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->playStateListener:Lcom/kaolafm/sdk/client/PlayStateListener;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public search(Lcom/kaolafm/sdk/client/SoundQuality;Lcom/kaolafm/sdk/client/Scenes;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/kaolafm/sdk/client/SearchResult;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kaolafm/sdk/client/SoundQuality;",
            "Lcom/kaolafm/sdk/client/Scenes;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/kaolafm/sdk/client/SearchResult;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$19;

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p10

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/kaolafm/sdk/client/KLClientAPI$19;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Ljava/util/List;Lcom/kaolafm/sdk/client/SearchResult;Lcom/kaolafm/sdk/client/SoundQuality;Lcom/kaolafm/sdk/client/Scenes;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->search(Ljava/lang/String;Lcom/kaolafm/sdk/client/SearchResult;)V

    return-void
.end method

.method public search(Ljava/lang/String;Lcom/kaolafm/sdk/client/SearchResult;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/kaolafm/sdk/client/KLClientAPI$16;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Ljava/lang/String;Lcom/kaolafm/sdk/client/SearchResult;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public searchAll(Ljava/lang/String;Lcom/kaolafm/sdk/client/SearchResultV2;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    sget-object v1, Lcom/kaolafm/sdk/client/SearchType;->ALL:Lcom/kaolafm/sdk/client/SearchType;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kaolafm/sdk/client/KLClientAPI;->searchByType(Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V

    return-void
.end method

.method public searchByType(Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$17;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kaolafm/sdk/client/KLClientAPI$17;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public searchByType(Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;Lcom/kaolafm/sdk/client/SearchResultV2;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x1

    const/16 v4, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/kaolafm/sdk/client/KLClientAPI;->searchByType(Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V

    return-void
.end method

.method public setPlayListener(Lcom/kaolafm/sdk/client/PlayStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->playStateListener:Lcom/kaolafm/sdk/client/PlayStateListener;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->playStateListener:Lcom/kaolafm/sdk/client/PlayStateListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->needRegister:Z

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    invoke-interface {v0, p1}, Lcom/kaolafm/sdk/client/IClientAPI;->setPlayListener(Lcom/kaolafm/sdk/client/PlayListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setServiceConnection(Lcom/kaolafm/sdk/client/IServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mServiceConnection:Lcom/kaolafm/sdk/client/IServiceConnection;

    return-void
.end method

.method public subscribe(JLcom/kaolafm/sdk/client/SubscribeResult;)V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$20;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kaolafm/sdk/client/KLClientAPI$20;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;JLcom/kaolafm/sdk/client/SubscribeResult;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public subscribeCurrent(Lcom/kaolafm/sdk/client/SubscribeResult;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/kaolafm/sdk/client/KLClientAPI;->subscribe(JLcom/kaolafm/sdk/client/SubscribeResult;)V

    return-void
.end method

.method public switchChannel()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->switchChannel(Lcom/kaolafm/sdk/client/Radio;)V

    return-void
.end method

.method public switchChannel(Lcom/kaolafm/sdk/client/Radio;)V
    .locals 1
    .param p1    # Lcom/kaolafm/sdk/client/Radio;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$15;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/KLClientAPI$15;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/Radio;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public unregisterAppLifecycleListener(Lcom/kaolafm/sdk/client/AppLifecycleListener;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mAppLifecycleListener:Lcom/kaolafm/sdk/client/AppLifecycleListener;

    return-void
.end method

.method public unregisterAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$23;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/KLClientAPI$23;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public unsubscribe(JLcom/kaolafm/sdk/client/SubscribeResult;)V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$21;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kaolafm/sdk/client/KLClientAPI$21;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;JLcom/kaolafm/sdk/client/SubscribeResult;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    return-void
.end method

.method public unsubscribeCurrent(Lcom/kaolafm/sdk/client/SubscribeResult;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/kaolafm/sdk/client/KLClientAPI;->unsubscribe(JLcom/kaolafm/sdk/client/SubscribeResult;)V

    return-void
.end method
