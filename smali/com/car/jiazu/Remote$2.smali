.class Lcom/car/jiazu/Remote$2;
.super Ljava/lang/Object;
.source "Remote.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/jiazu/Remote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/jiazu/Remote;


# direct methods
.method constructor <init>(Lcom/car/jiazu/Remote;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/Remote$2;->this$0:Lcom/car/jiazu/Remote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/car/jiazu/Remote$2;->this$0:Lcom/car/jiazu/Remote;

    invoke-virtual {v0}, Lcom/car/jiazu/Remote;->getState()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/car/jiazu/Remote$2;->this$0:Lcom/car/jiazu/Remote;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/car/jiazu/Remote;->access$102(Lcom/car/jiazu/Remote;I)I

    iget-object v0, p0, Lcom/car/jiazu/Remote$2;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v0}, Lcom/car/jiazu/Remote;->access$300(Lcom/car/jiazu/Remote;)Lcom/jiagu/BleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/car/jiazu/Remote$2;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v1}, Lcom/car/jiazu/Remote;->access$200(Lcom/car/jiazu/Remote;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiagu/BleManager;->disconnect(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/jiazu/Remote$2;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v0}, Lcom/car/jiazu/Remote;->access$300(Lcom/car/jiazu/Remote;)Lcom/jiagu/BleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/car/jiazu/Remote$2;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v1}, Lcom/car/jiazu/Remote;->access$200(Lcom/car/jiazu/Remote;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiagu/BleManager;->close(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/jiazu/Remote$2;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v0}, Lcom/car/jiazu/Remote;->access$400(Lcom/car/jiazu/Remote;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/car/jiazu/Remote$2;->this$0:Lcom/car/jiazu/Remote;

    invoke-virtual {v0}, Lcom/car/jiazu/Remote;->StartScan()Z

    :cond_0
    const-string v0, "CarSvc_mybt"

    const-string v1, "\u8fde\u63a5\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/jiazu/Remote$2;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v0}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/jiazu/Remote$2;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v0}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/car/jiazu/Remote$RemoteListener;->onConnectFail()V

    :cond_1
    return-void
.end method
