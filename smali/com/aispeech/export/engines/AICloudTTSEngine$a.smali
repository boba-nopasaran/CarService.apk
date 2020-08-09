.class final Lcom/aispeech/export/engines/AICloudTTSEngine$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/tts/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/export/engines/AICloudTTSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/aispeech/export/engines/AICloudTTSEngine;


# direct methods
.method private constructor <init>(Lcom/aispeech/export/engines/AICloudTTSEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AICloudTTSEngine$a;->a:Lcom/aispeech/export/engines/AICloudTTSEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aispeech/export/engines/AICloudTTSEngine;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aispeech/export/engines/AICloudTTSEngine$a;-><init>(Lcom/aispeech/export/engines/AICloudTTSEngine;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine$a;->a:Lcom/aispeech/export/engines/AICloudTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AICloudTTSEngine;->a:Lcom/aispeech/export/listeners/AITTSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine$a;->a:Lcom/aispeech/export/engines/AICloudTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AICloudTTSEngine;->a:Lcom/aispeech/export/listeners/AITTSListener;

    invoke-interface {v0, p1}, Lcom/aispeech/export/listeners/AITTSListener;->onInit(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/aispeech/AIError;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine$a;->a:Lcom/aispeech/export/engines/AICloudTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AICloudTTSEngine;->a:Lcom/aispeech/export/listeners/AITTSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine$a;->a:Lcom/aispeech/export/engines/AICloudTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AICloudTTSEngine;->a:Lcom/aispeech/export/listeners/AITTSListener;

    iget-object v1, p0, Lcom/aispeech/export/engines/AICloudTTSEngine$a;->a:Lcom/aispeech/export/engines/AICloudTTSEngine;

    iget-object v1, v1, Lcom/aispeech/export/engines/AICloudTTSEngine;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/aispeech/export/listeners/AITTSListener;->onError(Ljava/lang/String;Lcom/aispeech/AIError;)V

    :cond_0
    return-void
.end method

.method public final a_()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine$a;->a:Lcom/aispeech/export/engines/AICloudTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AICloudTTSEngine;->a:Lcom/aispeech/export/listeners/AITTSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine$a;->a:Lcom/aispeech/export/engines/AICloudTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AICloudTTSEngine;->a:Lcom/aispeech/export/listeners/AITTSListener;

    iget-object v1, p0, Lcom/aispeech/export/engines/AICloudTTSEngine$a;->a:Lcom/aispeech/export/engines/AICloudTTSEngine;

    iget-object v1, v1, Lcom/aispeech/export/engines/AICloudTTSEngine;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/aispeech/export/listeners/AITTSListener;->onReady(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a_(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine$a;->a:Lcom/aispeech/export/engines/AICloudTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AICloudTTSEngine;->a:Lcom/aispeech/export/listeners/AITTSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine$a;->a:Lcom/aispeech/export/engines/AICloudTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AICloudTTSEngine;->a:Lcom/aispeech/export/listeners/AITTSListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/aispeech/export/listeners/AITTSListener;->onProgress(IIZ)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine$a;->a:Lcom/aispeech/export/engines/AICloudTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AICloudTTSEngine;->a:Lcom/aispeech/export/listeners/AITTSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AICloudTTSEngine$a;->a:Lcom/aispeech/export/engines/AICloudTTSEngine;

    iget-object v0, v0, Lcom/aispeech/export/engines/AICloudTTSEngine;->a:Lcom/aispeech/export/listeners/AITTSListener;

    iget-object v1, p0, Lcom/aispeech/export/engines/AICloudTTSEngine$a;->a:Lcom/aispeech/export/engines/AICloudTTSEngine;

    iget-object v1, v1, Lcom/aispeech/export/engines/AICloudTTSEngine;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/aispeech/export/listeners/AITTSListener;->onCompletion(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
