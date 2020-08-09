.class public Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;
.super Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI$Stub;
.source "IjiazuAPIBinder.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static currentAppID:Ljava/lang/String;

.field private static mBinder:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;


# instance fields
.field private mIjiazuAPI:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIInterface;

.field private mIjiazuListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/IjiazuListener;

.field private mListeners:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mBinder:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;

    const-string v0, ""

    sput-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->currentAppID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI$Stub;-><init>()V

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;->getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;

    move-result-object v0

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mIjiazuAPI:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIInterface;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mListeners:Ljava/util/HashMap;

    new-instance v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder$1;

    invoke-direct {v0, p0}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder$1;-><init>(Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;)V

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mIjiazuListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/IjiazuListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;
    .locals 2

    const-class v1, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mBinder:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;

    invoke-direct {v0}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;-><init>()V

    sput-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mBinder:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;

    :cond_0
    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mBinder:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;
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
.method public clearListener(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mListeners:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->TAG:Ljava/lang/String;

    const-string v2, "[yyn]clearListener"

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

.method public getPermission(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mIjiazuAPI:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIInterface;

    invoke-interface {v0, p1}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIInterface;->getPermission(Ljava/lang/String;)V

    return-void
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->TAG:Ljava/lang/String;

    const-string v1, "[yyn]init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mIjiazuAPI:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIInterface;

    invoke-interface {v0, p1, p2}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIInterface;->init(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mIjiazuListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/IjiazuListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/jinglingtec/ijiazublctor/sdk/listener/IjiazuListener;->onInit(ZLjava/lang/String;)V

    return-void
.end method

.method public itemActive(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[yyn]itemActive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerIjiazuListener(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;)V
    .locals 3

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mListeners:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->TAG:Ljava/lang/String;

    const-string v2, "[yyn]registerIjiazuListener"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendMenuItem(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v4, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->TAG:Ljava/lang/String;

    const-string v5, "[yyn]sendMenuItem"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mListeners:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v4, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->currentAppID:Ljava/lang/String;

    const-string v6, "123456789"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v6, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->currentAppID:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v6, -0x1

    if-le v4, v6, :cond_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;

    invoke-interface {v4, p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;->onNewMenu(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catch_1
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :cond_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public setForeground(Ljava/lang/String;)V
    .locals 2

    sput-object p1, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->currentAppID:Ljava/lang/String;

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mIjiazuAPI:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIInterface;

    invoke-interface {v0, p1}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIInterface;->setForeground(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mIjiazuListener:Lcom/jinglingtec/ijiazublctor/sdk/listener/IjiazuListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/jinglingtec/ijiazublctor/sdk/listener/IjiazuListener;->onStatusChange(ZLjava/lang/String;)V

    const-string v0, "123456789"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;->getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;->clearRestart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRestart(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->TAG:Ljava/lang/String;

    const-string v1, "[yyn]setRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "123456789"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;->getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIImplementation;->setRestart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unRegisterIjiazuListener(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;)V
    .locals 3

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mListeners:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->TAG:Ljava/lang/String;

    const-string v2, "[yyn]unRegisterRadioPlaybackListener"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
