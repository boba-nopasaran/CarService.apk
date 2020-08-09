.class final Lcom/aispeech/tts/e$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/tts/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/aispeech/tts/e;


# direct methods
.method constructor <init>(Lcom/aispeech/tts/e;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/aispeech/tts/e$c;->a(I)Lcom/aispeech/tts/e$c;

    move-result-object v2

    invoke-static {v2}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SpeechSynthesizer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ">>>>>>Event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aispeech/tts/e$c;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SpeechSynthesizer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Current]:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v4}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/e$d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aispeech/tts/e$d;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/aispeech/tts/e$3;->a:[I

    invoke-virtual {v2}, Lcom/aispeech/tts/e$c;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e$c;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SpeechSynthesizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Next]:\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v2}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/e$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aispeech/tts/e$d;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/e$d;

    move-result-object v0

    sget-object v1, Lcom/aispeech/tts/e$d;->a:Lcom/aispeech/tts/e$d;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    new-instance v1, Lcom/aispeech/AIEngine;

    invoke-direct {v1}, Lcom/aispeech/AIEngine;-><init>()V

    invoke-static {v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/AIEngine;)Lcom/aispeech/AIEngine;

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    iget-object v1, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v1}, Lcom/aispeech/tts/e;->b(Lcom/aispeech/tts/e;)Lcom/aispeech/a;

    move-result-object v1

    iget-object v3, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v3}, Lcom/aispeech/tts/e;->c(Lcom/aispeech/tts/e;)Lcom/aispeech/AIEngine;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/a;Lcom/aispeech/AIEngine;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    sget-object v3, Lcom/aispeech/tts/e$d;->b:Lcom/aispeech/tts/e$d;

    invoke-static {v1, v3}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$d;)V

    :cond_3
    iget-object v1, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    sget-object v3, Lcom/aispeech/tts/e$b;->a:Lcom/aispeech/tts/e$b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$b;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0, v2}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$c;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/e$d;

    move-result-object v0

    sget-object v3, Lcom/aispeech/tts/e$d;->b:Lcom/aispeech/tts/e$d;

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/e$d;

    move-result-object v0

    sget-object v3, Lcom/aispeech/tts/e$d;->d:Lcom/aispeech/tts/e$d;

    if-ne v0, v3, :cond_c

    :cond_5
    iget-object v3, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/aispeech/tts/k;

    invoke-static {v3, v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/k;)Lcom/aispeech/tts/k;

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->d(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/tts/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    sget-object v1, Lcom/aispeech/tts/e$c;->g:Lcom/aispeech/tts/e$c;

    new-instance v3, Lcom/aispeech/AIError;

    const v4, 0x11a0b

    const-string v5, "\u65e0\u6548\u7684\u5408\u6210\u6587\u672c"

    invoke-direct {v3, v4, v5}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1, v3}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$c;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->e(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/c;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    new-instance v3, Lcom/aispeech/tts/c;

    invoke-direct {v3}, Lcom/aispeech/tts/c;-><init>()V

    invoke-static {v0, v3}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/c;)Lcom/aispeech/tts/c;

    iget-object v3, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->d(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/k;

    move-result-object v0

    const-string v4, "cloud"

    invoke-virtual {v0}, Lcom/aispeech/tts/k;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v0}, Lcom/aispeech/tts/k;->f()Z

    move-result v4

    if-nez v4, :cond_b

    new-instance v0, Lcom/aispeech/tts/b;

    invoke-direct {v0}, Lcom/aispeech/tts/b;-><init>()V

    :goto_1
    invoke-static {v3, v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/d;)Lcom/aispeech/tts/d;

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->f(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/g;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    new-instance v1, Lcom/aispeech/tts/g;

    invoke-direct {v1}, Lcom/aispeech/tts/g;-><init>()V

    invoke-static {v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/g;)Lcom/aispeech/tts/g;

    :cond_7
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v1}, Lcom/aispeech/tts/e;->f(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/g;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aispeech/tts/d;->a(Lcom/aispeech/tts/g;)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    new-instance v1, Lcom/aispeech/tts/e$a;

    iget-object v3, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-direct {v1, v3}, Lcom/aispeech/tts/e$a;-><init>(Lcom/aispeech/tts/e;)V

    invoke-interface {v0, v1}, Lcom/aispeech/tts/d;->a(Lcom/aispeech/a/c;)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v1}, Lcom/aispeech/tts/e;->h(Lcom/aispeech/tts/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v3}, Lcom/aispeech/tts/e;->d(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aispeech/tts/k;->x()I

    move-result v3

    iget-object v4, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v4}, Lcom/aispeech/tts/e;->d(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aispeech/tts/k;->n()Lcom/aispeech/AISampleRate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aispeech/AISampleRate;->getValue()I

    move-result v4

    invoke-interface {v0, v1, v3, v4}, Lcom/aispeech/tts/d;->a(Landroid/content/Context;II)V

    :cond_8
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v1}, Lcom/aispeech/tts/e;->d(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aispeech/tts/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aispeech/tts/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v1}, Lcom/aispeech/tts/e;->d(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aispeech/tts/k;->x()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/aispeech/tts/d;->a(I)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    iget-object v1, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v1}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/aispeech/tts/d;->a()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;J)J

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->i(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/MP3Decoder;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->d(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/k;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/tts/e;->b(Lcom/aispeech/tts/k;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    new-instance v1, Lcom/aispeech/tts/MP3Decoder;

    invoke-direct {v1}, Lcom/aispeech/tts/MP3Decoder;-><init>()V

    invoke-static {v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/MP3Decoder;)Lcom/aispeech/tts/MP3Decoder;

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->i(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/MP3Decoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/tts/MP3Decoder;->a()V

    :cond_9
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->d(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/tts/k;->f()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    iget-object v0, v0, Lcom/aispeech/tts/e;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    iget-object v0, v0, Lcom/aispeech/tts/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_a
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    iget-object v1, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v1}, Lcom/aispeech/tts/e;->d(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/k;

    move-result-object v1

    iget-object v3, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v3}, Lcom/aispeech/tts/e;->c(Lcom/aispeech/tts/e;)Lcom/aispeech/AIEngine;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/speech/d;Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->c(Lcom/aispeech/tts/e;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    sget-object v1, Lcom/aispeech/tts/e$d;->c:Lcom/aispeech/tts/e$d;

    invoke-static {v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$d;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Lcom/aispeech/tts/k;->f()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lcom/aispeech/tts/a;

    invoke-direct {v0}, Lcom/aispeech/tts/a;-><init>()V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0, v2}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$c;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/e$d;

    move-result-object v0

    sget-object v3, Lcom/aispeech/tts/e$d;->c:Lcom/aispeech/tts/e$d;

    if-eq v0, v3, :cond_d

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/e$d;

    move-result-object v0

    sget-object v3, Lcom/aispeech/tts/e$d;->e:Lcom/aispeech/tts/e$d;

    if-ne v0, v3, :cond_11

    :cond_d
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/aispeech/tts/d;->b()V

    :cond_e
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->c(Lcom/aispeech/tts/e;)Lcom/aispeech/AIEngine;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->c(Lcom/aispeech/tts/e;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/tts/e;->b(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->j(Lcom/aispeech/tts/e;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->j(Lcom/aispeech/tts/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_f
    sget-object v0, Lcom/aispeech/tts/e$c;->i:Lcom/aispeech/tts/e$c;

    invoke-virtual {v0}, Lcom/aispeech/tts/e$c;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/aispeech/tts/e$1;->removeMessages(I)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->i(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/MP3Decoder;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->i(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/MP3Decoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/tts/MP3Decoder;->b()V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/MP3Decoder;)Lcom/aispeech/tts/MP3Decoder;

    :cond_10
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    sget-object v3, Lcom/aispeech/tts/e$d;->d:Lcom/aispeech/tts/e$d;

    invoke-static {v0, v3}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$d;)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    sget-object v3, Lcom/aispeech/tts/e$b;->g:Lcom/aispeech/tts/e$b;

    invoke-static {v0, v3, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$b;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0, v2}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$c;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/e$d;

    move-result-object v0

    sget-object v1, Lcom/aispeech/tts/e$d;->e:Lcom/aispeech/tts/e$d;

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/aispeech/tts/d;->c()V

    :cond_12
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    sget-object v1, Lcom/aispeech/tts/e$d;->c:Lcom/aispeech/tts/e$d;

    invoke-static {v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$d;)V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0, v2}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$c;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/e$d;

    move-result-object v0

    sget-object v1, Lcom/aispeech/tts/e$d;->c:Lcom/aispeech/tts/e$d;

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/aispeech/tts/d;->d()V

    :cond_14
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    sget-object v1, Lcom/aispeech/tts/e$d;->e:Lcom/aispeech/tts/e$d;

    invoke-static {v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$d;)V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0, v2}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$c;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/e$d;

    move-result-object v0

    sget-object v3, Lcom/aispeech/tts/e$d;->a:Lcom/aispeech/tts/e$d;

    if-eq v0, v3, :cond_19

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/aispeech/tts/d;->e()V

    :cond_16
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->c(Lcom/aispeech/tts/e;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/tts/e;->c(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->i(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/MP3Decoder;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->i(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/MP3Decoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/tts/MP3Decoder;->b()V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/MP3Decoder;)Lcom/aispeech/tts/MP3Decoder;

    :cond_17
    invoke-virtual {p0}, Lcom/aispeech/tts/e$1;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->k(Lcom/aispeech/tts/e;)Landroid/os/Looper;

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->h(Lcom/aispeech/tts/e;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->l(Lcom/aispeech/tts/e;)Landroid/content/Context;

    :cond_18
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    sget-object v1, Lcom/aispeech/tts/e$d;->a:Lcom/aispeech/tts/e$d;

    invoke-static {v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$d;)V

    goto/16 :goto_0

    :cond_19
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0, v2}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$c;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/e$d;

    move-result-object v0

    sget-object v1, Lcom/aispeech/tts/e$d;->a:Lcom/aispeech/tts/e$d;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [F

    iget-object v1, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v1}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v1

    aget v3, v0, v5

    aget v0, v0, v6

    invoke-interface {v1, v3, v0}, Lcom/aispeech/tts/d;->a(FF)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/aispeech/AIError;

    const-string v1, "SpeechSynthesizer"

    invoke-virtual {v0}, Lcom/aispeech/AIError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/e$d;

    move-result-object v0

    sget-object v1, Lcom/aispeech/tts/e$d;->a:Lcom/aispeech/tts/e$d;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/aispeech/tts/d;->b()V

    :cond_1a
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->c(Lcom/aispeech/tts/e;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/tts/e;->b(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->j(Lcom/aispeech/tts/e;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->j(Lcom/aispeech/tts/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1b
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    sget-object v1, Lcom/aispeech/tts/e$d;->b:Lcom/aispeech/tts/e$d;

    invoke-static {v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$d;)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    sget-object v1, Lcom/aispeech/tts/e$b;->d:Lcom/aispeech/tts/e$b;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$b;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/e$d;

    move-result-object v0

    sget-object v1, Lcom/aispeech/tts/e$d;->c:Lcom/aispeech/tts/e$d;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/e$d;

    move-result-object v0

    sget-object v1, Lcom/aispeech/tts/e$d;->e:Lcom/aispeech/tts/e$d;

    if-ne v0, v1, :cond_1

    :cond_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v1}, Lcom/aispeech/tts/e;->d(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/k;

    move-result-object v1

    invoke-static {v1}, Lcom/aispeech/tts/e;->b(Lcom/aispeech/tts/k;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v1, v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;[B)V

    goto/16 :goto_0

    :cond_1d
    iget-object v1, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v1, v0}, Lcom/aispeech/tts/e;->b(Lcom/aispeech/tts/e;[B)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/e$d;

    move-result-object v0

    sget-object v3, Lcom/aispeech/tts/e$d;->c:Lcom/aispeech/tts/e$d;

    if-eq v0, v3, :cond_1e

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/e$d;

    move-result-object v0

    sget-object v3, Lcom/aispeech/tts/e$d;->e:Lcom/aispeech/tts/e$d;

    if-ne v0, v3, :cond_20

    :cond_1e
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->d(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/tts/k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    if-eqz v0, :cond_1f

    new-instance v4, Lcom/aispeech/tts/h;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {v4, v3, v0}, Lcom/aispeech/tts/h;-><init>(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->f(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/g;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/aispeech/tts/g;->a(Lcom/aispeech/tts/f;)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/aispeech/tts/d;->a(Z)V

    :cond_1f
    new-instance v0, Lcom/aispeech/tts/h;

    invoke-direct {v0, v1, v1}, Lcom/aispeech/tts/h;-><init>(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v1}, Lcom/aispeech/tts/e;->f(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aispeech/tts/g;->a(Lcom/aispeech/tts/f;)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->g(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/d;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/aispeech/tts/d;->a(Z)V

    goto/16 :goto_0

    :cond_20
    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0, v2}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$c;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->m(Lcom/aispeech/tts/e;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_21

    const-string v0, "SpeechSynthesizer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "MSG_COMPLETED seesionId:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mAIPlayerSessionId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    invoke-static {v4}, Lcom/aispeech/tts/e;->m(Lcom/aispeech/tts/e;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    sget-object v3, Lcom/aispeech/tts/e$b;->c:Lcom/aispeech/tts/e$b;

    invoke-static {v0, v3, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$b;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/tts/e$1;->a:Lcom/aispeech/tts/e;

    sget-object v1, Lcom/aispeech/tts/e$d;->b:Lcom/aispeech/tts/e$d;

    invoke-static {v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/e;Lcom/aispeech/tts/e$d;)V

    goto/16 :goto_0

    :cond_21
    const-string v0, "SpeechSynthesizer"

    const-string v1, "player session expired"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_22
    move-object v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
