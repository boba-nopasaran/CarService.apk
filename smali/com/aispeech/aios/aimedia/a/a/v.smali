.class Lcom/aispeech/aios/aimedia/a/a/v;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/aispeech/aios/aimedia/bean/FMInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

.field final synthetic c:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

.field final synthetic d:Lcom/aispeech/aios/aimedia/a/a/k;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/a/k;Lcom/aispeech/aios/aimedia/bean/FmSearchParam;Lcom/aispeech/aios/aimedia/listenner/SearchListnner;)V
    .locals 1

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    iput-object p2, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    iput-object p3, p0, Lcom/aispeech/aios/aimedia/a/a/v;->c:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->a:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/aimedia/bean/FMInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->d(Lcom/aispeech/aios/aimedia/a/a/k;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    iget-object v2, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-virtual {v2}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Lcom/aispeech/aios/aimedia/a/a/k;Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    iget-object v3, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-virtual {v3}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Lcom/aispeech/aios/aimedia/a/a/k;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    iget-object v3, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-virtual {v3}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/aispeech/aios/aimedia/a/a/k;->b(Lcom/aispeech/aios/aimedia/a/a/k;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->e(Lcom/aispeech/aios/aimedia/a/a/k;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    iget-object v3, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    iget-object v4, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-virtual {v4}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Lcom/aispeech/aios/aimedia/a/a/k;Ljava/util/List;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/aispeech/aios/aimedia/a/a/k;->d:J

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    iget-wide v4, v0, Lcom/aispeech/aios/aimedia/a/a/k;->d:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    iget-object v3, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    iget-wide v4, v3, Lcom/aispeech/aios/aimedia/a/a/k;->d:J

    const/4 v3, 0x0

    invoke-static {v0, v4, v5, v3}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Lcom/aispeech/aios/aimedia/a/a/k;JZ)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getTrack()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    iget-object v3, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-virtual {v3}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/aispeech/aios/aimedia/a/a/k;->b(Lcom/aispeech/aios/aimedia/a/a/k;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->a:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->a:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->f(Lcom/aispeech/aios/aimedia/a/a/k;)Ljava/util/List;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-virtual {v1}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-virtual {v1}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getKeyWord()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-virtual {v1}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getKeyWord()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-virtual {v3}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v2, :cond_4

    const-string v1, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v3, " categoryId=0\u8d70\u5173\u952e\u5b57\u641c\u7d22"

    invoke-static {v1, v3}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    iget-object v3, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-virtual {v3}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getKeyWord()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/aispeech/aios/aimedia/a/a/k;->b(Lcom/aispeech/aios/aimedia/a/a/k;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v1}, Lcom/aispeech/aios/aimedia/a/a/k;->f(Lcom/aispeech/aios/aimedia/a/a/k;)Ljava/util/List;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getTrack()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->a:Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_4
    :try_start_5
    const-string v1, "AIOS-AIMedia-XimalayaProxy-Ting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "categoryId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u8d70\u7c7b\u522b\u641c\u7d22"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/aispeech/aios/aimedia/a/a/k;->b(Lcom/aispeech/aios/aimedia/a/a/k;J)V

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v1}, Lcom/aispeech/aios/aimedia/a/a/k;->g(Lcom/aispeech/aios/aimedia/a/a/k;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v1, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v3, " categoryId=0\u8d70\u5173\u952e\u5b57\u641c\u7d22"

    invoke-static {v1, v3}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    iget-object v3, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-virtual {v3}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getKeyWord()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/aispeech/aios/aimedia/a/a/k;->b(Lcom/aispeech/aios/aimedia/a/a/k;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v1}, Lcom/aispeech/aios/aimedia/a/a/k;->f(Lcom/aispeech/aios/aimedia/a/a/k;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-virtual {v1}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getKeyWord()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v3, " KeyWord\u4e0d\u4e3anull\u65f6\u8d70\u5173\u952e\u5b57"

    invoke-static {v1, v3}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    iget-object v3, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-virtual {v3}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getKeyWord()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/aispeech/aios/aimedia/a/a/k;->b(Lcom/aispeech/aios/aimedia/a/a/k;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v1}, Lcom/aispeech/aios/aimedia/a/a/k;->f(Lcom/aispeech/aios/aimedia/a/a/k;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/v;->b:Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-virtual {v1}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v3, " Category\u4e0d\u4e3anull\u65f6\u8d70\u5206\u7c7b"

    invoke-static {v1, v3}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/aispeech/aios/aimedia/a/a/k;->b(Lcom/aispeech/aios/aimedia/a/a/k;J)V

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v1}, Lcom/aispeech/aios/aimedia/a/a/k;->g(Lcom/aispeech/aios/aimedia/a/a/k;)Ljava/util/List;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_4
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_3

    :catch_6
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_3

    :catch_7
    move-exception v1

    goto/16 :goto_3

    :cond_8
    move-object v0, v1

    goto/16 :goto_1
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/aimedia/bean/FMInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->c:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/v;->c:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/v;->d:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v1}, Lcom/aispeech/aios/aimedia/a/a/k;->h(Lcom/aispeech/aios/aimedia/a/a/k;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/aispeech/aios/aimedia/listenner/SearchListnner;->onFMSearched(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/aispeech/aios/aimedia/a/a/v;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/aispeech/aios/aimedia/a/a/v;->a(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
