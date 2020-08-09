.class Lcom/aispeech/aios/aimedia/a/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/a/b/d;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/b/h;->a:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/h;->a:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/b/d;->e(Lcom/aispeech/aios/aimedia/a/b/d;)Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/h;->a:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-static {v1}, Lcom/aispeech/aios/aimedia/a/b/d;->d(Lcom/aispeech/aios/aimedia/a/b/d;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/kuwo/autosdk/api/PlayState;->STATE_PAUSE:Lcn/kuwo/autosdk/api/PlayState;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->setPlayState(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayState;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/h;->a:Lcom/aispeech/aios/aimedia/a/b/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aispeech/aios/aimedia/a/b/d;->a(Lcom/aispeech/aios/aimedia/a/b/d;Z)Z

    return-void
.end method
