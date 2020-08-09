.class Lcom/aispeech/aios/aimedia/a/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/bean/FMInfo;

.field final synthetic b:Lcom/aispeech/aios/aimedia/a/a/e;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/a/e;Lcom/aispeech/aios/aimedia/bean/FMInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/g;->b:Lcom/aispeech/aios/aimedia/a/a/e;

    iput-object p2, p0, Lcom/aispeech/aios/aimedia/a/a/g;->a:Lcom/aispeech/aios/aimedia/bean/FMInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/g;->b:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/e;->d(Lcom/aispeech/aios/aimedia/a/a/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/g;->b:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/e;->c(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/kaolafm/sdk/client/i;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/g;->b:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v1}, Lcom/aispeech/aios/aimedia/a/a/e;->e(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/kaolafm/sdk/client/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/ak;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/g;->b:Lcom/aispeech/aios/aimedia/a/a/e;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/g;->a:Lcom/aispeech/aios/aimedia/bean/FMInfo;

    invoke-static {v0, v1}, Lcom/aispeech/aios/aimedia/a/a/e;->a(Lcom/aispeech/aios/aimedia/a/a/e;Lcom/aispeech/aios/aimedia/bean/FMInfo;)Lcom/kaolafm/sdk/client/Radio;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lcom/aispeech/aios/aimedia/a/a/g;->b:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v2}, Lcom/aispeech/aios/aimedia/a/a/e;->d(Lcom/aispeech/aios/aimedia/a/a/e;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/g;->b:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v1}, Lcom/aispeech/aios/aimedia/a/a/e;->d(Lcom/aispeech/aios/aimedia/a/a/e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/Radio;

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "AIOS-AIMedia-KLFMProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchChannel [id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/kaolafm/sdk/client/Radio;->a:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/kaolafm/sdk/client/Radio;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",categoryId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/kaolafm/sdk/client/Radio;->c:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/g;->b:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v1}, Lcom/aispeech/aios/aimedia/a/a/e;->c(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/kaolafm/sdk/client/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/Radio;)V

    goto :goto_0
.end method
