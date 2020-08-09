.class Lcom/car/systemfunc/PowerConnectionReceiver$9;
.super Ljava/lang/Object;
.source "PowerConnectionReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/PowerConnectionReceiver;->prepare4LowBattery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/PowerConnectionReceiver;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/PowerConnectionReceiver$9;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver$9;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v0}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.modem_off"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver$9;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    invoke-virtual {v0}, Lcom/car/common/util/MyWakeLock;->forceWakeLockReleased()V

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver$9;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver$9;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v1}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->scheduleKillProcessAndSleep(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
