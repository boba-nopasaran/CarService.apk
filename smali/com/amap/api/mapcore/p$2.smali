.class Lcom/amap/api/mapcore/p$2;
.super Ljava/lang/Object;
.source "MapOverlayImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/p;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/model/LatLngBounds$Builder;

.field final synthetic b:Lcom/amap/api/mapcore/p;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/p;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/p$2;->b:Lcom/amap/api/mapcore/p;

    iput-object p2, p0, Lcom/amap/api/mapcore/p$2;->a:Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/p$2;->b:Lcom/amap/api/mapcore/p;

    iget-object v0, v0, Lcom/amap/api/mapcore/p;->a:Lcom/amap/api/mapcore/k;

    iget-object v1, p0, Lcom/amap/api/mapcore/p$2;->a:Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Lcom/amap/api/col/d;->a(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
