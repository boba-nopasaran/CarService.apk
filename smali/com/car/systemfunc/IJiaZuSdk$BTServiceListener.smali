.class Lcom/car/systemfunc/IJiaZuSdk$BTServiceListener;
.super Ljava/lang/Object;
.source "IJiaZuSdk.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/IJiaZuSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BTServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/IJiaZuSdk;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/IJiaZuSdk;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/IJiaZuSdk$BTServiceListener;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    const-string v0, "CarSvc_IJiaZuSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothProfile.ServiceListener connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/IJiaZuSdk$BTServiceListener;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    iput-object p2, v0, Lcom/car/systemfunc/IJiaZuSdk;->mBluetoothInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 3

    const-string v0, "CarSvc_IJiaZuSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothProfile.ServiceListener disconnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/IJiaZuSdk$BTServiceListener;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/car/systemfunc/IJiaZuSdk;->mBluetoothInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    :cond_0
    return-void
.end method
