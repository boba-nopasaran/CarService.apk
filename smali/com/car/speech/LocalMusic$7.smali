.class Lcom/car/speech/LocalMusic$7;
.super Ljava/lang/Object;
.source "LocalMusic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/speech/LocalMusic;->playSongAgain(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/speech/LocalMusic;

.field final synthetic val$song:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/speech/LocalMusic;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/LocalMusic$7;->this$0:Lcom/car/speech/LocalMusic;

    iput-object p2, p0, Lcom/car/speech/LocalMusic$7;->val$song:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/car/speech/LocalMusic$7;->this$0:Lcom/car/speech/LocalMusic;

    iget-object v3, p0, Lcom/car/speech/LocalMusic$7;->val$song:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/car/speech/LocalMusic;->search(Ljava/lang/String;)[J

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/car/speech/LocalMusic$7;->this$0:Lcom/car/speech/LocalMusic;

    iget-object v3, p0, Lcom/car/speech/LocalMusic$7;->val$song:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/car/speech/LocalMusic;->globalSearchAgain(Ljava/lang/String;)[J

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/car/speech/LocalMusic$7;->this$0:Lcom/car/speech/LocalMusic;

    invoke-virtual {v2}, Lcom/car/speech/LocalMusic;->nothingFound()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/car/speech/LocalMusic$7;->this$0:Lcom/car/speech/LocalMusic;

    iget-object v2, v2, Lcom/car/speech/LocalMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
