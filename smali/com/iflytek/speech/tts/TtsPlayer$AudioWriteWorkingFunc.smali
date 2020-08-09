.class Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;
.super Ljava/lang/Object;
.source "TtsPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/tts/TtsPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioWriteWorkingFunc"
.end annotation


# static fields
.field private static final tag:Ljava/lang/String; = "AudioWriteWorkingFunc"


# instance fields
.field private mExitFlag:Z

.field final synthetic this$0:Lcom/iflytek/speech/tts/TtsPlayer;


# direct methods
.method private constructor <init>(Lcom/iflytek/speech/tts/TtsPlayer;)V
    .locals 1

    iput-object p1, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->mExitFlag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/speech/tts/TtsPlayer;Lcom/iflytek/speech/tts/TtsPlayer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;-><init>(Lcom/iflytek/speech/tts/TtsPlayer;)V

    return-void
.end method


# virtual methods
.method public clearExitFlag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->mExitFlag:Z

    return-void
.end method

.method public run()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v4, "AudioWriteWorkingFunc"

    const-string v5, "AudioWriteWorkingFunc In."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$200(Lcom/iflytek/speech/tts/TtsPlayer;)Landroid/media/AudioTrack;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$300(Lcom/iflytek/speech/tts/TtsPlayer;)Lcom/iflytek/speech/NativeHandle;

    move-result-object v4

    iget-wide v4, v4, Lcom/iflytek/speech/NativeHandle;->native_point:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$400(Lcom/iflytek/speech/tts/TtsPlayer;)I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    const-string v4, "AudioWriteWorkingFunc"

    const-string v5, "mAudioTrack==null || mNativeHandle.native_point == 0 || mMinBufferSizeInBytes==0, this should never happen."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$800(Lcom/iflytek/speech/tts/TtsPlayer;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$200(Lcom/iflytek/speech/tts/TtsPlayer;)Landroid/media/AudioTrack;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$200(Lcom/iflytek/speech/tts/TtsPlayer;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->release()V

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/iflytek/speech/tts/TtsPlayer;->access$202(Lcom/iflytek/speech/tts/TtsPlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    :cond_2
    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$800(Lcom/iflytek/speech/tts/TtsPlayer;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v4, "AudioWriteWorkingFunc"

    const-string v5, "AudioWriteWorkingFunc Out."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$400(Lcom/iflytek/speech/tts/TtsPlayer;)I

    move-result v4

    new-array v0, v4, [B

    const-string v4, "AudioWriteWorkingFunc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBufferOnceSizeInBytes is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v6}, Lcom/iflytek/speech/tts/TtsPlayer;->access$400(Lcom/iflytek/speech/tts/TtsPlayer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    iget-boolean v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->mExitFlag:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$500(Lcom/iflytek/speech/tts/TtsPlayer;)I

    move-result v4

    if-ne v4, v9, :cond_7

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$600(Lcom/iflytek/speech/tts/TtsPlayer;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-array v1, v9, [I

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$300(Lcom/iflytek/speech/tts/TtsPlayer;)Lcom/iflytek/speech/NativeHandle;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v5}, Lcom/iflytek/speech/tts/TtsPlayer;->access$400(Lcom/iflytek/speech/tts/TtsPlayer;)I

    move-result v5

    invoke-static {v4, v0, v5, v1}, Lcom/iflytek/speech/libisstts;->getAudioData(Lcom/iflytek/speech/NativeHandle;[BI[I)V

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$300(Lcom/iflytek/speech/tts/TtsPlayer;)Lcom/iflytek/speech/NativeHandle;

    move-result-object v4

    iget v4, v4, Lcom/iflytek/speech/NativeHandle;->err_ret:I

    const/16 v5, 0x2714

    if-ne v4, v5, :cond_5

    const-string v4, "AudioWriteWorkingFunc"

    const-string v5, "libisstts.getAudioData Completed."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4, v8}, Lcom/iflytek/speech/tts/TtsPlayer;->access$502(Lcom/iflytek/speech/tts/TtsPlayer;I)I

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$700(Lcom/iflytek/speech/tts/TtsPlayer;)Lcom/iflytek/speech/tts/ITTSListener;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$800(Lcom/iflytek/speech/tts/TtsPlayer;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-string v4, "AudioWriteWorkingFunc"

    const-string v5, "mAudioTrack.stop() before"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$200(Lcom/iflytek/speech/tts/TtsPlayer;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->stop()V

    const-string v4, "AudioWriteWorkingFunc"

    const-string v5, "mAudioTrack.stop() after"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "AudioWriteWorkingFunc"

    const-string v5, "mAudioTrack.flush() before"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$200(Lcom/iflytek/speech/tts/TtsPlayer;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->flush()V

    const-string v4, "AudioWriteWorkingFunc"

    const-string v5, "mAudioTrack.flush() after"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$800(Lcom/iflytek/speech/tts/TtsPlayer;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v4, "AudioWriteWorkingFunc"

    const-string v5, "mITTSListener.onTTSPlayCompleted() before"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$700(Lcom/iflytek/speech/tts/TtsPlayer;)Lcom/iflytek/speech/tts/ITTSListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/iflytek/speech/tts/ITTSListener;->onTTSPlayCompleted()V

    const-string v4, "AudioWriteWorkingFunc"

    const-string v5, "mITTSListener.onTTSPlayCompleted() after"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    aget v4, v1, v8

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$800(Lcom/iflytek/speech/tts/TtsPlayer;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$200(Lcom/iflytek/speech/tts/TtsPlayer;)Landroid/media/AudioTrack;

    move-result-object v4

    aget v5, v1, v8

    invoke-virtual {v4, v0, v8, v5}, Landroid/media/AudioTrack;->write([BII)I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$800(Lcom/iflytek/speech/tts/TtsPlayer;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-gez v3, :cond_4

    const-string v4, "AudioWriteWorkingFunc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAudioTrack.write(size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ret "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4, v8}, Lcom/iflytek/speech/tts/TtsPlayer;->access$502(Lcom/iflytek/speech/tts/TtsPlayer;I)I

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$100(Lcom/iflytek/speech/tts/TtsPlayer;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    const-string v4, "AudioWriteWorkingFunc"

    const-string v6, "Before wait(5)"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$100(Lcom/iflytek/speech/tts/TtsPlayer;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v6, 0x5

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    const-string v4, "AudioWriteWorkingFunc"

    const-string v6, "After wait(5)"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$100(Lcom/iflytek/speech/tts/TtsPlayer;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_3
    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$500(Lcom/iflytek/speech/tts/TtsPlayer;)I

    move-result v4

    if-ne v4, v9, :cond_8

    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$600(Lcom/iflytek/speech/tts/TtsPlayer;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    :try_start_4
    iget-object v4, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v4}, Lcom/iflytek/speech/tts/TtsPlayer;->access$100(Lcom/iflytek/speech/tts/TtsPlayer;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v6, 0x5

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_9
    :goto_2
    :try_start_5
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    :catch_1
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2
.end method

.method public setExitFlag()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->mExitFlag:Z

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/tts/TtsPlayer;->access$100(Lcom/iflytek/speech/tts/TtsPlayer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioWriteWorkingFunc;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-static {v0}, Lcom/iflytek/speech/tts/TtsPlayer;->access$100(Lcom/iflytek/speech/tts/TtsPlayer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
