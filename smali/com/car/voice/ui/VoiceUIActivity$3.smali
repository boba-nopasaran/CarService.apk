.class Lcom/car/voice/ui/VoiceUIActivity$3;
.super Ljava/lang/Object;
.source "VoiceUIActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/voice/ui/VoiceUIActivity;->onShowPhoneCallIncoming(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private clearID:I

.field final synthetic this$0:Lcom/car/voice/ui/VoiceUIActivity;


# direct methods
.method constructor <init>(Lcom/car/voice/ui/VoiceUIActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/car/voice/ui/VoiceUIActivity$3;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity$3;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v0}, Lcom/car/voice/ui/VoiceUIActivity;->access$100(Lcom/car/voice/ui/VoiceUIActivity;)I

    move-result v0

    iput v0, p0, Lcom/car/voice/ui/VoiceUIActivity$3;->clearID:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/car/voice/ui/VoiceUIActivity$3;->clearID:I

    iget-object v1, p0, Lcom/car/voice/ui/VoiceUIActivity$3;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v1}, Lcom/car/voice/ui/VoiceUIActivity;->access$100(Lcom/car/voice/ui/VoiceUIActivity;)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->access$000()Lcom/car/voice/VoiceUICallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/voice/ui/VoiceUIActivity;->access$000()Lcom/car/voice/VoiceUICallback;

    move-result-object v0

    const-string v1, "\u63a5\u542c"

    invoke-interface {v0, v1}, Lcom/car/voice/VoiceUICallback;->onVoiceUIResult(Ljava/lang/String;)V

    goto :goto_0
.end method
