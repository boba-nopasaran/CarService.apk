.class Lcom/car/systemfunc/SysEventReceiver$3;
.super Ljava/lang/Object;
.source "SysEventReceiver.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/SysEventReceiver;->createShortCut(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/SysEventReceiver;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/SysEventReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v2, 0x1

    const/high16 v6, 0x40a00000    # 5.0f

    iget-object v3, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    invoke-static {v3}, Lcom/car/systemfunc/SysEventReceiver;->access$000(Lcom/car/systemfunc/SysEventReceiver;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const-string v3, "CarSvc_SysEventReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "l="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-static {v3, v4}, Lcom/car/systemfunc/SysEventReceiver;->access$102(Lcom/car/systemfunc/SysEventReceiver;F)F

    iget-object v3, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-static {v3, v4}, Lcom/car/systemfunc/SysEventReceiver;->access$202(Lcom/car/systemfunc/SysEventReceiver;F)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :cond_1
    :goto_1
    return v2

    :pswitch_0
    iget-object v2, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    iget-object v3, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    invoke-static {v3}, Lcom/car/systemfunc/SysEventReceiver;->access$100(Lcom/car/systemfunc/SysEventReceiver;)F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/car/systemfunc/SysEventReceiver;->access$302(Lcom/car/systemfunc/SysEventReceiver;F)F

    iget-object v2, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    iget-object v3, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    invoke-static {v3}, Lcom/car/systemfunc/SysEventReceiver;->access$200(Lcom/car/systemfunc/SysEventReceiver;)F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/car/systemfunc/SysEventReceiver;->access$402(Lcom/car/systemfunc/SysEventReceiver;F)F

    iget-object v2, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v2, v3}, Lcom/car/systemfunc/SysEventReceiver;->access$502(Lcom/car/systemfunc/SysEventReceiver;F)F

    iget-object v2, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v2, v3}, Lcom/car/systemfunc/SysEventReceiver;->access$602(Lcom/car/systemfunc/SysEventReceiver;F)F

    iget-object v2, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/car/systemfunc/SysEventReceiver;->access$702(Lcom/car/systemfunc/SysEventReceiver;J)J

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/SysEventReceiver;->access$800(Lcom/car/systemfunc/SysEventReceiver;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    invoke-static {v3}, Lcom/car/systemfunc/SysEventReceiver;->access$800(Lcom/car/systemfunc/SysEventReceiver;)V

    iget-object v3, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    invoke-static {v3}, Lcom/car/systemfunc/SysEventReceiver;->access$100(Lcom/car/systemfunc/SysEventReceiver;)F

    move-result v3

    iget-object v4, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    invoke-static {v4}, Lcom/car/systemfunc/SysEventReceiver;->access$500(Lcom/car/systemfunc/SysEventReceiver;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    invoke-static {v3}, Lcom/car/systemfunc/SysEventReceiver;->access$200(Lcom/car/systemfunc/SysEventReceiver;)F

    move-result v3

    iget-object v4, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    invoke-static {v4}, Lcom/car/systemfunc/SysEventReceiver;->access$600(Lcom/car/systemfunc/SysEventReceiver;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/car/systemfunc/SysEventReceiver$3;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    invoke-static {v3}, Lcom/car/systemfunc/SysEventReceiver;->access$700(Lcom/car/systemfunc/SysEventReceiver;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
