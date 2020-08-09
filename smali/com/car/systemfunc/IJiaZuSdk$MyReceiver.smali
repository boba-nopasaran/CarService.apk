.class Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IJiaZuSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/IJiaZuSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/IJiaZuSdk;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/IJiaZuSdk;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x200

    const/16 v5, 0x66

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.car.btkb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-virtual {v1}, Lcom/car/systemfunc/IJiaZuSdk;->reportBtKbStatus()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "CarSvc_IJiaZuSdk"

    const-string v2, "discovery started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "CarSvc_IJiaZuSdk"

    const-string v2, "discovery finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    const-string v1, "CarSvc_IJiaZuSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is nearby"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR Keyboard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    if-eq v1, v6, :cond_0

    const-string v1, "CarSvc_IJiaZuSdk"

    const-string v2, "find our keyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-object v1, v1, Lcom/car/systemfunc/IJiaZuSdk;->mBluetoothInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-object v1, v1, Lcom/car/systemfunc/IJiaZuSdk;->mBluetoothInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothInputDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_0

    :cond_4
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "CarSvc_IJiaZuSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_ACL_CONNECTED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR Keyboard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    if-eq v1, v6, :cond_0

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-static {v1}, Lcom/car/systemfunc/IJiaZuSdk;->access$000(Lcom/car/systemfunc/IJiaZuSdk;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-boolean v1, v1, Lcom/car/systemfunc/IJiaZuSdk;->mNeedReport:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iput-boolean v4, v1, Lcom/car/systemfunc/IJiaZuSdk;->mIsConnected:Z

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-virtual {v1}, Lcom/car/systemfunc/IJiaZuSdk;->reportBtKbStatus()V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-object v3, v3, Lcom/car/systemfunc/IJiaZuSdk;->mBtName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5df2\u7ecf\u6210\u529f\u8fde\u63a5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iput-boolean v7, v1, Lcom/car/systemfunc/IJiaZuSdk;->mNeedReport:Z

    :cond_5
    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->releaseThread()V

    goto/16 :goto_0

    :cond_6
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "CarSvc_IJiaZuSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_ACL_DISCONNECTED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR Keyboard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    if-eq v1, v6, :cond_0

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iput-boolean v7, v1, Lcom/car/systemfunc/IJiaZuSdk;->mIsConnected:Z

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-virtual {v1}, Lcom/car/systemfunc/IJiaZuSdk;->reportBtKbStatus()V

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-static {v1}, Lcom/car/systemfunc/IJiaZuSdk;->access$000(Lcom/car/systemfunc/IJiaZuSdk;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-static {v1}, Lcom/car/systemfunc/IJiaZuSdk;->access$000(Lcom/car/systemfunc/IJiaZuSdk;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-object v3, p0, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-object v3, v3, Lcom/car/systemfunc/IJiaZuSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/car/systemfunc/IJiaZuSdk;->isAccOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-wide/32 v2, 0x9c40

    :goto_1
    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_7
    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.car.gotosleep"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.car.wakeup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$MyReceiver;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iput-boolean v4, v1, Lcom/car/systemfunc/IJiaZuSdk;->mNeedReport:Z

    goto/16 :goto_0
.end method
