.class Lcom/amap/api/mapcore/a$25;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a;->a(IIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Lcom/amap/api/mapcore/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/a;IIIIIII)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$25;->h:Lcom/amap/api/mapcore/a;

    iput p2, p0, Lcom/amap/api/mapcore/a$25;->a:I

    iput p3, p0, Lcom/amap/api/mapcore/a$25;->b:I

    iput p4, p0, Lcom/amap/api/mapcore/a$25;->c:I

    iput p5, p0, Lcom/amap/api/mapcore/a$25;->d:I

    iput p6, p0, Lcom/amap/api/mapcore/a$25;->e:I

    iput p7, p0, Lcom/amap/api/mapcore/a$25;->f:I

    iput p8, p0, Lcom/amap/api/mapcore/a$25;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/amap/api/mapcore/a$25;->h:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->k(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a$25;->h:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->k(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/a$25;->a:I

    iget v2, p0, Lcom/amap/api/mapcore/a$25;->b:I

    iget v3, p0, Lcom/amap/api/mapcore/a$25;->c:I

    iget v4, p0, Lcom/amap/api/mapcore/a$25;->d:I

    iget v5, p0, Lcom/amap/api/mapcore/a$25;->e:I

    iget v6, p0, Lcom/amap/api/mapcore/a$25;->f:I

    iget v7, p0, Lcom/amap/api/mapcore/a$25;->g:I

    invoke-virtual/range {v0 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->setServiceViewRect(IIIIIII)V

    :cond_0
    return-void
.end method
