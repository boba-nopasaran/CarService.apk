.class Lcom/car/systemfunc/PowerConnectionReceiver$10;
.super Ljava/lang/Object;
.source "PowerConnectionReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/PowerConnectionReceiver;->doKillProcessAndSleep(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    iput-object p2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 34

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->val$context:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string v31, "power"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/PowerManager;

    invoke-static/range {v23 .. v23}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$600(Landroid/os/PowerManager;)Ljava/util/List;

    move-result-object v22

    const/16 v28, 0x0

    const-string v30, "sys.wakelock.whitelist"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_0

    const-string v30, ","

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$700(Lcom/car/systemfunc/PowerConnectionReceiver;)Z

    move-result v30

    if-eqz v30, :cond_6

    const/16 v29, 0x0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    if-eqz v28, :cond_2

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v30, v0

    if-lez v30, :cond_2

    move-object/from16 v8, v28

    array-length v0, v8

    move/from16 v20, v0

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v14, v0, :cond_2

    aget-object v24, v8, v14

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    const-string v30, "CarSvc_PowerConnectionReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Waiting\'s reason is "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v30, 0x3e8

    invoke-static/range {v30 .. v31}, Ljava/lang/Thread;->sleep(J)V

    const/16 v29, 0x1

    :cond_2
    if-nez v29, :cond_1

    const-string v30, "com.car.carservice"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    const-string v30, "com.car.cloud"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    const-string v30, "com.jwd.jwdabout"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    const-string v30, "com.didi.drivingrecorder"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    const-string v30, "com.car.btphone"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    const-string v30, "com.car.jt808service"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1

    :cond_3
    const-string v30, "CarSvc_PowerConnectionReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Waiting\'s reason is "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v30, 0x3e8

    invoke-static/range {v30 .. v31}, Ljava/lang/Thread;->sleep(J)V

    const/16 v29, 0x1

    :cond_4
    if-eqz v29, :cond_6

    invoke-static/range {v23 .. v23}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$600(Landroid/os/PowerManager;)Ljava/util/List;

    move-result-object v22

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$700(Lcom/car/systemfunc/PowerConnectionReceiver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v30

    if-eqz v30, :cond_8

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/car/systemfunc/PowerConnectionReceiver;->checkMusicState()V

    new-instance v15, Landroid/content/Intent;

    const-string v30, "com.car.gotosleep"

    move-object/from16 v0, v30

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->val$context:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v10, Landroid/content/Intent;

    const-string v30, "com.custom.system.ACTION_SHUTDOWN"

    move-object/from16 v0, v30

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->val$context:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v30

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_d

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->setACCOff()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    :goto_2
    const-wide/16 v30, 0x3e8

    :try_start_2
    invoke-static/range {v30 .. v31}, Ljava/lang/Thread;->sleep(J)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$700(Lcom/car/systemfunc/PowerConnectionReceiver;)Z

    move-result v30

    if-eqz v30, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    const/16 v32, 0x0

    const/16 v33, 0x300

    move-object/from16 v0, v23

    move-wide/from16 v1, v30

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    const-string v31, "/sys/power/rx433_power"

    const-string v32, "dis"

    invoke-virtual/range {v30 .. v32}, Lcom/car/systemfunc/PowerConnectionReceiver;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v30, 0x64

    invoke-static/range {v30 .. v31}, Ljava/lang/Thread;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$700(Lcom/car/systemfunc/PowerConnectionReceiver;)Z

    move-result v30

    if-eqz v30, :cond_b

    const-string v30, "ro.func.flag"

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    and-int/lit8 v30, v11, 0x8

    if-eqz v30, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    move/from16 v30, v0

    if-nez v30, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$100(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/os/Handler;

    move-result-object v30

    const/16 v31, 0x7

    invoke-virtual/range {v30 .. v31}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v12, Landroid/content/Intent;

    const-string v30, "com.mcu.set"

    move-object/from16 v0, v30

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v30, "addr"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v30, "value"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/car/common/ProviderUtils;->getMcuVoltage(Landroid/content/Context;)I

    move-result v31

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_a
    const-string v30, "ro.suspend.nomodem"

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    if-eqz v30, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v30

    new-instance v31, Landroid/content/Intent;

    const-string v32, "com.car.modem_off"

    invoke-direct/range {v31 .. v32}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v30, 0x3e8

    invoke-static/range {v30 .. v31}, Ljava/lang/Thread;->sleep(J)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/car/common/ProviderUtils;->getGsensorEnbale(Landroid/content/Context;)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    move/from16 v30, v0

    if-nez v30, :cond_10

    const-string v30, "CarSvc_PowerConnectionReceiver"

    const-string v31, "Enable gsensor interrupt now"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/car/common/ProviderUtils;->setGsensorEnbaleForKernel(ZLandroid/content/Context;)V

    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$800(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/content/Context;)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastUserInputTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$700(Lcom/car/systemfunc/PowerConnectionReceiver;)Z

    move-result v30

    if-nez v30, :cond_11

    const-string v30, "CarSvc_PowerConnectionReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "pm.goToSleep break, mLastUserInputTime="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastUserInputTime:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_c
    :goto_5
    return-void

    :cond_d
    :try_start_3
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v30

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v30

    const/16 v31, 0x6

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    invoke-static {}, Lcom/car/speech/MiniSpeech;->getIntance()Lcom/car/speech/MiniSpeech;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/car/speech/MiniSpeech;->enableWakeup(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v9

    :try_start_4
    const-string v30, "CarSvc_PowerConnectionReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "send ACTION_RECORDING_SLEEP:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v9

    const-string v30, "CarSvc_PowerConnectionReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "pm.goToSleep:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_e
    :try_start_5
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;

    move-result-object v30

    const/16 v31, 0x3

    invoke-virtual/range {v30 .. v31}, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->notifyPowerEvent(I)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->enableWakeup(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :cond_f
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v31

    const/16 v32, 0x1

    invoke-virtual/range {v30 .. v32}, Lcom/car/systemfunc/PowerConnectionReceiver;->netRule(Landroid/content/Context;Z)V

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/car/common/ProviderUtils;->getGsensorEnbale(Landroid/content/Context;)I

    move-result v30

    if-nez v30, :cond_b

    const-string v30, "CarSvc_PowerConnectionReceiver"

    const-string v31, "Disable gsensor interrupt now"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/car/common/ProviderUtils;->setGsensorEnbaleForKernel(ZLandroid/content/Context;)V

    goto/16 :goto_4

    :cond_11
    const-string v30, "CarSvc_PowerConnectionReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "pm.goToSleep finished, mLastUserInputTime="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastUserInputTime:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v30, "persist.car.alarm2reboot"

    const-string v31, "0"

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/car/systemfunc/PowerConnectionReceiver;->setRebootTime()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/car/common/ProviderUtils;->getDvrSlowTime(Landroid/content/Context;)I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide/16 v30, 0x0

    cmp-long v30, v26, v30

    if-lez v30, :cond_13

    const-string v30, "CarSvc_PowerConnectionReceiver"

    const-string v31, "Start dvr with slow time"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v30, 0x36ee80

    mul-long v16, v26, v30

    const-string v30, "debug.dvr.slow"

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v30

    if-lez v30, :cond_12

    const-string v30, "debug.dvr.slow"

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    const-wide/32 v32, 0xea60

    mul-long v16, v30, v32

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

    move-wide/from16 v32, v0

    sub-long v6, v30, v32

    sub-long v18, v16, v6

    const-string v30, "CarSvc_PowerConnectionReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "DVR slow mode still has "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-wide/16 v32, 0x3e8

    div-long v32, v18, v32

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " seconds"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v30, 0x0

    cmp-long v30, v18, v30

    if-lez v30, :cond_c

    const-string v30, "sys.dvr.slow"

    const-string v31, "1"

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mDVRWakelock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/car/common/util/MyWakeLock;->setTimeOut(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mDVRWakelock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v30

    new-instance v31, Landroid/content/Intent;

    const-string v32, "com.car.restart_dvr"

    invoke-direct/range {v31 .. v32}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    :cond_13
    const-string v30, "sys.dvr.slow"

    const-string v31, "0"

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver$10;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mDVRWakelock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/car/common/util/MyWakeLock;->forceWakeLockReleased()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5
.end method
