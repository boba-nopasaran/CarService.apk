.class Lcom/car/systemfunc/SysEventReceiver$1;
.super Landroid/os/Handler;
.source "SysEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/SysEventReceiver;
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

    iput-object p1, p0, Lcom/car/systemfunc/SysEventReceiver$1;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/16 v1, 0x64

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/SysEventReceiver$1;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/systemfunc/SysEventReceiver$1;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    iget-object v0, v0, Lcom/car/systemfunc/SysEventReceiver;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/SysEventReceiver$1;->this$0:Lcom/car/systemfunc/SysEventReceiver;

    iget-object v0, v0, Lcom/car/systemfunc/SysEventReceiver;->mParentView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method
