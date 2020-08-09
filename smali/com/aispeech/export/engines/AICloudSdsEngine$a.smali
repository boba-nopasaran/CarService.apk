.class final Lcom/aispeech/export/engines/AICloudSdsEngine$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/speech/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/export/engines/AICloudSdsEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/aispeech/export/listeners/AISdsListener;


# direct methods
.method public constructor <init>(Lcom/aispeech/export/listeners/AISdsListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    invoke-interface {v0}, Lcom/aispeech/export/listeners/AISdsListener;->onBeginningOfSpeech()V

    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AISdsListener;->onRmsChanged(F)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AISdsListener;->onInit(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/aispeech/AIError;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AISdsListener;->onError(Lcom/aispeech/AIError;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/aispeech/AIResult;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AISdsListener;->onResults(Lcom/aispeech/AIResult;)V

    :cond_0
    return-void
.end method

.method public final a([B)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AISdsListener;->onBufferReceived([B)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    invoke-interface {v0}, Lcom/aispeech/export/listeners/AISdsListener;->onEndOfSpeech()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    invoke-interface {v0}, Lcom/aispeech/export/listeners/AISdsListener;->onReadyForSpeech()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    invoke-interface {v0}, Lcom/aispeech/export/listeners/AISdsListener;->onRecorderReleased()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudSdsEngine$a;->a:Lcom/aispeech/export/listeners/AISdsListener;

    invoke-interface {v0}, Lcom/aispeech/export/listeners/AISdsListener;->onNotOneShot()V

    :cond_0
    return-void
.end method
