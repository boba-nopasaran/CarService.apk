.class final Lcom/aispeech/tts/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/tts/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/aispeech/tts/e;


# direct methods
.method constructor <init>(Lcom/aispeech/tts/e;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/tts/e$a;->a:Lcom/aispeech/tts/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/tts/e$a;->a:Lcom/aispeech/tts/e;

    sget-object v1, Lcom/aispeech/tts/e$b;->b:Lcom/aispeech/tts/e$b;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(IIZ)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/aispeech/tts/e$a;->a:Lcom/aispeech/tts/e;

    sget-object v2, Lcom/aispeech/tts/e$b;->f:Lcom/aispeech/tts/e$b;

    invoke-static {v1, v2, v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(J)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/tts/e$a;->a:Lcom/aispeech/tts/e;

    sget-object v1, Lcom/aispeech/tts/e$c;->j:Lcom/aispeech/tts/e$c;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/aispeech/AIError;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/tts/e$a;->a:Lcom/aispeech/tts/e;

    sget-object v1, Lcom/aispeech/tts/e$c;->g:Lcom/aispeech/tts/e$c;

    invoke-static {v0, v1, p1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V

    return-void
.end method
