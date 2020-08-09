.class Lcom/car/ServiceApplication$6$2;
.super Ljava/lang/Object;
.source "ServiceApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/ServiceApplication$6;->onAIOSRebooted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/ServiceApplication$6;


# direct methods
.method constructor <init>(Lcom/car/ServiceApplication$6;)V
    .locals 0

    iput-object p1, p0, Lcom/car/ServiceApplication$6$2;->this$1:Lcom/car/ServiceApplication$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/car/ServiceApplication$6$2;->this$1:Lcom/car/ServiceApplication$6;

    iget-object v0, v0, Lcom/car/ServiceApplication$6;->this$0:Lcom/car/ServiceApplication;

    invoke-virtual {v0}, Lcom/car/ServiceApplication;->speechInit()V

    invoke-static {}, Lcom/car/speech/StreamMuteManager;->getInstance()Lcom/car/speech/StreamMuteManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/car/speech/StreamMuteManager;->setMute(Z)V

    iget-object v0, p0, Lcom/car/ServiceApplication$6$2;->this$1:Lcom/car/ServiceApplication$6;

    iget-object v0, v0, Lcom/car/ServiceApplication$6;->this$0:Lcom/car/ServiceApplication;

    iget-object v0, v0, Lcom/car/ServiceApplication;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->stopInteraction()V

    invoke-static {}, Lcom/car/speech/StreamMuteManager;->getInstance()Lcom/car/speech/StreamMuteManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/car/speech/StreamMuteManager;->setMute(Z)V

    const-string v0, "sys.car.sleep"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->setACCOff()V

    :cond_0
    return-void
.end method
