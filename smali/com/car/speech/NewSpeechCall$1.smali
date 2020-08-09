.class Lcom/car/speech/NewSpeechCall$1;
.super Landroid/content/BroadcastReceiver;
.source "NewSpeechCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/speech/NewSpeechCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/speech/NewSpeechCall;


# direct methods
.method constructor <init>(Lcom/car/speech/NewSpeechCall;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/NewSpeechCall$1;->this$0:Lcom/car/speech/NewSpeechCall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/16 v9, 0x10

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/car/speech/NewSpeechCall$1;->this$0:Lcom/car/speech/NewSpeechCall;

    iget-object v5, v5, Lcom/car/speech/NewSpeechCall;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.car.bthpone.contacts.notify"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "status"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x3ec

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/car/speech/NewSpeechCall$1;->this$0:Lcom/car/speech/NewSpeechCall;

    iget-boolean v5, v5, Lcom/car/speech/NewSpeechCall;->mBTConnected:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/car/speech/NewSpeechCall$1$1;

    invoke-direct {v6, p0}, Lcom/car/speech/NewSpeechCall$1$1;-><init>(Lcom/car/speech/NewSpeechCall$1;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.car.btphone.action"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "status"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v5, "numbername"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc

    if-ne v1, v5, :cond_2

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->callOffhook()V

    goto :goto_0

    :cond_2
    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->incomingCallRing(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v1, v9, :cond_4

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->callEnd()V

    goto :goto_0

    :cond_4
    const/16 v5, 0xe

    if-ne v1, v5, :cond_0

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->outgoingCallRing()V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.car.bthpone.connected.notify"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "connected"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v5, p0, Lcom/car/speech/NewSpeechCall$1;->this$0:Lcom/car/speech/NewSpeechCall;

    invoke-virtual {v5, v2}, Lcom/car/speech/NewSpeechCall;->doReportBTState(Z)V

    goto :goto_0
.end method
