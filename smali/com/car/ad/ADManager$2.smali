.class Lcom/car/ad/ADManager$2;
.super Landroid/os/Handler;
.source "ADManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/ad/ADManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/ad/ADManager;


# direct methods
.method constructor <init>(Lcom/car/ad/ADManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/ad/ADManager$2;->this$0:Lcom/car/ad/ADManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/16 v5, 0x67

    const/16 v7, 0x66

    const/16 v6, 0x65

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/car/ad/ADManager$2;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v3}, Lcom/car/ad/ADManager;->access$400(Lcom/car/ad/ADManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/car/ad/ADManager$2;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v3}, Lcom/car/ad/ADManager;->access$400(Lcom/car/ad/ADManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/car/ad/ADManager$2;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v3}, Lcom/car/ad/ADManager;->access$200(Lcom/car/ad/ADManager;)Lcom/car/ad/ADStorage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/car/ad/ADStorage;->saveADItemList(Ljava/util/List;)V

    iget-object v3, p0, Lcom/car/ad/ADManager$2;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v3}, Lcom/car/ad/ADManager;->access$500(Lcom/car/ad/ADManager;)V

    iget-object v3, p0, Lcom/car/ad/ADManager$2;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v3}, Lcom/car/ad/ADManager;->access$600(Lcom/car/ad/ADManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/car/ad/ADManager$2;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v3}, Lcom/car/ad/ADManager;->access$700(Lcom/car/ad/ADManager;)V

    iget-object v3, p0, Lcom/car/ad/ADManager$2;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v3}, Lcom/car/ad/ADManager;->access$600(Lcom/car/ad/ADManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/car/ad/ADManager$2;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v3}, Lcom/car/ad/ADManager;->access$600(Lcom/car/ad/ADManager;)Landroid/os/Handler;

    move-result-object v3

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v7, :cond_3

    iget-object v3, p0, Lcom/car/ad/ADManager$2;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v3}, Lcom/car/ad/ADManager;->access$800(Lcom/car/ad/ADManager;)V

    iget-object v3, p0, Lcom/car/ad/ADManager$2;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v3}, Lcom/car/ad/ADManager;->access$600(Lcom/car/ad/ADManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/car/ad/ADManager$2;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v3}, Lcom/car/ad/ADManager;->access$600(Lcom/car/ad/ADManager;)Landroid/os/Handler;

    move-result-object v3

    const-wide/32 v4, 0xdbba00

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/car/ad/ADManager$2;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v3}, Lcom/car/ad/ADManager;->access$900(Lcom/car/ad/ADManager;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/car/ad/ADManager$2;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v3}, Lcom/car/ad/ADManager;->access$900(Lcom/car/ad/ADManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/ad/ADManager$ADStatusListener;

    invoke-interface {v1}, Lcom/car/ad/ADManager$ADStatusListener;->onADStatusChange()V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
