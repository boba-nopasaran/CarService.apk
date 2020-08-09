.class Lcom/car/voice/ui/VoiceUIActivity$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "VoiceUIActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/voice/ui/VoiceUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/voice/ui/VoiceUIActivity;


# direct methods
.method constructor <init>(Lcom/car/voice/ui/VoiceUIActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/ui/VoiceUIActivity$MyWebChromeClient;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    const-string v0, "CarSvc_VoiceUIActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity$MyWebChromeClient;->this$0:Lcom/car/voice/ui/VoiceUIActivity;

    invoke-static {v0}, Lcom/car/voice/ui/VoiceUIActivity;->access$200(Lcom/car/voice/ui/VoiceUIActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
