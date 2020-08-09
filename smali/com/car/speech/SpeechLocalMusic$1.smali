.class Lcom/car/speech/SpeechLocalMusic$1;
.super Ljava/lang/Object;
.source "SpeechLocalMusic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/speech/SpeechLocalMusic;->onSearch(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/speech/SpeechLocalMusic;

.field final synthetic val$artist:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/speech/SpeechLocalMusic;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/SpeechLocalMusic$1;->this$0:Lcom/car/speech/SpeechLocalMusic;

    iput-object p2, p0, Lcom/car/speech/SpeechLocalMusic$1;->val$artist:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/speech/SpeechLocalMusic$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/car/speech/SpeechLocalMusic$1;->val$artist:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/speech/SpeechLocalMusic$1;->val$artist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/car/speech/SpeechLocalMusic$1;->this$0:Lcom/car/speech/SpeechLocalMusic;

    iget-object v2, v2, Lcom/car/speech/SpeechLocalMusic;->mMusic:Lcom/car/speech/LocalMusic;

    iget-object v3, p0, Lcom/car/speech/SpeechLocalMusic$1;->val$artist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/car/speech/LocalMusic;->playSong(Ljava/lang/String;)[J

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->stopInteraction()V

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/car/speech/SpeechLocalMusic$1;->this$0:Lcom/car/speech/SpeechLocalMusic;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/car/speech/SpeechLocalMusic;->access$002(Lcom/car/speech/SpeechLocalMusic;I)I

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    move-result-object v2

    iget-object v3, p0, Lcom/car/speech/SpeechLocalMusic$1;->this$0:Lcom/car/speech/SpeechLocalMusic;

    invoke-static {v3}, Lcom/car/speech/SpeechLocalMusic;->access$000(Lcom/car/speech/SpeechLocalMusic;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->setPlayState(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/car/speech/SpeechLocalMusic$1;->val$title:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/speech/SpeechLocalMusic$1;->val$title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/car/speech/SpeechLocalMusic$1;->this$0:Lcom/car/speech/SpeechLocalMusic;

    iget-object v2, v2, Lcom/car/speech/SpeechLocalMusic;->mMusic:Lcom/car/speech/LocalMusic;

    iget-object v3, p0, Lcom/car/speech/SpeechLocalMusic$1;->val$title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/car/speech/LocalMusic;->playSong(Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->postMusicSearchResultFromZero(Ljava/util/List;I)V

    goto :goto_1
.end method
