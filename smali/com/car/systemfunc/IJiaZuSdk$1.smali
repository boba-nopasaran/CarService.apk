.class Lcom/car/systemfunc/IJiaZuSdk$1;
.super Landroid/database/ContentObserver;
.source "IJiaZuSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/IJiaZuSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/IJiaZuSdk;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/IJiaZuSdk;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/IJiaZuSdk$1;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const-string v2, "CarSvc_IJiaZuSdk"

    const-string v3, "onChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$1;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-object v2, v2, Lcom/car/systemfunc/IJiaZuSdk;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getBtKeyboardEnable(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$1;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-boolean v2, v2, Lcom/car/systemfunc/IJiaZuSdk;->mEnabled:Z

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$1;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iput-boolean v1, v2, Lcom/car/systemfunc/IJiaZuSdk;->mEnabled:Z

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$1;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-boolean v2, v2, Lcom/car/systemfunc/IJiaZuSdk;->mEnabled:Z

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->startThread()V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/jinglingtec/ijiazublctor/bluetooth/BluetoothThread;->releaseThread()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0
.end method
