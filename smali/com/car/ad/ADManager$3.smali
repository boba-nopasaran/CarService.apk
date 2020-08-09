.class Lcom/car/ad/ADManager$3;
.super Ljava/lang/Object;
.source "ADManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/ad/ADManager;->doRefreshADs()V
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

    iput-object p1, p0, Lcom/car/ad/ADManager$3;->this$0:Lcom/car/ad/ADManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/car/ad/ADManager$3;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v2}, Lcom/car/ad/ADManager;->access$1000(Lcom/car/ad/ADManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/car/ad/ADManager$3;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v2}, Lcom/car/ad/ADManager;->access$600(Lcom/car/ad/ADManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/car/ad/ADManager$3;->this$0:Lcom/car/ad/ADManager;

    invoke-static {v2}, Lcom/car/ad/ADManager;->access$600(Lcom/car/ad/ADManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
