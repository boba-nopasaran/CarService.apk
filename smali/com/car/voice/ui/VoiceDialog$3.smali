.class Lcom/car/voice/ui/VoiceDialog$3;
.super Ljava/lang/Object;
.source "VoiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/car/voice/ui/VoiceDialog$3;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog$3;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v0}, Lcom/car/voice/ui/VoiceDialog;->access$100(Lcom/car/voice/ui/VoiceDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog$3;->this$0:Lcom/car/voice/ui/VoiceDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/car/voice/ui/VoiceDialog;->access$202(Lcom/car/voice/ui/VoiceDialog;I)I

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog$3;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v0}, Lcom/car/voice/ui/VoiceDialog;->access$000(Lcom/car/voice/ui/VoiceDialog;)Lcom/car/voice/VoiceUICallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog$3;->this$0:Lcom/car/voice/ui/VoiceDialog;

    invoke-static {v0}, Lcom/car/voice/ui/VoiceDialog;->access$000(Lcom/car/voice/ui/VoiceDialog;)Lcom/car/voice/VoiceUICallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/car/voice/VoiceUICallback;->onVoiceUIDismiss()V

    :cond_0
    return-void
.end method
