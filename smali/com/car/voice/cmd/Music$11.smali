.class Lcom/car/voice/cmd/Music$11;
.super Ljava/lang/Object;
.source "Music.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/voice/cmd/Music;->playAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/voice/cmd/Music;


# direct methods
.method constructor <init>(Lcom/car/voice/cmd/Music;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/cmd/Music$11;->this$0:Lcom/car/voice/cmd/Music;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/car/voice/cmd/Music$11;->this$0:Lcom/car/voice/cmd/Music;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/car/voice/cmd/Music;->search(Ljava/lang/String;)[J

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/car/voice/cmd/Music$11;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v2, v2, Lcom/car/voice/cmd/Music;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    invoke-virtual {v2}, Lcom/car/voice/VoiceEngineFactory;->getRecType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/car/voice/cmd/Music$11;->this$0:Lcom/car/voice/cmd/Music;

    const-string v3, "\u97f3\u4e50"

    invoke-virtual {v2, v3}, Lcom/car/voice/cmd/Music;->networkSearch(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/car/voice/cmd/Music$11;->this$0:Lcom/car/voice/cmd/Music;

    invoke-virtual {v2}, Lcom/car/voice/cmd/Music;->nothingFound()V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/car/voice/cmd/Music$11;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v2, v2, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
