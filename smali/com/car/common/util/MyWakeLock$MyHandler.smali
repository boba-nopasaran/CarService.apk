.class Lcom/car/common/util/MyWakeLock$MyHandler;
.super Landroid/os/Handler;
.source "MyWakeLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/common/util/MyWakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/common/util/MyWakeLock;


# direct methods
.method public constructor <init>(Lcom/car/common/util/MyWakeLock;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/car/common/util/MyWakeLock$MyHandler;->this$0:Lcom/car/common/util/MyWakeLock;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/common/util/MyWakeLock$MyHandler;->this$0:Lcom/car/common/util/MyWakeLock;

    invoke-virtual {v0}, Lcom/car/common/util/MyWakeLock;->forceWakeLockReleased()V

    iget-object v0, p0, Lcom/car/common/util/MyWakeLock$MyHandler;->this$0:Lcom/car/common/util/MyWakeLock;

    iget-object v0, v0, Lcom/car/common/util/MyWakeLock;->mMyWakelockTimeoutListener:Lcom/car/common/util/MyWakeLock$MyWakelockTimeoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/common/util/MyWakeLock$MyHandler;->this$0:Lcom/car/common/util/MyWakeLock;

    iget-object v0, v0, Lcom/car/common/util/MyWakeLock;->mMyWakelockTimeoutListener:Lcom/car/common/util/MyWakeLock$MyWakelockTimeoutListener;

    iget-object v1, p0, Lcom/car/common/util/MyWakeLock$MyHandler;->this$0:Lcom/car/common/util/MyWakeLock;

    invoke-interface {v0, v1}, Lcom/car/common/util/MyWakeLock$MyWakelockTimeoutListener;->onWakelockTimeout(Lcom/car/common/util/MyWakeLock;)V

    :cond_0
    return-void
.end method
