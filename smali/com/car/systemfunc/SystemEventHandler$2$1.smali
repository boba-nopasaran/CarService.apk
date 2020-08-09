.class Lcom/car/systemfunc/SystemEventHandler$2$1;
.super Ljava/lang/Object;
.source "SystemEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/SystemEventHandler$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/systemfunc/SystemEventHandler$2;

.field final synthetic val$isLock:I

.field final synthetic val$noSound:Z


# direct methods
.method constructor <init>(Lcom/car/systemfunc/SystemEventHandler$2;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/SystemEventHandler$2$1;->this$1:Lcom/car/systemfunc/SystemEventHandler$2;

    iput p2, p0, Lcom/car/systemfunc/SystemEventHandler$2$1;->val$isLock:I

    iput-boolean p3, p0, Lcom/car/systemfunc/SystemEventHandler$2$1;->val$noSound:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/car/common/CarPath;->getDVRRootPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/SystemEventHandler$2$1;->this$1:Lcom/car/systemfunc/SystemEventHandler$2;

    iget-object v2, v2, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v2}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/car/common/CarPath;->getCapturePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v1, v2, v3, v4}, Lcom/car/common/CarUtil;->isStorageFull(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/car/systemfunc/SystemEventHandler$2$1;->val$isLock:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-boolean v1, p0, Lcom/car/systemfunc/SystemEventHandler$2$1;->val$noSound:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/car/systemfunc/SystemEventHandler$2$1;->this$1:Lcom/car/systemfunc/SystemEventHandler$2;

    iget-object v1, v1, Lcom/car/systemfunc/SystemEventHandler$2;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v1}, Lcom/car/systemfunc/SystemEventHandler;->access$100(Lcom/car/systemfunc/SystemEventHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
