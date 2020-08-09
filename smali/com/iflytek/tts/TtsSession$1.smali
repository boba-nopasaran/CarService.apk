.class Lcom/iflytek/tts/TtsSession$1;
.super Ljava/lang/Object;
.source "TtsSession.java"

# interfaces
.implements Lcom/iflytek/speech/tts/ITTSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/tts/TtsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/tts/TtsSession;


# direct methods
.method constructor <init>(Lcom/iflytek/tts/TtsSession;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/tts/TtsSession$1;->this$0:Lcom/iflytek/tts/TtsSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTTSPlayBegin()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession$1;->this$0:Lcom/iflytek/tts/TtsSession;

    invoke-static {v0}, Lcom/iflytek/tts/TtsSession;->access$000(Lcom/iflytek/tts/TtsSession;)Lcom/iflytek/tts/ITtsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession$1;->this$0:Lcom/iflytek/tts/TtsSession;

    invoke-static {v0}, Lcom/iflytek/tts/TtsSession;->access$000(Lcom/iflytek/tts/TtsSession;)Lcom/iflytek/tts/ITtsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/tts/ITtsListener;->onPlayBegin()V

    :cond_0
    return-void
.end method

.method public onTTSPlayCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession$1;->this$0:Lcom/iflytek/tts/TtsSession;

    invoke-static {v0}, Lcom/iflytek/tts/TtsSession;->access$000(Lcom/iflytek/tts/TtsSession;)Lcom/iflytek/tts/ITtsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession$1;->this$0:Lcom/iflytek/tts/TtsSession;

    invoke-static {v0}, Lcom/iflytek/tts/TtsSession;->access$000(Lcom/iflytek/tts/TtsSession;)Lcom/iflytek/tts/ITtsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/tts/ITtsListener;->onPlayCompleted()V

    :cond_0
    return-void
.end method

.method public onTTSPlayInterrupted()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession$1;->this$0:Lcom/iflytek/tts/TtsSession;

    invoke-static {v0}, Lcom/iflytek/tts/TtsSession;->access$000(Lcom/iflytek/tts/TtsSession;)Lcom/iflytek/tts/ITtsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession$1;->this$0:Lcom/iflytek/tts/TtsSession;

    invoke-static {v0}, Lcom/iflytek/tts/TtsSession;->access$000(Lcom/iflytek/tts/TtsSession;)Lcom/iflytek/tts/ITtsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/tts/ITtsListener;->onPlayInterrupted()V

    :cond_0
    return-void
.end method

.method public onTTSProgressReturn(II)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession$1;->this$0:Lcom/iflytek/tts/TtsSession;

    invoke-static {v0}, Lcom/iflytek/tts/TtsSession;->access$000(Lcom/iflytek/tts/TtsSession;)Lcom/iflytek/tts/ITtsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/tts/TtsSession$1;->this$0:Lcom/iflytek/tts/TtsSession;

    invoke-static {v0}, Lcom/iflytek/tts/TtsSession;->access$000(Lcom/iflytek/tts/TtsSession;)Lcom/iflytek/tts/ITtsListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/tts/ITtsListener;->onProgressReturn(II)V

    :cond_0
    return-void
.end method
