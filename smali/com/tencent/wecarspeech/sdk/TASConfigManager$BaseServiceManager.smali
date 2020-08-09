.class abstract Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;
.super Ljava/lang/Object;
.source "TASConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseServiceManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;
    }
.end annotation


# static fields
.field private static final SDK_VERSION:Ljava/lang/String; = "1.5.2"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isDestroy:Z

.field private mContext:Landroid/content/Context;

.field private mIInterface:Landroid/os/IInterface;

.field private mKeepAliveThread:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;

.field protected mMainHandler:Landroid/os/Handler;

.field private mServiceAction:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/tencent/wecarspeech/sdk/TASConfigManager;


# direct methods
.method private constructor <init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->this$0:Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mIInterface:Landroid/os/IInterface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->isDestroy:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mMainHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mKeepAliveThread:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;

    new-instance v0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;-><init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method protected constructor <init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->this$0:Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mIInterface:Landroid/os/IInterface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->isDestroy:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mMainHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mKeepAliveThread:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;

    new-instance v0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$1;-><init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)V

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mServiceAction:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "sdk version:1.5.2"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->checkServiceState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mIInterface:Landroid/os/IInterface;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mIInterface:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->isDestroy:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mServiceAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mKeepAliveThread:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;)Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mKeepAliveThread:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;

    return-object p1
.end method

.method private checkServiceState()V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mIInterface:Landroid/os/IInterface;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "checkServiceState, mIInterface is null, reconnect"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->isDestroy:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mServiceAction:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/ServiceUtils;->getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkServiceState intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "checkServiceState startService and bind 1"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mServiceAction:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mServiceAction:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "checkServiceState startService and bind 2"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startAndBindService()V
    .locals 5

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mIInterface:Landroid/os/IInterface;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mServiceAction:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/ServiceUtils;->getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v4, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "startAndBindService error"

    invoke-static {v2, v3, v0}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "startAndBindService error, intent null"

    invoke-static {v2, v3}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->isDestroy:Z

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iput-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mKeepAliveThread:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mKeepAliveThread:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;->stopThread()V

    iput-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mKeepAliveThread:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;

    :cond_1
    return-void
.end method

.method protected getServiceInterface()Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mIInterface:Landroid/os/IInterface;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "init start"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->isDestroy:Z

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->startAndBindService()V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "init end"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$2;

    invoke-direct {v1, p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$2;-><init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected abstract onServiceConnect(Landroid/os/IInterface;)V
.end method

.method protected abstract onServiceDisConnect()V
.end method
