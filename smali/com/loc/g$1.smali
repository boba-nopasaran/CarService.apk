.class final Lcom/loc/g$1;
.super Ljava/lang/Object;
.source "GPSLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/g;


# direct methods
.method constructor <init>(Lcom/loc/g;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 8

    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    invoke-static {v0}, Lcom/loc/db;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    iget-object v1, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget-boolean v1, v1, Lcom/loc/g;->e:Z

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/loc/db;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-static {v1}, Lcom/loc/g;->a(Lcom/loc/g;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/loc/db;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-static {v4}, Lcom/loc/g;->b(Lcom/loc/g;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/loc/ct;->a(DD)Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/loc/cy;->a(Landroid/content/Context;JZ)V

    iget-object v1, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/loc/g;->e:Z

    :cond_3
    iget-object v1, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget v1, v1, Lcom/loc/g;->x:I

    invoke-static {p1, v1}, Lcom/loc/db;->a(Landroid/location/Location;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setMock(Z)V

    iget-object v1, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget-object v1, v1, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget v1, v1, Lcom/loc/g;->v:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    const/4 v1, 0x0

    const/16 v2, 0x868

    invoke-static {v1, v2}, Lcom/loc/cy;->a(Ljava/lang/String;I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string v1, "GPSLocation has been mocked!#1501"

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setAltitude(D)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setBearing(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setExtras(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-static {v1, v0}, Lcom/loc/g;->a(Lcom/loc/g;Lcom/amap/api/location/AMapLocation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GPSLocation"

    const-string v2, "onLocationChanged"

    invoke-static {v0, v1, v2}, Lcom/loc/ct;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget v1, v0, Lcom/loc/g;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/loc/g;->v:I

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    const/4 v2, 0x0

    iput v2, v1, Lcom/loc/g;->v:I

    :cond_6
    iget-object v1, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget v1, v1, Lcom/loc/g;->x:I

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setSatellites(I)V

    iget-object v1, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-static {v1, v0}, Lcom/loc/g;->b(Lcom/loc/g;Lcom/amap/api/location/AMapLocation;)V

    iget-object v1, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-static {v1, v0}, Lcom/loc/g;->c(Lcom/loc/g;Lcom/amap/api/location/AMapLocation;)V

    iget-object v1, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-static {v1, v0}, Lcom/loc/g;->d(Lcom/loc/g;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-static {v0, v1}, Lcom/loc/g;->e(Lcom/loc/g;Lcom/amap/api/location/AMapLocation;)V

    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-virtual {v0, v1}, Lcom/loc/g;->a(Lcom/amap/api/location/AMapLocation;)V

    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget-object v2, v0, Lcom/loc/g;->o:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget-object v3, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget-object v3, v3, Lcom/loc/g;->z:Lcom/amap/api/location/AMapLocation;

    invoke-static {v0, v1, v3}, Lcom/loc/g;->a(Lcom/loc/g;Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v1}, Lcom/loc/db;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget-object v4, v4, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/loc/g;->m:J

    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget-object v2, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget-object v2, v2, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-static {v2, v1}, Lcom/loc/db;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v2

    iput v2, v0, Lcom/loc/g;->n:F

    :cond_7
    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v2

    iput-object v2, v0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-static {v0}, Lcom/loc/g;->c(Lcom/loc/g;)Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-static {v0}, Lcom/loc/g;->d(Lcom/loc/g;)Z

    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-static {v0}, Lcom/loc/g;->e(Lcom/loc/g;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_8
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-static {v0, v1}, Lcom/loc/g;->a(Lcom/loc/g;Lcom/amap/api/location/AMapLocation;)V

    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-static {v0, v1}, Lcom/loc/g;->f(Lcom/loc/g;Lcom/amap/api/location/AMapLocation;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_1
    move-exception v0

    const-string v2, "GPSLocation"

    const-string v3, "onLocationChangedLast"

    invoke-static {v0, v2, v3}, Lcom/loc/ct;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/loc/g;->d:J

    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    const/4 v1, 0x0

    iput v1, v0, Lcom/loc/g;->x:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4

    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/loc/g;->d:J

    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    const/4 v1, 0x0

    iput v1, v0, Lcom/loc/g;->x:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
