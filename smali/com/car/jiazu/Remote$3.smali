.class Lcom/car/jiazu/Remote$3;
.super Landroid/content/BroadcastReceiver;
.source "Remote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/jiazu/Remote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/jiazu/Remote;


# direct methods
.method constructor <init>(Lcom/car/jiazu/Remote;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const-wide/16 v10, 0x1388

    const/4 v8, 0x1

    const-string v5, "rssi"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "address"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "CarSvc_mybt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onScan  rssi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " address= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v5}, Lcom/car/jiazu/Remote;->access$500(Lcom/car/jiazu/Remote;)I

    move-result v5

    if-le v3, v5, :cond_0

    const-string v5, "scanRecord"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [B

    move-object v4, v5

    check-cast v4, [B

    invoke-static {v4}, Lcom/car/jiazu/Remote;->parseData([B)Lcom/car/jiazu/Remote$ParsedAd;

    move-result-object v2

    const-string v5, "CarSvc_mybt"

    invoke-virtual {v2}, Lcom/car/jiazu/Remote$ParsedAd;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v2, Lcom/car/jiazu/Remote$ParsedAd;->localName:Ljava/lang/String;

    const-string v6, "BLINK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    iput v8, v5, Lcom/car/jiazu/Remote;->mKeyboardType:I

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v5, v0}, Lcom/car/jiazu/Remote;->access$202(Lcom/car/jiazu/Remote;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v5, v8}, Lcom/car/jiazu/Remote;->access$102(Lcom/car/jiazu/Remote;I)I

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    iget-object v5, v5, Lcom/car/jiazu/Remote;->mConnectHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    iget-object v6, v6, Lcom/car/jiazu/Remote;->mConnectFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    iget-object v5, v5, Lcom/car/jiazu/Remote;->mConnectHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    iget-object v6, v6, Lcom/car/jiazu/Remote;->mConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    iget-object v5, v5, Lcom/car/jiazu/Remote;->mConnectHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    iget-object v6, v6, Lcom/car/jiazu/Remote;->mConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    iget-object v5, v5, Lcom/car/jiazu/Remote;->mConnectHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    iget-object v6, v6, Lcom/car/jiazu/Remote;->mConnectFailRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7530

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    invoke-virtual {v5}, Lcom/car/jiazu/Remote;->StopScan()V

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v5}, Lcom/car/jiazu/Remote;->access$300(Lcom/car/jiazu/Remote;)Lcom/jiagu/BleManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jiagu/BleManager;->connect(Ljava/lang/String;)Z

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v5}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v5}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/car/jiazu/Remote$RemoteListener;->onStartConnect()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0, v4}, Lcom/car/jiazu/KeysClass;->ScanRecordToKeys(Ljava/lang/String;[B)Lcom/car/jiazu/KeysClass$Keys;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    const/4 v6, 0x0

    iput v6, v5, Lcom/car/jiazu/Remote;->mKeyboardType:I

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    iget v6, v1, Lcom/car/jiazu/KeysClass$Keys;->version:I

    invoke-static {v5, v6}, Lcom/car/jiazu/Remote;->access$602(Lcom/car/jiazu/Remote;I)I

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v5}, Lcom/car/jiazu/Remote;->access$100(Lcom/car/jiazu/Remote;)I

    move-result v5

    if-ge v5, v8, :cond_2

    iget v5, v1, Lcom/car/jiazu/KeysClass$Keys;->version:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_2

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v5, v0}, Lcom/car/jiazu/Remote;->access$202(Lcom/car/jiazu/Remote;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v5, v8}, Lcom/car/jiazu/Remote;->access$102(Lcom/car/jiazu/Remote;I)I

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    iget-object v5, v5, Lcom/car/jiazu/Remote;->mConnectHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    iget-object v6, v6, Lcom/car/jiazu/Remote;->mConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    iget-object v5, v5, Lcom/car/jiazu/Remote;->mConnectHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    iget-object v6, v6, Lcom/car/jiazu/Remote;->mConnectFailRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x2710

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    invoke-virtual {v5}, Lcom/car/jiazu/Remote;->StopScan()V

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v5}, Lcom/car/jiazu/Remote;->access$300(Lcom/car/jiazu/Remote;)Lcom/jiagu/BleManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jiagu/BleManager;->connect(Ljava/lang/String;)Z

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v5}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v5}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/car/jiazu/Remote$RemoteListener;->onStartConnect()V

    :cond_2
    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v5}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/car/jiazu/Remote$3;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v5}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/car/jiazu/Remote$RemoteListener;->onKeyReceiver(Lcom/car/jiazu/KeysClass$Keys;)V

    goto :goto_0
.end method
