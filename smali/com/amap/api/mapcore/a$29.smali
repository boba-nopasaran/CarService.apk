.class Lcom/amap/api/mapcore/a$29;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a;->setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$29;->a:Lcom/amap/api/mapcore/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/mapcore/a$29;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->k(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amap/api/mapcore/a$29;->a:Lcom/amap/api/mapcore/a;

    iget-object v2, v2, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    iget-object v2, v2, Lcom/amap/api/col/g;->activeFloorName:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/mapcore/a$29;->a:Lcom/amap/api/mapcore/a;

    iget-object v3, v3, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    iget v3, v3, Lcom/amap/api/col/g;->activeFloorIndex:I

    iget-object v4, p0, Lcom/amap/api/mapcore/a$29;->a:Lcom/amap/api/mapcore/a;

    iget-object v4, v4, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    iget-object v4, v4, Lcom/amap/api/col/g;->poiid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->setIndoorBuildingToBeActive(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method
