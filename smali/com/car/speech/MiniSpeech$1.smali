.class Lcom/car/speech/MiniSpeech$1;
.super Landroid/os/Handler;
.source "MiniSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/speech/MiniSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/speech/MiniSpeech;


# direct methods
.method constructor <init>(Lcom/car/speech/MiniSpeech;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/MiniSpeech$1;->this$0:Lcom/car/speech/MiniSpeech;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/speech/MiniSpeech$1$1;

    invoke-direct {v1, p0}, Lcom/car/speech/MiniSpeech$1$1;-><init>(Lcom/car/speech/MiniSpeech$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$1;->this$0:Lcom/car/speech/MiniSpeech;

    const-string v1, ""

    iput-object v1, v0, Lcom/car/speech/MiniSpeech;->mLastPlayId:Ljava/lang/String;

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$1;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v0, v0, Lcom/car/speech/MiniSpeech;->mQueue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method
