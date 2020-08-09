.class Lcom/car/jiazu/Remote$4;
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

    iput-object p1, p0, Lcom/car/jiazu/Remote$4;->this$0:Lcom/car/jiazu/Remote;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "CarSvc_mybt"

    const-string v1, "onScanFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/jiazu/Remote$4;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v0}, Lcom/car/jiazu/Remote;->access$700(Lcom/car/jiazu/Remote;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/jiazu/Remote$4;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v0}, Lcom/car/jiazu/Remote;->access$400(Lcom/car/jiazu/Remote;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/car/jiazu/Remote$4$1;

    invoke-direct {v1, p0}, Lcom/car/jiazu/Remote$4$1;-><init>(Lcom/car/jiazu/Remote$4;)V

    iget-object v2, p0, Lcom/car/jiazu/Remote$4;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v2}, Lcom/car/jiazu/Remote;->access$900(Lcom/car/jiazu/Remote;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
