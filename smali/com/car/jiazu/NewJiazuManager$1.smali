.class Lcom/car/jiazu/NewJiazuManager$1;
.super Landroid/database/ContentObserver;
.source "NewJiazuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/jiazu/NewJiazuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/jiazu/NewJiazuManager;


# direct methods
.method constructor <init>(Lcom/car/jiazu/NewJiazuManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/NewJiazuManager$1;->this$0:Lcom/car/jiazu/NewJiazuManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v2, p0, Lcom/car/jiazu/NewJiazuManager$1;->this$0:Lcom/car/jiazu/NewJiazuManager;

    invoke-static {v2}, Lcom/car/jiazu/NewJiazuManager;->access$000(Lcom/car/jiazu/NewJiazuManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getBtKeyboardEnable(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/car/jiazu/NewJiazuManager$1;->this$0:Lcom/car/jiazu/NewJiazuManager;

    iget-boolean v2, v2, Lcom/car/jiazu/NewJiazuManager;->mEnabled:Z

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/car/jiazu/NewJiazuManager$1;->this$0:Lcom/car/jiazu/NewJiazuManager;

    iput-boolean v1, v2, Lcom/car/jiazu/NewJiazuManager;->mEnabled:Z

    iget-object v2, p0, Lcom/car/jiazu/NewJiazuManager$1;->this$0:Lcom/car/jiazu/NewJiazuManager;

    iget-boolean v2, v2, Lcom/car/jiazu/NewJiazuManager;->mEnabled:Z

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/car/jiazu/NewJiazuManager$1;->this$0:Lcom/car/jiazu/NewJiazuManager;

    iget-object v3, p0, Lcom/car/jiazu/NewJiazuManager$1;->this$0:Lcom/car/jiazu/NewJiazuManager;

    iget-boolean v3, v3, Lcom/car/jiazu/NewJiazuManager;->mEnabled:Z

    invoke-virtual {v2, v3}, Lcom/car/jiazu/NewJiazuManager;->setScanEnable(Z)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0
.end method
