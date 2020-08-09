.class Lcom/car/systemfunc/BeidouAgpsManager$1;
.super Landroid/os/Handler;
.source "BeidouAgpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/BeidouAgpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/BeidouAgpsManager;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/BeidouAgpsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/BeidouAgpsManager$1;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/16 v2, 0x66

    const/16 v1, 0x65

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/BeidouAgpsManager$1;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/systemfunc/BeidouAgpsManager$1;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/NetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/BeidouAgpsManager$1;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    invoke-virtual {v0}, Lcom/car/systemfunc/BeidouAgpsManager;->doFetchData()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/car/systemfunc/BeidouAgpsManager$1;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/systemfunc/BeidouAgpsManager$1;->this$0:Lcom/car/systemfunc/BeidouAgpsManager;

    iget-object v0, v0, Lcom/car/systemfunc/BeidouAgpsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/NetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/systemfunc/BeidouAgpsManager$1$1;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/BeidouAgpsManager$1$1;-><init>(Lcom/car/systemfunc/BeidouAgpsManager$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
