.class Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$1;
.super Ljava/lang/Object;
.source "BleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->reStartBT(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

.field final synthetic val$mBleAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$1;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    iput-object p2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$1;->val$mBleAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$1;->val$mBleAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$1;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;->access$002(Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;I)I

    return-void
.end method
