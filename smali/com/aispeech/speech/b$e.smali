.class final Lcom/aispeech/speech/b$e;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/speech/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field private synthetic a:Lcom/aispeech/speech/b;


# direct methods
.method constructor <init>(Lcom/aispeech/speech/b;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/b$e;->a:Lcom/aispeech/speech/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/aispeech/speech/b$e;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$b;->k:Lcom/aispeech/speech/b$b;

    new-instance v2, Lcom/aispeech/AIError;

    const v3, 0x114f8

    const-string v4, "\u6ca1\u6709\u68c0\u6d4b\u5230\u8bed\u97f3"

    invoke-direct {v2, v3, v4}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$e;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no speech timeout!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
