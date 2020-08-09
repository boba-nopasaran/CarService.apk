.class Lcom/car/jiazu/Remote$5;
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

    iput-object p1, p0, Lcom/car/jiazu/Remote$5;->this$0:Lcom/car/jiazu/Remote;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v1, "address"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/car/jiazu/Remote$5;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v1}, Lcom/car/jiazu/Remote;->access$200(Lcom/car/jiazu/Remote;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/jiazu/Remote$5;->this$0:Lcom/car/jiazu/Remote;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/car/jiazu/Remote;->access$102(Lcom/car/jiazu/Remote;I)I

    iget-object v1, p0, Lcom/car/jiazu/Remote$5;->this$0:Lcom/car/jiazu/Remote;

    iget-object v1, v1, Lcom/car/jiazu/Remote;->mConnectHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/car/jiazu/Remote$5;->this$0:Lcom/car/jiazu/Remote;

    iget-object v2, v2, Lcom/car/jiazu/Remote;->mConnectFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/car/jiazu/Remote$5;->this$0:Lcom/car/jiazu/Remote;

    iget-object v1, v1, Lcom/car/jiazu/Remote;->mConnectHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/car/jiazu/Remote$5;->this$0:Lcom/car/jiazu/Remote;

    iget-object v2, v2, Lcom/car/jiazu/Remote;->mConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/car/jiazu/Remote$5$1;

    invoke-direct {v2, p0, v0}, Lcom/car/jiazu/Remote$5$1;-><init>(Lcom/car/jiazu/Remote$5;Ljava/lang/String;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/car/jiazu/Remote$5;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v1}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/jiazu/Remote$5;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v1}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/car/jiazu/Remote$RemoteListener;->onConnected()V

    :cond_0
    const-string v1, "CarSvc_mybt"

    const-string v2, "\u8fde\u63a5\u6210\u529f"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
