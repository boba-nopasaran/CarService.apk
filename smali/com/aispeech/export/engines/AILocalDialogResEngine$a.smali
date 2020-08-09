.class final Lcom/aispeech/export/engines/AILocalDialogResEngine$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/speech/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/export/engines/AILocalDialogResEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/io/ByteArrayOutputStream;

.field private synthetic b:Lcom/aispeech/export/engines/AILocalDialogResEngine;


# direct methods
.method public constructor <init>(Lcom/aispeech/export/engines/AILocalDialogResEngine;)V
    .locals 1

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->b:Lcom/aispeech/export/engines/AILocalDialogResEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->a:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->b:Lcom/aispeech/export/engines/AILocalDialogResEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->b:Lcom/aispeech/export/engines/AILocalDialogResEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    invoke-interface {v0}, Lcom/aispeech/export/listeners/AIDialogListener;->onBeginningOfSpeech()V

    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->b:Lcom/aispeech/export/engines/AILocalDialogResEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->b:Lcom/aispeech/export/engines/AILocalDialogResEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AIDialogListener;->onRmsChanged(F)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->b:Lcom/aispeech/export/engines/AILocalDialogResEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->b:Lcom/aispeech/export/engines/AILocalDialogResEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AIDialogListener;->onInit(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/aispeech/AIError;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->b:Lcom/aispeech/export/engines/AILocalDialogResEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->b:Lcom/aispeech/export/engines/AILocalDialogResEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AIDialogListener;->onError(Lcom/aispeech/AIError;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/aispeech/AIResult;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->b:Lcom/aispeech/export/engines/AILocalDialogResEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->a:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->a:Ljava/io/ByteArrayOutputStream;

    :cond_0
    invoke-virtual {p1}, Lcom/aispeech/AIResult;->isLast()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_JSON:I

    invoke-virtual {p1, v1}, Lcom/aispeech/AIResult;->setResultType(I)V

    invoke-virtual {p1, v0}, Lcom/aispeech/AIResult;->setResultObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->b:Lcom/aispeech/export/engines/AILocalDialogResEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AIDialogListener;->onResults(Lcom/aispeech/AIResult;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->a:Ljava/io/ByteArrayOutputStream;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/aispeech/AIResult;->getResultObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, [B

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->a:Ljava/io/ByteArrayOutputStream;

    check-cast v0, [B

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a([B)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->b:Lcom/aispeech/export/engines/AILocalDialogResEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->b:Lcom/aispeech/export/engines/AILocalDialogResEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AIDialogListener;->onBufferReceived([B)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->b:Lcom/aispeech/export/engines/AILocalDialogResEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->b:Lcom/aispeech/export/engines/AILocalDialogResEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

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

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->b:Lcom/aispeech/export/engines/AILocalDialogResEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalDialogResEngine$a;->b:Lcom/aispeech/export/engines/AILocalDialogResEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalDialogResEngine;->a:Lcom/aispeech/export/listeners/AIDialogListener;

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
