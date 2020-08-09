.class Lcom/car/ServiceApplication$6$1;
.super Ljava/lang/Object;
.source "ServiceApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/ServiceApplication$6;->onAIOSReady()V
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

    iput-object p1, p0, Lcom/car/ServiceApplication$6$1;->this$1:Lcom/car/ServiceApplication$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/car/ServiceApplication$6$1;->this$1:Lcom/car/ServiceApplication$6;

    iget-object v0, v0, Lcom/car/ServiceApplication$6;->this$0:Lcom/car/ServiceApplication;

    invoke-virtual {v0}, Lcom/car/ServiceApplication;->speechInit()V

    invoke-static {}, Lcom/car/speech/StreamMuteManager;->getInstance()Lcom/car/speech/StreamMuteManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/speech/StreamMuteManager;->setMute(Z)V

    iget-object v0, p0, Lcom/car/ServiceApplication$6$1;->this$1:Lcom/car/ServiceApplication$6;

    iget-object v0, v0, Lcom/car/ServiceApplication$6;->this$0:Lcom/car/ServiceApplication;

    iget-object v0, v0, Lcom/car/ServiceApplication;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
