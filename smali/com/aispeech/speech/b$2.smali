.class final Lcom/aispeech/speech/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/speech/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/aispeech/speech/b;


# direct methods
.method constructor <init>(Lcom/aispeech/speech/b;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/b$2;->a:Lcom/aispeech/speech/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/speech/b$2;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->m(Lcom/aispeech/speech/b;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$2;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$2;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->n(Lcom/aispeech/speech/b;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$2;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$c;->b:Lcom/aispeech/speech/b$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$c;)Lcom/aispeech/speech/b$c;

    iget-object v0, p0, Lcom/aispeech/speech/b$2;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$a;->k:Lcom/aispeech/speech/b$a;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V

    return-void
.end method
