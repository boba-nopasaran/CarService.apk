.class public Lcom/amap/api/mapcore/f;
.super Ljava/lang/Thread;
.source "AuthTask.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/mapcore/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/mapcore/f;->b:Lcom/amap/api/mapcore/k;

    return-void
.end method

.method private a(Lcom/amap/api/col/eg$a;)V
    .locals 7

    const/16 v1, 0x1f4

    const/16 v0, 0x1e

    :try_start_0
    iget-object v2, p1, Lcom/amap/api/col/eg$a;->t:Lcom/amap/api/col/eg$a$a;

    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/amap/api/col/eg$a$a;->a:Z

    iget-object v4, p0, Lcom/amap/api/mapcore/f;->a:Landroid/content/Context;

    const-string v5, "maploc"

    const-string v6, "ue"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4, v5, v6, v3}, Lcom/amap/api/col/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/amap/api/col/eg$a$a;->c:Lorg/json/JSONObject;

    const-string v2, "fn"

    const/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v2, "mpn"

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v1, :cond_2

    :goto_0
    if-ge v1, v0, :cond_1

    :goto_1
    const-string v1, "igu"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amap/api/col/eg;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v4, v1}, Lcom/amap/api/col/gq;->a(IZ)V

    iget-object v1, p0, Lcom/amap/api/mapcore/f;->a:Landroid/content/Context;

    const-string v2, "maploc"

    const-string v3, "opn"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/amap/api/col/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AuthUtil"

    const-string v2, "loadConfigData_uploadException"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getNetWorkEnable()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/amap/api/col/eo$a;

    const-string v1, "3dmap"

    const-string v2, "5.0.0"

    sget-object v3, Lcom/amap/api/mapcore/g;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/col/eo$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.amap.api.maps"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.amap.api.mapcore"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.autonavi.amap.mapcore"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/col/eo$a;->a([Ljava/lang/String;)Lcom/amap/api/col/eo$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/eo$a;->a()Lcom/amap/api/col/eo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "11K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/ch;->e()Lcom/amap/api/col/eo;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/amap/api/col/eg;->a(Landroid/content/Context;Lcom/amap/api/col/eo;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/col/eg$a;

    move-result-object v1

    sget v2, Lcom/amap/api/col/eg;->a:I

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore/f;->b:Lcom/amap/api/mapcore/k;

    invoke-interface {v2}, Lcom/amap/api/mapcore/k;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, v1, Lcom/amap/api/col/eg$a;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/amap/api/col/eg$a;->a:Ljava/lang/String;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/amap/api/mapcore/f;->b:Lcom/amap/api/mapcore/k;

    invoke-interface {v3}, Lcom/amap/api/mapcore/k;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/amap/api/col/eg$a;->t:Lcom/amap/api/col/eg$a$a;

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/amap/api/col/ch;->e()Lcom/amap/api/col/eo;

    move-result-object v2

    iget-object v3, v1, Lcom/amap/api/col/eg$a;->t:Lcom/amap/api/col/eg$a$a;

    iget-boolean v3, v3, Lcom/amap/api/col/eg$a$a;->a:Z

    invoke-virtual {v2, v3}, Lcom/amap/api/col/eo;->a(Z)V

    :cond_3
    iget-object v2, v1, Lcom/amap/api/col/eg$a;->v:Lcom/amap/api/col/eg$a$c;

    if-eqz v2, :cond_4

    new-instance v2, Lcom/amap/api/col/en;

    iget-object v3, p0, Lcom/amap/api/mapcore/f;->a:Landroid/content/Context;

    const-string v4, "3dmap"

    iget-object v5, v1, Lcom/amap/api/col/eg$a;->v:Lcom/amap/api/col/eg$a$c;

    iget-object v5, v5, Lcom/amap/api/col/eg$a$c;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/amap/api/col/eg$a;->v:Lcom/amap/api/col/eg$a$c;

    iget-object v6, v6, Lcom/amap/api/col/eg$a$c;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/col/en;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amap/api/col/en;->a()V

    :cond_4
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/f;->a(Lcom/amap/api/col/eg$a;)V

    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/amap/api/col/eg$a;->u:Lcom/amap/api/col/eg$a$d;

    if-eqz v2, :cond_6

    iget-object v1, v1, Lcom/amap/api/col/eg$a;->u:Lcom/amap/api/col/eg$a$d;

    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/amap/api/col/eg$a$d;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/amap/api/col/eg$a$d;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/amap/api/col/eg$a$d;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    new-instance v1, Lcom/amap/api/col/fp;

    iget-object v2, p0, Lcom/amap/api/mapcore/f;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {}, Lcom/amap/api/col/ch;->e()Lcom/amap/api/col/eo;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/col/fp;-><init>(Landroid/content/Context;Lcom/amap/api/col/fq;Lcom/amap/api/col/eo;)V

    invoke-virtual {v1}, Lcom/amap/api/col/fp;->a()V

    :cond_6
    :goto_1
    sput-object v0, Lcom/amap/api/mapcore/g;->f:Lcom/amap/api/col/eo;

    iget-object v1, p0, Lcom/amap/api/mapcore/f;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/col/ew;->a(Landroid/content/Context;Lcom/amap/api/col/eo;)Lcom/amap/api/col/ew;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/f;->interrupt()V

    iget-object v0, p0, Lcom/amap/api/mapcore/f;->b:Lcom/amap/api/mapcore/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/f;->interrupt()V

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "mVerfy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    new-instance v4, Lcom/amap/api/col/fq;

    invoke-direct {v4, v3, v2, v1}, Lcom/amap/api/col/fq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/col/fp;

    iget-object v2, p0, Lcom/amap/api/mapcore/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/ch;->e()Lcom/amap/api/col/eo;

    move-result-object v3

    invoke-direct {v1, v2, v4, v3}, Lcom/amap/api/col/fp;-><init>(Landroid/content/Context;Lcom/amap/api/col/fq;Lcom/amap/api/col/eo;)V

    invoke-virtual {v1}, Lcom/amap/api/col/fp;->a()V

    goto :goto_1

    :cond_8
    new-instance v1, Lcom/amap/api/col/fp;

    iget-object v2, p0, Lcom/amap/api/mapcore/f;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {}, Lcom/amap/api/col/ch;->e()Lcom/amap/api/col/eo;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/col/fp;-><init>(Landroid/content/Context;Lcom/amap/api/col/fq;Lcom/amap/api/col/eo;)V

    invoke-virtual {v1}, Lcom/amap/api/col/fp;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
