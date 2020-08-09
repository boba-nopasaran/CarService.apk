.class public Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;
.super Ljava/lang/Object;
.source "KeyActionCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$1;,
        Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IDeviceListener;,
        Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IjiazuListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[yyn]KeyActionCenter"

.field private static mInstance:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;


# instance fields
.field private bleDeviceConnected:Z

.field private count:I

.field private currentView:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

.field private firClick:J

.field private final lock:Ljava/lang/Object;

.field private mDeviceListener:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IDeviceListener;

.field private mIjiazuListener:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IjiazuListener;

.field private secClick:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->mInstance:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->lock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->currentView:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    new-instance v0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IDeviceListener;

    invoke-direct {v0, p0, v1}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IDeviceListener;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$1;)V

    iput-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->mDeviceListener:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IDeviceListener;

    new-instance v0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IjiazuListener;

    invoke-direct {v0, p0, v1}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IjiazuListener;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$1;)V

    iput-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->mIjiazuListener:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IjiazuListener;

    iput v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->count:I

    iput-boolean v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->bleDeviceConnected:Z

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->isAppInit()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->registerListeners()V

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;)Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->currentView:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->deviceKeyClicked(II)V

    return-void
.end method

.method private deviceKeyClicked(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->deviceKeyClicked_deliveryToListener(II)V

    return-void
.end method

.method private deviceKeyClicked_deliveryToListener(II)V
    .locals 5

    const v4, 0xd8fe0

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "[yyn]KeyActionCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInit keyCode:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "++++actionCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sub-int v1, p1, v4

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->onKeySignClick(I)V

    goto :goto_0

    :pswitch_2
    sub-int v1, p1, v4

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->onKeyLongClick(I)V

    goto :goto_0

    :pswitch_3
    sub-int v1, p1, v4

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->onKeyLongUpClick(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xd8feb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private deviceKeyClicked_deliveryToView(II)V
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->currentView:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->currentView:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->currentView:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->onUpKeyClicked()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->currentView:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->onDownKeyClicked()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->currentView:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->onLeftKeyClicked()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->currentView:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->onRightKeyClicked()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xd8feb
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd8fe1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getInstance()Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;
    .locals 1

    sget-object v0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->mInstance:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    invoke-direct {v0}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;-><init>()V

    sput-object v0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->mInstance:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    :cond_0
    sget-object v0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->mInstance:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    return-object v0
.end method


# virtual methods
.method protected deviceBatteryLevel(I)V
    .locals 1

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->bleDeviceBattery(I)V

    :cond_0
    return-void
.end method

.method protected deviceConnectionChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->bleDeviceConnected:Z

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->currentView:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->currentView:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-virtual {v1}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->showMenuView()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->bleDeviceConnectionChanged(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->currentView:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-virtual {v1}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->dismiss()V

    goto :goto_0
.end method

.method protected getCurrentView()Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;
    .locals 2

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->currentView:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected isDeviceConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->bleDeviceConnected:Z

    return v0
.end method

.method protected registerListeners()V
    .locals 3

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[yyn]KeyActionCenter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->mIjiazuListener:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IjiazuListener;

    invoke-virtual {v0, v1, v2}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->registerIjiazuCallback(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;)Z

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[yyn]KeyActionCenter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->mDeviceListener:Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter$IDeviceListener;

    invoke-virtual {v0, v1, v2}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->registerDeviceCallback(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;)Z

    return-void
.end method

.method protected setCurrentView(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V
    .locals 2

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->currentView:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
