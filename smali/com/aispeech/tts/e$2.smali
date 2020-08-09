.class final Lcom/aispeech/tts/e$2;
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

    iput-object p1, p0, Lcom/aispeech/tts/e$2;->a:Lcom/aispeech/tts/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/aispeech/tts/e$b;->a(I)Lcom/aispeech/tts/e$b;

    move-result-object v0

    sget-object v1, Lcom/aispeech/tts/e$3;->b:[I

    invoke-virtual {v0}, Lcom/aispeech/tts/e$b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/aispeech/tts/e$2;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->n(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/e$2;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->n(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/j;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/aispeech/tts/j;->a(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/aispeech/tts/e$2;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->n(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/e$2;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->n(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/aispeech/tts/j;->a_()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/aispeech/tts/e$2;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->n(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/e$2;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->n(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/aispeech/tts/j;->b()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/aispeech/tts/e$2;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->n(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/e$2;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->n(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/j;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/aispeech/AIError;

    invoke-interface {v1, v0}, Lcom/aispeech/tts/j;->a(Lcom/aispeech/AIError;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    iget-object v0, p0, Lcom/aispeech/tts/e$2;->a:Lcom/aispeech/tts/e;

    invoke-static {v0}, Lcom/aispeech/tts/e;->n(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/j;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/aispeech/tts/e$2;->a:Lcom/aispeech/tts/e;

    invoke-static {v3}, Lcom/aispeech/tts/e;->n(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/j;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/aispeech/tts/e$2;->a:Lcom/aispeech/tts/e;

    invoke-static {v3}, Lcom/aispeech/tts/e;->n(Lcom/aispeech/tts/e;)Lcom/aispeech/tts/j;

    move-result-object v3

    invoke-interface {v3, v2, v1, v0}, Lcom/aispeech/tts/j;->a_(IIZ)V

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
    .end packed-switch
.end method
