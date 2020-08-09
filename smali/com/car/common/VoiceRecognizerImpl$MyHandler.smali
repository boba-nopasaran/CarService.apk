.class final Lcom/car/common/VoiceRecognizerImpl$MyHandler;
.super Landroid/os/Handler;
.source "VoiceRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/common/VoiceRecognizerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/common/VoiceRecognizerImpl;


# direct methods
.method private constructor <init>(Lcom/car/common/VoiceRecognizerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/car/common/VoiceRecognizerImpl$MyHandler;->this$0:Lcom/car/common/VoiceRecognizerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/common/VoiceRecognizerImpl;Lcom/car/common/VoiceRecognizerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/common/VoiceRecognizerImpl$MyHandler;-><init>(Lcom/car/common/VoiceRecognizerImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/car/common/VoiceRecognizerImpl$MyHandler;->this$0:Lcom/car/common/VoiceRecognizerImpl;

    iget-object v1, v1, Lcom/car/common/VoiceRecognizerImpl;->mService:Lcom/car/common/IVoiceRecognizer;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/car/common/VoiceRecognizerImpl$MyHandler;->this$0:Lcom/car/common/VoiceRecognizerImpl;

    invoke-static {v1}, Lcom/car/common/VoiceRecognizerImpl;->access$300(Lcom/car/common/VoiceRecognizerImpl;)V

    goto :goto_0

    :cond_1
    const-string v1, "CarSvc_VoiceRecognize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service is avaliable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/common/VoiceRecognizerImpl$MyHandler;->this$0:Lcom/car/common/VoiceRecognizerImpl;

    iget-object v3, v3, Lcom/car/common/VoiceRecognizerImpl;->mService:Lcom/car/common/IVoiceRecognizer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v1, "CarSvc_VoiceRecognize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecognizeResult cb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/common/VoiceRecognizerImpl$MyHandler;->this$0:Lcom/car/common/VoiceRecognizerImpl;

    iget-object v3, v3, Lcom/car/common/VoiceRecognizerImpl;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/common/VoiceRecognizerImpl$MyHandler;->this$0:Lcom/car/common/VoiceRecognizerImpl;

    iget-object v1, v1, Lcom/car/common/VoiceRecognizerImpl;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/common/VoiceRecognizerImpl$MyHandler;->this$0:Lcom/car/common/VoiceRecognizerImpl;

    iget-object v1, v1, Lcom/car/common/VoiceRecognizerImpl;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/common/VoiceRecognizerCallback;

    if-eqz v0, :cond_0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/car/common/RecognizeText;

    iget-object v4, v1, Lcom/car/common/RecognizeText;->text:Ljava/lang/String;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/car/common/RecognizeText;

    iget-boolean v1, v1, Lcom/car/common/RecognizeText;->isLast:Z

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/car/common/VoiceRecognizerCallback;->onRecognizeResult(IILjava/lang/String;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
