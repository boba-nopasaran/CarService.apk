.class public Lcom/amap/api/col/dm;
.super Lcom/amap/api/col/gv;
.source "BaseTask.java"


# static fields
.field protected static a:I

.field protected static b:I


# instance fields
.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:Ljava/lang/String;

.field protected f:I

.field protected g:I

.field protected h:[B

.field protected i:Lcom/amap/api/col/gk;

.field protected j:Landroid/content/Context;

.field protected k:Ljava/lang/String;

.field protected l:Lcom/amap/api/col/eo;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x7530

    sput v0, Lcom/amap/api/col/dm;->a:I

    sput v0, Lcom/amap/api/col/dm;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;II[B)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/amap/api/col/gv;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/dm;->c:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/col/dm;->d:I

    iput-object v0, p0, Lcom/amap/api/col/dm;->e:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/col/dm;->f:I

    iput v1, p0, Lcom/amap/api/col/dm;->g:I

    iput-object v0, p0, Lcom/amap/api/col/dm;->h:[B

    iput-object v0, p0, Lcom/amap/api/col/dm;->i:Lcom/amap/api/col/gk;

    iput-object v0, p0, Lcom/amap/api/col/dm;->j:Landroid/content/Context;

    iput-object v0, p0, Lcom/amap/api/col/dm;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/dm;->l:Lcom/amap/api/col/eo;

    invoke-static {}, Lcom/amap/api/col/ds;->a()Lcom/amap/api/col/eo;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/dm;->l:Lcom/amap/api/col/eo;

    invoke-static {p1}, Lcom/amap/api/col/ei;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/dm;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/col/dm;->c:Ljava/lang/String;

    iput p3, p0, Lcom/amap/api/col/dm;->d:I

    iput-object p4, p0, Lcom/amap/api/col/dm;->e:Ljava/lang/String;

    iput p5, p0, Lcom/amap/api/col/dm;->f:I

    iput p6, p0, Lcom/amap/api/col/dm;->g:I

    iput-object p7, p0, Lcom/amap/api/col/dm;->h:[B

    invoke-static {v1}, Lcom/amap/api/col/gk;->a(Z)Lcom/amap/api/col/gk;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/dm;->i:Lcom/amap/api/col/gk;

    iput-object p1, p0, Lcom/amap/api/col/dm;->j:Landroid/content/Context;

    const/4 v0, 0x1

    if-ne p5, v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p7, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "start"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "start"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/col/dm;->m:Ljava/lang/String;

    const-string v3, "y"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/dm;->n:Ljava/lang/String;

    :cond_0
    const-string v2, "end"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "end"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/dm;->o:Ljava/lang/String;

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/dm;->p:Ljava/lang/String;

    :cond_1
    const-string v1, "SHIXIN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHIXIN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes:iModuleID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",iConnectID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHIXIN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5750\u6807:start_x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/dm;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",start_y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/dm;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",end_x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/dm;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",end_y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/dm;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5750\u6807\u4f4d\u7f6e\u89e3\u6790\u9519\u8bef:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/dw;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/amap/api/col/dm;->a:I

    return-void
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lcom/amap/api/col/dm;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method
