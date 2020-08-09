.class Lcom/amap/api/mapcore/a$18;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a;->d(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/amap/api/mapcore/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/a;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$18;->c:Lcom/amap/api/mapcore/a;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/a$18;->a:Z

    iput p3, p0, Lcom/amap/api/mapcore/a$18;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v2, 0x7e0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a$18;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a$18;->c:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->k(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/a$18;->b:I

    const/4 v3, 0x1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a$18;->c:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->k(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/a$18;->b:I

    move v3, v4

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    goto :goto_0
.end method
