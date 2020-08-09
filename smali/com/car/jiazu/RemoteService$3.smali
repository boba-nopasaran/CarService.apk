.class Lcom/car/jiazu/RemoteService$3;
.super Landroid/os/Handler;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/jiazu/RemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/jiazu/RemoteService;


# direct methods
.method constructor <init>(Lcom/car/jiazu/RemoteService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/RemoteService$3;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/car/jiazu/KeysClass$Keys;

    iget-object v3, v2, Lcom/car/jiazu/KeysClass$Keys;->keyVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/jiazu/KeysClass$KeyVal;

    iget-object v3, p0, Lcom/car/jiazu/RemoteService$3;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v3, v1}, Lcom/car/jiazu/RemoteService;->access$600(Lcom/car/jiazu/RemoteService;Lcom/car/jiazu/KeysClass$KeyVal;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
