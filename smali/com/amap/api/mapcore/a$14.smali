.class Lcom/amap/api/mapcore/a$14;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a;->a(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:[Lcom/autonavi/ae/gmap/style/StyleItem;

.field final synthetic h:Lcom/amap/api/mapcore/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/a;ZIIIIZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$14;->h:Lcom/amap/api/mapcore/a;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/a$14;->a:Z

    iput p3, p0, Lcom/amap/api/mapcore/a$14;->b:I

    iput p4, p0, Lcom/amap/api/mapcore/a$14;->c:I

    iput p5, p0, Lcom/amap/api/mapcore/a$14;->d:I

    iput p6, p0, Lcom/amap/api/mapcore/a$14;->e:I

    iput-boolean p7, p0, Lcom/amap/api/mapcore/a$14;->f:Z

    iput-object p8, p0, Lcom/amap/api/mapcore/a$14;->g:[Lcom/autonavi/ae/gmap/style/StyleItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a$14;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a$14;->h:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->k(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/a$14;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapModeState(IZ)[I

    move-result-object v0

    if-eqz v0, :cond_0

    aget v1, v0, v2

    iget v2, p0, Lcom/amap/api/mapcore/a$14;->c:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget v1, v0, v1

    iget v2, p0, Lcom/amap/api/mapcore/a$14;->d:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    aget v0, v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/a$14;->e:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a$14;->h:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->k(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/a$14;->b:I

    iget v2, p0, Lcom/amap/api/mapcore/a$14;->c:I

    iget v3, p0, Lcom/amap/api/mapcore/a$14;->d:I

    iget v4, p0, Lcom/amap/api/mapcore/a$14;->e:I

    iget-boolean v5, p0, Lcom/amap/api/mapcore/a$14;->a:Z

    iget-boolean v6, p0, Lcom/amap/api/mapcore/a$14;->f:Z

    iget-object v7, p0, Lcom/amap/api/mapcore/a$14;->g:[Lcom/autonavi/ae/gmap/style/StyleItem;

    invoke-virtual/range {v0 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->SetMapModeAndStyle(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)Z

    goto :goto_0
.end method
