.class Lcom/car/voice/ui/VoiceDialog$1;
.super Ljava/lang/Object;
.source "VoiceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/voice/ui/VoiceDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/voice/ui/VoiceDialog;


# direct methods
.method constructor <init>(Lcom/car/voice/ui/VoiceDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/ui/VoiceDialog$1;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog$1;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v0}, Lcom/car/voice/ui/VoiceDialog;->access$000(Lcom/car/voice/ui/VoiceDialog;)Lcom/car/voice/VoiceUICallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog$1;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v0}, Lcom/car/voice/ui/VoiceDialog;->access$000(Lcom/car/voice/ui/VoiceDialog;)Lcom/car/voice/VoiceUICallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/car/voice/VoiceUICallback;->onVoiceUIRestartRecognizer()V

    :cond_0
    return-void
.end method
