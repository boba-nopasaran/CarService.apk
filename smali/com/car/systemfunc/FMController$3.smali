.class Lcom/car/systemfunc/FMController$3;
.super Ljava/lang/Object;
.source "FMController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/FMController;->setFMEnable(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/FMController;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/FMController;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/FMController$3;->this$0:Lcom/car/systemfunc/FMController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/car/systemfunc/FMController$3;->this$0:Lcom/car/systemfunc/FMController;

    iget-boolean v0, v0, Lcom/car/systemfunc/FMController;->mEnable:Z

    if-eqz v0, :cond_0

    const-string v0, "CarSvc_FMController"

    const-string v1, "FM is enabled, no need to restore volume."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/systemfunc/FMController$3;->this$0:Lcom/car/systemfunc/FMController;

    invoke-static {v0}, Lcom/car/systemfunc/FMController;->access$200(Lcom/car/systemfunc/FMController;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/systemfunc/FMController$3;->this$0:Lcom/car/systemfunc/FMController;

    invoke-static {v0}, Lcom/car/systemfunc/FMController;->access$200(Lcom/car/systemfunc/FMController;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/car/systemfunc/FMController$3;->this$0:Lcom/car/systemfunc/FMController;

    invoke-static {v0}, Lcom/car/systemfunc/FMController;->access$200(Lcom/car/systemfunc/FMController;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/car/systemfunc/FMController$3;->this$0:Lcom/car/systemfunc/FMController;

    invoke-static {v1}, Lcom/car/systemfunc/FMController;->access$300(Lcom/car/systemfunc/FMController;)I

    move-result v1

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string v0, "CarSvc_FMController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore volume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/FMController$3;->this$0:Lcom/car/systemfunc/FMController;

    invoke-static {v2}, Lcom/car/systemfunc/FMController;->access$300(Lcom/car/systemfunc/FMController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
