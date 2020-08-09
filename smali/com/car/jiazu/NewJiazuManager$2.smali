.class Lcom/car/jiazu/NewJiazuManager$2;
.super Ljava/lang/Object;
.source "NewJiazuManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/jiazu/NewJiazuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/jiazu/NewJiazuManager;


# direct methods
.method constructor <init>(Lcom/car/jiazu/NewJiazuManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/NewJiazuManager$2;->this$0:Lcom/car/jiazu/NewJiazuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/car/jiazu/NewJiazuManager$2;->this$0:Lcom/car/jiazu/NewJiazuManager;

    check-cast p2, Lcom/car/jiazu/RemoteService$LocalBinder;

    invoke-virtual {p2}, Lcom/car/jiazu/RemoteService$LocalBinder;->getService()Lcom/car/jiazu/RemoteService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/jiazu/NewJiazuManager;->access$102(Lcom/car/jiazu/NewJiazuManager;Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/RemoteService;

    iget-object v0, p0, Lcom/car/jiazu/NewJiazuManager$2;->this$0:Lcom/car/jiazu/NewJiazuManager;

    iget-object v1, p0, Lcom/car/jiazu/NewJiazuManager$2;->this$0:Lcom/car/jiazu/NewJiazuManager;

    iget-boolean v1, v1, Lcom/car/jiazu/NewJiazuManager;->mScanEnable:Z

    invoke-virtual {v0, v1}, Lcom/car/jiazu/NewJiazuManager;->setScanEnable(Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/car/jiazu/NewJiazuManager$2;->this$0:Lcom/car/jiazu/NewJiazuManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/car/jiazu/NewJiazuManager;->access$102(Lcom/car/jiazu/NewJiazuManager;Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/RemoteService;

    return-void
.end method
