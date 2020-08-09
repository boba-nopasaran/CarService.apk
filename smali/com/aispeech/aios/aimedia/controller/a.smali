.class public Lcom/aispeech/aios/aimedia/controller/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/a/a/c;
    .locals 1

    invoke-static {}, Lcom/aispeech/aios/aimedia/AIMedia;->getIntance()Lcom/aispeech/aios/aimedia/AIMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/AIMedia;->getCurrentConf()Lcom/aispeech/aios/aimedia/bean/ConfBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/ConfBean;->getFmIndex()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/aispeech/aios/aimedia/a/a/c;

    invoke-direct {v0}, Lcom/aispeech/aios/aimedia/a/a/c;-><init>()V

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p1}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/a/a/k;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/aispeech/aios/aimedia/a/a/a;->a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/a/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/aispeech/aios/aimedia/a/a/e;->a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/a/a/e;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
