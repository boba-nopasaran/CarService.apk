.class Lcom/car/jiazu/Remote$6;
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

    iput-object p1, p0, Lcom/car/jiazu/Remote$6;->this$0:Lcom/car/jiazu/Remote;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x0

    const-string v1, "address"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "CarSvc_mybt"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/jiazu/Remote$6;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v1}, Lcom/car/jiazu/Remote;->access$200(Lcom/car/jiazu/Remote;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CarSvc_mybt"

    const-string v2, "\u8bbe\u5907\u5df2\u65ad\u5f00"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/jiazu/Remote$6;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v1, v3}, Lcom/car/jiazu/Remote;->access$102(Lcom/car/jiazu/Remote;I)I

    iget-object v1, p0, Lcom/car/jiazu/Remote$6;->this$0:Lcom/car/jiazu/Remote;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/car/jiazu/Remote;->access$202(Lcom/car/jiazu/Remote;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/car/jiazu/Remote$6;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v1, v3}, Lcom/car/jiazu/Remote;->access$602(Lcom/car/jiazu/Remote;I)I

    iget-object v1, p0, Lcom/car/jiazu/Remote$6;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v1}, Lcom/car/jiazu/Remote;->access$400(Lcom/car/jiazu/Remote;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/car/jiazu/Remote$6$1;

    invoke-direct {v2, p0}, Lcom/car/jiazu/Remote$6$1;-><init>(Lcom/car/jiazu/Remote$6;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v1, p0, Lcom/car/jiazu/Remote$6;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v1}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/jiazu/Remote$6;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v1}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/car/jiazu/Remote$RemoteListener;->onDisconnected()V

    :cond_1
    return-void
.end method
