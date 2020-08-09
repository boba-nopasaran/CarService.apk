.class Lcom/car/voice/VoiceRecognizerService$2;
.super Ljava/lang/Object;
.source "VoiceRecognizerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/voice/VoiceRecognizerService;->onStartCommand(Landroid/content/Intent;II)I
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

    iput-object p1, p0, Lcom/car/voice/VoiceRecognizerService$2;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService$2;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-static {v0}, Lcom/car/voice/VoiceRecognizerService;->access$300(Lcom/car/voice/VoiceRecognizerService;)Lcom/car/voice/VoiceUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/car/voice/VoiceUI;->isUIShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService$2;->this$0:Lcom/car/voice/VoiceRecognizerService;

    iget-object v1, p0, Lcom/car/voice/VoiceRecognizerService$2;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-static {v1}, Lcom/car/voice/VoiceRecognizerService;->access$400(Lcom/car/voice/VoiceRecognizerService;)Lcom/car/voice/RecDefaultProcess;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/car/voice/VoiceRecognizerService;->doRequestRecognizer(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/voice/VoiceRecognizerService$2;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-static {v0}, Lcom/car/voice/VoiceRecognizerService;->access$300(Lcom/car/voice/VoiceRecognizerService;)Lcom/car/voice/VoiceUI;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/car/voice/VoiceUI;->prepareUI(ILjava/lang/String;)Z

    goto :goto_0
.end method
