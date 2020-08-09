.class Lcom/car/systemfunc/SystemEventHandler$5$1;
.super Ljava/lang/Object;
.source "SystemEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/SystemEventHandler$5;->onCollision()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/systemfunc/SystemEventHandler$5;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/SystemEventHandler$5;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/SystemEventHandler$5$1;->this$1:Lcom/car/systemfunc/SystemEventHandler$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v3, "CarSvc_SystemEventHandler"

    const-string v4, "onCollision"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/car/systemfunc/SystemEventHandler$5$1;->this$1:Lcom/car/systemfunc/SystemEventHandler$5;

    iget-object v3, v3, Lcom/car/systemfunc/SystemEventHandler$5;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    iget-wide v4, v3, Lcom/car/systemfunc/SystemEventHandler;->mLastWakeupTimeByGsensor:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7530

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    const-string v3, "CarSvc_SystemEventHandler"

    const-string v4, "Just wakeup from suspend, no video lock needed for limit trigger"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/car/systemfunc/SystemEventHandler$5$1;->this$1:Lcom/car/systemfunc/SystemEventHandler$5;

    iget-object v3, v3, Lcom/car/systemfunc/SystemEventHandler$5;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    iget-boolean v3, v3, Lcom/car/systemfunc/SystemEventHandler;->mSleeping:Z

    if-eqz v3, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.car.syswakeup"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "reason"

    const-string v4, "recordvideo"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/systemfunc/SystemEventHandler$5$1;->this$1:Lcom/car/systemfunc/SystemEventHandler$5;

    iget-object v3, v3, Lcom/car/systemfunc/SystemEventHandler$5;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v3}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    invoke-static {}, Lcom/car/common/CarPath;->getDVRRootPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/car/systemfunc/SystemEventHandler$5$1;->this$1:Lcom/car/systemfunc/SystemEventHandler$5;

    iget-object v4, v4, Lcom/car/systemfunc/SystemEventHandler$5;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/car/common/CarUtil;->isStorageFull(Ljava/lang/String;Landroid/content/Context;Z)Z

    iget-object v3, p0, Lcom/car/systemfunc/SystemEventHandler$5$1;->this$1:Lcom/car/systemfunc/SystemEventHandler$5;

    iget-object v3, v3, Lcom/car/systemfunc/SystemEventHandler$5;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v3}, Lcom/car/systemfunc/SystemEventHandler;->access$100(Lcom/car/systemfunc/SystemEventHandler;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v3, p0, Lcom/car/systemfunc/SystemEventHandler$5$1;->this$1:Lcom/car/systemfunc/SystemEventHandler$5;

    iget-object v3, v3, Lcom/car/systemfunc/SystemEventHandler$5;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v3}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.car.collision"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
