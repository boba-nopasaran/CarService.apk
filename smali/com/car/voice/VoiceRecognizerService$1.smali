.class Lcom/car/voice/VoiceRecognizerService$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/car/voice/VoiceRecognizerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/VoiceRecognizerService$1;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v1, p0, Lcom/car/voice/VoiceRecognizerService$1;->this$0:Lcom/car/voice/VoiceRecognizerService;

    invoke-virtual {v1}, Lcom/car/voice/VoiceRecognizerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getWakeupSensity(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/car/voice/VoiceRecognizerService$1;->this$0:Lcom/car/voice/VoiceRecognizerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/car/voice/VoiceRecognizerService;->access$200(Lcom/car/voice/VoiceRecognizerService;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/car/voice/VoiceRecognizerService$1;->this$0:Lcom/car/voice/VoiceRecognizerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/car/voice/VoiceRecognizerService;->access$200(Lcom/car/voice/VoiceRecognizerService;Z)V

    goto :goto_0
.end method
