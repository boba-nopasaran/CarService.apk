.class Lcom/amap/api/mapcore/a$26;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a;->setTrafficEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/amap/api/mapcore/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/a;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$26;->c:Lcom/amap/api/mapcore/a;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/a$26;->a:Z

    iput-boolean p3, p0, Lcom/amap/api/mapcore/a$26;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/a$26;->c:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->r(Lcom/amap/api/mapcore/a;)Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isTrafficEnabled()Z

    move-result v0

    iget-boolean v2, p0, Lcom/amap/api/mapcore/a$26;->a:Z

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a$26;->c:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->r(Lcom/amap/api/mapcore/a;)Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    iget-boolean v2, p0, Lcom/amap/api/mapcore/a$26;->b:Z

    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapConfig;->setTrafficEnabled(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a$26;->c:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->q(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapRender;

    move-result-object v0

    iget-boolean v2, p0, Lcom/amap/api/mapcore/a$26;->a:Z

    invoke-virtual {v0, v2}, Lcom/autonavi/ae/gmap/GLMapRender;->setTrafficMode(Z)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a$26;->a:Z

    if-eqz v0, :cond_2

    move v3, v1

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a$26;->c:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->s(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/model/MyTrafficStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a$26;->c:Lcom/amap/api/mapcore/a;

    iget-object v2, p0, Lcom/amap/api/mapcore/a$26;->c:Lcom/amap/api/mapcore/a;

    invoke-static {v2}, Lcom/amap/api/mapcore/a;->s(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/model/MyTrafficStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/a;->setMyTrafficStyle(Lcom/amap/api/maps/model/MyTrafficStyle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a$26;->c:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->k(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    const/16 v2, 0x7da

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a$26;->c:Lcom/amap/api/mapcore/a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/a;->o()V

    :cond_1
    return-void

    :cond_2
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
