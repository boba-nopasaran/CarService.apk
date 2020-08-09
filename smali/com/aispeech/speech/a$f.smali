.class final Lcom/aispeech/speech/a$f;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/speech/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field private synthetic a:Lcom/aispeech/speech/a;


# direct methods
.method constructor <init>(Lcom/aispeech/speech/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/a$f;->a:Lcom/aispeech/speech/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/aispeech/speech/a$f;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$b;->o:Lcom/aispeech/speech/a$b;

    new-instance v2, Lcom/aispeech/AIError;

    const v3, 0x114fe

    const-string v4, "\u7b49\u5f85\u4e91\u7aef\u7ed3\u679c\u8d85\u65f6"

    invoke-direct {v2, v3, v4}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$f;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wait cloud result timeout!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
