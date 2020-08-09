.class public Lcom/aispeech/aios/aimedia/controller/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/a/b/c;
    .locals 1

    invoke-static {}, Lcom/aispeech/aios/aimedia/AIMedia;->getIntance()Lcom/aispeech/aios/aimedia/AIMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/AIMedia;->getCurrentConf()Lcom/aispeech/aios/aimedia/bean/ConfBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->getMusicIndex()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/aispeech/aios/aimedia/a/b/c;

    invoke-direct {v0}, Lcom/aispeech/aios/aimedia/a/b/c;-><init>()V

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p1}, Lcom/aispeech/aios/aimedia/a/b/d;->a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/a/b/d;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/aispeech/aios/aimedia/a/b/a;->a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/a/b/a;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
