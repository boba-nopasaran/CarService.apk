.class Lcom/amap/api/services/a/dc$1;
.super Lcom/amap/api/services/a/dm;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/dc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/dd;

.field final synthetic b:Lcom/amap/api/services/a/de;

.field final synthetic c:Lcom/amap/api/services/a/dc;


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/dc$1;->c:Lcom/amap/api/services/a/dc;

    iget-object v1, p0, Lcom/amap/api/services/a/dc$1;->a:Lcom/amap/api/services/a/dd;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/services/a/dc;->b(Lcom/amap/api/services/a/dd;Z)Lcom/amap/api/services/a/df;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/a/dc$1;->c:Lcom/amap/api/services/a/dc;

    iget-object v2, p0, Lcom/amap/api/services/a/dc$1;->b:Lcom/amap/api/services/a/de;

    invoke-static {v1, v0, v2}, Lcom/amap/api/services/a/dc;->a(Lcom/amap/api/services/a/dc;Lcom/amap/api/services/a/df;Lcom/amap/api/services/a/de;)V
    :try_end_0
    .catch Lcom/amap/api/services/a/ay; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/services/a/dc$1;->c:Lcom/amap/api/services/a/dc;

    iget-object v2, p0, Lcom/amap/api/services/a/dc$1;->b:Lcom/amap/api/services/a/de;

    invoke-static {v1, v0, v2}, Lcom/amap/api/services/a/dc;->a(Lcom/amap/api/services/a/dc;Lcom/amap/api/services/a/ay;Lcom/amap/api/services/a/de;)V

    goto :goto_0
.end method
