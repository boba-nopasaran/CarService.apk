.class public Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;
.super Ljava/lang/Object;
.source "IjiazuSdkImpl.java"

# interfaces
.implements Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSdk;


# static fields
.field private static final TAG:Ljava/lang/String; = "[yyn]IjiazuSdk"

.field private static mInstance:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;


# instance fields
.field private ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

.field private mycontext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->mInstance:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    iput-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->mycontext:Landroid/content/Context;

    const-string v0, "[yyn]IjiazuSdk"

    const-string v1, "IjiazuSdk"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;
    .locals 2

    const-string v0, "[yyn]IjiazuSdk"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->mInstance:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;

    invoke-direct {v0}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;-><init>()V

    sput-object v0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->mInstance:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;

    :cond_0
    sget-object v0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->mInstance:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;

    return-object v0
.end method

.method private getKeyName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "\u5de6"

    goto :goto_0

    :pswitch_1
    const-string v0, "\u4e0a"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u4e2d"

    goto :goto_0

    :pswitch_3
    const-string v0, "\u53f3"

    goto :goto_0

    :pswitch_4
    const-string v0, "\u4e0b"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bleDeviceBattery(I)V
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    invoke-interface {v0, p1}, Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;->deviceBatteryLevel(I)V

    :cond_0
    return-void
.end method

.method public bleDeviceConnectionChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    invoke-interface {v0, p1}, Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;->deviceConnectionChanged(Z)V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;)V
    .locals 3

    invoke-static {p2}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->setAppId(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->setAppKey(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->init(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->mycontext:Landroid/content/Context;

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    iput-object p4, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;->initComplete(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onKeyLongClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    invoke-interface {v0, p1}, Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;->onLongClick(I)V

    :cond_0
    return-void
.end method

.method protected onKeyLongUpClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    invoke-interface {v0, p1}, Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;->onLongUpClick(I)V

    :cond_0
    return-void
.end method

.method protected onKeySignClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->ijiazuListener:Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;

    invoke-interface {v0, p1}, Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;->onKeySingleClick(I)V

    :cond_0
    return-void
.end method

.method public registerModelListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;->mInstance:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuSdkImpl;

    return-void
.end method
