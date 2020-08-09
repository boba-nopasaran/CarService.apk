.class Lcom/car/systemfunc/NaviChangeReceiver$2;
.super Ljava/lang/Object;
.source "NaviChangeReceiver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/NaviChangeReceiver;->createNaviShortCut(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/NaviChangeReceiver;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/NaviChangeReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/NaviChangeReceiver$2;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const-wide/16 v6, 0x320

    const/16 v4, 0x65

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/car/systemfunc/NaviChangeReceiver$2;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    iget-wide v2, v2, Lcom/car/systemfunc/NaviChangeReceiver;->mLastClickTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/car/systemfunc/NaviChangeReceiver$2;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    iget-object v2, v2, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/car/systemfunc/NaviChangeReceiver$2;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    iget-object v2, v2, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    iget-object v2, p0, Lcom/car/systemfunc/NaviChangeReceiver$2;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    iput-wide v0, v2, Lcom/car/systemfunc/NaviChangeReceiver;->mLastClickTime:J

    return-void

    :cond_0
    iget-object v2, p0, Lcom/car/systemfunc/NaviChangeReceiver$2;->this$0:Lcom/car/systemfunc/NaviChangeReceiver;

    iget-object v2, v2, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
