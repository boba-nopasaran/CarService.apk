.class Lcom/car/systemfunc/KaoLaManager$2;
.super Lcom/kaolafm/sdk/client/PlayResult;
.source "KaoLaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/KaoLaManager;->play(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/car/systemfunc/KaoLaManager$2;->this$0:Lcom/car/systemfunc/KaoLaManager;

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/PlayResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/kaolafm/sdk/client/ErrorInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/car/systemfunc/KaoLaManager$2;->this$0:Lcom/car/systemfunc/KaoLaManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/car/systemfunc/KaoLaManager;->mHasPlay:Z

    return-void
.end method

.method public onSuccuss()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/car/systemfunc/KaoLaManager$2;->this$0:Lcom/car/systemfunc/KaoLaManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/car/systemfunc/KaoLaManager;->mHasPlay:Z

    iget-object v0, p0, Lcom/car/systemfunc/KaoLaManager$2;->this$0:Lcom/car/systemfunc/KaoLaManager;

    iget-object v0, v0, Lcom/car/systemfunc/KaoLaManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
