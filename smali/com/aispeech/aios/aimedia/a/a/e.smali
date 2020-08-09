.class public Lcom/aispeech/aios/aimedia/a/a/e;
.super Lcom/aispeech/aios/aimedia/a/a/c;


# static fields
.field private static final d:Ljava/lang/String; = "AIOS-AIMedia-KLFMProxy"

.field private static f:Lcom/aispeech/aios/aimedia/a/a/e;

.field private static m:Landroid/os/Handler;


# instance fields
.field private e:Landroid/content/Context;

.field private g:Lcom/kaolafm/sdk/client/i;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kaolafm/sdk/client/Radio;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kaolafm/sdk/client/SearchData;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Lcom/kaolafm/sdk/client/Radio;

.field private l:Z

.field private final n:Lcom/kaolafm/sdk/client/an;

.field private final o:Lcom/kaolafm/sdk/client/ah;

.field private final p:Lcom/kaolafm/sdk/client/ak;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/aispeech/aios/aimedia/a/a/c;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->i:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->k:Lcom/kaolafm/sdk/client/Radio;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->l:Z

    new-instance v0, Lcom/aispeech/aios/aimedia/a/a/h;

    invoke-direct {v0, p0}, Lcom/aispeech/aios/aimedia/a/a/h;-><init>(Lcom/aispeech/aios/aimedia/a/a/e;)V

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->n:Lcom/kaolafm/sdk/client/an;

    new-instance v0, Lcom/aispeech/aios/aimedia/a/a/i;

    invoke-direct {v0, p0}, Lcom/aispeech/aios/aimedia/a/a/i;-><init>(Lcom/aispeech/aios/aimedia/a/a/e;)V

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->o:Lcom/kaolafm/sdk/client/ah;

    new-instance v0, Lcom/aispeech/aios/aimedia/a/a/j;

    invoke-direct {v0, p0}, Lcom/aispeech/aios/aimedia/a/a/j;-><init>(Lcom/aispeech/aios/aimedia/a/a/e;)V

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->p:Lcom/kaolafm/sdk/client/ak;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/aispeech/aios/aimedia/a/a/e;->m:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->l:Z

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/e;->e:Landroid/content/Context;

    invoke-static {}, Lcom/kaolafm/sdk/client/i;->a()Lcom/kaolafm/sdk/client/i;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->g:Lcom/kaolafm/sdk/client/i;

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->g:Lcom/kaolafm/sdk/client/i;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/e;->e:Landroid/content/Context;

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Lcom/kaolafm/sdk/client/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->g:Lcom/kaolafm/sdk/client/i;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/e;->p:Lcom/kaolafm/sdk/client/ak;

    invoke-virtual {v0, v1}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/ak;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/a/a/e;
    .locals 2

    const-class v1, Lcom/aispeech/aios/aimedia/a/a/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/a/e;->f:Lcom/aispeech/aios/aimedia/a/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/aimedia/a/a/e;

    invoke-direct {v0, p0}, Lcom/aispeech/aios/aimedia/a/a/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aispeech/aios/aimedia/a/a/e;->f:Lcom/aispeech/aios/aimedia/a/a/e;

    :cond_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/a/e;->f:Lcom/aispeech/aios/aimedia/a/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/a/e;Lcom/aispeech/aios/aimedia/bean/FMInfo;)Lcom/kaolafm/sdk/client/Radio;
    .locals 1

    invoke-direct {p0, p1}, Lcom/aispeech/aios/aimedia/a/a/e;->c(Lcom/aispeech/aios/aimedia/bean/FMInfo;)Lcom/kaolafm/sdk/client/Radio;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/kaolafm/sdk/client/Radio;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/Radio;

    iget-object v3, v0, Lcom/kaolafm/sdk/client/Radio;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/a/e;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->i:Ljava/util/List;

    return-object v0
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->g:Lcom/kaolafm/sdk/client/i;

    invoke-virtual {v0, p1}, Lcom/kaolafm/sdk/client/i;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/a/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/aios/aimedia/a/a/e;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/kaolafm/sdk/client/ah;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->o:Lcom/kaolafm/sdk/client/ah;

    return-object v0
.end method

.method private c(Lcom/aispeech/aios/aimedia/bean/FMInfo;)Lcom/kaolafm/sdk/client/Radio;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->getTrack()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aispeech/aios/aimedia/a/a/e;->a(Ljava/lang/String;)Lcom/kaolafm/sdk/client/Radio;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/kaolafm/sdk/client/i;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->g:Lcom/kaolafm/sdk/client/i;

    return-object v0
.end method

.method static synthetic d(Lcom/aispeech/aios/aimedia/a/a/e;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/kaolafm/sdk/client/ak;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->p:Lcom/kaolafm/sdk/client/ak;

    return-object v0
.end method

.method static synthetic f(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/aispeech/aios/aimedia/listenner/SearchListnner;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->c:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    return-object v0
.end method

.method static synthetic g(Lcom/aispeech/aios/aimedia/a/a/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/aispeech/aios/aimedia/listenner/SearchListnner;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->c:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    return-object v0
.end method

.method static synthetic i(Lcom/aispeech/aios/aimedia/a/a/e;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/a/e;->e()V

    return-void
.end method

.method static synthetic j(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/aispeech/aios/aimedia/listenner/SearchListnner;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->c:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    return-object v0
.end method

.method static synthetic k(Lcom/aispeech/aios/aimedia/a/a/e;)Lcom/aispeech/aios/aimedia/listenner/SearchListnner;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->c:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    return-object v0
.end method

.method static synthetic l(Lcom/aispeech/aios/aimedia/a/a/e;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/a/e;->d()V

    return-void
.end method

.method static synthetic m(Lcom/aispeech/aios/aimedia/a/a/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->l:Z

    return v0
.end method

.method static synthetic n(Lcom/aispeech/aios/aimedia/a/a/e;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/a/e;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "AIOS-AIMedia-KLFMProxy"

    const-string v1, "\u6253\u5f00\u8003\u62c9app"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/aispeech/aios/aimedia/a/a/e;->a(Z)V

    return-void
.end method

.method public a(Lcom/aispeech/aios/aimedia/bean/FMInfo;)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "AIOS-AIMedia-KLFMProxy"

    const-string v2, "\u64ad\u653e\u8003\u62c9..."

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/e;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/aispeech/aios/aimedia/b/a;->a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/b/a;

    move-result-object v1

    const-string v2, "com.edog.car"

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/aimedia/b/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v0}, Lcom/aispeech/aios/aimedia/a/a/e;->a(Z)V

    :goto_0
    if-eqz v1, :cond_0

    const/16 v0, 0x3e8

    :cond_0
    sget-object v1, Lcom/aispeech/aios/aimedia/a/a/e;->m:Landroid/os/Handler;

    new-instance v2, Lcom/aispeech/aios/aimedia/a/a/f;

    invoke-direct {v2, p0, p1}, Lcom/aispeech/aios/aimedia/a/a/f;-><init>(Lcom/aispeech/aios/aimedia/a/a/e;Lcom/aispeech/aios/aimedia/bean/FMInfo;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/aispeech/aios/aimedia/listenner/SearchListnner;)V
    .locals 4

    const-string v0, "AIOS-AIMedia-KLFMProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------------KLFM\u641c\u7d22----------\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/aispeech/aios/aimedia/a/a/e;->c:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-direct {v1}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aispeech/aios/aimedia/a/a/e;->k:Lcom/kaolafm/sdk/client/Radio;

    const-string v2, "category"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "category"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aispeech/aios/aimedia/a/a/e;->a(Ljava/lang/String;)Lcom/kaolafm/sdk/client/Radio;

    move-result-object v2

    iput-object v2, p0, Lcom/aispeech/aios/aimedia/a/a/e;->k:Lcom/kaolafm/sdk/client/Radio;

    :cond_0
    const-string v2, "album"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "album"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->setAlbum(Ljava/lang/String;)V

    :cond_1
    const-string v2, "tracks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "tracks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->setTrack(Ljava/lang/String;)V

    :cond_2
    const-string v2, "artist"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "artist"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->setArtist(Ljava/lang/String;)V

    :cond_3
    const-string v2, "keyWord"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "keyWord"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->setKeyWord(Ljava/lang/String;)V

    :cond_4
    const-string v0, "AIOS-AIMedia-KLFMProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u8003\u62c9\u641c\u7d22:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getKeyWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->g:Lcom/kaolafm/sdk/client/i;

    invoke-virtual {v1}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->getKeyWord()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/aios/aimedia/a/a/e;->n:Lcom/kaolafm/sdk/client/an;

    invoke-virtual {v0, v1, v2}, Lcom/kaolafm/sdk/client/i;->a(Ljava/lang/String;Lcom/kaolafm/sdk/client/an;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const-string v0, "AIOS-AIMedia-KLFMProxy"

    const-string v1, "\u5173\u95ed\u8003\u62c9app"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->g:Lcom/kaolafm/sdk/client/i;

    invoke-virtual {v0}, Lcom/kaolafm/sdk/client/i;->b()V

    return-void
.end method

.method public b(Lcom/aispeech/aios/aimedia/bean/FMInfo;)V
    .locals 6

    const/4 v1, 0x0

    const-string v0, "AIOS-AIMedia-KLFMProxy"

    const-string v2, "switchChannel"

    invoke-static {v0, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/b/a;->a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/b/a;

    move-result-object v0

    const-string v2, "com.edog.car"

    invoke-virtual {v0, v2}, Lcom/aispeech/aios/aimedia/b/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v1}, Lcom/aispeech/aios/aimedia/a/a/e;->a(Z)V

    :goto_0
    iput-boolean v1, p0, Lcom/aispeech/aios/aimedia/a/a/e;->l:Z

    if-eqz v0, :cond_0

    const/16 v1, 0xbb8

    :cond_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/a/e;->m:Landroid/os/Handler;

    new-instance v2, Lcom/aispeech/aios/aimedia/a/a/g;

    invoke-direct {v2, p0, p1}, Lcom/aispeech/aios/aimedia/a/a/g;-><init>(Lcom/aispeech/aios/aimedia/a/a/e;Lcom/aispeech/aios/aimedia/bean/FMInfo;)V

    int-to-long v4, v1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public f()V
    .locals 2

    const-string v0, "AIOS-AIMedia-KLFMProxy"

    const-string v1, "\u7ee7\u7eed\u64ad\u653e..."

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->g:Lcom/kaolafm/sdk/client/i;

    invoke-virtual {v0}, Lcom/kaolafm/sdk/client/i;->c()V

    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "AIOS-AIMedia-KLFMProxy"

    const-string v1, "\u6682\u505c\u64ad\u653e..."

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->g:Lcom/kaolafm/sdk/client/i;

    invoke-virtual {v0}, Lcom/kaolafm/sdk/client/i;->d()V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 2

    const-string v0, "AIOS-AIMedia-KLFMProxy"

    const-string v1, "playPrev..."

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->g:Lcom/kaolafm/sdk/client/i;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/e;->o:Lcom/kaolafm/sdk/client/ah;

    invoke-virtual {v0, v1}, Lcom/kaolafm/sdk/client/i;->b(Lcom/kaolafm/sdk/client/ah;)V

    const-string v0, ""

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    const-string v0, "AIOS-AIMedia-KLFMProxy"

    const-string v1, "playNext..."

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->g:Lcom/kaolafm/sdk/client/i;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/e;->o:Lcom/kaolafm/sdk/client/ah;

    invoke-virtual {v0, v1}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/ah;)V

    const-string v0, ""

    return-object v0
.end method

.method public j()V
    .locals 0

    invoke-super {p0}, Lcom/aispeech/aios/aimedia/a/a/c;->j()V

    return-void
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/e;->g:Lcom/kaolafm/sdk/client/i;

    invoke-virtual {v0}, Lcom/kaolafm/sdk/client/i;->i()Lcom/kaolafm/sdk/client/PlayState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaolafm/sdk/client/PlayState;->getCode()I

    move-result v0

    sget-object v1, Lcom/kaolafm/sdk/client/PlayState;->PLAYING:Lcom/kaolafm/sdk/client/PlayState;

    invoke-virtual {v1}, Lcom/kaolafm/sdk/client/PlayState;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
