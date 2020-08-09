.class Lcom/jiagu/BleManager$1;
.super Ljava/lang/Object;
.source "BleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiagu/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiagu/BleManager;


# direct methods
.method constructor <init>(Lcom/jiagu/BleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/jiagu/BleManager$1;->this$0:Lcom/jiagu/BleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/jiagu/BleManager$1;->this$0:Lcom/jiagu/BleManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiagu/BleManager;->access$002(Lcom/jiagu/BleManager;Z)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/jiagu/BleManager$1;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$100(Lcom/jiagu/BleManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiagu/BleManager$1;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$100(Lcom/jiagu/BleManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jiagu/BleManager$1;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$100(Lcom/jiagu/BleManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iget-object v1, p0, Lcom/jiagu/BleManager$1;->this$0:Lcom/jiagu/BleManager;

    iget-object v1, v1, Lcom/jiagu/BleManager;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :goto_1
    iget-object v0, p0, Lcom/jiagu/BleManager$1;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$300(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnLeScanListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiagu/BleManager$1;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$300(Lcom/jiagu/BleManager;)Lcom/jiagu/BleListener$OnLeScanListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiagu/BleListener$OnLeScanListener;->onScanFinish()V

    :cond_2
    iget-object v0, p0, Lcom/jiagu/BleManager$1;->this$0:Lcom/jiagu/BleManager;

    const-string v1, "com.jiagu.blelib.ACTION_SCAN_FINISHED"

    invoke-static {v0, v1}, Lcom/jiagu/BleManager;->access$400(Lcom/jiagu/BleManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jiagu/BleManager$1;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$500(Lcom/jiagu/BleManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/jiagu/BleEventBus$Message;->MSG_TYPE_SCAN_FINISHED:Lcom/jiagu/BleEventBus$Message;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiagu/BleEventBus;->post(Lcom/jiagu/BleEventBus$Message;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/jiagu/BleManager$1;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$600(Lcom/jiagu/BleManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiagu/BleManager$1;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$600(Lcom/jiagu/BleManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/jiagu/BleManager$1;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v0}, Lcom/jiagu/BleManager;->access$100(Lcom/jiagu/BleManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/jiagu/BleManager$1;->this$0:Lcom/jiagu/BleManager;

    invoke-static {v1}, Lcom/jiagu/BleManager;->access$200(Lcom/jiagu/BleManager;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    goto :goto_1
.end method
