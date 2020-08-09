.class Lcom/car/jiazu/Remote$6$1;
.super Ljava/lang/Object;
.source "Remote.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/jiazu/Remote$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/jiazu/Remote$6;


# direct methods
.method constructor <init>(Lcom/car/jiazu/Remote$6;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/Remote$6$1;->this$1:Lcom/car/jiazu/Remote$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/car/jiazu/Remote$6$1;->this$1:Lcom/car/jiazu/Remote$6;

    iget-object v1, v1, Lcom/car/jiazu/Remote$6;->this$0:Lcom/car/jiazu/Remote;

    invoke-virtual {v1}, Lcom/car/jiazu/Remote;->initialize()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/car/jiazu/Remote$6$1;->this$1:Lcom/car/jiazu/Remote$6;

    iget-object v1, v1, Lcom/car/jiazu/Remote$6;->this$0:Lcom/car/jiazu/Remote;

    invoke-virtual {v1}, Lcom/car/jiazu/Remote;->StartScan()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/car/jiazu/Remote$6$1;->this$1:Lcom/car/jiazu/Remote$6;

    iget-object v1, v1, Lcom/car/jiazu/Remote$6;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v1}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/jiazu/Remote$6$1;->this$1:Lcom/car/jiazu/Remote$6;

    iget-object v1, v1, Lcom/car/jiazu/Remote$6;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v1}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/car/jiazu/Remote$RemoteListener;->onError(I)V

    goto :goto_0
.end method
