.class Lcom/car/systemfunc/PowerConnectionReceiver$3;
.super Landroid/os/Handler;
.source "PowerConnectionReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/PowerConnectionReceiver;
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

    iput-object p1, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$100(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    const-string v2, "sys.mcu.ver"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    const-string v2, "ro.acc.can"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mcu.set"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "addr"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "value"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$100(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/os/Handler;

    move-result-object v2

    const-wide/32 v4, 0x3a980

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$300(Lcom/car/systemfunc/PowerConnectionReceiver;)Lcom/car/systemfunc/TimerDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$300(Lcom/car/systemfunc/PowerConnectionReceiver;)Lcom/car/systemfunc/TimerDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/car/systemfunc/TimerDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    iget-boolean v2, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$300(Lcom/car/systemfunc/PowerConnectionReceiver;)Lcom/car/systemfunc/TimerDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/car/systemfunc/TimerDialog;->show()V

    goto :goto_0

    :cond_1
    sget v2, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    iget-boolean v2, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    if-eqz v2, :cond_0

    :cond_2
    const-string v2, "CarSvc_PowerConnectionReceiver"

    const-string v3, "FORCE_SLEEP_TIME == 0, goToSleep directly."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$300(Lcom/car/systemfunc/PowerConnectionReceiver;)Lcom/car/systemfunc/TimerDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/car/systemfunc/TimerDialog;->onOkClick()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$500(Lcom/car/systemfunc/PowerConnectionReceiver;)Lcom/car/systemfunc/TimerDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$500(Lcom/car/systemfunc/PowerConnectionReceiver;)Lcom/car/systemfunc/TimerDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/car/systemfunc/TimerDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$500(Lcom/car/systemfunc/PowerConnectionReceiver;)Lcom/car/systemfunc/TimerDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/car/systemfunc/TimerDialog;->show()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "CarSvc_PowerConnectionReceiver"

    const-string v3, "make backlight on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    :pswitch_4
    const-string v2, "CarSvc_PowerConnectionReceiver"

    const-string v3, "MSG_CHECK_ACC_STATE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v3}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/car/systemfunc/PowerConnectionReceiver;->queryBatteryStatus(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_5
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/car/systemfunc/PowerConnectionReceiver$3;->removeMessages(I)V

    const-string v2, "ro.oem.customer"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ECAR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.car.takepicture"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.car.fakebtn.report"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$3;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/car/common/SystemCtrl;->softApEnable(Landroid/content/Context;Z)Ljava/lang/String;

    const-string v2, "CarSvc_PowerConnectionReceiver"

    const-string v3, "handleMessage: MSG_START_WIFIAP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method
