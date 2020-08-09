.class Lcom/car/yunos/YunOSCall$1;
.super Landroid/content/BroadcastReceiver;
.source "YunOSCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/yunos/YunOSCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/yunos/YunOSCall;


# direct methods
.method constructor <init>(Lcom/car/yunos/YunOSCall;)V
    .locals 0

    iput-object p1, p0, Lcom/car/yunos/YunOSCall$1;->this$0:Lcom/car/yunos/YunOSCall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/yunos/YunOSCall$1;->this$0:Lcom/car/yunos/YunOSCall;

    iget-object v13, v13, Lcom/car/yunos/YunOSCall;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "action: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "com.car.bthpone.contacts.notify"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "status"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const/16 v13, 0x3ec

    if-ne v12, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/yunos/YunOSCall$1;->this$0:Lcom/car/yunos/YunOSCall;

    iget-boolean v13, v13, Lcom/car/yunos/YunOSCall;->mBTConnected:Z

    if-eqz v13, :cond_0

    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.yunos.intent.SYNC_CONTACT_COMPLETED"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v13, "com.car.btphone.action"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "status"

    const/16 v14, 0x10

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v13, "numbername"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/yunos/YunOSCall$1;->this$0:Lcom/car/yunos/YunOSCall;

    iget-object v13, v13, Lcom/car/yunos/YunOSCall;->mContext:Landroid/content/Context;

    const-string v14, "bt_phone_number"

    invoke-static {v13, v14, v9}, Lcom/car/yunos/AliExtOpt;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const/16 v13, 0xc

    if-ne v3, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/yunos/YunOSCall$1;->this$0:Lcom/car/yunos/YunOSCall;

    iget-object v13, v13, Lcom/car/yunos/YunOSCall;->mContext:Landroid/content/Context;

    const-string v14, "bt_dial_status"

    const-string v15, "4"

    invoke-static {v13, v14, v15}, Lcom/car/yunos/AliExtOpt;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    const/16 v13, 0xa

    if-ne v3, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/yunos/YunOSCall$1;->this$0:Lcom/car/yunos/YunOSCall;

    iget-object v13, v13, Lcom/car/yunos/YunOSCall;->mContext:Landroid/content/Context;

    const-string v14, "bt_dial_status"

    const-string v15, "2"

    invoke-static {v13, v14, v15}, Lcom/car/yunos/AliExtOpt;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    const/16 v13, 0x10

    if-ne v3, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/yunos/YunOSCall$1;->this$0:Lcom/car/yunos/YunOSCall;

    iget-object v13, v13, Lcom/car/yunos/YunOSCall;->mContext:Landroid/content/Context;

    const-string v14, "bt_dial_status"

    const-string v15, "0"

    invoke-static {v13, v14, v15}, Lcom/car/yunos/AliExtOpt;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    const/16 v13, 0xe

    if-ne v3, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/yunos/YunOSCall$1;->this$0:Lcom/car/yunos/YunOSCall;

    iget-object v13, v13, Lcom/car/yunos/YunOSCall;->mContext:Landroid/content/Context;

    const-string v14, "bt_dial_status"

    const-string v15, "3"

    invoke-static {v13, v14, v15}, Lcom/car/yunos/AliExtOpt;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_5
    const-string v13, "com.car.bthpone.calllog.notify"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.yunos.intent.SYNC_CALLLOG_COMPLETED"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string v13, "com.car.bthpone.connected.notify"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "connected"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v13, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "bt_peer_name"

    move-object/from16 v0, p1

    invoke-static {v0, v13, v8}, Lcom/car/yunos/AliExtOpt;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v13, "mac"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    const-string v13, "bt_peer_mac"

    move-object/from16 v0, p1

    invoke-static {v0, v13, v7}, Lcom/car/yunos/AliExtOpt;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/yunos/YunOSCall$1;->this$0:Lcom/car/yunos/YunOSCall;

    invoke-virtual {v13, v4}, Lcom/car/yunos/YunOSCall;->doReportBTState(Z)V

    goto/16 :goto_0

    :cond_8
    const-string v13, "com.yunos.intent.PHONE_COMMAND"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "phoneaction"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/yunos/YunOSCall$1;->this$0:Lcom/car/yunos/YunOSCall;

    invoke-virtual {v13}, Lcom/car/yunos/YunOSCall;->acceptCall()V

    goto/16 :goto_0

    :cond_9
    const/4 v13, 0x3

    if-ne v2, v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/yunos/YunOSCall$1;->this$0:Lcom/car/yunos/YunOSCall;

    invoke-virtual {v13}, Lcom/car/yunos/YunOSCall;->hangupCall()V

    goto/16 :goto_0

    :cond_a
    const/4 v13, 0x4

    if-ne v2, v13, :cond_b

    const-string v13, "phonenumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/yunos/YunOSCall$1;->this$0:Lcom/car/yunos/YunOSCall;

    invoke-virtual {v13, v10}, Lcom/car/yunos/YunOSCall;->makeCall(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/4 v13, 0x5

    if-ne v2, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/yunos/YunOSCall$1;->this$0:Lcom/car/yunos/YunOSCall;

    invoke-virtual {v13}, Lcom/car/yunos/YunOSCall;->redial()V

    goto/16 :goto_0

    :cond_c
    const-string v13, "com.yunos.intent.BLUETOOTH_SETTINGS"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.car.intent.action.start.btphone"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x30000000

    invoke-virtual {v6, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_d
    const-string v13, "com.yunos.intent.BT_POWER"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const-string v13, "power"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_e

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/car/common/SystemCtrl;->btEnable(Landroid/content/Context;Z)Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const/4 v13, 0x0

    goto :goto_1

    :cond_f
    const-string v13, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    const-string v13, "android.bluetooth.adapter.extra.STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/yunos/YunOSCall$1;->this$0:Lcom/car/yunos/YunOSCall;

    iget-object v13, v13, Lcom/car/yunos/YunOSCall;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_STATE_CHANGED, exState="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0xc

    if-ne v5, v13, :cond_10

    const-string v13, "bt_enable"

    const-string v14, "1"

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/car/yunos/AliExtOpt;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_10
    const/16 v13, 0xa

    if-ne v5, v13, :cond_0

    const-string v13, "bt_enable"

    const-string v14, "0"

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/car/yunos/AliExtOpt;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_11
    const-string v13, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "android.bluetooth.adapter.extra.LOCAL_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "bt_display_name"

    move-object/from16 v0, p1

    invoke-static {v0, v13, v8}, Lcom/car/yunos/AliExtOpt;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method
