.class public Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;
.super Ljava/lang/Object;
.source "IjiazuController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[yyn]IjiazuController"

.field private static mInstance:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;


# instance fields
.field private mAPIController:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;

.field private mBind:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDeviceListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIDeviceAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;

.field private mIjiazuAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

.field private mIjiazuListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mTtsAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/ITtsAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mInstance:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIjiazuListeners:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mDeviceListeners:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mBind:Z

    new-instance v0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;

    invoke-direct {v0, p0}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)V

    iput-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mConnection:Landroid/content/ServiceConnection;

    const-string v0, "[yyn]IjiazuController"

    const-string v1, "IjiazuController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->isAppInit()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->bindIjiazuService()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mAPIController:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mAPIController:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIjiazuAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    return-object v0
.end method

.method static synthetic access$102(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIjiazuAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIDeviceAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;

    return-object v0
.end method

.method static synthetic access$202(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIDeviceAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;

    return-object p1
.end method

.method static synthetic access$302(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;Lcom/jinglingtec/ijiazublctor/sdk/aidl/ITtsAPI;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/ITtsAPI;
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mTtsAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/ITtsAPI;

    return-object p1
.end method

.method static synthetic access$400(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIjiazuListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mDeviceListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)V
    .locals 0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->handleSeriveDied()V

    return-void
.end method

.method private bindIjiazuService()V
    .locals 5

    const-string v0, "com.jinglingtec.ijiazublctor.service"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.jinglingtec.ijiazublctor.service"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mBind:Z

    const-string v2, "[yyn]IjiazuController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IjiazuController bindService result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mBind:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static getInstance()Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;
    .locals 2

    const-string v0, "[yyn]IjiazuController"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mInstance:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-direct {v0}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;-><init>()V

    sput-object v0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mInstance:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    :cond_0
    sget-object v0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mInstance:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    return-object v0
.end method

.method private handleSeriveDied()V
    .locals 2

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->deviceConnectionChanged(Z)V

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->bindIjiazuService()V

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->registerListeners()V

    return-void
.end method


# virtual methods
.method protected active(I)V
    .locals 3

    const-string v1, "[yyn]IjiazuController"

    const-string v2, "active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIjiazuAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIjiazuAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    invoke-interface {v1, p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;->itemActive(I)V
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

.method protected cancelAsync()V
    .locals 3

    const-string v1, "[yyn]IjiazuController"

    const-string v2, "cancelAsync"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mTtsAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/ITtsAPI;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mTtsAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/ITtsAPI;

    invoke-interface {v1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/ITtsAPI;->cancelAsync()V
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

.method protected clearListener()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIDeviceAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;->clearListener(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIjiazuAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;->clearListener(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->onDestory()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected isConnected()Z
    .locals 4

    const-string v2, "[yyn]IjiazuController"

    const-string v3, "isConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIDeviceAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIDeviceAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;

    invoke-interface {v2}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;->isBleConnect()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestory()V
    .locals 3

    const-string v0, "[yyn]IjiazuController"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->clearListener()V

    const-string v0, "[yyn]IjiazuController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy is bind? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mBind:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mBind:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mBind:Z

    :cond_0
    return-void
.end method

.method protected playAsync(Ljava/lang/String;)V
    .locals 4

    const-string v1, "[yyn]IjiazuController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playAsync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mTtsAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/ITtsAPI;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mTtsAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/ITtsAPI;

    invoke-interface {v1, p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/ITtsAPI;->playAsync(Ljava/lang/String;)V
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

.method protected registerDeviceCallback(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;)Z
    .locals 4

    const/4 v1, 0x0

    const-string v2, "[yyn]IjiazuController"

    const-string v3, "registerDeviceCallback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string v2, "[yyn]IjiazuController"

    const-string v3, "registerDeviceCallback listener is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIDeviceAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;

    if-nez v2, :cond_1

    const-string v2, "[yyn]IjiazuController"

    const-string v3, "registerDeviceCallback mIDeviceAPI is null, will add this listener when service connect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mDeviceListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIDeviceAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;

    invoke-interface {v2, p1, p2}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;->registerDeviceListener(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "[yyn]IjiazuController"

    const-string v2, "registerDeviceCallback finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[yyn]IjiazuController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected registerIjiazuCallback(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;)Z
    .locals 4

    const/4 v1, 0x0

    const-string v2, "[yyn]IjiazuController"

    const-string v3, "registerIjiazuCallback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string v2, "[yyn]IjiazuController"

    const-string v3, "registerIjiazuCallback listener is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIjiazuAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    if-nez v2, :cond_1

    const-string v2, "[yyn]IjiazuController"

    const-string v3, "registerIjiazuCallback mIjiazuAPI is null, will add this listener when service connect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIjiazuListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIjiazuAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    invoke-interface {v2, p1, p2}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;->registerIjiazuListener(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "[yyn]IjiazuController"

    const-string v2, "registerIjiazuCallback finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[yyn]IjiazuController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setForeground(Ljava/lang/String;)V
    .locals 3

    const-string v1, "[yyn]IjiazuController"

    const-string v2, "setForeground"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mAPIController:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mAPIController:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;

    invoke-interface {v1, p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;->setForeground(Ljava/lang/String;)V
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

.method protected unRegisterDeviceCallback(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;)Z
    .locals 4

    const/4 v1, 0x0

    const-string v2, "[yyn]IjiazuController"

    const-string v3, "unRegisterDeviceCallback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string v2, "[yyn]IjiazuController"

    const-string v3, "unRegisterDeviceCallback listener is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIDeviceAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;

    if-nez v2, :cond_1

    const-string v2, "[yyn]IjiazuController"

    const-string v3, "unRegisterDeviceCallback mIDeviceAPI is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mDeviceListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIDeviceAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;

    invoke-interface {v2, p1, p2}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;->unRegisterDeviceListener(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "[yyn]IjiazuController"

    const-string v2, "unRegisterDeviceCallback finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[yyn]IjiazuController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected unRegisterIjiazuCallback(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;)Z
    .locals 4

    const/4 v1, 0x0

    const-string v2, "[yyn]IjiazuController"

    const-string v3, "unRegisterIjiazuCallback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string v2, "[yyn]IjiazuController"

    const-string v3, "unRegisterIjiazuCallback listener is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIjiazuAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    if-nez v2, :cond_1

    const-string v2, "[yyn]IjiazuController"

    const-string v3, "unRegisterIjiazuCallback mIjiazuAPI is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIjiazuListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->mIjiazuAPI:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    invoke-interface {v2, p1, p2}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;->unRegisterIjiazuListener(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "[yyn]IjiazuController"

    const-string v2, "unRegisterIjiazuCallback finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[yyn]IjiazuController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
