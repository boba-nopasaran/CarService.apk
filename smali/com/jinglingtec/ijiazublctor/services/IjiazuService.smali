.class public Lcom/jinglingtec/ijiazublctor/services/IjiazuService;
.super Landroid/app/Service;
.source "IjiazuService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jinglingtec/ijiazublctor/services/IjiazuService$IjiazuServiceBinder;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mApiBinder:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jinglingtec/ijiazublctor/services/IjiazuService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "IjiazuService"

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/services/IjiazuService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/services/IjiazuService;->mApiBinder:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController$Stub;

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/jinglingtec/ijiazublctor/services/IjiazuService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "IjiazuService"

    const-string v1, "on bind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/services/IjiazuService;->mApiBinder:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    const-string v1, "IjiazuService"

    const-string v2, "onCreate start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/jinglingtec/ijiazublctor/services/IjiazuService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/jinglingtec/ijiazublctor/sdk/binder/APIControllerBinder;

    invoke-direct {v1}, Lcom/jinglingtec/ijiazublctor/sdk/binder/APIControllerBinder;-><init>()V

    iput-object v1, p0, Lcom/jinglingtec/ijiazublctor/services/IjiazuService;->mApiBinder:Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController$Stub;

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->getInstance()Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->setParams(Landroid/content/Context;)Z

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "IjiazuService"

    const-string v1, "on destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->releaseThread()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "IjiazuService"

    const-string v1, "on start command"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "IjiazuService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
