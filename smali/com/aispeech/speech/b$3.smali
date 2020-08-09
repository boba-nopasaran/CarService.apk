.class final Lcom/aispeech/speech/b$3;
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

    iput-object p1, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/aispeech/speech/b$a;->a(I)Lcom/aispeech/speech/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->u(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/b$c;

    move-result-object v1

    sget-object v2, Lcom/aispeech/speech/b$c;->e:Lcom/aispeech/speech/b$c;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/aispeech/speech/b$4;->b:[I

    invoke-virtual {v0}, Lcom/aispeech/speech/b$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/aispeech/speech/c;->a(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/aispeech/speech/c;->a()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v1}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/aispeech/speech/c;->a([B)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/aispeech/speech/c;->b()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/aispeech/speech/c;->e()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/aispeech/AIError;

    invoke-interface {v1, v0}, Lcom/aispeech/speech/c;->a(Lcom/aispeech/AIError;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/aispeech/speech/c;->d()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/aispeech/AIResult;

    invoke-interface {v1, v0}, Lcom/aispeech/speech/c;->a(Lcom/aispeech/AIResult;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/aispeech/speech/c;->a(F)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/aispeech/speech/c;->c()V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/speech/b$3;->a:Lcom/aispeech/speech/b;

    invoke-static {v0}, Lcom/aispeech/speech/b;->v(Lcom/aispeech/speech/b;)Lcom/aispeech/speech/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/aispeech/speech/c;->f()V

    goto/16 :goto_0

    nop

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
    .end packed-switch
.end method
