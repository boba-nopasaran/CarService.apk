.class Lcom/car/voice/VoiceRecognizerService$4;
.super Landroid/content/BroadcastReceiver;
.source "VoiceRecognizerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/voice/VoiceRecognizerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/voice/VoiceRecognizerService;


# direct methods
.method constructor <init>(Lcom/car/voice/VoiceRecognizerService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/VoiceRecognizerService$4;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/16 v8, 0x10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "CarSvc_VoiceRecognizeService"

    const-string v4, "SCREEN_ON"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService$4;->this$0:Lcom/car/voice/VoiceRecognizerService;

    iput-boolean v6, v3, Lcom/car/voice/VoiceRecognizerService;->mSleep:Z

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService$4;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-static {v3, v7, v6}, Lcom/car/voice/VoiceRecognizerService;->access$600(Lcom/car/voice/VoiceRecognizerService;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "CarSvc_VoiceRecognizeService"

    const-string v4, "SCREEN_OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.car.syswakeup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService$4;->this$0:Lcom/car/voice/VoiceRecognizerService;

    iput-boolean v6, v3, Lcom/car/voice/VoiceRecognizerService;->mSleep:Z

    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CarSvc_VoiceRecognizeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.car.syswakeup, reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    const-string v3, "user,acc_on,gsensor"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService$4;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-static {v3, v7, v6}, Lcom/car/voice/VoiceRecognizerService;->access$600(Lcom/car/voice/VoiceRecognizerService;ZZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.car.gotosleep"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "CarSvc_VoiceRecognizeService"

    const-string v4, "ACTION_RECORDING_SLEEP"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService$4;->this$0:Lcom/car/voice/VoiceRecognizerService;

    iput-boolean v7, v3, Lcom/car/voice/VoiceRecognizerService;->mSleep:Z

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService$4;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-static {v3, v6, v7}, Lcom/car/voice/VoiceRecognizerService;->access$600(Lcom/car/voice/VoiceRecognizerService;ZZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.car.bthpone.connected.notify"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "connected"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService$4;->this$0:Lcom/car/voice/VoiceRecognizerService;

    iput v8, v3, Lcom/car/voice/VoiceRecognizerService;->mCallStatus:I

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService$4;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-static {v3, v7}, Lcom/car/voice/VoiceRecognizerService;->access$200(Lcom/car/voice/VoiceRecognizerService;Z)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.car.btphone.action"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService$4;->this$0:Lcom/car/voice/VoiceRecognizerService;

    const-string v4, "status"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/car/voice/VoiceRecognizerService;->mCallStatus:I

    const-string v3, "numbername"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CarSvc_VoiceRecognizeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/voice/VoiceRecognizerService$4;->this$0:Lcom/car/voice/VoiceRecognizerService;

    iget v5, v5, Lcom/car/voice/VoiceRecognizerService;->mCallStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", numName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService$4;->this$0:Lcom/car/voice/VoiceRecognizerService;

    iget v3, v3, Lcom/car/voice/VoiceRecognizerService;->mCallStatus:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService$4;->this$0:Lcom/car/voice/VoiceRecognizerService;

    iget v3, v3, Lcom/car/voice/VoiceRecognizerService;->mCallStatus:I

    if-eq v3, v8, :cond_7

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService$4;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-static {v3}, Lcom/car/voice/VoiceRecognizerService;->access$300(Lcom/car/voice/VoiceRecognizerService;)Lcom/car/voice/VoiceUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/car/voice/VoiceUI;->isUIShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService$4;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-static {v3}, Lcom/car/voice/VoiceRecognizerService;->access$300(Lcom/car/voice/VoiceRecognizerService;)Lcom/car/voice/VoiceUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/car/voice/VoiceUI;->dismissUI()V

    :cond_6
    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService$4;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-static {v3, v6}, Lcom/car/voice/VoiceRecognizerService;->access$200(Lcom/car/voice/VoiceRecognizerService;Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/car/voice/VoiceRecognizerService$4;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-static {v3, v7}, Lcom/car/voice/VoiceRecognizerService;->access$200(Lcom/car/voice/VoiceRecognizerService;Z)V

    goto/16 :goto_0
.end method
