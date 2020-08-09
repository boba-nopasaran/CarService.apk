.class Lcom/car/voice/remote/RemoteVoice$MyHandler;
.super Landroid/os/Handler;
.source "RemoteVoice.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/voice/remote/RemoteVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/voice/remote/RemoteVoice;


# direct methods
.method private constructor <init>(Lcom/car/voice/remote/RemoteVoice;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/remote/RemoteVoice$MyHandler;->this$0:Lcom/car/voice/remote/RemoteVoice;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/voice/remote/RemoteVoice;Lcom/car/voice/remote/RemoteVoice$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/voice/remote/RemoteVoice$MyHandler;-><init>(Lcom/car/voice/remote/RemoteVoice;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v1, 0x1

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/car/voice/remote/RemoteVoice$MyHandler;->removeMessages(I)V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v1, :cond_2

    :goto_0
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/car/voice/remote/RemoteVoice;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "CarSvc_RemoteVoice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteMicInfo result=<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">,last="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v3, :cond_3

    invoke-static {v4}, Lcom/car/common/voice/JsonParser;->parseIFlySemanticJason(Ljava/lang/String;)Lcom/car/common/voice/IFlySemanticWrapper;

    move-result-object v2

    iget-object v6, p0, Lcom/car/voice/remote/RemoteVoice$MyHandler;->this$0:Lcom/car/voice/remote/RemoteVoice;

    invoke-static {v6}, Lcom/car/voice/remote/RemoteVoice;->access$200(Lcom/car/voice/remote/RemoteVoice;)Lcom/car/voice/VoiceEngineFactory$VoiceListener;

    move-result-object v6

    iget-object v7, p0, Lcom/car/voice/remote/RemoteVoice$MyHandler;->this$0:Lcom/car/voice/remote/RemoteVoice;

    invoke-static {v7}, Lcom/car/voice/remote/RemoteVoice;->access$100(Lcom/car/voice/remote/RemoteVoice;)I

    move-result v7

    const/high16 v8, 0x200000

    or-int/2addr v7, v8

    invoke-virtual {v2, v5}, Lcom/car/common/voice/IFlySemanticWrapper;->getFinalText(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v7, v3, v5, v1}, Lcom/car/voice/VoiceEngineFactory$VoiceListener;->onResult(IILjava/lang/String;Z)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v5

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/car/voice/remote/RemoteVoice$MyHandler;->this$0:Lcom/car/voice/remote/RemoteVoice;

    invoke-static {v5}, Lcom/car/voice/remote/RemoteVoice;->access$200(Lcom/car/voice/remote/RemoteVoice;)Lcom/car/voice/VoiceEngineFactory$VoiceListener;

    move-result-object v5

    iget-object v6, p0, Lcom/car/voice/remote/RemoteVoice$MyHandler;->this$0:Lcom/car/voice/remote/RemoteVoice;

    invoke-static {v6}, Lcom/car/voice/remote/RemoteVoice;->access$100(Lcom/car/voice/remote/RemoteVoice;)I

    move-result v6

    const/high16 v7, 0x10000

    or-int/2addr v6, v7

    invoke-interface {v5, v6, v3, v4, v1}, Lcom/car/voice/VoiceEngineFactory$VoiceListener;->onResult(IILjava/lang/String;Z)Z

    goto :goto_1

    :cond_4
    iget v6, p1, Landroid/os/Message;->what:I

    if-nez v6, :cond_1

    invoke-virtual {p0, v5}, Lcom/car/voice/remote/RemoteVoice$MyHandler;->removeMessages(I)V

    invoke-static {}, Lcom/car/voice/remote/RemoteVoice;->access$000()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "CarSvc_RemoteVoice"

    const-string v6, "RemoteMicInfo ask start voice"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v5

    if-ne v5, v1, :cond_6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.car.voice.VoiceRecognizerService"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/car/voice/remote/RemoteVoice$MyHandler;->this$0:Lcom/car/voice/remote/RemoteVoice;

    iget-object v5, v5, Lcom/car/voice/remote/RemoteVoice;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/car/voice/remote/RemoteVoice$MyHandler;->this$0:Lcom/car/voice/remote/RemoteVoice;

    invoke-virtual {v5, v1}, Lcom/car/voice/remote/RemoteVoice;->stop(Z)V

    invoke-static {}, Lcom/car/common/CarUtil;->isAliYunOS()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.aispeech.aios.UI_VOICE_TOGGLE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.aispeech.aios"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/car/voice/remote/RemoteVoice$MyHandler;->this$0:Lcom/car/voice/remote/RemoteVoice;

    iget-object v5, v5, Lcom/car/voice/remote/RemoteVoice;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/car/voice/remote/RemoteVoice$MyHandler;->this$0:Lcom/car/voice/remote/RemoteVoice;

    invoke-virtual {v5, v1}, Lcom/car/voice/remote/RemoteVoice;->stop(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.car.voiceassitant.start"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/car/voice/remote/RemoteVoice$MyHandler;->this$0:Lcom/car/voice/remote/RemoteVoice;

    iget-object v5, v5, Lcom/car/voice/remote/RemoteVoice;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method
