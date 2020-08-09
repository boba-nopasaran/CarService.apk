.class public final Lcom/aispeech/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lcom/aispeech/d/a;

.field private b:Lcom/aispeech/b/c;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/aispeech/c;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:[[Ljava/lang/String;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 5

    const/16 v1, 0x14

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/aispeech/a;->b:Lcom/aispeech/b/c;

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/a;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/a;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/a;->h:Ljava/lang/String;

    const-string v0, "aiengine.lub"

    iput-object v0, p0, Lcom/aispeech/a;->i:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/aispeech/a;->j:Z

    const-string v0, "/sdcard/aispeech/"

    iput-object v0, p0, Lcom/aispeech/a;->k:Ljava/lang/String;

    const-string v0, "http://log.aispeech.com/bus"

    iput-object v0, p0, Lcom/aispeech/a;->l:Ljava/lang/String;

    const/high16 v0, 0x6400000

    iput v0, p0, Lcom/aispeech/a;->m:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/aispeech/a;->n:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/aispeech/a;->o:I

    iput-boolean v2, p0, Lcom/aispeech/a;->p:Z

    sget-boolean v0, Lcom/aispeech/d;->b:Z

    iput-boolean v0, p0, Lcom/aispeech/a;->q:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/a;->r:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/aispeech/a;->s:Z

    const-string v0, "ws://s.api.aispeech.com:1028,ws://s.api.aispeech.com:80"

    iput-object v0, p0, Lcom/aispeech/a;->t:Ljava/lang/String;

    iput-object v3, p0, Lcom/aispeech/a;->u:[[Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lcom/aispeech/a;->v:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/aispeech/a;->w:I

    iput v1, p0, Lcom/aispeech/a;->x:I

    iput v1, p0, Lcom/aispeech/a;->y:I

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/a;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/a;->C:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/a;->D:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/aispeech/a;->E:Z

    iput-object p1, p0, Lcom/aispeech/a;->c:Landroid/content/Context;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/aispeech/d/a;

    invoke-direct {v0}, Lcom/aispeech/d/a;-><init>()V

    invoke-virtual {v0}, Lcom/aispeech/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/aispeech/a;->a:Lcom/aispeech/d/a;

    invoke-virtual {v0, v4}, Lcom/aispeech/d/a;->a(I)V

    :cond_0
    :goto_0
    iput-boolean p3, p0, Lcom/aispeech/a;->E:Z

    invoke-virtual {p0, v3}, Lcom/aispeech/a;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/aispeech/c;

    invoke-direct {v0}, Lcom/aispeech/c;-><init>()V

    iput-object v0, p0, Lcom/aispeech/a;->f:Lcom/aispeech/c;

    return-void

    :cond_1
    invoke-virtual {v0, v2}, Lcom/aispeech/d/a;->a(I)V

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/aispeech/a;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private l()Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "enable"

    iget-boolean v0, p0, Lcom/aispeech/a;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "output"

    iget-object v2, p0, Lcom/aispeech/a;->r:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Lorg/json/JSONObject;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "enable"

    iget-boolean v0, p0, Lcom/aispeech/a;->j:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/aispeech/a;->k:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string v0, "tmpdir"

    iget-object v4, p0, Lcom/aispeech/a;->k:Ljava/lang/String;

    invoke-static {v3, v0, v4}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "tmpdirMaxSize"

    iget v4, p0, Lcom/aispeech/a;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "server"

    iget-object v4, p0, Lcom/aispeech/a;->l:Ljava/lang/String;

    invoke-static {v3, v0, v4}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "interval"

    iget v4, p0, Lcom/aispeech/a;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "wakeupEnable"

    iget-boolean v4, p0, Lcom/aispeech/a;->p:Z

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "queueSize"

    iget v1, p0, Lcom/aispeech/a;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private n()Lorg/json/JSONObject;
    .locals 8

    const/4 v0, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "server"

    iget-object v3, p0, Lcom/aispeech/a;->t:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/aispeech/a;->u:[[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aispeech/a;->u:[[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, p0, Lcom/aispeech/a;->u:[[Ljava/lang/String;

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v4, v1

    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v0, v6

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_0
    const-string v0, "defaultIp"

    invoke-static {v2, v0, v3}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v0, "serverTimeout"

    iget v1, p0, Lcom/aispeech/a;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "connectTimeout"

    iget v1, p0, Lcom/aispeech/a;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "sendTimeout"

    iget v1, p0, Lcom/aispeech/a;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "recvTimeout"

    iget v1, p0, Lcom/aispeech/a;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method private o()Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "enable"

    sget-boolean v0, Lcom/aispeech/common/AIConstant;->NEW_ECHO_ENABLE:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "actCfgFile"

    iget-object v2, p0, Lcom/aispeech/a;->C:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, Lcom/aispeech/common/AIConstant;->playGain:I

    if-eqz v0, :cond_0

    const-string v0, "playGain"

    sget v2, Lcom/aispeech/common/AIConstant;->playGain:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "isBin"

    sget v2, Lcom/aispeech/common/AIConstant;->ECHO_IS_BIN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "frameLen"

    sget v2, Lcom/aispeech/common/AIConstant;->FRAME_LEN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/a;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "wavPath"

    iget-object v2, p0, Lcom/aispeech/a;->D:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v0, "recChannel"

    sget v2, Lcom/aispeech/common/AIConstant;->REC_CHANNEL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appKey"

    iget-object v2, p0, Lcom/aispeech/a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "secretKey"

    iget-object v2, p0, Lcom/aispeech/a;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/aispeech/a;->B:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "provision"

    iget-object v2, p0, Lcom/aispeech/a;->f:Lcom/aispeech/c;

    iget-object v3, p0, Lcom/aispeech/a;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/aispeech/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string v1, "serialNumber"

    iget-object v2, p0, Lcom/aispeech/a;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "luaPath"

    iget-object v2, p0, Lcom/aispeech/a;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/aispeech/a;->b:Lcom/aispeech/b/c;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aispeech/a;->s:Z

    :cond_0
    iget-object v1, p0, Lcom/aispeech/a;->b:Lcom/aispeech/b/c;

    if-eqz v1, :cond_1

    const-string v1, "native"

    iget-object v2, p0, Lcom/aispeech/a;->b:Lcom/aispeech/b/c;

    invoke-interface {v2}, Lcom/aispeech/b/c;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/aispeech/a;->a:Lcom/aispeech/d/a;

    if-eqz v1, :cond_2

    const-string v1, "vad"

    iget-object v2, p0, Lcom/aispeech/a;->a:Lcom/aispeech/d/a;

    invoke-virtual {v2}, Lcom/aispeech/d/a;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-boolean v1, p0, Lcom/aispeech/a;->s:Z

    if-eqz v1, :cond_3

    const-string v1, "cloud"

    invoke-direct {p0}, Lcom/aispeech/a;->n()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-boolean v1, p0, Lcom/aispeech/a;->q:Z

    if-eqz v1, :cond_4

    const-string v1, "prof"

    invoke-direct {p0}, Lcom/aispeech/a;->l()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-boolean v1, p0, Lcom/aispeech/a;->j:Z

    if-eqz v1, :cond_5

    const-string v1, "upload"

    invoke-direct {p0}, Lcom/aispeech/a;->m()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    sget-boolean v1, Lcom/aispeech/common/AIConstant;->NEW_ECHO_ENABLE:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/aispeech/a;->E:Z

    if-eqz v1, :cond_6

    const-string v1, "echo"

    invoke-direct {p0}, Lcom/aispeech/a;->o()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    return-object v0

    :cond_7
    const-string v1, "provision"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aispeech/a;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aispeech/a;->f:Lcom/aispeech/c;

    invoke-virtual {v3}, Lcom/aispeech/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/aispeech/common/AIConstant;->ECHO_CFG_FILE:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/aispeech/common/Util;->copyResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/aispeech/common/AIConstant;->ECHO_CFG_FILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/a;->C:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/a;->a:Lcom/aispeech/d/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/d/a;->b(I)V

    return-void
.end method

.method public final a(Lcom/aispeech/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/a;->b:Lcom/aispeech/b/c;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/a;->C:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/aispeech/a;->F:Ljava/util/Map;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/a;->a:Lcom/aispeech/d/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aispeech/a;->a:Lcom/aispeech/d/a;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/aispeech/d/a;->a(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/a;->z:[Ljava/lang/String;

    return-void
.end method

.method public final a([[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/a;->u:[[Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/a;->v:I

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/a;->c:Landroid/content/Context;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/a;->D:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/a;->j:Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/a;->s:Z

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/a;->w:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/a;->h:Ljava/lang/String;

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/a;->p:Z

    return-void
.end method

.method public final d()Lcom/aispeech/d/a;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/a;->a:Lcom/aispeech/d/a;

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/a;->o:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/a;->i:Ljava/lang/String;

    return-void
.end method

.method public final e()Lcom/aispeech/c;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/a;->f:Lcom/aispeech/c;

    return-object v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/a;->m:I

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "i am a partner of aispeech"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/aispeech/a;->q:Z

    iget-object v0, p0, Lcom/aispeech/a;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/a;->r:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aispeech/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/aispeech/common/Util;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aiengine.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/a;->r:Ljava/lang/String;

    sput-boolean v2, Lcom/aispeech/common/c;->b:Z

    iget-object v0, p0, Lcom/aispeech/a;->c:Landroid/content/Context;

    const-string v1, "android.log"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/aispeech/d;->b:Z

    iput-boolean v0, p0, Lcom/aispeech/a;->q:Z

    goto :goto_0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/a;->n:I

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/a;->a:Lcom/aispeech/d/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/d/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final f()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/aispeech/a;->a:Lcom/aispeech/d/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/a;->a:Lcom/aispeech/d/a;

    invoke-virtual {v1}, Lcom/aispeech/d/a;->b()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/a;->a:Lcom/aispeech/d/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/d/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/a;->d:Ljava/lang/String;

    return-void
.end method

.method public final h()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/a;->z:[Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aispeech/a;->F:Ljava/util/Map;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/a;->e:Ljava/lang/String;

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/a;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/a;->g:Ljava/lang/String;

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/a;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/a;->t:Ljava/lang/String;

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/a;->k:Ljava/lang/String;

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/a;->l:Ljava/lang/String;

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/a;->A:Ljava/lang/String;

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/a;->B:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/a;->p()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
