.class Lcom/car/systemfunc/WatchDogManager$1;
.super Landroid/os/Handler;
.source "WatchDogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/WatchDogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/WatchDogManager;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/WatchDogManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/WatchDogManager$1;->this$0:Lcom/car/systemfunc/WatchDogManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/WatchDogManager$1;->this$0:Lcom/car/systemfunc/WatchDogManager;

    iget-object v0, v0, Lcom/car/systemfunc/WatchDogManager;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    iget-object v0, p0, Lcom/car/systemfunc/WatchDogManager$1;->this$0:Lcom/car/systemfunc/WatchDogManager;

    invoke-virtual {v0}, Lcom/car/systemfunc/WatchDogManager;->doFeedDog()V

    iget-object v0, p0, Lcom/car/systemfunc/WatchDogManager$1;->this$0:Lcom/car/systemfunc/WatchDogManager;

    iget-object v0, v0, Lcom/car/systemfunc/WatchDogManager;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    :cond_0
    return-void
.end method
