.class public Lcom/amap/api/navi/model/AMapCongestionLink;
.super Ljava/lang/Object;
.source "AMapCongestionLink.java"


# instance fields
.field private mCongestionStatus:I

.field private mCoords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/autonavi/ae/guide/model/LinkLineStatus;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/navi/model/AMapCongestionLink;->mCoords:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/autonavi/ae/guide/model/LinkLineStatus;->points:[Lcom/autonavi/ae/route/model/GeoPoint;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/navi/model/AMapCongestionLink;->mCoords:Ljava/util/ArrayList;

    new-instance v3, Lcom/amap/api/navi/model/NaviLatLng;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/autonavi/ae/route/model/GeoPoint;->getLatitude()D

    move-result-wide v4

    aget-object v6, v1, v0

    invoke-virtual {v6}, Lcom/autonavi/ae/route/model/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/autonavi/ae/guide/model/LinkLineStatus;->status:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapCongestionLink;->mCongestionStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getCongestionStatus()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapCongestionLink;->mCongestionStatus:I

    return v0
.end method

.method public getCoords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapCongestionLink;->mCoords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCongestionStatus(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapCongestionLink;->mCongestionStatus:I

    return-void
.end method
