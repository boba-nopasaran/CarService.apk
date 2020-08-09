.class Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$2;
.super Ljava/lang/Object;
.source "BluetoothThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->loopingBleDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private selfRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;


# direct methods
.method constructor <init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$2;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$2;->selfRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$2;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$100(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$2;->selfRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$2;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$200(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$2;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$200(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->isBleConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$300()J

    move-result-wide v0

    const-wide/16 v2, 0x2ee0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$2;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$400(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x201

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$2;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$400(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$2;->selfRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$300()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$2;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;

    invoke-static {v0}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->access$400(Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$2;->selfRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread$2;->selfRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method
