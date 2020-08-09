.class public final Lcom/maploc/j;
.super Ljava/lang/Object;
.source "MapNetLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maploc/j$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Z

.field c:Ljava/lang/String;

.field d:J

.field e:Landroid/net/wifi/WifiInfo;

.field f:Z

.field g:I

.field private h:Lcom/maploc/q;

.field private i:Lcom/maploc/p;

.field private j:Lcom/maploc/j$a;

.field private k:Lcom/maploc/s;

.field private l:Landroid/net/ConnectivityManager;

.field private m:Lcom/maploc/u;

.field private n:Ljava/lang/StringBuilder;

.field private o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

.field private p:Lcom/maploc/b;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/maploc/j;->a:Landroid/content/Context;

    iput-object v2, p0, Lcom/maploc/j;->h:Lcom/maploc/q;

    iput-object v2, p0, Lcom/maploc/j;->i:Lcom/maploc/p;

    iput-object v2, p0, Lcom/maploc/j;->j:Lcom/maploc/j$a;

    iput-object v2, p0, Lcom/maploc/j;->k:Lcom/maploc/s;

    iput-object v2, p0, Lcom/maploc/j;->l:Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/maploc/j;->m:Lcom/maploc/u;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maploc/j;->b:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    iput-object v2, p0, Lcom/maploc/j;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iput-object v2, p0, Lcom/maploc/j;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/maploc/j;->p:Lcom/maploc/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/maploc/j;->d:J

    iput-object v2, p0, Lcom/maploc/j;->e:Landroid/net/wifi/WifiInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maploc/j;->f:Z

    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/maploc/j;->q:Ljava/lang/String;

    const/16 v0, 0xc

    iput v0, p0, Lcom/maploc/j;->g:I

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/maploc/j;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/maploc/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/maploc/y;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/maploc/j;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/maploc/j;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object v0, p0, Lcom/maploc/j;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iget-object v0, p0, Lcom/maploc/j;->h:Lcom/maploc/q;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/maploc/j;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/maploc/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/maploc/q;

    iget-object v2, p0, Lcom/maploc/j;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/maploc/q;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    iput-object v1, p0, Lcom/maploc/j;->h:Lcom/maploc/q;

    iget-object v0, p0, Lcom/maploc/j;->h:Lcom/maploc/q;

    iget-boolean v1, p0, Lcom/maploc/j;->b:Z

    invoke-virtual {v0, v1}, Lcom/maploc/q;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/maploc/j;->i:Lcom/maploc/p;

    if-nez v0, :cond_1

    new-instance v0, Lcom/maploc/p;

    iget-object v1, p0, Lcom/maploc/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/maploc/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maploc/j;->i:Lcom/maploc/p;

    :cond_1
    iget-object v0, p0, Lcom/maploc/j;->k:Lcom/maploc/s;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/maploc/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/maploc/s;->a(Landroid/content/Context;)Lcom/maploc/s;

    move-result-object v0

    iput-object v0, p0, Lcom/maploc/j;->k:Lcom/maploc/s;

    :cond_2
    iget-object v0, p0, Lcom/maploc/j;->l:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/maploc/j;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/maploc/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/maploc/j;->l:Landroid/net/ConnectivityManager;

    :cond_3
    new-instance v0, Lcom/maploc/u;

    invoke-direct {v0}, Lcom/maploc/u;-><init>()V

    iput-object v0, p0, Lcom/maploc/j;->m:Lcom/maploc/u;

    invoke-direct {p0}, Lcom/maploc/j;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "<init>"

    invoke-static {v0, v1, v2}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static varargs a(Lcom/maploc/b;[Ljava/lang/String;)Lcom/maploc/b;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/maploc/e;->a()Lcom/maploc/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/maploc/e;->a(Lcom/maploc/b;)Lcom/maploc/b;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    aget-object v0, p1, v2

    const-string v1, "shake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/maploc/e;->a()Lcom/maploc/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/maploc/e;->a(Lcom/maploc/b;)Lcom/maploc/b;

    move-result-object p0

    goto :goto_0

    :cond_3
    aget-object v0, p1, v2

    const-string v1, "fusion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/maploc/e;->a()Lcom/maploc/e;

    invoke-static {p0}, Lcom/maploc/e;->b(Lcom/maploc/b;)Lcom/maploc/b;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic a(Lcom/maploc/j;)Lcom/maploc/q;
    .locals 1

    iget-object v0, p0, Lcom/maploc/j;->h:Lcom/maploc/q;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maploc/j;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(J)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/maploc/y;->b()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x320

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/maploc/j;->p:Lcom/maploc/b;

    invoke-static {v1}, Lcom/maploc/l;->a(Lcom/maploc/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/maploc/y;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/maploc/j;->p:Lcom/maploc/b;

    invoke-virtual {v1}, Lcom/maploc/b;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    :cond_0
    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/maploc/j;->j:Lcom/maploc/j$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/maploc/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/maploc/j$a;-><init>(Lcom/maploc/j;B)V

    iput-object v0, p0, Lcom/maploc/j;->j:Lcom/maploc/j$a;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/maploc/j;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/maploc/j;->j:Lcom/maploc/j$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/maploc/j;->h:Lcom/maploc/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/maploc/q;->b(Z)V

    iget-object v0, p0, Lcom/maploc/j;->i:Lcom/maploc/p;

    invoke-virtual {v0}, Lcom/maploc/p;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "initBroadcastListener"

    invoke-static {v0, v1, v2}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()Lcom/maploc/b;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v13, 0x6

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x5

    new-instance v9, Lcom/maploc/b;

    const-string v0, ""

    invoke-direct {v9, v0}, Lcom/maploc/b;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/maploc/j;->h:Lcom/maploc/q;

    invoke-virtual {v0}, Lcom/maploc/q;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    invoke-virtual {v9, v0}, Lcom/maploc/b;->setErrorCode(I)V

    move-object v0, v9

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/maploc/j;->m:Lcom/maploc/u;

    if-nez v0, :cond_1

    new-instance v0, Lcom/maploc/u;

    invoke-direct {v0}, Lcom/maploc/u;-><init>()V

    iput-object v0, p0, Lcom/maploc/j;->m:Lcom/maploc/u;

    :cond_1
    iget-object v0, p0, Lcom/maploc/j;->m:Lcom/maploc/u;

    iget-object v1, p0, Lcom/maploc/j;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/maploc/j;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isNeedAddress()Z

    move-result v2

    iget-object v3, p0, Lcom/maploc/j;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOffset()Z

    move-result v3

    iget-object v4, p0, Lcom/maploc/j;->i:Lcom/maploc/p;

    iget-object v5, p0, Lcom/maploc/j;->h:Lcom/maploc/q;

    iget-object v6, p0, Lcom/maploc/j;->l:Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lcom/maploc/j;->q:Ljava/lang/String;

    iget-object v8, p0, Lcom/maploc/j;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/maploc/u;->a(Landroid/content/Context;ZZLcom/maploc/p;Lcom/maploc/q;Landroid/net/ConnectivityManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/maploc/k;

    invoke-direct {v2}, Lcom/maploc/k;-><init>()V

    const/4 v1, 0x0

    const-string v0, ""

    :try_start_1
    iget-object v3, p0, Lcom/maploc/j;->m:Lcom/maploc/u;

    invoke-virtual {v3}, Lcom/maploc/u;->a()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :try_start_2
    iget-object v4, p0, Lcom/maploc/j;->k:Lcom/maploc/s;

    iget-object v5, p0, Lcom/maploc/j;->a:Landroid/content/Context;

    invoke-static {}, Lcom/maploc/v;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/maploc/s;->a(Landroid/content/Context;[BLjava/lang/String;)Lcom/maploc/t;

    move-result-object v3

    iget-object v4, p0, Lcom/maploc/j;->k:Lcom/maploc/s;

    invoke-virtual {v4, v3}, Lcom/maploc/s;->a(Lcom/maploc/t;)Lcom/amap/api/col/gn;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v1, v3, Lcom/amap/api/col/gn;->a:[B

    iget-object v0, v3, Lcom/amap/api/col/gn;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    if-eqz v1, :cond_3

    array-length v4, v1

    if-nez v4, :cond_5

    :cond_3
    invoke-virtual {v9, v12}, Lcom/maploc/b;->setErrorCode(I)V

    iget-object v1, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    const-string v2, "please check the network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " #csid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v0, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/maploc/b;->setLocationDetail(Ljava/lang/String;)V

    move-object v0, v9

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "getApsLoc"

    invoke-static {v0, v1, v2}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get parames error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Lcom/maploc/b;->setErrorCode(I)V

    iget-object v0, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/maploc/b;->setLocationDetail(Ljava/lang/String;)V

    move-object v0, v9

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "getApsLoc buildV4Dot2"

    invoke-static {v0, v1, v2}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lcom/maploc/b;->setErrorCode(I)V

    iget-object v1, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "buildV4Dot2 error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/maploc/b;->setLocationDetail(Ljava/lang/String;)V

    move-object v0, v9

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "getApsLoc req"

    invoke-static {v0, v1, v2}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Lcom/maploc/b;->setErrorCode(I)V

    iget-object v0, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    const-string v1, "please check the network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/maploc/b;->setLocationDetail(Ljava/lang/String;)V

    move-object v0, v9

    goto/16 :goto_0

    :cond_5
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v5, "\"status\":\"0\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/maploc/j;->a:Landroid/content/Context;

    invoke-virtual {v2, v4, v0, v3}, Lcom/maploc/k;->a(Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/col/gn;)Lcom/maploc/b;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-string v3, "</body></html>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v9, v10}, Lcom/maploc/b;->setErrorCode(I)V

    iget-object v1, p0, Lcom/maploc/j;->h:Lcom/maploc/q;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/maploc/j;->h:Lcom/maploc/q;

    iget-object v2, p0, Lcom/maploc/j;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Lcom/maploc/q;->a(Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    const-string v2, "make sure you are logged in to the network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " #csid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v0, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/maploc/b;->setLocationDetail(Ljava/lang/String;)V

    move-object v0, v9

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    const-string v2, "request may be intercepted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    invoke-static {v1}, Lcom/maploc/r;->a([B)[B

    move-result-object v1

    if-nez v1, :cond_b

    invoke-virtual {v9, v10}, Lcom/maploc/b;->setErrorCode(I)V

    iget-object v1, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    const-string v2, "decrypt response data error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " #csid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v0, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/maploc/b;->setLocationDetail(Ljava/lang/String;)V

    move-object v0, v9

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v2, v1}, Lcom/maploc/k;->a([B)Lcom/maploc/b;

    move-result-object v2

    if-nez v2, :cond_d

    new-instance v1, Lcom/maploc/b;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/maploc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/maploc/b;->setErrorCode(I)V

    iget-object v2, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    const-string v3, "location is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " #csid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v0, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/maploc/b;->setLocationDetail(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v2}, Lcom/maploc/b;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/maploc/j;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/maploc/b;->getErrorCode()I

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/maploc/b;->getLocationDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " #csid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/maploc/b;->setLocationDetail(Ljava/lang/String;)V

    :cond_e
    move-object v0, v2

    goto/16 :goto_0

    :cond_f
    invoke-static {v2}, Lcom/maploc/l;->a(Lcom/maploc/b;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v2}, Lcom/maploc/b;->e()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_10

    :cond_10
    invoke-virtual {v2}, Lcom/maploc/b;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v2}, Lcom/maploc/b;->getLocationType()I

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "-5"

    invoke-virtual {v2}, Lcom/maploc/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "1"

    invoke-virtual {v2}, Lcom/maploc/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "2"

    invoke-virtual {v2}, Lcom/maploc/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "14"

    invoke-virtual {v2}, Lcom/maploc/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "24"

    invoke-virtual {v2}, Lcom/maploc/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "-1"

    invoke-virtual {v2}, Lcom/maploc/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_11
    invoke-virtual {v2, v10}, Lcom/maploc/b;->setLocationType(I)V

    :goto_2
    iget-object v1, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/maploc/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " #csid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v0, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/maploc/b;->setLocationDetail(Ljava/lang/String;)V

    :cond_13
    move-object v0, v2

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v2}, Lcom/maploc/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v13}, Lcom/maploc/b;->setErrorCode(I)V

    iget-object v3, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "location faile retype:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/maploc/b;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rdesc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_16

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " #csid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    iget-object v0, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/maploc/b;->setLocationDetail(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_16
    const-string v1, "null"

    goto :goto_3

    :cond_17
    invoke-virtual {v2, v13}, Lcom/maploc/b;->setLocationType(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public final a()Lcom/autonavi/amap/mapcore/Inner_3dMap_location;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v0, p0, Lcom/maploc/j;->d:J

    invoke-direct {p0, v0, v1}, Lcom/maploc/j;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maploc/j;->p:Lcom/maploc/b;

    invoke-static {v0}, Lcom/maploc/l;->a(Lcom/maploc/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maploc/j;->p:Lcom/maploc/b;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/maploc/y;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maploc/j;->d:J

    iget-object v0, p0, Lcom/maploc/j;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    const-string v1, "context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setErrorCode(I)V

    iget-object v1, p0, Lcom/maploc/j;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationDetail(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/maploc/j;->i:Lcom/maploc/p;

    invoke-virtual {v0}, Lcom/maploc/p;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/maploc/j;->h:Lcom/maploc/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/maploc/q;->b(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/maploc/j;->d()Lcom/maploc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/maploc/j;->p:Lcom/maploc/b;

    iget-object v0, p0, Lcom/maploc/j;->p:Lcom/maploc/b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maploc/j;->a(Lcom/maploc/b;[Ljava/lang/String;)Lcom/maploc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/maploc/j;->p:Lcom/maploc/b;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    iget-object v0, p0, Lcom/maploc/j;->p:Lcom/maploc/b;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "getLocation getCgiListParam"

    invoke-static {v0, v1, v2}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "getLocation getScanResultsParam"

    invoke-static {v0, v1, v2}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "getLocation getScanResultsParam"

    invoke-static {v0, v1, v2}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public final a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V
    .locals 5

    iput-object p1, p0, Lcom/maploc/j;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iget-object v0, p0, Lcom/maploc/j;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object v0, p0, Lcom/maploc/j;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/maploc/j;->h:Lcom/maploc/q;

    iget-object v1, p0, Lcom/maploc/j;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiActiveScan()Z

    iget-object v1, p0, Lcom/maploc/j;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiScan()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/maploc/q;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/maploc/j;->k:Lcom/maploc/s;

    iget-object v0, p0, Lcom/maploc/j;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getHttpTimeOut()J

    move-result-wide v2

    iget-object v0, p0, Lcom/maploc/j;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getLocationProtocol()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;

    move-result-object v0

    sget-object v4, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;->HTTPS:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;

    invoke-virtual {v0, v4}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v3, v0}, Lcom/maploc/s;->a(JZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maploc/j;->b:Z

    iput-object v2, p0, Lcom/maploc/j;->c:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/maploc/j;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maploc/j;->j:Lcom/maploc/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maploc/j;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/maploc/j;->j:Lcom/maploc/j$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/maploc/j;->i:Lcom/maploc/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maploc/j;->i:Lcom/maploc/p;

    invoke-virtual {v0}, Lcom/maploc/p;->g()V

    :cond_1
    iget-object v0, p0, Lcom/maploc/j;->h:Lcom/maploc/q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/maploc/j;->h:Lcom/maploc/q;

    invoke-virtual {v0}, Lcom/maploc/q;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput-object v2, p0, Lcom/maploc/j;->j:Lcom/maploc/j$a;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/maploc/j;->j:Lcom/maploc/j$a;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/maploc/j;->j:Lcom/maploc/j$a;

    throw v0
.end method
