.class Lcom/amap/api/col/cx$1;
.super Ljava/lang/Thread;
.source "AMapNaviCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/cx;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/cx;


# direct methods
.method constructor <init>(Lcom/amap/api/col/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cx$1;->a:Lcom/amap/api/col/cx;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    sget-boolean v0, Lcom/amap/api/col/ds;->b:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/amap/api/col/ds;->a()Lcom/amap/api/col/eo;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cx$1;->a:Lcom/amap/api/col/cx;

    invoke-static {v1}, Lcom/amap/api/col/cx;->a(Lcom/amap/api/col/cx;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "11K;001"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/amap/api/col/eg;->a(Landroid/content/Context;Lcom/amap/api/col/eo;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/col/eg$a;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/amap/api/col/eg$a;->t:Lcom/amap/api/col/eg$a$a;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/amap/api/col/eg$a$a;->a:Z

    invoke-virtual {v0, v2}, Lcom/amap/api/col/eo;->a(Z)V

    :cond_0
    iget-object v1, v1, Lcom/amap/api/col/eg$a;->u:Lcom/amap/api/col/eg$a$d;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/amap/api/col/eg$a$d;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/amap/api/col/eg$a$d;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/amap/api/col/eg$a$d;->c:Ljava/lang/String;

    new-instance v4, Lcom/amap/api/col/fq;

    invoke-direct {v4, v3, v2, v1}, Lcom/amap/api/col/fq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/cx$1;->a:Lcom/amap/api/col/cx;

    invoke-static {v1}, Lcom/amap/api/col/cx;->a(Lcom/amap/api/col/cx;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v0}, Lcom/amap/api/col/fr;->a(Landroid/content/Context;Lcom/amap/api/col/fq;Lcom/amap/api/col/eo;)V

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/cx$1;->a:Lcom/amap/api/col/cx;

    invoke-static {v1}, Lcom/amap/api/col/cx;->a(Lcom/amap/api/col/cx;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amap/api/col/ew;->a(Landroid/content/Context;Lcom/amap/api/col/eo;)Lcom/amap/api/col/ew;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/col/ds;->b:Z
    :try_end_0
    .catch Lcom/amap/api/col/ee; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/amap/api/col/ee;->printStackTrace()V

    const-string v1, "WTBTControl"

    const-string v2, "initAuth().run()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
