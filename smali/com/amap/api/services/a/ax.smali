.class public Lcom/amap/api/services/a/ax;
.super Ljava/lang/Object;
.source "WeatherSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IWeatherSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/weather/WeatherSearchQuery;

.field private c:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

.field private d:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

.field private e:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/ax;->f:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ax;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ax;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/ax;Lcom/amap/api/services/weather/LocalWeatherForecastResult;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/a/ax;->e:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    return-object p1
.end method

.method private a()Lcom/amap/api/services/weather/LocalWeatherLiveResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/a/ax;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    iget-object v0, p0, Lcom/amap/api/services/a/ax;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/amap/api/services/a/ai;

    iget-object v0, p0, Lcom/amap/api/services/a/ax;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ax;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    invoke-direct {v1, v0, v2}, Lcom/amap/api/services/a/ai;-><init>(Landroid/content/Context;Lcom/amap/api/services/weather/WeatherSearchQuery;)V

    invoke-virtual {v1}, Lcom/amap/api/services/a/ai;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/weather/WeatherSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/a/ai;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/weather/LocalWeatherLive;

    invoke-static {v0, v1}, Lcom/amap/api/services/weather/LocalWeatherLiveResult;->createPagedResult(Lcom/amap/api/services/weather/WeatherSearchQuery;Lcom/amap/api/services/weather/LocalWeatherLive;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/services/a/ax;Lcom/amap/api/services/weather/LocalWeatherLiveResult;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/a/ax;->d:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/services/a/ax;)Lcom/amap/api/services/weather/WeatherSearchQuery;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/ax;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    return-object v0
.end method

.method private b()Lcom/amap/api/services/weather/LocalWeatherForecastResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/a/ax;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    iget-object v0, p0, Lcom/amap/api/services/a/ax;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/amap/api/services/a/ah;

    iget-object v0, p0, Lcom/amap/api/services/a/ax;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ax;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    invoke-direct {v1, v0, v2}, Lcom/amap/api/services/a/ah;-><init>(Landroid/content/Context;Lcom/amap/api/services/weather/WeatherSearchQuery;)V

    invoke-virtual {v1}, Lcom/amap/api/services/a/ah;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/weather/WeatherSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/a/ah;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/weather/LocalWeatherForecast;

    invoke-static {v0, v1}, Lcom/amap/api/services/weather/LocalWeatherForecastResult;->createPagedResult(Lcom/amap/api/services/weather/WeatherSearchQuery;Lcom/amap/api/services/weather/LocalWeatherForecast;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/services/a/ax;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/services/a/ax;->a()Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/services/a/ax;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/ax;->c:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/services/a/ax;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/ax;->d:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/services/a/ax;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/ax;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/services/a/ax;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/services/a/ax;->b()Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/amap/api/services/a/ax;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/ax;->e:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    return-object v0
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/weather/WeatherSearchQuery;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/ax;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    return-object v0
.end method

.method public searchWeatherAsyn()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/services/a/ax$1;

    invoke-direct {v1, p0}, Lcom/amap/api/services/a/ax$1;-><init>(Lcom/amap/api/services/a/ax;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setOnWeatherSearchListener(Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/a/ax;->c:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    return-void
.end method

.method public setQuery(Lcom/amap/api/services/weather/WeatherSearchQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/a/ax;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    return-void
.end method
