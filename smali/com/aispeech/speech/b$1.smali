.class final Lcom/aispeech/speech/b$1;
.super Landroid/os/Handler;
.source "SourceFile"


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
.method constructor <init>(Lcom/aispeech/speech/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/aispeech/speech/b$b;->a(I)Lcom/aispeech/speech/b$b;

    move-result-object v4

    invoke-static {v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, ">>>>>>Event: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/aispeech/speech/b$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "[Current]:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v5}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aispeech/speech/b$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/aispeech/speech/b$4;->a:[I

    invoke-virtual {v4}, Lcom/aispeech/speech/b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    invoke-static {v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b$b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Next]:\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v2}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aispeech/speech/b$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->a:Lcom/aispeech/speech/b$c;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    new-instance v1, Lcom/aispeech/AIEngine;

    invoke-direct {v1}, Lcom/aispeech/AIEngine;-><init>()V

    invoke-static {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/AIEngine;)Lcom/aispeech/AIEngine;

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->c(Lcom/aispeech/speech/b;)Lcom/aispeech/a;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v2}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/a;Lcom/aispeech/AIEngine;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v2, Lcom/aispeech/speech/b$c;->b:Lcom/aispeech/speech/b$c;

    invoke-static {v1, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$c;)Lcom/aispeech/speech/b$c;

    :cond_3
    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v2, Lcom/aispeech/speech/b$a;->a:Lcom/aispeech/speech/b$a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0, v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/aispeech/speech/d;

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v1

    sget-object v2, Lcom/aispeech/speech/b$c;->b:Lcom/aispeech/speech/b$c;

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1, v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/d;)Lcom/aispeech/speech/d;

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->e(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aispeech/speech/d;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v2, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    invoke-static {v1, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$c;)Lcom/aispeech/speech/b$c;

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->w()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->f(Lcom/aispeech/speech/b;)Z

    :cond_5
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->e(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->t()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->e(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/d;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v2}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/d;Lcom/aispeech/AIEngine;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->g(Lcom/aispeech/speech/b;)Lcom/aispeech/a/e;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->h(Lcom/aispeech/speech/b;)Lcom/aispeech/a/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/a/e;)Lcom/aispeech/a/e;

    :cond_7
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->i(Lcom/aispeech/speech/b;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->e(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/d;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v2}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/d;Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$c;->d:Lcom/aispeech/speech/b$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$c;)Lcom/aispeech/speech/b$c;

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v1

    sget-object v2, Lcom/aispeech/speech/b$c;->d:Lcom/aispeech/speech/b$c;

    if-ne v1, v2, :cond_a

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->a()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->j(Lcom/aispeech/speech/b;)Ljava/util/Queue;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->j(Lcom/aispeech/speech/b;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0, v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->d:Lcom/aispeech/speech/b$c;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->b:Lcom/aispeech/speech/b$c;

    if-ne v0, v1, :cond_d

    :cond_b
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->k(Lcom/aispeech/speech/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    iget-object v1, v1, Lcom/aispeech/speech/b;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->l(Lcom/aispeech/speech/b;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->l(Lcom/aispeech/speech/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_c
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->m(Lcom/aispeech/speech/b;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->n(Lcom/aispeech/speech/b;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$c;->b:Lcom/aispeech/speech/b$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$c;)Lcom/aispeech/speech/b$c;

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0, v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/aispeech/AIError;

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aispeech/AIError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->a:Lcom/aispeech/speech/b$c;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->d:Lcom/aispeech/speech/b$c;

    if-ne v0, v1, :cond_11

    :cond_e
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->l(Lcom/aispeech/speech/b;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->l(Lcom/aispeech/speech/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_f
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->m(Lcom/aispeech/speech/b;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0, v6}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/a/e;)Lcom/aispeech/a/e;

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->n(Lcom/aispeech/speech/b;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$c;->b:Lcom/aispeech/speech/b$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$c;)Lcom/aispeech/speech/b$c;

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->j()V

    :cond_10
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$a;->f:Lcom/aispeech/speech/b$a;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0, v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->m(Lcom/aispeech/speech/b;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$c;->d:Lcom/aispeech/speech/b$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$c;)Lcom/aispeech/speech/b$c;

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/AIEngine;)V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0, v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->a:Lcom/aispeech/speech/b$c;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->m(Lcom/aispeech/speech/b;)V

    :cond_13
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->o(Lcom/aispeech/speech/b;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->p(Lcom/aispeech/speech/b;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/b;->c(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$c;->a:Lcom/aispeech/speech/b$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$c;)Lcom/aispeech/speech/b$c;

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->q(Lcom/aispeech/speech/b;)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0, v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->a:Lcom/aispeech/speech/b$c;

    if-eq v0, v1, :cond_15

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aispeech/AIEngine;->b([B)V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0, v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->r(Lcom/aispeech/speech/b;)J

    move-result-wide v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AudioRecord callback event: MSG_RECORD_START invalid because session is expired. before is : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v2}, Lcom/aispeech/speech/b;->r(Lcom/aispeech/speech/b;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " now is : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->d:Lcom/aispeech/speech/b$c;

    if-ne v0, v1, :cond_18

    :cond_17
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->e(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/d;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v2}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/d;Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->e(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->s(Lcom/aispeech/speech/b;)V

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0, v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v1

    sget-object v2, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    if-ne v1, v2, :cond_19

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/AIEngine;[B)V

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v2, Lcom/aispeech/speech/b$a;->d:Lcom/aispeech/speech/b$a;

    invoke-static {v1, v2, v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_19
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0, v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->r(Lcom/aispeech/speech/b;)J

    move-result-wide v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AudioRecord callback event: MSG_RECORD_STOPPED invalid because session is expired. before is : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v2}, Lcom/aispeech/speech/b;->r(Lcom/aispeech/speech/b;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " now is : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$a;->j:Lcom/aispeech/speech/b$a;

    invoke-static {v0, v1, v6}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->p(Lcom/aispeech/speech/b;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->t(Lcom/aispeech/speech/b;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$a;->b:Lcom/aispeech/speech/b$a;

    invoke-static {v0, v1, v6}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1b
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0, v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->e(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->w()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "use one shot"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v2}, Lcom/aispeech/speech/b;->e(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aispeech/speech/d;->u()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "interval time is : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "interval thresh time is : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v5}, Lcom/aispeech/speech/b;->e(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aispeech/speech/d;->v()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v2}, Lcom/aispeech/speech/b;->e(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aispeech/speech/d;->v()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1d

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->k(Lcom/aispeech/speech/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    iget-object v1, v1, Lcom/aispeech/speech/b;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->l(Lcom/aispeech/speech/b;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->l(Lcom/aispeech/speech/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1c
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->m(Lcom/aispeech/speech/b;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->n(Lcom/aispeech/speech/b;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$c;->b:Lcom/aispeech/speech/b$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$c;)Lcom/aispeech/speech/b$c;

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "not one shot"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$a;->l:Lcom/aispeech/speech/b$a;

    invoke-static {v0, v1, v6}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1d
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->e(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->m(Lcom/aispeech/speech/b;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$c;->d:Lcom/aispeech/speech/b$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$c;)Lcom/aispeech/speech/b$c;

    :cond_1e
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$a;->c:Lcom/aispeech/speech/b$a;

    invoke-static {v0, v1, v6}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1f
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->e(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/speech/d;->b()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/AIEngine;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->m(Lcom/aispeech/speech/b;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$c;->d:Lcom/aispeech/speech/b$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$c;)Lcom/aispeech/speech/b$c;

    :cond_20
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$a;->c:Lcom/aispeech/speech/b$a;

    invoke-static {v0, v1, v6}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_21
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0, v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$a;->c:Lcom/aispeech/speech/b$a;

    invoke-static {v0, v1, v6}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_22
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0, v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$a;->i:Lcom/aispeech/speech/b$a;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_23
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0, v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->d:Lcom/aispeech/speech/b$c;

    if-ne v0, v1, :cond_28

    :cond_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/aispeech/AIResult;

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v2, Lcom/aispeech/speech/b$a;->h:Lcom/aispeech/speech/b$a;

    invoke-static {v1, v2, v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/aispeech/AIResult;->isLast()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v1

    sget-object v2, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    if-ne v1, v2, :cond_25

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v1

    invoke-static {v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/AIEngine;)V

    :cond_25
    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->m(Lcom/aispeech/speech/b;)V

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->n(Lcom/aispeech/speech/b;)V

    invoke-virtual {v0}, Lcom/aispeech/AIResult;->isLast()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1, v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/AIResult;)V

    :cond_26
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$c;->b:Lcom/aispeech/speech/b$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$c;)Lcom/aispeech/speech/b$c;

    :cond_27
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-virtual {v0}, Lcom/aispeech/speech/b;->j()V

    goto/16 :goto_0

    :cond_28
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0, v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->d:Lcom/aispeech/speech/b$c;

    if-ne v0, v1, :cond_2e

    :cond_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/aispeech/AIResult;

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v5, Lcom/aispeech/speech/b$a;->h:Lcom/aispeech/speech/b$a;

    invoke-static {v1, v5, v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->e(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aispeech/speech/d;->c()Ljava/lang/String;

    move-result-object v1

    const-string v5, "LocalWakeupParams"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->e(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aispeech/speech/d;->c()Ljava/lang/String;

    move-result-object v1

    const-string v5, "LocalWakeupDnnParams"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_2a
    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->e(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aispeech/speech/d;->b()Z

    move-result v1

    if-eqz v1, :cond_2c

    move v1, v2

    :goto_1
    iget-object v5, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v5}, Lcom/aispeech/speech/b;->e(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aispeech/speech/d;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LocalWakeupLocalASRParams"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v0}, Lcom/aispeech/AIResult;->isLast()Z

    move-result v0

    if-eqz v0, :cond_2d

    :goto_2
    if-nez v1, :cond_2b

    if-eqz v2, :cond_1

    :cond_2b
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->k(Lcom/aispeech/speech/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    iget-object v1, v1, Lcom/aispeech/speech/b;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_2c
    move v1, v3

    goto :goto_1

    :cond_2d
    move v2, v3

    goto :goto_2

    :cond_2e
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0, v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    if-eq v0, v1, :cond_2f

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->b(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v0

    sget-object v1, Lcom/aispeech/speech/b$c;->d:Lcom/aispeech/speech/b$c;

    if-ne v0, v1, :cond_31

    :cond_2f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/aispeech/AIResult;

    invoke-virtual {v0}, Lcom/aispeech/AIResult;->isLast()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->d(Lcom/aispeech/speech/b;)Lcom/aispeech/AIEngine;

    move-result-object v1

    invoke-static {v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/AIEngine;)V

    :cond_30
    iget-object v1, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v2, Lcom/aispeech/speech/b$a;->h:Lcom/aispeech/speech/b$a;

    invoke-static {v1, v2, v0}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$a;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->m(Lcom/aispeech/speech/b;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->n(Lcom/aispeech/speech/b;)V

    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    sget-object v1, Lcom/aispeech/speech/b$c;->b:Lcom/aispeech/speech/b$c;

    invoke-static {v0, v1}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$c;)Lcom/aispeech/speech/b$c;

    goto/16 :goto_0

    :cond_31
    iget-object v0, p0, Lcom/aispeech/speech/b$1;->a:Lcom/aispeech/speech/b;

    invoke-static {v0, v4}, Lcom/aispeech/speech/b;->a(Lcom/aispeech/speech/b;Lcom/aispeech/speech/b$b;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
