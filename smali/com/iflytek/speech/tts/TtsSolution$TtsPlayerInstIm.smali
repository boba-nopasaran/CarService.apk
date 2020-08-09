.class Lcom/iflytek/speech/tts/TtsSolution$TtsPlayerInstIm;
.super Ljava/lang/Object;
.source "TtsSolution.java"

# interfaces
.implements Lcom/iflytek/speech/tts/TtsPlayerInst;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/tts/TtsSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsPlayerInstIm"
.end annotation


# instance fields
.field private final mTtsPlayer:Lcom/iflytek/speech/tts/TtsPlayer;

.field final synthetic this$0:Lcom/iflytek/speech/tts/TtsSolution;


# direct methods
.method public constructor <init>(Lcom/iflytek/speech/tts/TtsSolution;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/iflytek/speech/tts/TtsSolution$TtsPlayerInstIm;->this$0:Lcom/iflytek/speech/tts/TtsSolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-direct {v0, p2}, Lcom/iflytek/speech/tts/TtsPlayer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/speech/tts/TtsSolution$TtsPlayerInstIm;->mTtsPlayer:Lcom/iflytek/speech/tts/TtsPlayer;

    return-void
.end method


# virtual methods
.method public pauseSpeak()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsSolution$TtsPlayerInstIm;->mTtsPlayer:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/tts/TtsPlayer;->Pause()I

    move-result v0

    return v0
.end method

.method public resumeSpeak()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsSolution$TtsPlayerInstIm;->mTtsPlayer:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/tts/TtsPlayer;->Resume()I

    move-result v0

    return v0
.end method

.method public sessionBegin(I)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsSolution$TtsPlayerInstIm;->mTtsPlayer:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/tts/TtsPlayer;->Init(I)I

    move-result v0

    return v0
.end method

.method public sessionInitState()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsSolution$TtsPlayerInstIm;->mTtsPlayer:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/tts/TtsPlayer;->GetInitState()I

    move-result v0

    return v0
.end method

.method public sessionStop()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsSolution$TtsPlayerInstIm;->mTtsPlayer:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/tts/TtsPlayer;->Release()I

    move-result v0

    return v0
.end method

.method public setParam(II)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsSolution$TtsPlayerInstIm;->mTtsPlayer:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/speech/tts/TtsPlayer;->SetParam(II)I

    move-result v0

    return v0
.end method

.method public setParamEx(ILjava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsSolution$TtsPlayerInstIm;->mTtsPlayer:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/speech/tts/TtsPlayer;->SetParamEx(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startSpeak(Ljava/lang/String;Lcom/iflytek/speech/tts/ITTSListener;)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsSolution$TtsPlayerInstIm;->mTtsPlayer:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-virtual {v0, p2}, Lcom/iflytek/speech/tts/TtsPlayer;->setListener(Lcom/iflytek/speech/tts/ITTSListener;)V

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsSolution$TtsPlayerInstIm;->mTtsPlayer:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/tts/TtsPlayer;->Start(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public stopSpeak()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/tts/TtsSolution$TtsPlayerInstIm;->mTtsPlayer:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-virtual {v0}, Lcom/iflytek/speech/tts/TtsPlayer;->Stop()I

    move-result v0

    return v0
.end method
