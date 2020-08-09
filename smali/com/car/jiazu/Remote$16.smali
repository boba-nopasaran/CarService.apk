.class Lcom/car/jiazu/Remote$16;
.super Ljava/lang/Object;
.source "Remote.java"

# interfaces
.implements Lcom/jiagu/BleListener$OnCharacteristic;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/jiazu/Remote;->SetWakeupCycle(ILcom/car/jiazu/Remote$RemoteWriteListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/jiazu/Remote;

.field final synthetic val$callback:Lcom/car/jiazu/Remote$RemoteWriteListener;


# direct methods
.method constructor <init>(Lcom/car/jiazu/Remote;Lcom/car/jiazu/Remote$RemoteWriteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/Remote$16;->this$0:Lcom/car/jiazu/Remote;

    iput-object p2, p0, Lcom/car/jiazu/Remote$16;->val$callback:Lcom/car/jiazu/Remote$RemoteWriteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/Remote$16;->val$callback:Lcom/car/jiazu/Remote$RemoteWriteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/jiazu/Remote$16;->val$callback:Lcom/car/jiazu/Remote$RemoteWriteListener;

    invoke-interface {v0}, Lcom/car/jiazu/Remote$RemoteWriteListener;->onFailed()V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/Remote$16;->val$callback:Lcom/car/jiazu/Remote$RemoteWriteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/jiazu/Remote$16;->val$callback:Lcom/car/jiazu/Remote$RemoteWriteListener;

    invoke-interface {v0}, Lcom/car/jiazu/Remote$RemoteWriteListener;->onSuccess()V

    :cond_0
    return-void
.end method
