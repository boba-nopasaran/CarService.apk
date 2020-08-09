.class Lcom/aispeech/aios/aimedia/a/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/a/b/d;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/b/f;->a:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/f;->a:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/b/d;->d(Lcom/aispeech/aios/aimedia/a/b/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/b/a;->a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/b/a;

    move-result-object v0

    const-string v1, "cn.kuwo.kwmusiccar"

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/b/a;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "AIOS-AIMedia-KuwoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kuwo playRandom isKuwoRunning : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/f;->a:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/b/d;->f(Lcom/aispeech/aios/aimedia/a/b/d;)Lcn/kuwo/autosdk/api/PlayerStatus;

    move-result-object v0

    sget-object v1, Lcn/kuwo/autosdk/api/PlayerStatus;->INIT:Lcn/kuwo/autosdk/api/PlayerStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/f;->a:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/b/d;->e(Lcom/aispeech/aios/aimedia/a/b/d;)Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/b/f;->a:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-static {v1}, Lcom/aispeech/aios/aimedia/a/b/d;->d(Lcom/aispeech/aios/aimedia/a/b/d;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/kuwo/autosdk/api/PlayState;->STATE_PLAY:Lcn/kuwo/autosdk/api/PlayState;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->setPlayState(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayState;)V

    :goto_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/f;->a:Lcom/aispeech/aios/aimedia/a/b/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aispeech/aios/aimedia/a/b/d;->a(Lcom/aispeech/aios/aimedia/a/b/d;Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/f;->a:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/b/d;->a()V

    goto :goto_0
.end method
