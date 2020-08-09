.class public Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;
.super Ljava/lang/Object;
.source "DeviceAPIImplementation.java"

# interfaces
.implements Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIInterface;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->mInstance:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;
    .locals 1

    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->mInstance:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;

    invoke-direct {v0}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;-><init>()V

    sput-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->mInstance:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;

    :cond_0
    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->mInstance:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;

    return-object v0
.end method


# virtual methods
.method public bindDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public clearBindKey(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public getMac()V
    .locals 0

    return-void
.end method

.method public isBleConnect()Z
    .locals 1

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->getInstance()Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isBleConnected()Z

    move-result v0

    return v0
.end method

.method public isSupportedDevice()Z
    .locals 1

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->getInstance()Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isDeviceSupported()Z

    move-result v0

    return v0
.end method

.method public saveBindKey(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public unBindDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method
