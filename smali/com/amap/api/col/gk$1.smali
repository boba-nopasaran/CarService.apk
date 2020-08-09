.class Lcom/amap/api/col/gk$1;
.super Lcom/amap/api/col/gv;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/gk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/gl;

.field final synthetic b:Lcom/amap/api/col/gm;

.field final synthetic c:Lcom/amap/api/col/gk;


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk$1;->c:Lcom/amap/api/col/gk;

    iget-object v1, p0, Lcom/amap/api/col/gk$1;->a:Lcom/amap/api/col/gl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/gk;->b(Lcom/amap/api/col/gl;Z)Lcom/amap/api/col/gn;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/gk$1;->c:Lcom/amap/api/col/gk;

    iget-object v2, p0, Lcom/amap/api/col/gk$1;->b:Lcom/amap/api/col/gm;

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/gk;->a(Lcom/amap/api/col/gk;Lcom/amap/api/col/gn;Lcom/amap/api/col/gm;)V
    :try_end_0
    .catch Lcom/amap/api/col/ee; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/col/gk$1;->c:Lcom/amap/api/col/gk;

    iget-object v2, p0, Lcom/amap/api/col/gk$1;->b:Lcom/amap/api/col/gm;

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/gk;->a(Lcom/amap/api/col/gk;Lcom/amap/api/col/ee;Lcom/amap/api/col/gm;)V

    goto :goto_0
.end method
