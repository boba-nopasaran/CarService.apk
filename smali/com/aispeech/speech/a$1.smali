.class final Lcom/aispeech/speech/a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/speech/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/aispeech/speech/a;


# direct methods
.method constructor <init>(Lcom/aispeech/speech/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/aispeech/speech/a$b;->a(I)Lcom/aispeech/speech/a$b;

    move-result-object v4

    invoke-static {v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "***Event: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/aispeech/speech/a$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Current:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v5}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aispeech/speech/a$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/aispeech/speech/a$3;->a:[I

    invoke-virtual {v4}, Lcom/aispeech/speech/a$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-static {v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a$b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Next:\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v2}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aispeech/speech/a$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->a:Lcom/aispeech/speech/a$c;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->c(Lcom/aispeech/speech/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    new-instance v1, Lcom/aispeech/AIEngine;

    invoke-direct {v1}, Lcom/aispeech/AIEngine;-><init>()V

    invoke-static {v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/AIEngine;)Lcom/aispeech/AIEngine;

    :cond_3
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    new-instance v1, Lcom/aispeech/AIEngine;

    invoke-direct {v1}, Lcom/aispeech/AIEngine;-><init>()V

    invoke-static {v0, v1}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;Lcom/aispeech/AIEngine;)Lcom/aispeech/AIEngine;

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    new-array v1, v7, [Lcom/aispeech/a;

    iget-object v5, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v5}, Lcom/aispeech/speech/a;->d(Lcom/aispeech/speech/a;)Lcom/aispeech/a;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v5, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v5}, Lcom/aispeech/speech/a;->e(Lcom/aispeech/speech/a;)Lcom/aispeech/a;

    move-result-object v5

    aput-object v5, v1, v2

    new-array v5, v7, [Lcom/aispeech/AIEngine;

    iget-object v6, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v6}, Lcom/aispeech/speech/a;->f(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v3, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v3}, Lcom/aispeech/speech/a;->g(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0, v1, v5}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;[Lcom/aispeech/a;[Lcom/aispeech/AIEngine;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v2, Lcom/aispeech/speech/a$c;->b:Lcom/aispeech/speech/a$c;

    invoke-static {v1, v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$c;)Lcom/aispeech/speech/a$c;

    :cond_4
    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v2, Lcom/aispeech/speech/a$a;->a:Lcom/aispeech/speech/a$a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->b:Lcom/aispeech/speech/a$c;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$c;)Lcom/aispeech/speech/a$c;

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->h(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->w()Z

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v3}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Z)Z

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->h(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->t()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->h(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v2}, Lcom/aispeech/speech/a;->g(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/d;Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->c(Lcom/aispeech/speech/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->i(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v2}, Lcom/aispeech/speech/a;->f(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/d;Lcom/aispeech/AIEngine;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->j(Lcom/aispeech/speech/a;)Lcom/aispeech/a/e;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->k(Lcom/aispeech/speech/a;)Lcom/aispeech/a/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/a/e;)Lcom/aispeech/a/e;

    :cond_7
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->l(Lcom/aispeech/speech/a;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->m(Lcom/aispeech/speech/a;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->d:Lcom/aispeech/speech/a$c;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->b:Lcom/aispeech/speech/a$c;

    if-ne v0, v1, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->c(Lcom/aispeech/speech/a;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->f(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/AIEngine;)V

    :cond_a
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->g(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->n(Lcom/aispeech/speech/a;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->o(Lcom/aispeech/speech/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->p(Lcom/aispeech/speech/a;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->q(Lcom/aispeech/speech/a;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$c;->b:Lcom/aispeech/speech/a$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$c;)Lcom/aispeech/speech/a$c;

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/aispeech/AIError;

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aispeech/AIError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v1

    sget-object v5, Lcom/aispeech/speech/a$c;->a:Lcom/aispeech/speech/a$c;

    if-eq v1, v5, :cond_1

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v1

    sget-object v5, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    if-ne v1, v5, :cond_e

    move v1, v2

    :goto_1
    iget-object v5, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v5}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v5

    sget-object v6, Lcom/aispeech/speech/a$c;->d:Lcom/aispeech/speech/a$c;

    if-ne v5, v6, :cond_c

    move v3, v2

    :cond_c
    or-int/2addr v1, v3

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/aispeech/AIError;->isNetWorkError()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lcom/aispeech/AIError;->getErrId()I

    move-result v1

    const/16 v3, 0x1f4

    if-eq v1, v3, :cond_d

    invoke-virtual {v0}, Lcom/aispeech/AIError;->getErrId()I

    move-result v1

    const/16 v3, 0x190

    if-ne v1, v3, :cond_f

    :cond_d
    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1, v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Z)Z

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->f(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v1

    invoke-static {v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/AIEngine;)V

    invoke-virtual {v0}, Lcom/aispeech/AIError;->isNetWorkError()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$b;->o:Lcom/aispeech/speech/a$b;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    move v1, v3

    goto :goto_1

    :cond_f
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$a;->f:Lcom/aispeech/speech/a$a;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$a;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->f(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->g(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->o(Lcom/aispeech/speech/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->p(Lcom/aispeech/speech/a;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->q(Lcom/aispeech/speech/a;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$c;->b:Lcom/aispeech/speech/a$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$c;)Lcom/aispeech/speech/a$c;

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->p(Lcom/aispeech/speech/a;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$c;->d:Lcom/aispeech/speech/a$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$c;)Lcom/aispeech/speech/a$c;

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->g(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->c(Lcom/aispeech/speech/a;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->r(Lcom/aispeech/speech/a;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->f(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->s(Lcom/aispeech/speech/a;)V

    :cond_11
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->h(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->t()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->t(Lcom/aispeech/speech/a;)V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->a:Lcom/aispeech/speech/a$c;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->p(Lcom/aispeech/speech/a;)V

    :cond_13
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->u(Lcom/aispeech/speech/a;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->v(Lcom/aispeech/speech/a;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->f(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/a;->c(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->g(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/a;->c(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$c;->a:Lcom/aispeech/speech/a$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$c;)Lcom/aispeech/speech/a$c;

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-virtual {v0}, Lcom/aispeech/speech/a;->f()V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->a:Lcom/aispeech/speech/a$c;

    if-eq v0, v1, :cond_15

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->g(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->g(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aispeech/AIEngine;->b([B)V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->a:Lcom/aispeech/speech/a$c;

    if-eq v0, v1, :cond_16

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;Z)Z

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cloud enable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v2}, Lcom/aispeech/speech/a;->c(Lcom/aispeech/speech/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->w(Lcom/aispeech/speech/a;)J

    move-result-wide v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRecord callback event: MSG_RECORD_START invalid because session is expired."

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->d:Lcom/aispeech/speech/a$c;

    if-ne v0, v1, :cond_1b

    :cond_18
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->x(Lcom/aispeech/speech/a;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->h(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v2}, Lcom/aispeech/speech/a;->g(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/d;Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->c(Lcom/aispeech/speech/a;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->i(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v2}, Lcom/aispeech/speech/a;->f(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/d;Lcom/aispeech/AIEngine;)V

    :cond_19
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->h(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->r()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->y(Lcom/aispeech/speech/a;)V

    :cond_1a
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$a;->g:Lcom/aispeech/speech/a$a;

    invoke-static {v0, v1, v6}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1b
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, [B

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v1

    sget-object v2, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->r(Lcom/aispeech/speech/a;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->c(Lcom/aispeech/speech/a;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->f(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/AIEngine;[B)V

    :cond_1c
    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->g(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/AIEngine;[B)V

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v2, Lcom/aispeech/speech/a$a;->d:Lcom/aispeech/speech/a$a;

    invoke-static {v1, v2, v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$a;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1, v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;[B)V

    goto/16 :goto_0

    :cond_1d
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->w(Lcom/aispeech/speech/a;)J

    move-result-wide v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRecord callback event: MSG_RECORD_STOPPED invalid because session is expired."

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$a;->j:Lcom/aispeech/speech/a$a;

    invoke-static {v0, v1, v6}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->v(Lcom/aispeech/speech/a;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->v(Lcom/aispeech/speech/a;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->z(Lcom/aispeech/speech/a;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$a;->b:Lcom/aispeech/speech/a$a;

    invoke-static {v0, v1, v6}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1f
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->h(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->w()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "use one shot"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v2}, Lcom/aispeech/speech/a;->h(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aispeech/speech/d;->u()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "interval time is : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "interval thresh time is : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v5}, Lcom/aispeech/speech/a;->h(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aispeech/speech/d;->v()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v2}, Lcom/aispeech/speech/a;->h(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aispeech/speech/d;->v()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_21

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->v(Lcom/aispeech/speech/a;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->c(Lcom/aispeech/speech/a;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->f(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/AIEngine;)V

    :cond_20
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->g(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->o(Lcom/aispeech/speech/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->p(Lcom/aispeech/speech/a;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->q(Lcom/aispeech/speech/a;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$c;->b:Lcom/aispeech/speech/a$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$c;)Lcom/aispeech/speech/a$c;

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "not one shot"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$a;->k:Lcom/aispeech/speech/a$a;

    invoke-static {v0, v1, v6}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_21
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->h(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->p(Lcom/aispeech/speech/a;)V

    :cond_22
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$c;->d:Lcom/aispeech/speech/a$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$c;)Lcom/aispeech/speech/a$c;

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->g(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->c(Lcom/aispeech/speech/a;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->r(Lcom/aispeech/speech/a;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->f(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->s(Lcom/aispeech/speech/a;)V

    :cond_23
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->h(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->t()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->t(Lcom/aispeech/speech/a;)V

    :cond_24
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$a;->c:Lcom/aispeech/speech/a$a;

    invoke-static {v0, v1, v6}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_25
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->h(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->b()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->p(Lcom/aispeech/speech/a;)V

    :cond_26
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$c;->d:Lcom/aispeech/speech/a$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$c;)Lcom/aispeech/speech/a$c;

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->g(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->c(Lcom/aispeech/speech/a;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->r(Lcom/aispeech/speech/a;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->f(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->s(Lcom/aispeech/speech/a;)V

    :cond_27
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->h(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->t()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->t(Lcom/aispeech/speech/a;)V

    :cond_28
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$a;->c:Lcom/aispeech/speech/a$a;

    invoke-static {v0, v1, v6}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_29
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$a;->i:Lcom/aispeech/speech/a$a;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2a
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->d:Lcom/aispeech/speech/a$c;

    if-ne v0, v1, :cond_2e

    :cond_2b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/aispeech/AIResult;

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1, v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/AIResult;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->c(Lcom/aispeech/speech/a;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->r(Lcom/aispeech/speech/a;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->A(Lcom/aispeech/speech/a;)Lcom/aispeech/AIResult;

    move-result-object v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->B(Lcom/aispeech/speech/a;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->C(Lcom/aispeech/speech/a;)F

    move-result v0

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->D(Lcom/aispeech/speech/a;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2c

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->E(Lcom/aispeech/speech/a;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->n(Lcom/aispeech/speech/a;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->f(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$b;->q:Lcom/aispeech/speech/a$b;

    invoke-static {v0, v1, v6}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "local prefer out."

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2c
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "waiting for cloud result."

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2d
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$b;->q:Lcom/aispeech/speech/a$b;

    invoke-static {v0, v1, v6}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2e
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    if-eq v0, v1, :cond_2f

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->d:Lcom/aispeech/speech/a$c;

    if-ne v0, v1, :cond_33

    :cond_2f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/aispeech/AIResult;

    invoke-virtual {v0}, Lcom/aispeech/AIResult;->isLast()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->n(Lcom/aispeech/speech/a;)V

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1, v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;Lcom/aispeech/AIResult;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->F(Lcom/aispeech/speech/a;)Lcom/aispeech/AIResult;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$b;->q:Lcom/aispeech/speech/a$b;

    invoke-static {v0, v1, v6}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_30
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->G(Lcom/aispeech/speech/a;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->H(Lcom/aispeech/speech/a;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->g(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$b;->q:Lcom/aispeech/speech/a$b;

    invoke-static {v0, v1, v6}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cloud prefer out."

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_31
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "waiting for local result."

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_32
    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v2, Lcom/aispeech/speech/a$a;->h:Lcom/aispeech/speech/a$a;

    invoke-static {v1, v2, v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_33
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    if-eq v0, v1, :cond_34

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->d:Lcom/aispeech/speech/a$c;

    if-ne v0, v1, :cond_36

    :cond_34
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->I(Lcom/aispeech/speech/a;)Lcom/aispeech/AIResult;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->x(Lcom/aispeech/speech/a;)V

    invoke-virtual {v0}, Lcom/aispeech/AIResult;->isLast()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v2, Lcom/aispeech/speech/a$a;->h:Lcom/aispeech/speech/a$a;

    invoke-static {v1, v2, v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$a;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->p(Lcom/aispeech/speech/a;)V

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->q(Lcom/aispeech/speech/a;)V

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1, v0}, Lcom/aispeech/speech/a;->c(Lcom/aispeech/speech/a;Lcom/aispeech/AIResult;)V

    :cond_35
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$c;->b:Lcom/aispeech/speech/a$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$c;)Lcom/aispeech/speech/a$c;

    goto/16 :goto_0

    :cond_36
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->b:Lcom/aispeech/speech/a$c;

    if-eq v0, v1, :cond_37

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    if-eq v0, v1, :cond_37

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->b(Lcom/aispeech/speech/a;)Lcom/aispeech/speech/a$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/a$c;->d:Lcom/aispeech/speech/a$c;

    if-ne v0, v1, :cond_3b

    :cond_37
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/aispeech/AIError;

    invoke-virtual {v0}, Lcom/aispeech/AIError;->getErrId()I

    move-result v1

    const v5, 0x114fe

    if-ne v1, v5, :cond_38

    move v3, v2

    :cond_38
    if-eqz v3, :cond_39

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "before cancel"

    invoke-static {v1, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->f(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v1

    invoke-static {v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/AIEngine;)V

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "after cancel"

    invoke-static {v1, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1, v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Z)Z

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->F(Lcom/aispeech/speech/a;)Lcom/aispeech/AIResult;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->C(Lcom/aispeech/speech/a;)F

    move-result v1

    iget-object v2, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v2}, Lcom/aispeech/speech/a;->D(Lcom/aispeech/speech/a;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3a

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "return local result"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v1, Lcom/aispeech/speech/a$b;->q:Lcom/aispeech/speech/a$b;

    invoke-static {v0, v1, v6}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_39
    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->n(Lcom/aispeech/speech/a;)V

    goto :goto_2

    :cond_3a
    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "return error"

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->f(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v1

    invoke-static {v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/AIEngine;)V

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->g(Lcom/aispeech/speech/a;)Lcom/aispeech/AIEngine;

    move-result-object v1

    invoke-static {v1}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/AIEngine;)V

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->o(Lcom/aispeech/speech/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->p(Lcom/aispeech/speech/a;)V

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v1}, Lcom/aispeech/speech/a;->q(Lcom/aispeech/speech/a;)V

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v2, Lcom/aispeech/speech/a$c;->b:Lcom/aispeech/speech/a$c;

    invoke-static {v1, v2}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$c;)Lcom/aispeech/speech/a$c;

    iget-object v1, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    sget-object v2, Lcom/aispeech/speech/a$a;->f:Lcom/aispeech/speech/a$a;

    invoke-static {v1, v2, v0}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3b
    iget-object v0, p0, Lcom/aispeech/speech/a$1;->a:Lcom/aispeech/speech/a;

    invoke-static {v0, v4}, Lcom/aispeech/speech/a;->a(Lcom/aispeech/speech/a;Lcom/aispeech/speech/a$b;)V

    goto/16 :goto_0

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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
