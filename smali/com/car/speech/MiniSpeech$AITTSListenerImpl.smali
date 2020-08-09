.class Lcom/car/speech/MiniSpeech$AITTSListenerImpl;
.super Ljava/lang/Object;
.source "MiniSpeech.java"

# interfaces
.implements Lcom/aispeech/export/listeners/AITTSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/speech/MiniSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AITTSListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/speech/MiniSpeech;


# direct methods
.method private constructor <init>(Lcom/car/speech/MiniSpeech;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/MiniSpeech$AITTSListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/speech/MiniSpeech;Lcom/car/speech/MiniSpeech$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/speech/MiniSpeech$AITTSListenerImpl;-><init>(Lcom/car/speech/MiniSpeech;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CarSvc_MiniSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$AITTSListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v1, v0, Lcom/car/speech/MiniSpeech;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/speech/MiniSpeech$AITTSListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v0, v0, Lcom/car/speech/MiniSpeech;->mQueue:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$AITTSListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    const-string v1, ""

    iput-object v1, v0, Lcom/car/speech/MiniSpeech;->mLastPlayId:Ljava/lang/String;

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$AITTSListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v0, v0, Lcom/car/speech/MiniSpeech;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$AITTSListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/car/speech/MiniSpeech;->playNext(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/String;Lcom/aispeech/AIError;)V
    .locals 3

    const-string v0, "CarSvc_MiniSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$AITTSListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v1, v0, Lcom/car/speech/MiniSpeech;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/speech/MiniSpeech$AITTSListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v0, v0, Lcom/car/speech/MiniSpeech;->mQueue:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$AITTSListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    const-string v1, ""

    iput-object v1, v0, Lcom/car/speech/MiniSpeech;->mLastPlayId:Ljava/lang/String;

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$AITTSListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v0, v0, Lcom/car/speech/MiniSpeech;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$AITTSListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/car/speech/MiniSpeech;->playNext(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInit(I)V
    .locals 3

    if-nez p1, :cond_0

    const-string v1, "CarSvc_MiniSpeech"

    const-string v2, "TTS\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tts.init"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/speech/MiniSpeech$AITTSListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v1, v1, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "CarSvc_MiniSpeech"

    const-string v2, "TTS\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onProgress(IIZ)V
    .locals 0

    return-void
.end method

.method public onReady(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CarSvc_MiniSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$AITTSListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iput-object p1, v0, Lcom/car/speech/MiniSpeech;->mLastPlayId:Ljava/lang/String;

    return-void
.end method
