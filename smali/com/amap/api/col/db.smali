.class Lcom/amap/api/col/db;
.super Ljava/lang/Object;
.source "GPSManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/db$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/location/LocationManager;

.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/navi/IGpsCallback;

.field private e:Lcom/amap/api/col/db$a;

.field private f:Z

.field private g:J

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:I

.field private n:J

.field private o:Landroid/location/Location;

.field private p:Landroid/os/Handler;

.field private q:Lorg/json/JSONArray;

.field private r:Lcom/amap/api/maps/CoordinateConverter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/col/db$a;

    invoke-direct {v0, p0, v3}, Lcom/amap/api/col/db$a;-><init>(Lcom/amap/api/col/db;Lcom/amap/api/col/db$1;)V

    iput-object v0, p0, Lcom/amap/api/col/db;->e:Lcom/amap/api/col/db$a;

    iput-boolean v2, p0, Lcom/amap/api/col/db;->f:Z

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/amap/api/col/db;->g:J

    const/4 v0, 0x5

    iput v0, p0, Lcom/amap/api/col/db;->h:I

    iput v2, p0, Lcom/amap/api/col/db;->i:I

    iput v2, p0, Lcom/amap/api/col/db;->j:I

    iput-boolean v2, p0, Lcom/amap/api/col/db;->k:Z

    iput-boolean v2, p0, Lcom/amap/api/col/db;->l:Z

    iput v2, p0, Lcom/amap/api/col/db;->m:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/db;->n:J

    iput-object v3, p0, Lcom/amap/api/col/db;->o:Landroid/location/Location;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/col/db$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/db$1;-><init>(Lcom/amap/api/col/db;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/amap/api/col/db;->p:Landroid/os/Handler;

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/db;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/col/db;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/amap/api/col/ds;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/db;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/db;->c:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amap/api/col/db;->b:Landroid/location/LocationManager;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/db;->c:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/db;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/db;->e:Lcom/amap/api/col/db$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "GPSManager"

    const-string v2, "GPSManager(Context context, WTBTControl tbtControl)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/db;)Lcom/amap/api/navi/IGpsCallback;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/db;->d:Lcom/amap/api/navi/IGpsCallback;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/db;->q:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/db;->q:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/gp;

    invoke-static {}, Lcom/amap/api/col/ds;->a()Lcom/amap/api/col/eo;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/db;->q:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/amap/api/col/gp;-><init>(Landroid/content/Context;Lcom/amap/api/col/eo;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/amap/api/col/gq;->a(Lcom/amap/api/col/gp;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/db;->q:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GPSManager"

    const-string v2, "writeOfflineLocLog()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/col/db;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/db;->b:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/col/db;)J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/db;->g:J

    return-wide v0
.end method

.method static synthetic d(Lcom/amap/api/col/db;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/db;->h:I

    return v0
.end method

.method private declared-synchronized e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/col/db;->b:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/db;->d()V

    iget-object v0, p0, Lcom/amap/api/col/db;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/col/db;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/amap/api/col/db;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/db;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/db;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/db;->e:Lcom/amap/api/col/db$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/amap/api/col/db;->e:Lcom/amap/api/col/db$a;

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/db;->k:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "GPSManager"

    const-string v2, "destroy()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/amap/api/col/db;->e:Lcom/amap/api/col/db$a;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "GPSManager"

    const-string v2, "destroy()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Lcom/amap/api/col/db;->e:Lcom/amap/api/col/db$a;

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method public a(JI)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/db;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/db;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/amap/api/col/db;->g:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/amap/api/col/db;->h:I

    if-eq v0, p3, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/db;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/amap/api/col/db;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    int-to-float v4, p3

    move-wide v2, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iput-wide p1, p0, Lcom/amap/api/col/db;->g:J

    iput p3, p0, Lcom/amap/api/col/db;->h:I

    iget-object v0, p0, Lcom/amap/api/col/db;->d:Lcom/amap/api/navi/IGpsCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/db;->d:Lcom/amap/api/navi/IGpsCallback;

    invoke-interface {v0}, Lcom/amap/api/navi/IGpsCallback;->onGpsStarted()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/db;->f:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "GPSManager"

    const-string v2, "startGPS(long minTime, int minDis)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/location/Location;)V
    .locals 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/db;->r:Lcom/amap/api/maps/CoordinateConverter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/maps/CoordinateConverter;

    iget-object v2, p0, Lcom/amap/api/col/db;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amap/api/maps/CoordinateConverter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amap/api/col/db;->r:Lcom/amap/api/maps/CoordinateConverter;

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/db;->r:Lcom/amap/api/maps/CoordinateConverter;

    sget-object v2, Lcom/amap/api/maps/CoordinateConverter$CoordType;->GPS:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/CoordinateConverter;->from(Lcom/amap/api/maps/CoordinateConverter$CoordType;)Lcom/amap/api/maps/CoordinateConverter;

    iget-object v1, p0, Lcom/amap/api/col/db;->r:Lcom/amap/api/maps/CoordinateConverter;

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/CoordinateConverter;->coord(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CoordinateConverter;

    iget-object v1, p0, Lcom/amap/api/col/db;->r:Lcom/amap/api/maps/CoordinateConverter;

    invoke-virtual {v1}, Lcom/amap/api/maps/CoordinateConverter;->convert()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    const-string v2, "lon"

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "lat"

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/amap/api/col/db;->q:Lorg/json/JSONArray;

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/db;->q:Lorg/json/JSONArray;

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/db;->q:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/amap/api/col/db;->q:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/db;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/col/db;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/navi/IGpsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/db;->d:Lcom/amap/api/navi/IGpsCallback;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/db;->f:Z

    return v0
.end method

.method public c()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/db;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/db;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/db;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/amap/api/col/db;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/amap/api/col/db;->d:Lcom/amap/api/navi/IGpsCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/db;->d:Lcom/amap/api/navi/IGpsCallback;

    invoke-interface {v0}, Lcom/amap/api/navi/IGpsCallback;->onGpsStarted()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/db;->f:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "GPSManager"

    const-string v2, "startGPS()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/db;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/db;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/db;->f:Z

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/db;->d:Lcom/amap/api/navi/IGpsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/db;->d:Lcom/amap/api/navi/IGpsCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/amap/api/navi/IGpsCallback;->onLocationChanged(ILandroid/location/Location;)V

    const-string v0, "SDKLOCATION"

    const-string v1, "\u8bbe\u5907GPS"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/db;->a(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "GPSManager"

    const-string v2, "onLocationChanged(Location location)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
