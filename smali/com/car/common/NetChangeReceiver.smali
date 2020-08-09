.class public Lcom/car/common/NetChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetChangeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSvc_NetChange"

.field private static sInst:Lcom/car/common/NetChangeReceiver;


# instance fields
.field private mApplication:Landroid/app/Application;

.field private final mRunList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/common/NetChangeReceiver;->mRunList:Ljava/util/ArrayList;

    return-void
.end method

.method public static instance()Lcom/car/common/NetChangeReceiver;
    .locals 1

    sget-object v0, Lcom/car/common/NetChangeReceiver;->sInst:Lcom/car/common/NetChangeReceiver;

    return-object v0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 6

    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "CarSvc_NetChange"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " return network connected."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string v3, "CarSvc_NetCheck"

    const-string v4, "isConnected error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 2

    iput-object p1, p0, Lcom/car/common/NetChangeReceiver;->mApplication:Landroid/app/Application;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/common/NetChangeReceiver;->mApplication:Landroid/app/Application;

    invoke-virtual {v1, p0, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sput-object p0, Lcom/car/common/NetChangeReceiver;->sInst:Lcom/car/common/NetChangeReceiver;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v2, p0, Lcom/car/common/NetChangeReceiver;->mRunList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/car/common/NetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/car/common/NetChangeReceiver;->mRunList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/car/common/NetChangeReceiver;->mRunList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/car/common/NetChangeReceiver;->mRunList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public registerNetConnected(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/car/common/NetChangeReceiver;->mRunList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterNetConnected(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/car/common/NetChangeReceiver;->mRunList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
