.class Lcom/aispeech/aios/aimedia/a/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/bean/MusicInfo;

.field final synthetic b:Lcom/aispeech/aios/aimedia/a/b/d;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/b/d;Lcom/aispeech/aios/aimedia/bean/MusicInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/b/o;->b:Lcom/aispeech/aios/aimedia/a/b/d;

    iput-object p2, p0, Lcom/aispeech/aios/aimedia/a/b/o;->a:Lcom/aispeech/aios/aimedia/bean/MusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/o;->b:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/b/d;->e(Lcom/aispeech/aios/aimedia/a/b/d;)Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/o;->b:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/b/d;->d(Lcom/aispeech/aios/aimedia/a/b/d;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/o;->b:Lcom/aispeech/aios/aimedia/a/b/d;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/b/d;->a(Lcom/aispeech/aios/aimedia/a/b/d;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/aispeech/aios/aimedia/a/b/o;->a:Lcom/aispeech/aios/aimedia/bean/MusicInfo;

    invoke-virtual {v3}, Lcom/aispeech/aios/aimedia/bean/MusicInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/Music;

    invoke-virtual {v1, v2, v0}, Lcn/kuwo/autosdk/api/KWAPI;->playMusic(Landroid/content/Context;Lcn/kuwo/autosdk/bean/Music;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/b/o;->b:Lcom/aispeech/aios/aimedia/a/b/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aispeech/aios/aimedia/a/b/d;->a(Lcom/aispeech/aios/aimedia/a/b/d;Z)Z

    return-void
.end method
