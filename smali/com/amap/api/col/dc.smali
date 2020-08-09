.class public Lcom/amap/api/col/dc;
.super Ljava/lang/Object;
.source "GpsAdapter.java"


# instance fields
.field private a:Lcom/amap/api/col/db;

.field private b:Lcom/amap/api/col/dk;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/dc;->c:Z

    invoke-virtual {p0, p1}, Lcom/amap/api/col/dc;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/dc;->c:Z

    iget-boolean v0, p0, Lcom/amap/api/col/dc;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/col/dk;

    invoke-direct {v0, p1}, Lcom/amap/api/col/dk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/dc;->b:Lcom/amap/api/col/dk;

    const-string v0, "\u5b9a\u4f4dSDK\u5b9a\u4f4d\uff5e"

    invoke-static {p1, v0}, Lcom/amap/api/col/dw;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/amap/api/col/db;

    invoke-direct {v0, p1}, Lcom/amap/api/col/db;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/dc;->a:Lcom/amap/api/col/db;

    const-string v0, "\u7cfb\u7edfGPS\u5b9a\u4f4d\uff5e"

    invoke-static {p1, v0}, Lcom/amap/api/col/dw;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/dc;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "\u5f00\u59cbSDK\u5b9a\u4f4d~"

    invoke-static {v0}, Lcom/amap/api/col/dw;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/dc;->b:Lcom/amap/api/col/dk;

    invoke-virtual {v0}, Lcom/amap/api/col/dk;->a()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u5f00\u59cb\u7cfb\u7edf\u5b9a\u4f4d~"

    invoke-static {v0}, Lcom/amap/api/col/dw;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/dc;->a:Lcom/amap/api/col/db;

    invoke-virtual {v0}, Lcom/amap/api/col/db;->c()V

    goto :goto_0
.end method

.method public a(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/col/dc;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dc;->b:Lcom/amap/api/col/dk;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/col/dk;->a(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/dc;->a:Lcom/amap/api/col/db;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/amap/api/col/db;->a(JI)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/navi/IGpsCallback;)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/dc;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dc;->b:Lcom/amap/api/col/dk;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/dk;->a(Lcom/amap/api/navi/IGpsCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/dc;->a:Lcom/amap/api/col/db;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/db;->a(Lcom/amap/api/navi/IGpsCallback;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.amap.api.location.AMapLocationClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.amap.api.location.APSService"

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/dc;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dc;->b:Lcom/amap/api/col/dk;

    invoke-virtual {v0}, Lcom/amap/api/col/dk;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/dc;->a:Lcom/amap/api/col/db;

    invoke-virtual {v0}, Lcom/amap/api/col/db;->d()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/dc;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dc;->b:Lcom/amap/api/col/dk;

    invoke-virtual {v0}, Lcom/amap/api/col/dk;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/dc;->a:Lcom/amap/api/col/db;

    invoke-virtual {v0}, Lcom/amap/api/col/db;->a()V

    goto :goto_0
.end method
