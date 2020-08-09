.class final Lcom/car/common/VoiceRecognizerImpl$MyIVoiceRecognizeCallback;
.super Lcom/car/common/IVoiceRecognizerCallback$Stub;
.source "VoiceRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/common/VoiceRecognizerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyIVoiceRecognizeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/common/VoiceRecognizerImpl;


# direct methods
.method private constructor <init>(Lcom/car/common/VoiceRecognizerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/car/common/VoiceRecognizerImpl$MyIVoiceRecognizeCallback;->this$0:Lcom/car/common/VoiceRecognizerImpl;

    invoke-direct {p0}, Lcom/car/common/IVoiceRecognizerCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/common/VoiceRecognizerImpl;Lcom/car/common/VoiceRecognizerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/common/VoiceRecognizerImpl$MyIVoiceRecognizeCallback;-><init>(Lcom/car/common/VoiceRecognizerImpl;)V

    return-void
.end method


# virtual methods
.method public onRecognizeResult(IILjava/lang/String;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/car/common/VoiceRecognizerImpl$MyIVoiceRecognizeCallback;->this$0:Lcom/car/common/VoiceRecognizerImpl;

    iget-object v0, v0, Lcom/car/common/VoiceRecognizerImpl;->mHandler:Lcom/car/common/VoiceRecognizerImpl$MyHandler;

    iget-object v1, p0, Lcom/car/common/VoiceRecognizerImpl$MyIVoiceRecognizeCallback;->this$0:Lcom/car/common/VoiceRecognizerImpl;

    iget-object v1, v1, Lcom/car/common/VoiceRecognizerImpl;->mHandler:Lcom/car/common/VoiceRecognizerImpl$MyHandler;

    const/4 v2, 0x2

    new-instance v3, Lcom/car/common/RecognizeText;

    invoke-direct {v3, p4, p3}, Lcom/car/common/RecognizeText;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/car/common/VoiceRecognizerImpl$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/common/VoiceRecognizerImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    return v0
.end method
