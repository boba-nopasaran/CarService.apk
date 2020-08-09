.class final Lcom/aispeech/speech/a$d;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/speech/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private synthetic a:Lcom/aispeech/speech/a;


# direct methods
.method constructor <init>(Lcom/aispeech/speech/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/a$d;->a:Lcom/aispeech/speech/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/aispeech/speech/a$d;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$b;->k:Lcom/aispeech/speech/a$b;

    new-instance v2, Lcom/aispeech/AIError;

    const v3, 0x114f9

    const-string v4, "\u97f3\u9891\u65f6\u957f\u8d85\u51fa\u9608\u503c"

    invoke-direct {v2, v3, v4}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$d;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "max speech timeout"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
