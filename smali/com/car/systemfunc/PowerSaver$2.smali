.class Lcom/car/systemfunc/PowerSaver$2;
.super Ljava/lang/Object;
.source "PowerSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/PowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/PowerSaver;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/PowerSaver;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$200(Lcom/car/systemfunc/PowerSaver;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9, v3}, Lcom/car/systemfunc/PowerSaver;->access$300(Lcom/car/systemfunc/PowerSaver;Landroid/os/PowerManager;)J

    move-result-wide v4

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$400(Lcom/car/systemfunc/PowerSaver;)J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/car/systemfunc/PowerSaver;->access$002(Lcom/car/systemfunc/PowerSaver;I)I

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/car/systemfunc/PowerSaver;->access$102(Lcom/car/systemfunc/PowerSaver;I)I

    :cond_0
    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9, v4, v5}, Lcom/car/systemfunc/PowerSaver;->access$402(Lcom/car/systemfunc/PowerSaver;J)J

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$200(Lcom/car/systemfunc/PowerSaver;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/car/common/ProviderUtils;->getAutoSleepTime(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 v9, v1, 0x1e

    :goto_0
    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$502(I)I

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$600(Lcom/car/systemfunc/PowerSaver;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$108(Lcom/car/systemfunc/PowerSaver;)I

    const-string v9, "CarSvc_PowerSaver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACC Offed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v11}, Lcom/car/systemfunc/PowerSaver;->access$100(Lcom/car/systemfunc/PowerSaver;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " minutes, after "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/car/systemfunc/PowerSaver;->access$500()I

    move-result v11

    iget-object v12, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v12}, Lcom/car/systemfunc/PowerSaver;->access$100(Lcom/car/systemfunc/PowerSaver;)I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " minutes to force reboot."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Lcom/car/systemfunc/PowerConnectionReceiver;->getInstance()Lcom/car/systemfunc/PowerConnectionReceiver;

    move-result-object v9

    iget-object v9, v9, Lcom/car/systemfunc/PowerConnectionReceiver;->mDVRWakelock:Lcom/car/common/util/MyWakeLock;

    invoke-virtual {v9}, Lcom/car/common/util/MyWakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "CarSvc_PowerSaver"

    const-string v10, "DVR slowing mode, no check now"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/car/systemfunc/PowerSaver;->access$102(Lcom/car/systemfunc/PowerSaver;I)I

    :cond_1
    invoke-static {}, Lcom/car/systemfunc/PowerSaver;->access$500()I

    move-result v9

    if-lez v9, :cond_4

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$100(Lcom/car/systemfunc/PowerSaver;)I

    move-result v9

    invoke-static {}, Lcom/car/systemfunc/PowerSaver;->access$500()I

    move-result v10

    if-lt v9, v10, :cond_4

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$200(Lcom/car/systemfunc/PowerSaver;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090018

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/car/systemfunc/PowerSaver;->access$500()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget v11, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/car/systemfunc/PowerSaver;->access$500()I

    move-result v9

    int-to-long v10, v9

    invoke-static {v10, v11}, Lcom/car/common/NumUtil;->analyze(J)Ljava/lang/String;

    move-result-object v6

    sget v9, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    int-to-long v10, v9

    invoke-static {v10, v11}, Lcom/car/common/NumUtil;->analyze(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/car/systemfunc/PowerSaver;->access$500()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.car.launcher.FORCE_REBOOT"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "force_sleep_tips"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$200(Lcom/car/systemfunc/PowerSaver;)Landroid/content/Context;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v2, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/car/systemfunc/PowerSaver;->access$102(Lcom/car/systemfunc/PowerSaver;I)I

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$700(Lcom/car/systemfunc/PowerSaver;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$700(Lcom/car/systemfunc/PowerSaver;)Landroid/os/Handler;

    move-result-object v9

    const-wide/32 v10, 0xea60

    invoke-virtual {v9, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void

    :cond_2
    const-string v9, "car.acc.offed.reboot.time"

    const/16 v10, 0x7d

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    goto/16 :goto_0

    :cond_3
    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/car/systemfunc/PowerSaver;->access$102(Lcom/car/systemfunc/PowerSaver;I)I

    goto/16 :goto_1

    :cond_4
    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$800(Lcom/car/systemfunc/PowerSaver;)Lcom/car/systemfunc/CarMovingDetector;

    move-result-object v9

    invoke-virtual {v9}, Lcom/car/systemfunc/CarMovingDetector;->isCarMoving()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/car/systemfunc/PowerSaver;->access$002(Lcom/car/systemfunc/PowerSaver;I)I

    :cond_5
    :goto_3
    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$700(Lcom/car/systemfunc/PowerSaver;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$700(Lcom/car/systemfunc/PowerSaver;)Landroid/os/Handler;

    move-result-object v9

    const-wide/32 v10, 0xea60

    invoke-virtual {v9, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_6
    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$008(Lcom/car/systemfunc/PowerSaver;)I

    if-lez v1, :cond_8

    const-string v9, "CarSvc_PowerSaver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Car keeps still "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v11}, Lcom/car/systemfunc/PowerSaver;->access$000(Lcom/car/systemfunc/PowerSaver;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " minutes, after "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v11}, Lcom/car/systemfunc/PowerSaver;->access$000(Lcom/car/systemfunc/PowerSaver;)I

    move-result v11

    sub-int v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " minutes to force sleep."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-static {}, Lcom/car/systemfunc/PowerConnectionReceiver;->getInstance()Lcom/car/systemfunc/PowerConnectionReceiver;

    move-result-object v9

    iget-object v9, v9, Lcom/car/systemfunc/PowerConnectionReceiver;->mDVRWakelock:Lcom/car/common/util/MyWakeLock;

    invoke-virtual {v9}, Lcom/car/common/util/MyWakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "CarSvc_PowerSaver"

    const-string v10, "DVR slowing mode, no check now for stop mode"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/car/systemfunc/PowerSaver;->access$002(Lcom/car/systemfunc/PowerSaver;I)I

    :cond_7
    if-lez v1, :cond_5

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$000(Lcom/car/systemfunc/PowerSaver;)I

    move-result v9

    if-lt v9, v1, :cond_5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$200(Lcom/car/systemfunc/PowerSaver;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090017

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget v11, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Lcom/car/common/NumUtil;->analyze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v9, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    int-to-long v10, v9

    invoke-static {v10, v11}, Lcom/car/common/NumUtil;->analyze(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.car.launcher.FORCE_SLEEP"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "force_sleep_tips"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v9}, Lcom/car/systemfunc/PowerSaver;->access$200(Lcom/car/systemfunc/PowerSaver;)Landroid/content/Context;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v2, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v9, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/car/systemfunc/PowerSaver;->access$002(Lcom/car/systemfunc/PowerSaver;I)I

    goto/16 :goto_3

    :cond_8
    const-string v9, "CarSvc_PowerSaver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Car keeps still "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/car/systemfunc/PowerSaver$2;->this$0:Lcom/car/systemfunc/PowerSaver;

    invoke-static {v11}, Lcom/car/systemfunc/PowerSaver;->access$000(Lcom/car/systemfunc/PowerSaver;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " minutes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method
