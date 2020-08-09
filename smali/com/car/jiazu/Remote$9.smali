.class Lcom/car/jiazu/Remote$9;
.super Ljava/lang/Object;
.source "Remote.java"

# interfaces
.implements Lcom/jiagu/BleListener$OnCharacteristic;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/jiazu/Remote;->ReadConnPara()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/jiazu/Remote;


# direct methods
.method constructor <init>(Lcom/car/jiazu/Remote;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/Remote$9;->this$0:Lcom/car/jiazu/Remote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Object;)V
    .locals 8

    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    array-length v3, v2

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/car/jiazu/Remote$9;->this$0:Lcom/car/jiazu/Remote;

    new-instance v4, Lcom/car/jiazu/Remote$ConnPara;

    iget-object v5, p0, Lcom/car/jiazu/Remote$9;->this$0:Lcom/car/jiazu/Remote;

    invoke-direct {v4, v5}, Lcom/car/jiazu/Remote$ConnPara;-><init>(Lcom/car/jiazu/Remote;)V

    invoke-static {v3, v4}, Lcom/car/jiazu/Remote;->access$1002(Lcom/car/jiazu/Remote;Lcom/car/jiazu/Remote$ConnPara;)Lcom/car/jiazu/Remote$ConnPara;

    iget-object v3, p0, Lcom/car/jiazu/Remote$9;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v3}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v3

    const/4 v4, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    iput v4, v3, Lcom/car/jiazu/Remote$ConnPara;->interval:F

    iget-object v3, p0, Lcom/car/jiazu/Remote$9;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v3}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v3

    iget v4, v3, Lcom/car/jiazu/Remote$ConnPara;->interval:F

    const/4 v5, 0x3

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit16 v5, v5, 0x100

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Lcom/car/jiazu/Remote$ConnPara;->interval:F

    iget-object v3, p0, Lcom/car/jiazu/Remote$9;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v3}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v3

    iget v4, v3, Lcom/car/jiazu/Remote$ConnPara;->interval:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v3, Lcom/car/jiazu/Remote$ConnPara;->interval:F

    iget-object v3, p0, Lcom/car/jiazu/Remote$9;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v3}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v3

    const/4 v4, 0x4

    aget-byte v4, v2, v4

    iput v4, v3, Lcom/car/jiazu/Remote$ConnPara;->latency:I

    iget-object v3, p0, Lcom/car/jiazu/Remote$9;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v3}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v3

    iget v4, v3, Lcom/car/jiazu/Remote$ConnPara;->latency:I

    const/4 v5, 0x5

    aget-byte v5, v2, v5

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v4, v5

    iput v4, v3, Lcom/car/jiazu/Remote$ConnPara;->latency:I

    iget-object v3, p0, Lcom/car/jiazu/Remote$9;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v3}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v3

    const/4 v4, 0x6

    aget-byte v4, v2, v4

    iput v4, v3, Lcom/car/jiazu/Remote$ConnPara;->timeout:I

    iget-object v3, p0, Lcom/car/jiazu/Remote$9;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v3}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v3

    iget v4, v3, Lcom/car/jiazu/Remote$ConnPara;->timeout:I

    const/4 v5, 0x7

    aget-byte v5, v2, v5

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v4, v5

    iput v4, v3, Lcom/car/jiazu/Remote$ConnPara;->timeout:I

    iget-object v3, p0, Lcom/car/jiazu/Remote$9;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v3}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v3

    iget v4, v3, Lcom/car/jiazu/Remote$ConnPara;->timeout:I

    mul-int/lit8 v4, v4, 0xa

    iput v4, v3, Lcom/car/jiazu/Remote$ConnPara;->timeout:I

    iget-object v3, p0, Lcom/car/jiazu/Remote$9;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v3}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    aget-byte v1, v2, v3

    iget-object v3, p0, Lcom/car/jiazu/Remote$9;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v3}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v3

    iget-object v4, p0, Lcom/car/jiazu/Remote$9;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v4}, Lcom/car/jiazu/Remote;->access$1000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$ConnPara;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/car/jiazu/Remote$RemoteListener;->onConnUpdata(Lcom/car/jiazu/Remote$ConnPara;I)V

    :cond_0
    return-void
.end method
