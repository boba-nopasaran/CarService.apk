.class Lcom/car/systemfunc/SystemEventHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "SystemEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/SystemEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/SystemEventHandler;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/SystemEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 46

    const-string v4, "CarSvc_SystemEventHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "MyBroadcastReceiver: action="

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.video.capturenow"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "type"

    const/4 v5, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    const-string v4, "nosound"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/car/systemfunc/SystemEventHandler$2$1;

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v32

    invoke-direct {v5, v0, v1, v2}, Lcom/car/systemfunc/SystemEventHandler$2$1;-><init>(Lcom/car/systemfunc/SystemEventHandler$2;IZ)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "landsem.intent.action.RADAR_POWER_ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "landsem.intent.action.RADAR_POWER_OFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "landsem.intent.action.RADAR_POWER_ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    const-string v4, "CarSvc_SystemEventHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Radar need set power? "

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v23, Ljava/io/FileOutputStream;

    const-string v4, "/sys/devices/virtual/misc/radar/ctl"

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v15, v4, [B

    const/4 v5, 0x0

    if-eqz v37, :cond_3

    const/16 v4, 0x31

    :goto_1
    int-to-byte v4, v4

    aput-byte v4, v15, v5

    const/4 v4, 0x1

    const/16 v5, 0xa

    aput-byte v5, v15, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_3
    const/16 v4, 0x30

    goto :goto_1

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.carservice.power.dialog"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "ro.oem.customer"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "S_BeiDou"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v44, "com.car.sos"

    move-object/from16 v0, v44

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$200(Lcom/car/systemfunc/SystemEventHandler;)Lcom/car/systemfunc/PowerDialog;

    move-result-object v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    new-instance v5, Lcom/car/systemfunc/PowerDialog;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/car/systemfunc/PowerDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/car/systemfunc/SystemEventHandler;->access$202(Lcom/car/systemfunc/SystemEventHandler;Lcom/car/systemfunc/PowerDialog;)Lcom/car/systemfunc/PowerDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$200(Lcom/car/systemfunc/SystemEventHandler;)Lcom/car/systemfunc/PowerDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/systemfunc/PowerDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$200(Lcom/car/systemfunc/SystemEventHandler;)Lcom/car/systemfunc/PowerDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/systemfunc/PowerDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$200(Lcom/car/systemfunc/SystemEventHandler;)Lcom/car/systemfunc/PowerDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/systemfunc/PowerDialog;->show()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.hud.show"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$200(Lcom/car/systemfunc/SystemEventHandler;)Lcom/car/systemfunc/PowerDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$200(Lcom/car/systemfunc/SystemEventHandler;)Lcom/car/systemfunc/PowerDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/systemfunc/PowerDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$200(Lcom/car/systemfunc/SystemEventHandler;)Lcom/car/systemfunc/PowerDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/systemfunc/PowerDialog;->dismiss()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.syswakeup"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_b

    const-string v4, "gsensor"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "persist.car.monitor.notify"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "ro.car.wakeupimg"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    iget-wide v4, v4, Lcom/car/systemfunc/SystemEventHandler;->mLastWakeupTimeByGsensor:J

    sub-long v4, v20, v4

    const-wide/16 v44, 0x7530

    cmp-long v4, v4, v44

    if-gtz v4, :cond_a

    const-string v4, "CarSvc_SystemEventHandler"

    const-string v5, "Just wakeup from suspend, no video lock needed for limit trigger"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$100(Lcom/car/systemfunc/SystemEventHandler;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    move-wide/from16 v0, v44

    iput-wide v0, v4, Lcom/car/systemfunc/SystemEventHandler;->mLastWakeupTimeByGsensor:J

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/car/systemfunc/SystemEventHandler;->mSleeping:Z

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.gotosleep"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/car/systemfunc/SystemEventHandler;->mSleeping:Z

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.getapn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-virtual {v4}, Lcom/car/systemfunc/SystemEventHandler;->getPreferredApn()V

    goto/16 :goto_0

    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.setapn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "id"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    if-lez v25, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Lcom/car/systemfunc/SystemEventHandler;->setDefaultAPN(J)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.useapn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v4, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "mcc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v4, "mnc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v4, "CarSvc_SystemEventHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v44, ", "

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v44, ", "

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v44, ", "

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v4, v0, v14, v1, v2}, Lcom/car/systemfunc/SystemEventHandler;->isApnExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v4, -0x1

    cmp-long v4, v16, v4

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v4, v0, v14, v1, v2}, Lcom/car/systemfunc/SystemEventHandler;->addApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v16

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v4, v0, v14, v1, v2}, Lcom/car/systemfunc/SystemEventHandler;->isApnUsing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/car/systemfunc/SystemEventHandler;->setDefaultAPN(J)V

    goto/16 :goto_0

    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SILENCE_UNINSTALL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "packageName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    new-instance v12, Lcom/car/systemfunc/SystemEventHandler$PackageDeleteObserverAdapter;

    move-object/from16 v0, v34

    invoke-direct {v12, v0}, Lcom/car/systemfunc/SystemEventHandler$PackageDeleteObserverAdapter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v12, v4}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SILENCE_INSTALL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    iget-object v4, v4, Lcom/car/systemfunc/SystemEventHandler;->myWakeLock:Lcom/car/common/util/MyWakeLock;

    const-wide/32 v44, 0x493e0

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Lcom/car/common/util/MyWakeLock;->setTimeOut(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    iget-object v4, v4, Lcom/car/systemfunc/SystemEventHandler;->myWakeLock:Lcom/car/common/util/MyWakeLock;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    const-string v4, "appPath"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "packageName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v4, "className"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v42

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    new-instance v4, Lcom/car/systemfunc/SystemEventHandler$2$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/car/systemfunc/SystemEventHandler$2$2;-><init>(Lcom/car/systemfunc/SystemEventHandler$2;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v5, 0x2

    const-string v44, "carservice"

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.tts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "content"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v4, "type"

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v41

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    move-object/from16 v0, v19

    move/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.f10.pressed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "ro.hw.version"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v4, "R3"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "r3"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    const-string v4, "down"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    const-string v4, "repeatCount"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v39

    if-eqz v26, :cond_0

    const/16 v4, 0x28

    move/from16 v0, v39

    if-ne v0, v4, :cond_0

    const-string v4, "sys.powerctl"

    const-string v5, "shutdown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    const-string v13, "com.didi.recorder.alarm.action.CLICK"

    new-instance v22, Landroid/content/Intent;

    move-object/from16 v0, v22

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "down"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    const-string v4, "repeatCount"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v39

    if-nez v39, :cond_18

    if-eqz v26, :cond_18

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_17
    :goto_2
    invoke-static {}, Lcom/car/systemfunc/SystemEventHandler;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sos"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v26, :cond_0

    if-nez v39, :cond_0

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/car/utils/SoundPlayer;->playSound(I)Z

    goto/16 :goto_0

    :cond_18
    if-nez v26, :cond_17

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.monitor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "operation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v4, "id"

    const-wide/16 v44, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v44

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-nez v4, :cond_1a

    const-string v4, "id"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-long v6, v4

    :cond_1a
    const-string v4, "cam"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v4, "length"

    const/16 v5, 0xa

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v4, "length_forward"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v4, "nosound"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    const-string v4, "path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_0

    if-eqz v33, :cond_0

    const-string v4, "image"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    if-eqz v11, :cond_1b

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1c

    :cond_1b
    const-string v11, "/sdcard/Pictures/"

    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    const/4 v5, 0x4

    const/4 v9, 0x0

    if-eqz v32, :cond_1d

    const/4 v10, 0x1

    :goto_3
    invoke-virtual/range {v4 .. v11}, Lcom/car/systemfunc/SystemEventHandler;->monitorNow(IJIIILjava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    const/4 v10, 0x0

    goto :goto_3

    :cond_1e
    const-string v4, "video"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v11, "/sdcard/Movies/"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    const/4 v5, 0x5

    invoke-virtual/range {v4 .. v11}, Lcom/car/systemfunc/SystemEventHandler;->monitorNow(IJIIILjava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.factory"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-static {}, Lcom/car/common/CarUtil;->isSp9832Platform()Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$400(Lcom/car/systemfunc/SystemEventHandler;)V

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$500(Lcom/car/systemfunc/SystemEventHandler;)V

    goto/16 :goto_0

    :cond_21
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.snapshot"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    const/16 v5, 0x78

    const/16 v44, 0x0

    const/16 v45, 0x0

    move/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v4, v5, v0, v1}, Lcom/car/systemfunc/SystemEventHandler;->sendEvent(III)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    const/16 v5, 0x78

    const/16 v44, 0x1

    const/16 v45, 0x0

    move/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v4, v5, v0, v1}, Lcom/car/systemfunc/SystemEventHandler;->sendEvent(III)V

    goto/16 :goto_0

    :cond_22
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v4, "key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v4, "value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    const-string v4, "tat"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v40

    if-eqz v40, :cond_0

    if-eqz v28, :cond_0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    :try_start_1
    sget v4, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TABLE_GLOBAL:I

    and-int v4, v4, v40

    if-eqz v4, :cond_26

    sget v4, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TYPE_STRING:I

    and-int v4, v4, v40

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :catch_1
    move-exception v4

    goto/16 :goto_0

    :cond_23
    sget v4, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TYPE_INT:I

    and-int v4, v4, v40

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v28

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_24
    sget v4, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TYPE_LONG:I

    and-int v4, v4, v40

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static/range {v43 .. v43}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    move-object/from16 v0, v28

    move-wide/from16 v1, v44

    invoke-static {v4, v0, v1, v2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_0

    :cond_25
    sget v4, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TYPE_FLOAT:I

    and-int v4, v4, v40

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static/range {v43 .. v43}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object/from16 v0, v28

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_0

    :cond_26
    sget v4, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TABLE_SECURE:I

    and-int v4, v4, v40

    if-eqz v4, :cond_2a

    sget v4, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TYPE_STRING:I

    and-int v4, v4, v40

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_27
    sget v4, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TYPE_INT:I

    and-int v4, v4, v40

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v28

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_28
    sget v4, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TYPE_LONG:I

    and-int v4, v4, v40

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static/range {v43 .. v43}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    move-object/from16 v0, v28

    move-wide/from16 v1, v44

    invoke-static {v4, v0, v1, v2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_0

    :cond_29
    sget v4, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TYPE_FLOAT:I

    and-int v4, v4, v40

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static/range {v43 .. v43}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object/from16 v0, v28

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_0

    :cond_2a
    sget v4, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TABLE_SYSTEM:I

    and-int v4, v4, v40

    if-eqz v4, :cond_0

    sget v4, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TYPE_STRING:I

    and-int v4, v4, v40

    if-eqz v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_2b
    sget v4, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TYPE_INT:I

    and-int v4, v4, v40

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v28

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_2c
    sget v4, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TYPE_LONG:I

    and-int v4, v4, v40

    if-eqz v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static/range {v43 .. v43}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    move-object/from16 v0, v28

    move-wide/from16 v1, v44

    invoke-static {v4, v0, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_0

    :cond_2d
    sget v4, Lcom/car/systemfunc/SystemEventHandler;->SETTINGS_TYPE_FLOAT:I

    and-int v4, v4, v40

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v4}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static/range {v43 .. v43}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object/from16 v0, v28

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :cond_2e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.getmaplist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/car/systemfunc/SystemEventHandler$2$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/car/systemfunc/SystemEventHandler$2$3;-><init>(Lcom/car/systemfunc/SystemEventHandler$2;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_2f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.set.navi.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "navi_app_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_30

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSettingManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSettingManager;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/aispeech/aios/sdk/manager/AIOSSettingManager;->setDefaultMap(Ljava/lang/String;)V

    :cond_30
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/car/systemfunc/SystemEventHandler$2$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v5, v0, v1}, Lcom/car/systemfunc/SystemEventHandler$2$4;-><init>(Lcom/car/systemfunc/SystemEventHandler$2;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method
