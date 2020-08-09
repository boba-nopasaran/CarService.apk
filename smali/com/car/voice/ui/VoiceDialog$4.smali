.class Lcom/car/voice/ui/VoiceDialog$4;
.super Ljava/lang/Object;
.source "VoiceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/voice/ui/VoiceDialog;->onShowPhoneCallIncoming(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private clearID:I

.field final synthetic this$0:Lcom/car/voice/ui/VoiceDialog;


# direct methods
.method constructor <init>(Lcom/car/voice/ui/VoiceDialog;)V
    .locals 1

    iput-object p1, p0, Lcom/car/voice/ui/VoiceDialog$4;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog$4;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v0}, Lcom/car/voice/ui/VoiceDialog;->access$300(Lcom/car/voice/ui/VoiceDialog;)I

    move-result v0

    iput v0, p0, Lcom/car/voice/ui/VoiceDialog$4;->clearID:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/car/voice/ui/VoiceDialog$4;->clearID:I

    iget-object v1, p0, Lcom/car/voice/ui/VoiceDialog$4;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v1}, Lcom/car/voice/ui/VoiceDialog;->access$300(Lcom/car/voice/ui/VoiceDialog;)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog$4;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v0}, Lcom/car/voice/ui/VoiceDialog;->access$000(Lcom/car/voice/ui/VoiceDialog;)Lcom/car/voice/VoiceUICallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog$4;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v0}, Lcom/car/voice/ui/VoiceDialog;->access$000(Lcom/car/voice/ui/VoiceDialog;)Lcom/car/voice/VoiceUICallback;

    move-result-object v0

    const-string v1, "\u63a5\u542c"

    invoke-interface {v0, v1}, Lcom/car/voice/VoiceUICallback;->onVoiceUIResult(Ljava/lang/String;)V

    goto :goto_0
.end method
