.class Lcom/car/systemfunc/FMController$2;
.super Landroid/database/ContentObserver;
.source "FMController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/FMController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/FMController;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/FMController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/FMController$2;->this$0:Lcom/car/systemfunc/FMController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const-string v2, "CarSvc_FMController"

    const-string v3, "onChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/systemfunc/FMController$2;->this$0:Lcom/car/systemfunc/FMController;

    invoke-static {v2}, Lcom/car/systemfunc/FMController;->access$000(Lcom/car/systemfunc/FMController;)Z

    move-result v0

    iget-object v2, p0, Lcom/car/systemfunc/FMController$2;->this$0:Lcom/car/systemfunc/FMController;

    iget-boolean v2, v2, Lcom/car/systemfunc/FMController;->mEnable:Z

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/car/systemfunc/FMController$2;->this$0:Lcom/car/systemfunc/FMController;

    iput-boolean v0, v2, Lcom/car/systemfunc/FMController;->mEnable:Z

    iget-object v2, p0, Lcom/car/systemfunc/FMController$2;->this$0:Lcom/car/systemfunc/FMController;

    iget-object v3, p0, Lcom/car/systemfunc/FMController$2;->this$0:Lcom/car/systemfunc/FMController;

    iget-boolean v3, v3, Lcom/car/systemfunc/FMController;->mEnable:Z

    iget-object v4, p0, Lcom/car/systemfunc/FMController$2;->this$0:Lcom/car/systemfunc/FMController;

    iget v4, v4, Lcom/car/systemfunc/FMController;->mFreq:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/car/systemfunc/FMController;->setFMEnable(ZIZ)V

    :cond_0
    iget-object v2, p0, Lcom/car/systemfunc/FMController$2;->this$0:Lcom/car/systemfunc/FMController;

    invoke-static {v2}, Lcom/car/systemfunc/FMController;->access$100(Lcom/car/systemfunc/FMController;)I

    move-result v1

    iget-object v2, p0, Lcom/car/systemfunc/FMController$2;->this$0:Lcom/car/systemfunc/FMController;

    iget v2, v2, Lcom/car/systemfunc/FMController;->mFreq:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/car/systemfunc/FMController$2;->this$0:Lcom/car/systemfunc/FMController;

    iput v1, v2, Lcom/car/systemfunc/FMController;->mFreq:I

    iget-object v2, p0, Lcom/car/systemfunc/FMController$2;->this$0:Lcom/car/systemfunc/FMController;

    iget-object v3, p0, Lcom/car/systemfunc/FMController$2;->this$0:Lcom/car/systemfunc/FMController;

    iget-boolean v3, v3, Lcom/car/systemfunc/FMController;->mEnable:Z

    iget-object v4, p0, Lcom/car/systemfunc/FMController$2;->this$0:Lcom/car/systemfunc/FMController;

    iget v4, v4, Lcom/car/systemfunc/FMController;->mFreq:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/car/systemfunc/FMController;->setFMEnable(ZIZ)V

    :cond_1
    return-void
.end method
