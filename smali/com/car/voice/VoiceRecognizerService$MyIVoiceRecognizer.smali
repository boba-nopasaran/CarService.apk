.class final Lcom/car/voice/VoiceRecognizerService$MyIVoiceRecognizer;
.super Lcom/car/common/IVoiceRecognizer$Stub;
.source "VoiceRecognizerService.java"

# interfaces
.implements Lcom/car/utils/TipPlayer$TTSDoneNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/voice/VoiceRecognizerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyIVoiceRecognizer"
.end annotation


# instance fields
.field mObject:Ljava/lang/Object;

.field final synthetic this$0:Lcom/car/voice/VoiceRecognizerService;


# direct methods
.method private constructor <init>(Lcom/car/voice/VoiceRecognizerService;)V
    .locals 1

    iput-object p1, p0, Lcom/car/voice/VoiceRecognizerService$MyIVoiceRecognizer;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-direct {p0}, Lcom/car/common/IVoiceRecognizer$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/car/voice/VoiceRecognizerService$MyIVoiceRecognizer;->mObject:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/voice/VoiceRecognizerService;Lcom/car/voice/VoiceRecognizerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/voice/VoiceRecognizerService$MyIVoiceRecognizer;-><init>(Lcom/car/voice/VoiceRecognizerService;)V

    return-void
.end method


# virtual methods
.method public onTTSDone()V
    .locals 2

    iget-object v1, p0, Lcom/car/voice/VoiceRecognizerService$MyIVoiceRecognizer;->mObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService$MyIVoiceRecognizer;->mObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public playTTS(Ljava/lang/String;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/car/utils/TipPlayer;->needNotifyIfDone(Lcom/car/utils/TipPlayer$TTSDoneNotifier;)V

    iget-object v2, p0, Lcom/car/voice/VoiceRecognizerService$MyIVoiceRecognizer;->mObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/car/voice/VoiceRecognizerService$MyIVoiceRecognizer;->mObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v2

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public releaseRecognizer(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public requestRecognizer(ILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService$MyIVoiceRecognizer;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-static {v0}, Lcom/car/voice/VoiceRecognizerService;->access$500(Lcom/car/voice/VoiceRecognizerService;)Lcom/car/voice/VoiceRecognizerService$MyHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/car/voice/VoiceRecognizerService$MyIVoiceRecognizer;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-static {v1}, Lcom/car/voice/VoiceRecognizerService;->access$500(Lcom/car/voice/VoiceRecognizerService;)Lcom/car/voice/VoiceRecognizerService$MyHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/car/voice/VoiceRecognizerService$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/voice/VoiceRecognizerService$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return v3
.end method

.method public setCallback(Lcom/car/common/IVoiceRecognizerCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService$MyIVoiceRecognizer;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-virtual {v0, p1}, Lcom/car/voice/VoiceRecognizerService;->setCallback(Lcom/car/common/IVoiceRecognizerCallback;)V

    return-void
.end method
