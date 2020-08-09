.class final Lcom/aispeech/export/engines/AIMixASREngine$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/speech/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/export/engines/AIMixASREngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/aispeech/export/listeners/AIASRListener;

.field private synthetic b:Lcom/aispeech/export/engines/AIMixASREngine;


# direct methods
.method public constructor <init>(Lcom/aispeech/export/engines/AIMixASREngine;Lcom/aispeech/export/listeners/AIASRListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->b:Lcom/aispeech/export/engines/AIMixASREngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    invoke-interface {v0}, Lcom/aispeech/export/listeners/AIASRListener;->onBeginningOfSpeech()V

    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AIASRListener;->onRmsChanged(F)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AIASRListener;->onInit(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/aispeech/AIError;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->b:Lcom/aispeech/export/engines/AIMixASREngine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/aispeech/export/engines/AIMixASREngine;->a:Z

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AIASRListener;->onError(Lcom/aispeech/AIError;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/aispeech/AIResult;)V
    .locals 2

    iget-boolean v0, p1, Lcom/aispeech/AIResult;->last:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->b:Lcom/aispeech/export/engines/AIMixASREngine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/aispeech/export/engines/AIMixASREngine;->a:Z

    :cond_0
    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AIASRListener;->onResults(Lcom/aispeech/AIResult;)V

    :cond_1
    return-void
.end method

.method public final a([B)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AIASRListener;->onBufferReceived([B)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    invoke-interface {v0}, Lcom/aispeech/export/listeners/AIASRListener;->onEndOfSpeech()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    invoke-interface {v0}, Lcom/aispeech/export/listeners/AIASRListener;->onReadyForSpeech()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    invoke-interface {v0}, Lcom/aispeech/export/listeners/AIASRListener;->onRecorderReleased()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AIMixASREngine$a;->a:Lcom/aispeech/export/listeners/AIASRListener;

    invoke-interface {v0}, Lcom/aispeech/export/listeners/AIASRListener;->onNotOneShot()V

    :cond_0
    return-void
.end method
