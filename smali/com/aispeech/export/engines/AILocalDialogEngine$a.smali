.class final Lcom/aispeech/export/engines/AILocalDialogEngine$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/speech/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/export/engines/AILocalDialogEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/aispeech/export/engines/AILocalDialogEngine;


# direct methods
.method public constructor <init>(Lcom/aispeech/export/engines/AILocalDialogEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalDialogEngine$a;->a:Lcom/aispeech/export/engines/AILocalDialogEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine$a;->a:Lcom/aispeech/export/engines/AILocalDialogEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine$a;->a:Lcom/aispeech/export/engines/AILocalDialogEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    invoke-interface {v0}, Lcom/aispeech/export/listeners/AIDialogListener;->onBeginningOfSpeech()V

    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine$a;->a:Lcom/aispeech/export/engines/AILocalDialogEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine$a;->a:Lcom/aispeech/export/engines/AILocalDialogEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AIDialogListener;->onRmsChanged(F)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine$a;->a:Lcom/aispeech/export/engines/AILocalDialogEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine$a;->a:Lcom/aispeech/export/engines/AILocalDialogEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AIDialogListener;->onInit(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/aispeech/AIError;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine$a;->a:Lcom/aispeech/export/engines/AILocalDialogEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine$a;->a:Lcom/aispeech/export/engines/AILocalDialogEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AIDialogListener;->onError(Lcom/aispeech/AIError;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/aispeech/AIResult;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine$a;->a:Lcom/aispeech/export/engines/AILocalDialogEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine$a;->a:Lcom/aispeech/export/engines/AILocalDialogEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AIDialogListener;->onResults(Lcom/aispeech/AIResult;)V

    :cond_0
    return-void
.end method

.method public final a([B)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine$a;->a:Lcom/aispeech/export/engines/AILocalDialogEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine$a;->a:Lcom/aispeech/export/engines/AILocalDialogEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AIDialogListener;->onBufferReceived([B)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine$a;->a:Lcom/aispeech/export/engines/AILocalDialogEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine$a;->a:Lcom/aispeech/export/engines/AILocalDialogEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    invoke-interface {v0}, Lcom/aispeech/export/listeners/AIDialogListener;->onEndOfSpeech()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine$a;->a:Lcom/aispeech/export/engines/AILocalDialogEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogEngine$a;->a:Lcom/aispeech/export/engines/AILocalDialogEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    invoke-interface {v0}, Lcom/aispeech/export/listeners/AIDialogListener;->onReadyForSpeech()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method
