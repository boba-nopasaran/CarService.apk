.class Lcom/car/jiazu/Remote$1;
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

    iput-object p1, p0, Lcom/car/jiazu/Remote$1;->this$0:Lcom/car/jiazu/Remote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/car/jiazu/Remote$1;->this$0:Lcom/car/jiazu/Remote;

    invoke-virtual {v0}, Lcom/car/jiazu/Remote;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/jiazu/Remote$1;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v0}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/jiazu/Remote$1;->this$0:Lcom/car/jiazu/Remote;

    invoke-static {v0}, Lcom/car/jiazu/Remote;->access$000(Lcom/car/jiazu/Remote;)Lcom/car/jiazu/Remote$RemoteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/car/jiazu/Remote$RemoteListener;->onConnecting()V

    :cond_0
    return-void
.end method
