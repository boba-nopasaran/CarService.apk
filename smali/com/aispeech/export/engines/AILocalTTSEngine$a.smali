.class final Lcom/aispeech/export/engines/AILocalTTSEngine$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/a/c;
.implements Lcom/aispeech/tts/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/export/engines/AILocalTTSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/aispeech/export/engines/AILocalTTSEngine;


# direct methods
.method private constructor <init>(Lcom/aispeech/export/engines/AILocalTTSEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aispeech/export/engines/AILocalTTSEngine;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aispeech/export/engines/AILocalTTSEngine$a;-><init>(Lcom/aispeech/export/engines/AILocalTTSEngine;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v1, v1, Lcom/aispeech/export/engines/AILocalTTSEngine;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/aispeech/export/listeners/AITTSListener;->onReady(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AITTSListener;->onInit(I)V

    :cond_0
    return-void
.end method

.method public final a(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/aispeech/export/listeners/AITTSListener;->onProgress(IIZ)V

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v1, v1, Lcom/aispeech/export/engines/AILocalTTSEngine;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/aispeech/export/listeners/AITTSListener;->onCompletion(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/aispeech/AIError;)V
    .locals 3

    invoke-virtual {p1}, Lcom/aispeech/AIError;->getErrId()I

    move-result v0

    const v1, 0x11a0c

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-boolean v0, v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    invoke-static {v0}, Lcom/aispeech/export/engines/AILocalTTSEngine;->a(Lcom/aispeech/export/engines/AILocalTTSEngine;)V

    :cond_0
    sget-object v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCurrentInUseCache : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-boolean v2, v2, Lcom/aispeech/export/engines/AILocalTTSEngine;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aispeech/AIError;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v1, v1, Lcom/aispeech/export/engines/AILocalTTSEngine;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/aispeech/export/listeners/AITTSListener;->onError(Ljava/lang/String;Lcom/aispeech/AIError;)V

    goto :goto_0
.end method

.method public final a_()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v1, v1, Lcom/aispeech/export/engines/AILocalTTSEngine;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/aispeech/export/listeners/AITTSListener;->onReady(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a_(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/aispeech/export/listeners/AITTSListener;->onProgress(IIZ)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine$a;->a:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v1, v1, Lcom/aispeech/export/engines/AILocalTTSEngine;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/aispeech/export/listeners/AITTSListener;->onCompletion(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
