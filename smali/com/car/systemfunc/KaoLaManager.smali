.class public Lcom/car/systemfunc/KaoLaManager;
.super Landroid/content/BroadcastReceiver;
.source "KaoLaManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "KaoLaManager"


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mHasPlay:Z

.field mJustInit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/systemfunc/KaoLaManager;->mHasPlay:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/systemfunc/KaoLaManager;->mJustInit:Z

    new-instance v0, Lcom/car/systemfunc/KaoLaManager$1;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/KaoLaManager$1;-><init>(Lcom/car/systemfunc/KaoLaManager;)V

    iput-object v0, p0, Lcom/car/systemfunc/KaoLaManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/car/systemfunc/KaoLaManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/kaolafm/sdk/client/KLClientAPI;->getInstance()Lcom/kaolafm/sdk/client/KLClientAPI;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, p1, v2}, Lcom/kaolafm/sdk/client/KLClientAPI;->init(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.car.kaola"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.wakeup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.gotosleep"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/systemfunc/KaoLaManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/NetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/car/systemfunc/KaoLaManager;->isAccOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sys.car.sleep"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/car/systemfunc/KaoLaManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public isAccOn(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "status"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.car.kaola"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "play"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "key"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/KaoLaManager;->play(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/car/systemfunc/KaoLaManager;->stop()V

    goto :goto_0

    :cond_2
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/car/systemfunc/KaoLaManager;->mJustInit:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/car/systemfunc/KaoLaManager;->mHasPlay:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/KaoLaManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/common/NetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/car/systemfunc/KaoLaManager;->mJustInit:Z

    invoke-virtual {p0}, Lcom/car/systemfunc/KaoLaManager;->play()V

    goto :goto_0

    :cond_3
    const-string v3, "com.car.gotosleep"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/car/systemfunc/KaoLaManager;->stop()V

    goto :goto_0

    :cond_5
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/car/systemfunc/KaoLaManager;->mHasPlay:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/KaoLaManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/common/NetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/KaoLaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/car/systemfunc/KaoLaManager;->isAccOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/car/systemfunc/KaoLaManager;->play()V

    goto :goto_0
.end method

.method play()V
    .locals 1

    const-string v0, "\u798f\u5dde\u7535\u53f0\u4ea4\u901a\u4e4b\u58f0"

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/KaoLaManager;->play(Ljava/lang/String;)V

    return-void
.end method

.method play(Ljava/lang/String;)V
    .locals 4

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/car/systemfunc/KaoLaManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/systemfunc/KaoLaManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "KaoLaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to play "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/kaolafm/sdk/client/KLClientAPI;->getInstance()Lcom/kaolafm/sdk/client/KLClientAPI;

    move-result-object v0

    new-instance v1, Lcom/car/systemfunc/KaoLaManager$2;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/KaoLaManager$2;-><init>(Lcom/car/systemfunc/KaoLaManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/kaolafm/sdk/client/KLClientAPI;->play(Ljava/lang/String;Lcom/kaolafm/sdk/client/PlayResult;)V

    return-void
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/systemfunc/KaoLaManager;->mHasPlay:Z

    invoke-static {}, Lcom/kaolafm/sdk/client/KLClientAPI;->getInstance()Lcom/kaolafm/sdk/client/KLClientAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->pause()V

    return-void
.end method
