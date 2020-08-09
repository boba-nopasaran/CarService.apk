.class Lcom/aispeech/aios/aimedia/a/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/a/a/k;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/q;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 2

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "\u8fde\u63a5\u4e86"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/q;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Lcom/aispeech/aios/aimedia/a/a/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/q;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Lcom/aispeech/aios/aimedia/a/a/k;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/q;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->b(Lcom/aispeech/aios/aimedia/a/a/k;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/q;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aispeech/aios/aimedia/a/a/k;->b(Lcom/aispeech/aios/aimedia/a/a/k;Z)Z

    goto :goto_0
.end method
