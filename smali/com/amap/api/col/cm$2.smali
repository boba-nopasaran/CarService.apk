.class Lcom/amap/api/col/cm$2;
.super Ljava/lang/Object;
.source "MapOverlayViewGroup.java"

# interfaces
.implements Lcom/autonavi/ae/gmap/listener/MapWidgetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/cm;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/cm;


# direct methods
.method constructor <init>(Lcom/amap/api/col/cm;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cm$2;->a:Lcom/amap/api/col/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateCompassView()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/cm$2;->a:Lcom/amap/api/col/cm;

    invoke-static {v0}, Lcom/amap/api/col/cm;->g(Lcom/amap/api/col/cm;)Lcom/amap/api/col/cj;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cm$2;->a:Lcom/amap/api/col/cm;

    invoke-static {v0}, Lcom/amap/api/col/cm;->g(Lcom/amap/api/col/cm;)Lcom/amap/api/col/cj;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/cm$2$2;

    invoke-direct {v1, p0}, Lcom/amap/api/col/cm$2$2;-><init>(Lcom/amap/api/col/cm$2;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cj;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public invalidateScaleView()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/cm$2;->a:Lcom/amap/api/col/cm;

    invoke-static {v0}, Lcom/amap/api/col/cm;->f(Lcom/amap/api/col/cm;)Lcom/amap/api/col/cn;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cm$2;->a:Lcom/amap/api/col/cm;

    invoke-static {v0}, Lcom/amap/api/col/cm;->f(Lcom/amap/api/col/cm;)Lcom/amap/api/col/cn;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/cm$2$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/cm$2$1;-><init>(Lcom/amap/api/col/cm$2;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cn;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public invalidateZoomController(F)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/cm$2;->a:Lcom/amap/api/col/cm;

    invoke-static {v0}, Lcom/amap/api/col/cm;->h(Lcom/amap/api/col/cm;)Lcom/amap/api/col/cp;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cm$2;->a:Lcom/amap/api/col/cm;

    invoke-static {v0}, Lcom/amap/api/col/cm;->h(Lcom/amap/api/col/cm;)Lcom/amap/api/col/cp;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/cm$2$3;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/cm$2$3;-><init>(Lcom/amap/api/col/cm$2;F)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cp;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFrontViewVisibility(Z)V
    .locals 0

    return-void
.end method
