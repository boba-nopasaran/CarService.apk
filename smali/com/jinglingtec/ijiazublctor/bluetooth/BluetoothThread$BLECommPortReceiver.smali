.class Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BLECommPortReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;


# direct methods
.method private constructor <init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;-><init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v4, "com.ijiazu.cmd.category"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$900(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$200(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "ble.new.device.id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$200(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->updateDeviceID(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$200(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$200(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->readDeviceID()V

    goto :goto_0

    :pswitch_4
    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$200(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "ble.account.device.bind.uid"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5411\u8bbe\u5907\u5199\u5165UID-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$200(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "ble.account.device.bind.uid"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5bf9\u8bbe\u5907\u8fdb\u884c\u89e3\u7ed1\u5b9a-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_6
    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$200(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "fodrive.bindDevice.strs"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "BluetoothThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\uff0d\uff0d\u5411\u8bbe\u5907\u53d1\u9001\u5df2\u6709\u7684\u7ed1\u5b9a->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_7
    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$BLECommPortReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$200(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "BluetoothThread"

    const-string v5, "\uff0d\uff0d\u6e05\u9664\u8bbe\u5907\u7ed1\u5b9a---"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "fodrive.bindDevice.account"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
