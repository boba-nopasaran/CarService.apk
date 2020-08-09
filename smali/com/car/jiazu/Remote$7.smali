.class Lcom/car/jiazu/Remote$7;
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

    iput-object p1, p0, Lcom/car/jiazu/Remote$7;->this$0:Lcom/car/jiazu/Remote;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v0, "address"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/car/jiazu/Remote$7;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v0}, Lcom/car/jiazu/Remote;->access$200(Lcom/car/jiazu/Remote;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CarSvc_mybt"

    const-string v2, "\u670d\u52a1\u83b7\u53d6\u5b8c\u6210"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/jiazu/Remote$7;->this$0:Lcom/car/jiazu/Remote;

    iget v0, v0, Lcom/car/jiazu/Remote;->mKeyboardType:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/car/jiazu/Remote$7;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v0}, Lcom/car/jiazu/Remote;->access$300(Lcom/car/jiazu/Remote;)Lcom/jiagu/BleManager;

    move-result-object v0

    const-string v2, "0000fd10-0000-1000-8000-00805f9b34fb"

    const-string v3, "0000fd11-0000-1000-8000-00805f9b34fb"

    invoke-virtual/range {v0 .. v5}, Lcom/jiagu/BleManager;->EnableNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    iget-object v0, p0, Lcom/car/jiazu/Remote$7;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v0}, Lcom/car/jiazu/Remote;->access$300(Lcom/car/jiazu/Remote;)Lcom/jiagu/BleManager;

    move-result-object v0

    const-string v2, "00001800-0000-1000-8000-00805f9b34fb"

    const-string v3, "00002a04-0000-1000-8000-00805f9b34fb"

    invoke-virtual/range {v0 .. v5}, Lcom/jiagu/BleManager;->EnableNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/car/jiazu/Remote$7;->this$0:Lcom/car/jiazu/Remote;

    invoke-virtual {v0}, Lcom/car/jiazu/Remote;->StopScan()V

    iget-object v0, p0, Lcom/car/jiazu/Remote$7;->this$0:Lcom/car/jiazu/Remote;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/car/jiazu/Remote;->access$102(Lcom/car/jiazu/Remote;I)I

    iget-object v0, p0, Lcom/car/jiazu/Remote$7;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v0}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/jiazu/Remote$7;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v0}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/car/jiazu/Remote$RemoteListener;->onReady()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/car/jiazu/Remote$7;->this$0:Lcom/car/jiazu/Remote;

    iget v0, v0, Lcom/car/jiazu/Remote;->mKeyboardType:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/car/jiazu/Remote$7;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v0}, Lcom/car/jiazu/Remote;->access$300(Lcom/car/jiazu/Remote;)Lcom/jiagu/BleManager;

    move-result-object v0

    const-string v2, "0000ff10-0000-1000-8000-00805f9b34fb"

    const-string v3, "0000ff11-0000-1000-8000-00805f9b34fb"

    invoke-virtual/range {v0 .. v5}, Lcom/jiagu/BleManager;->EnableNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    goto :goto_0
.end method
