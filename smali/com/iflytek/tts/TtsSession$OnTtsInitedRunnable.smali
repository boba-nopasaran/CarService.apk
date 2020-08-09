.class Lcom/iflytek/tts/TtsSession$OnTtsInitedRunnable;
.super Ljava/lang/Object;
.source "TtsSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/tts/TtsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTtsInitedRunnable"
.end annotation


# instance fields
.field public mBoolInitState:Z

.field public mIntErrorCode:I

.field final synthetic this$0:Lcom/iflytek/tts/TtsSession;


# direct methods
.method public constructor <init>(Lcom/iflytek/tts/TtsSession;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/tts/TtsSession$OnTtsInitedRunnable;->this$0:Lcom/iflytek/tts/TtsSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/iflytek/tts/TtsSession$OnTtsInitedRunnable;->mBoolInitState:Z

    iput p3, p0, Lcom/iflytek/tts/TtsSession$OnTtsInitedRunnable;->mIntErrorCode:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/iflytek/tts/TtsSession$OnTtsInitedRunnable;->this$0:Lcom/iflytek/tts/TtsSession;

    invoke-static {v1}, Lcom/iflytek/tts/TtsSession;->access$100(Lcom/iflytek/tts/TtsSession;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v4, 0x5

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/tts/TtsSession$OnTtsInitedRunnable;->this$0:Lcom/iflytek/tts/TtsSession;

    iget-boolean v3, p0, Lcom/iflytek/tts/TtsSession$OnTtsInitedRunnable;->mBoolInitState:Z

    iget v4, p0, Lcom/iflytek/tts/TtsSession$OnTtsInitedRunnable;->mIntErrorCode:I

    invoke-static {v1, v3, v4}, Lcom/iflytek/tts/TtsSession;->access$200(Lcom/iflytek/tts/TtsSession;ZI)V

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
