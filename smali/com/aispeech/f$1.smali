.class final Lcom/aispeech/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aispeech/f;-><init>(Lcom/aispeech/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/aispeech/f;


# direct methods
.method constructor <init>(Lcom/aispeech/f;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/f$1;->a:Lcom/aispeech/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/f$1;->a:Lcom/aispeech/f;

    iget-object v0, v0, Lcom/aispeech/f;->a:Lcom/aispeech/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/f$1;->a:Lcom/aispeech/f;

    iget-object v0, v0, Lcom/aispeech/f;->a:Lcom/aispeech/f$a;

    invoke-interface {v0}, Lcom/aispeech/f$a;->b()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/f$1;->a:Lcom/aispeech/f;

    iget-object v0, v0, Lcom/aispeech/f;->a:Lcom/aispeech/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/f$1;->a:Lcom/aispeech/f;

    iget-object v0, v0, Lcom/aispeech/f;->a:Lcom/aispeech/f$a;

    invoke-interface {v0, p1}, Lcom/aispeech/f$a;->b(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/aispeech/AIResult;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/f$1;->a:Lcom/aispeech/f;

    iget-object v0, v0, Lcom/aispeech/f;->a:Lcom/aispeech/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/f$1;->a:Lcom/aispeech/f;

    iget-object v0, v0, Lcom/aispeech/f;->a:Lcom/aispeech/f$a;

    invoke-interface {v0, p1}, Lcom/aispeech/f$a;->a(Lcom/aispeech/AIResult;)V

    :cond_0
    return-void
.end method
