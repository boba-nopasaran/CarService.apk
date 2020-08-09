.class Lcom/car/voice/cmd/Dial$1;
.super Landroid/os/Handler;
.source "Dial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/voice/cmd/Dial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/voice/cmd/Dial;


# direct methods
.method constructor <init>(Lcom/car/voice/cmd/Dial;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/cmd/Dial$1;->this$0:Lcom/car/voice/cmd/Dial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/car/voice/cmd/Dial$1;->this$0:Lcom/car/voice/cmd/Dial;

    const/4 v1, 0x1

    iput v1, v0, Lcom/car/voice/cmd/Dial;->mMsgId:I

    iget-object v0, p0, Lcom/car/voice/cmd/Dial$1;->this$0:Lcom/car/voice/cmd/Dial;

    invoke-static {v0}, Lcom/car/voice/cmd/Dial;->access$000(Lcom/car/voice/cmd/Dial;)Lcom/car/voice/VoiceEngineFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/car/voice/cmd/Dial$1;->this$0:Lcom/car/voice/cmd/Dial;

    invoke-virtual {v0, v2, v3, v1}, Lcom/car/voice/VoiceEngineFactory;->startRecognize(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/car/voice/cmd/Dial$1;->this$0:Lcom/car/voice/cmd/Dial;

    iput v2, v0, Lcom/car/voice/cmd/Dial;->mMsgId:I

    iget-object v0, p0, Lcom/car/voice/cmd/Dial$1;->this$0:Lcom/car/voice/cmd/Dial;

    invoke-static {v0}, Lcom/car/voice/cmd/Dial;->access$000(Lcom/car/voice/cmd/Dial;)Lcom/car/voice/VoiceEngineFactory;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/voice/cmd/Dial$1;->this$0:Lcom/car/voice/cmd/Dial;

    invoke-virtual {v0, v1, v3, v2}, Lcom/car/voice/VoiceEngineFactory;->startRecognize(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
