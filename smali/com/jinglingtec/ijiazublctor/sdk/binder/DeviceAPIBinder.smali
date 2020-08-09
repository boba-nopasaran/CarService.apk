.class public Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;
.super Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI$Stub;
.source "DeviceAPIBinder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceAPIBinder"

.field private static currentAppID:Ljava/lang/String;

.field private static mBinder:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;


# instance fields
.field private final IJIAZU_APP_ID:Ljava/lang/String;

.field private mDeviceListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;

.field private final mListeners:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->mBinder:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;

    const-string v0, "120700003"

    sput-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->currentAppID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->mListeners:Ljava/util/HashMap;

    const-string v0, "120700003"

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->IJIAZU_APP_ID:Ljava/lang/String;

    new-instance v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder$1;

    invoke-direct {v0, p0}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder$1;-><init>(Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;)V

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->mDeviceListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->getInstance()Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->mDeviceListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->setDeviceListener(Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->currentAppID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->mListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;
    .locals 2

    const-class v1, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->mBinder:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;

    invoke-direct {v0}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;-><init>()V

    sput-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->mBinder:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;

    :cond_0
    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->mBinder:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bindDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "DeviceAPIBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ble_debug]bindDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->bindDevice(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearBindKey(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DeviceAPIBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ble_debug]clearBindKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->clearBindKey(Ljava/lang/String;)V

    return-void
.end method

.method public clearListener(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->mListeners:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    const-string v0, "DeviceAPIBinder"

    const-string v2, "[ble_debug]clearListener"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMac()V
    .locals 2

    const-string v0, "DeviceAPIBinder"

    const-string v1, "[ble_debug]getMac"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->getMac()V

    return-void
.end method

.method public isBleConnect()Z
    .locals 2

    const-string v0, "DeviceAPIBinder"

    const-string v1, "[ble_debug]isBleConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->isBleConnect()Z

    move-result v0

    return v0
.end method

.method public isSupportedDevice()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->isSupportedDevice()Z

    move-result v0

    return v0
.end method

.method public registerDeviceListener(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;)V
    .locals 4

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->mListeners:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    const-string v0, "DeviceAPIBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ble_debug]registerDeviceListener appID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DeviceAPIBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ble_debug]registerDeviceListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveBindKey(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DeviceAPIBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ble_debug]saveBindKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->saveBindKey(Ljava/lang/String;)V

    return-void
.end method

.method public setForeground(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DeviceAPIBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ble_debug]setForeground appID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->currentAppID:Ljava/lang/String;

    return-void
.end method

.method public unBindDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "DeviceAPIBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ble_debug]unBindDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIImplementation;->unBindDevice(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unRegisterDeviceListener(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;)V
    .locals 4

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->mListeners:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    const-string v0, "DeviceAPIBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ble_debug]unRegisterDeviceListener appID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "DeviceAPIBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ble_debug]unRegisterDeviceListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
