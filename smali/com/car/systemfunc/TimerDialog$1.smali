.class Lcom/car/systemfunc/TimerDialog$1;
.super Ljava/lang/Object;
.source "TimerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/TimerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/TimerDialog;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/TimerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/TimerDialog$1;->this$0:Lcom/car/systemfunc/TimerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog$1;->this$0:Lcom/car/systemfunc/TimerDialog;

    invoke-static {v1}, Lcom/car/systemfunc/TimerDialog;->access$000(Lcom/car/systemfunc/TimerDialog;)Lcom/car/systemfunc/CircleProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/systemfunc/CircleProgressBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog$1;->this$0:Lcom/car/systemfunc/TimerDialog;

    invoke-static {v1}, Lcom/car/systemfunc/TimerDialog;->access$100(Lcom/car/systemfunc/TimerDialog;)I

    move-result v1

    invoke-static {}, Lcom/car/systemfunc/TimerDialog;->access$200()I

    move-result v2

    mul-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog$1;->this$0:Lcom/car/systemfunc/TimerDialog;

    invoke-static {v1}, Lcom/car/systemfunc/TimerDialog;->access$000(Lcom/car/systemfunc/TimerDialog;)Lcom/car/systemfunc/CircleProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/TimerDialog$1;->this$0:Lcom/car/systemfunc/TimerDialog;

    invoke-static {v2}, Lcom/car/systemfunc/TimerDialog;->access$100(Lcom/car/systemfunc/TimerDialog;)I

    move-result v2

    invoke-static {}, Lcom/car/systemfunc/TimerDialog;->access$200()I

    move-result v3

    mul-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-static {}, Lcom/car/systemfunc/TimerDialog;->access$200()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/car/systemfunc/CircleProgressBar;->setProgress(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog$1;->this$0:Lcom/car/systemfunc/TimerDialog;

    invoke-static {v1}, Lcom/car/systemfunc/TimerDialog;->access$100(Lcom/car/systemfunc/TimerDialog;)I

    move-result v1

    invoke-static {}, Lcom/car/systemfunc/TimerDialog;->access$200()I

    move-result v2

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_4

    const/4 v1, 0x2

    const-string v2, "ro.sleep_dialog_shutdown"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog$1;->this$0:Lcom/car/systemfunc/TimerDialog;

    invoke-static {v1}, Lcom/car/systemfunc/TimerDialog;->access$300(Lcom/car/systemfunc/TimerDialog;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog$1;->this$0:Lcom/car/systemfunc/TimerDialog;

    invoke-static {v1}, Lcom/car/systemfunc/TimerDialog;->access$300(Lcom/car/systemfunc/TimerDialog;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog$1;->this$0:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v1}, Lcom/car/systemfunc/TimerDialog;->dismiss()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog$1;->this$0:Lcom/car/systemfunc/TimerDialog;

    invoke-static {v1}, Lcom/car/systemfunc/TimerDialog;->access$400(Lcom/car/systemfunc/TimerDialog;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog$1;->this$0:Lcom/car/systemfunc/TimerDialog;

    invoke-static {v1}, Lcom/car/systemfunc/TimerDialog;->access$400(Lcom/car/systemfunc/TimerDialog;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog$1;->this$0:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v1}, Lcom/car/systemfunc/TimerDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/car/systemfunc/TimerDialog$1;->this$0:Lcom/car/systemfunc/TimerDialog;

    invoke-static {v1}, Lcom/car/systemfunc/TimerDialog;->access$500(Lcom/car/systemfunc/TimerDialog;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {}, Lcom/car/systemfunc/TimerDialog;->access$200()I

    move-result v3

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
