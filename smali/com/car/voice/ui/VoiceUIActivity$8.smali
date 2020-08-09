.class Lcom/car/voice/ui/VoiceUIActivity$8;
.super Ljava/lang/Object;
.source "VoiceUIActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/voice/ui/VoiceUIActivity;->showCommandTips()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/voice/ui/VoiceUIActivity;


# direct methods
.method constructor <init>(Lcom/car/voice/ui/VoiceUIActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/ui/VoiceUIActivity$8;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity$8;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v0}, Lcom/car/voice/ui/VoiceUIActivity;->access$600(Lcom/car/voice/ui/VoiceUIActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity$8;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v0}, Lcom/car/voice/ui/VoiceUIActivity;->access$400(Lcom/car/voice/ui/VoiceUIActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity$8;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v0}, Lcom/car/voice/ui/VoiceUIActivity;->access$400(Lcom/car/voice/ui/VoiceUIActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity$8;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v0}, Lcom/car/voice/ui/VoiceUIActivity;->access$1100(Lcom/car/voice/ui/VoiceUIActivity;)V

    goto :goto_0
.end method
