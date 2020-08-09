.class Lcom/car/speech/MiniSpeech$3;
.super Ljava/lang/Object;
.source "MiniSpeech.java"

# interfaces
.implements Lcom/aispeech/export/listeners/AIAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/speech/MiniSpeech;->try2Auth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/speech/MiniSpeech;


# direct methods
.method constructor <init>(Lcom/car/speech/MiniSpeech;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/MiniSpeech$3;->this$0:Lcom/car/speech/MiniSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFailed(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x65

    const-string v0, "CarSvc_MiniSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6388\u6743\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$3;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v0, v0, Lcom/car/speech/MiniSpeech;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$3;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v0, v0, Lcom/car/speech/MiniSpeech;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onAuthSuccess()V
    .locals 2

    const-string v0, "CarSvc_MiniSpeech"

    const-string v1, "\u6388\u6743\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$3;->this$0:Lcom/car/speech/MiniSpeech;

    invoke-static {v0}, Lcom/car/speech/MiniSpeech;->access$100(Lcom/car/speech/MiniSpeech;)V

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$3;->this$0:Lcom/car/speech/MiniSpeech;

    invoke-static {v0}, Lcom/car/speech/MiniSpeech;->access$200(Lcom/car/speech/MiniSpeech;)V

    return-void
.end method
