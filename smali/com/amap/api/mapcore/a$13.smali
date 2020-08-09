.class Lcom/amap/api/mapcore/a$13;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a;->m(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/amap/api/mapcore/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$13;->b:Lcom/amap/api/mapcore/a;

    iput p2, p0, Lcom/amap/api/mapcore/a$13;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/a$13;->b:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->p(Lcom/amap/api/mapcore/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a$13;->b:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->k(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/a$13;->a:I

    const/16 v2, 0x7de

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :cond_0
    return-void
.end method
