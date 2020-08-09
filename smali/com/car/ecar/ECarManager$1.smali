.class Lcom/car/ecar/ECarManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ECarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/ecar/ECarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/ecar/ECarManager;


# direct methods
.method constructor <init>(Lcom/car/ecar/ECarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/ecar/ECarManager$1;->this$0:Lcom/car/ecar/ECarManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    iget-object v10, p0, Lcom/car/ecar/ECarManager$1;->this$0:Lcom/car/ecar/ECarManager;

    iget-object v10, v10, Lcom/car/ecar/ECarManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "action: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.android.ecar.send"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "ecarSendKey"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/car/ecar/ECarManager$1;->this$0:Lcom/car/ecar/ECarManager;

    iget-object v10, v10, Lcom/car/ecar/ECarManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cmd: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "Upgrade"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "Path"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    iget-object v10, p0, Lcom/car/ecar/ECarManager$1;->this$0:Lcom/car/ecar/ECarManager;

    invoke-virtual {v10, v6}, Lcom/car/ecar/ECarManager;->apkUpgrade(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v10, "StartMap"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/car/ecar/ECarManager$1;->this$0:Lcom/car/ecar/ECarManager;

    invoke-virtual {v10, p2}, Lcom/car/ecar/ECarManager;->startNavi(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v10, "BluetoothQueryState"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/car/ecar/ECarManager$1;->this$0:Lcom/car/ecar/ECarManager;

    invoke-virtual {v10}, Lcom/car/ecar/ECarManager;->reportBTState()V

    goto :goto_0

    :cond_4
    const-string v10, "BluetoothMakeCall"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "name"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "number"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lcom/car/ecar/ECarManager$1;->this$0:Lcom/car/ecar/ECarManager;

    invoke-virtual {v10, v4, v5}, Lcom/car/ecar/ECarManager;->makeCall(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v10, "BluetoothEndCall"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/car/ecar/ECarManager$1;->this$0:Lcom/car/ecar/ECarManager;

    invoke-virtual {v10}, Lcom/car/ecar/ECarManager;->hangupCall()V

    goto :goto_0

    :cond_6
    const-string v10, "SetAPN"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/car/ecar/ECarManager$1;->this$0:Lcom/car/ecar/ECarManager;

    invoke-virtual {v10}, Lcom/car/ecar/ECarManager;->setAPN()V

    goto/16 :goto_0

    :cond_7
    const-string v10, "TTSSpeak"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "text"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string v10, "status"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v10, 0x2

    if-eq v8, v10, :cond_9

    const/4 v10, 0x5

    if-ne v8, v10, :cond_b

    :cond_9
    const/4 v3, 0x1

    :goto_1
    iget-object v10, p0, Lcom/car/ecar/ECarManager$1;->this$0:Lcom/car/ecar/ECarManager;

    iget-boolean v10, v10, Lcom/car/ecar/ECarManager;->mIsCharging:Z

    if-eq v10, v3, :cond_a

    iget-object v10, p0, Lcom/car/ecar/ECarManager$1;->this$0:Lcom/car/ecar/ECarManager;

    iget-object v10, v10, Lcom/car/ecar/ECarManager;->TAG:Ljava/lang/String;

    const-string v11, "ACC changed, notify ecar"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/car/ecar/ECarManager$1;->this$0:Lcom/car/ecar/ECarManager;

    invoke-virtual {v10, v3}, Lcom/car/ecar/ECarManager;->accNotify(Z)V

    :cond_a
    iget-object v10, p0, Lcom/car/ecar/ECarManager$1;->this$0:Lcom/car/ecar/ECarManager;

    iput-boolean v3, v10, Lcom/car/ecar/ECarManager;->mIsCharging:Z

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x0

    goto :goto_1

    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.car.btphone.action"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const-string v10, "status"

    const/16 v11, 0x10

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v7, 0x0

    const/16 v10, 0xc

    if-ne v0, v10, :cond_e

    const/4 v7, 0x5

    :cond_d
    :goto_2
    if-eqz v7, :cond_0

    iget-object v10, p0, Lcom/car/ecar/ECarManager$1;->this$0:Lcom/car/ecar/ECarManager;

    invoke-virtual {v10, v7}, Lcom/car/ecar/ECarManager;->reportCallState(I)V

    goto/16 :goto_0

    :cond_e
    const/16 v10, 0xa

    if-ne v0, v10, :cond_f

    const/4 v7, 0x4

    goto :goto_2

    :cond_f
    const/16 v10, 0x10

    if-ne v0, v10, :cond_d

    const/4 v7, 0x3

    goto :goto_2

    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.car.bthpone.connected.notify"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "connected"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v10, p0, Lcom/car/ecar/ECarManager$1;->this$0:Lcom/car/ecar/ECarManager;

    invoke-virtual {v10, v2}, Lcom/car/ecar/ECarManager;->doReportBTState(Z)V

    goto/16 :goto_0
.end method
