.class Lcom/amap/api/services/a/aq$1;
.super Ljava/lang/Thread;
.source "InputtipsSearchCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/aq;->requestInputtipsAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/aq;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v0}, Lcom/amap/api/services/a/aq;->a(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v1, Landroid/os/Message;->arg1:I

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    iget-object v2, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v2}, Lcom/amap/api/services/a/aq;->b(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/help/InputtipsQuery;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amap/api/services/a/aq;->a(Lcom/amap/api/services/a/aq;Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/16 v0, 0x3e8

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v0}, Lcom/amap/api/services/a/aq;->c(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v0}, Lcom/amap/api/services/a/aq;->c(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v2}, Lcom/amap/api/services/a/aq;->c(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
