.class Lcom/car/systemfunc/KaoLaManager$1;
.super Landroid/os/Handler;
.source "KaoLaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/KaoLaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/KaoLaManager;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/KaoLaManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/KaoLaManager$1;->this$0:Lcom/car/systemfunc/KaoLaManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/car/systemfunc/KaoLaManager$1;->removeMessages(I)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/KaoLaManager$1;->this$0:Lcom/car/systemfunc/KaoLaManager;

    invoke-virtual {v0}, Lcom/car/systemfunc/KaoLaManager;->play()V

    :cond_0
    return-void
.end method
