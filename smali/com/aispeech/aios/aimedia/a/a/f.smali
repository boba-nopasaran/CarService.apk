.class Lcom/aispeech/aios/aimedia/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/bean/FMInfo;

.field final synthetic b:Lcom/aispeech/aios/aimedia/a/a/e;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/a/e;Lcom/aispeech/aios/aimedia/bean/FMInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/f;->b:Lcom/aispeech/aios/aimedia/a/a/e;

    iput-object p2, p0, Lcom/aispeech/aios/aimedia/a/a/f;->a:Lcom/aispeech/aios/aimedia/bean/FMInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/f;->a:Lcom/aispeech/aios/aimedia/bean/FMInfo;

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/aispeech/aios/aimedia/a/a/f;->a:Lcom/aispeech/aios/aimedia/bean/FMInfo;

    invoke-virtual {v2}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v2, v0

    :goto_0
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/f;->b:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/e;->a(Lcom/aispeech/aios/aimedia/a/a/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/SearchData;

    invoke-virtual {v0}, Lcom/kaolafm/sdk/client/SearchData;->a()J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "AIOS-AIMedia-KLFMProxy"

    const-string v1, "\u64ad\u653e\u8003\u62c9\u64ad\u653e\u8282\u76ee...(\u901a\u8fc7keyword\u64ad\u653e)"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/f;->b:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/e;->c(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/kaolafm/sdk/client/i;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/f;->a:Lcom/aispeech/aios/aimedia/bean/FMInfo;

    invoke-virtual {v1}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->getTrack()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/aios/aimedia/a/a/f;->b:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v2}, Lcom/aispeech/aios/aimedia/a/a/e;->b(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/kaolafm/sdk/client/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kaolafm/sdk/client/i;->a(Ljava/lang/String;Lcom/kaolafm/sdk/client/ah;)V

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v2

    move-wide v2, v0

    goto :goto_0

    :cond_2
    const-string v1, "AIOS-AIMedia-KLFMProxy"

    const-string v2, "\u64ad\u653e\u8003\u62c9\u64ad\u653e\u8282\u76ee...(\u901a\u8fc7\u641c\u7d22\u7ed3\u679c\u64ad\u653e)"

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/f;->b:Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-static {v1}, Lcom/aispeech/aios/aimedia/a/a/e;->c(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/kaolafm/sdk/client/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/SearchData;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
