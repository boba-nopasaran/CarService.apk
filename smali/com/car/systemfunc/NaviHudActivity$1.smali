.class Lcom/car/systemfunc/NaviHudActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "NaviHudActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/NaviHudActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/NaviHudActivity;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/NaviHudActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/NaviHudActivity$1;->this$0:Lcom/car/systemfunc/NaviHudActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "CarSvc_NaviHudActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFinishedNow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/NaviHudActivity$1;->this$0:Lcom/car/systemfunc/NaviHudActivity;

    iget-boolean v2, v2, Lcom/car/systemfunc/NaviHudActivity;->mFinishedNow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.car.hud.dismiss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/NaviHudActivity$1;->this$0:Lcom/car/systemfunc/NaviHudActivity;

    iget-boolean v0, v0, Lcom/car/systemfunc/NaviHudActivity;->mFinishedNow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/NaviHudActivity$1;->this$0:Lcom/car/systemfunc/NaviHudActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/car/systemfunc/NaviHudActivity;->mFinishedNow:Z

    iget-object v0, p0, Lcom/car/systemfunc/NaviHudActivity$1;->this$0:Lcom/car/systemfunc/NaviHudActivity;

    invoke-virtual {v0}, Lcom/car/systemfunc/NaviHudActivity;->finish()V

    :cond_0
    return-void
.end method
