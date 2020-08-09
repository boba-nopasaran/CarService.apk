.class Lcom/amap/api/mapcore/a$5;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/amap/api/mapcore/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/a;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$5;->c:Lcom/amap/api/mapcore/a;

    iput p2, p0, Lcom/amap/api/mapcore/a$5;->a:I

    iput-boolean p3, p0, Lcom/amap/api/mapcore/a$5;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/a$5;->c:Lcom/amap/api/mapcore/a;

    iget v1, p0, Lcom/amap/api/mapcore/a$5;->a:I

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/amap/api/mapcore/a$5;->b:Z

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/a;->a(Lcom/amap/api/mapcore/a;IIZ)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a$5;->b:Z

    if-eqz v0, :cond_0

    move v3, v4

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a$5;->c:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->k(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/a$5;->a:I

    const/16 v2, 0x7f1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a$5;->c:Lcom/amap/api/mapcore/a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/a;->resetRenderTimeLong()V

    return-void

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method
