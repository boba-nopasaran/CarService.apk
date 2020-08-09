.class Lcom/car/systemfunc/IJiaZuSdk$3;
.super Ljava/lang/Object;
.source "IJiaZuSdk.java"

# interfaces
.implements Lcom/jinglingtec/ijiazu/sdk/api/IjiazuSDKListener;


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
.method constructor <init>(Lcom/car/systemfunc/IJiaZuSdk;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deviceBatteryLevel(I)V
    .locals 0

    return-void
.end method

.method public deviceConnectionChanged(Z)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x64

    if-eqz p1, :cond_1

    const-string v0, "Bluetooth device connected"

    :goto_0
    const-string v1, "CarSvc_IJiaZuSdk"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-boolean v1, v1, Lcom/car/systemfunc/IJiaZuSdk;->mEverConnected:Z

    if-eq v1, p1, :cond_0

    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/car/systemfunc/IJiaZuSdk;->mIsConnected:Z

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-virtual {v1}, Lcom/car/systemfunc/IJiaZuSdk;->reportBtKbStatus()V

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-static {v1}, Lcom/car/systemfunc/IJiaZuSdk;->access$000(Lcom/car/systemfunc/IJiaZuSdk;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-static {v1}, Lcom/car/systemfunc/IJiaZuSdk;->access$000(Lcom/car/systemfunc/IJiaZuSdk;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-object v3, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-object v3, v3, Lcom/car/systemfunc/IJiaZuSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/car/systemfunc/IJiaZuSdk;->isAccOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/32 v2, 0x9c40

    :goto_1
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iput-boolean p1, v1, Lcom/car/systemfunc/IJiaZuSdk;->mEverConnected:Z

    return-void

    :cond_1
    const-string v0, "Bluetooth device dis-connected"

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iput-boolean v5, v1, Lcom/car/systemfunc/IJiaZuSdk;->mIsConnected:Z

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-virtual {v1}, Lcom/car/systemfunc/IJiaZuSdk;->reportBtKbStatus()V

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-static {v1}, Lcom/car/systemfunc/IJiaZuSdk;->access$000(Lcom/car/systemfunc/IJiaZuSdk;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-static {v1}, Lcom/car/systemfunc/IJiaZuSdk;->access$000(Lcom/car/systemfunc/IJiaZuSdk;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v2

    if-eqz p1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-object v3, v3, Lcom/car/systemfunc/IJiaZuSdk;->mBtName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u5df2\u7ecf\u6210\u529f\u8fde\u63a5"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-object v3, v3, Lcom/car/systemfunc/IJiaZuSdk;->mBtName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u5df2\u7ecf\u65ad\u5f00"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public initComplete(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "Connect Ijiazu Success"

    :goto_0
    const-string v1, "CarSvc_IJiaZuSdk"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public onKeySingleClick(I)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "CarSvc_IJiaZuSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeySingleClick"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/car/systemfunc/IJiaZuSdk;->mDownTime:J

    const-string v1, "ro.btkb.redirect"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.btkb"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "keycode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-object v1, v1, Lcom/car/systemfunc/IJiaZuSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    sget-object v2, Lcom/car/systemfunc/IJiaZuSdk;->sSparseIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2, v4, v4}, Lcom/car/systemfunc/IJiaZuSdk;->sendEvent(III)V

    iget-object v1, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    sget-object v2, Lcom/car/systemfunc/IJiaZuSdk;->sSparseIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/car/systemfunc/IJiaZuSdk;->sendEvent(III)V

    goto :goto_0
.end method

.method public onLongClick(I)V
    .locals 11

    const/16 v10, 0x86

    const/4 v9, 0x3

    const/16 v8, 0x80

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v2, "CarSvc_IJiaZuSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLongClick"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ro.btkb.redirect"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.btkb"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "keycode"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "long"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget-object v2, v2, Lcom/car/systemfunc/IJiaZuSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    if-ne p1, v9, :cond_1

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/car/systemfunc/IJiaZuSdk;->mDownTime:J

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-virtual {v2, v10, v6, v6}, Lcom/car/systemfunc/IJiaZuSdk;->sendEvent(III)V

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-virtual {v2, v10, v7, v6}, Lcom/car/systemfunc/IJiaZuSdk;->sendEvent(III)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iput v6, v2, Lcom/car/systemfunc/IJiaZuSdk;->mRepatedCount:I

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/car/systemfunc/IJiaZuSdk;->mDownTime:J

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_2

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget v3, v2, Lcom/car/systemfunc/IJiaZuSdk;->mRepatedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/car/systemfunc/IJiaZuSdk;->mRepatedCount:I

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    sget-object v3, Lcom/car/systemfunc/IJiaZuSdk;->sSparseIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3, v6, v8}, Lcom/car/systemfunc/IJiaZuSdk;->sendEvent(III)V

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget v3, v2, Lcom/car/systemfunc/IJiaZuSdk;->mRepatedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/car/systemfunc/IJiaZuSdk;->mRepatedCount:I

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    sget-object v3, Lcom/car/systemfunc/IJiaZuSdk;->sSparseIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3, v6, v8}, Lcom/car/systemfunc/IJiaZuSdk;->sendEvent(III)V

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    iget v3, v2, Lcom/car/systemfunc/IJiaZuSdk;->mRepatedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/car/systemfunc/IJiaZuSdk;->mRepatedCount:I

    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    sget-object v3, Lcom/car/systemfunc/IJiaZuSdk;->sSparseIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3, v6, v8}, Lcom/car/systemfunc/IJiaZuSdk;->sendEvent(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/car/systemfunc/IJiaZuSdk$3;->this$0:Lcom/car/systemfunc/IJiaZuSdk;

    sget-object v3, Lcom/car/systemfunc/IJiaZuSdk;->sSparseIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3, v7, v6}, Lcom/car/systemfunc/IJiaZuSdk;->sendEvent(III)V

    goto :goto_0
.end method

.method public onLongUpClick(I)V
    .locals 0

    return-void
.end method
