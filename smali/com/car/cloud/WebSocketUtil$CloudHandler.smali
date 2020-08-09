.class final Lcom/car/cloud/WebSocketUtil$CloudHandler;
.super Landroid/os/Handler;
.source "WebSocketUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/WebSocketUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CloudHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/WebSocketUtil;


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketUtil;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/WebSocketUtil$CloudHandler;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/16 v5, 0x3fe

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil$CloudHandler;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v1, v0}, Lcom/car/cloud/WebSocketUtil;->access$1300(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil$CloudHandler;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v1, v3, v4}, Lcom/car/cloud/WebSocketUtil;->access$1400(Lcom/car/cloud/WebSocketUtil;Ljava/lang/Exception;I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil$CloudHandler;->this$0:Lcom/car/cloud/WebSocketUtil;

    const-string v2, "k"

    invoke-static {v1, v2, v3}, Lcom/car/cloud/WebSocketUtil;->access$1500(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil$CloudHandler;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v1}, Lcom/car/cloud/WebSocketUtil;->access$1600(Lcom/car/cloud/WebSocketUtil;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil$CloudHandler;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v1}, Lcom/car/cloud/WebSocketUtil;->access$1600(Lcom/car/cloud/WebSocketUtil;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_3
    const-string v1, "CarSvc_WebSocketUtil"

    const-string v2, "Get keepalive response timeout, close ws now!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil$CloudHandler;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v1, v3, v4}, Lcom/car/cloud/WebSocketUtil;->access$1400(Lcom/car/cloud/WebSocketUtil;Ljava/lang/Exception;I)V

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$CloudHandler;->this$0:Lcom/car/cloud/WebSocketUtil;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/car/cloud/WebSocketUtil;->access$1500(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;[B)Z

    goto :goto_0

    :sswitch_5
    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$CloudHandler;->this$0:Lcom/car/cloud/WebSocketUtil;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v2, v3, v1}, Lcom/car/cloud/WebSocketUtil;->access$1500(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;[B)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_5
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_1
        0x3f2 -> :sswitch_2
        0x3fe -> :sswitch_3
    .end sparse-switch
.end method
