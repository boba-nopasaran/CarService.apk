.class Lcom/car/voice/RecDefaultProcess$1;
.super Landroid/os/Handler;
.source "RecDefaultProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/voice/RecDefaultProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/voice/RecDefaultProcess;


# direct methods
.method constructor <init>(Lcom/car/voice/RecDefaultProcess;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/RecDefaultProcess$1;->this$0:Lcom/car/voice/RecDefaultProcess;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/car/voice/RecDefaultProcess$1;->this$0:Lcom/car/voice/RecDefaultProcess;

    invoke-static {v0}, Lcom/car/voice/RecDefaultProcess;->access$000(Lcom/car/voice/RecDefaultProcess;)Lcom/car/voice/VoiceEngineFactory;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/car/voice/RecDefaultProcess$1;->this$0:Lcom/car/voice/RecDefaultProcess;

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/voice/VoiceEngineFactory;->startRecognize(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
