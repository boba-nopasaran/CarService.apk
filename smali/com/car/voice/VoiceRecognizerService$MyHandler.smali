.class final Lcom/car/voice/VoiceRecognizerService$MyHandler;
.super Landroid/os/Handler;
.source "VoiceRecognizerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/voice/VoiceRecognizerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/voice/VoiceRecognizerService;


# direct methods
.method private constructor <init>(Lcom/car/voice/VoiceRecognizerService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/VoiceRecognizerService$MyHandler;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/voice/VoiceRecognizerService;Lcom/car/voice/VoiceRecognizerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/voice/VoiceRecognizerService$MyHandler;-><init>(Lcom/car/voice/VoiceRecognizerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/car/voice/VoiceRecognizerService$MyHandler;->this$0:Lcom/car/voice/VoiceRecognizerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/car/voice/VoiceRecognizerService;->requestRecognizer(ILjava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
