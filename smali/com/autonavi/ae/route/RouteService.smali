.class public Lcom/autonavi/ae/route/RouteService;
.super Ljava/lang/Object;
.source "RouteService.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHttpProcess:Lcom/autonavi/ae/route/observer/HttpInterface;

.field private mPathRequestObserver:Lcom/autonavi/ae/route/observer/PathRequestObserver;

.field private mPtr:J

.field private mRouteObserver:Lcom/autonavi/ae/route/observer/RouteObserver;


# direct methods
.method public constructor <init>(Lcom/autonavi/ae/route/model/RouteConfig;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/autonavi/ae/route/RouteService;->init(Lcom/autonavi/ae/route/model/RouteConfig;)V

    iput-object p2, p0, Lcom/autonavi/ae/route/RouteService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static native decodeRouteData(II[B)Lcom/autonavi/ae/route/route/CalcRouteResult;
.end method

.method public static native decodeRouteTmcBar([BLcom/autonavi/ae/route/model/TmcRoutePath;)[Lcom/autonavi/ae/route/model/TmcBarItem;
.end method

.method public static native getEngineVersion()Ljava/lang/String;
.end method

.method public static native getRouteVersion()Ljava/lang/String;
.end method

.method private final native init(Lcom/autonavi/ae/route/model/RouteConfig;)V
.end method


# virtual methods
.method public native abortRoutePlan()V
.end method

.method public native control(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public final native destroy()V
.end method

.method public native processHttpData(II[B)V
.end method

.method public native processHttpError(II)V
.end method

.method public readAssetsFile(II)[B
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    const-string v0, "navi/road_config.bin"

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/autonavi/ae/route/RouteService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    :goto_2
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_4
    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v1

    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_4
    :goto_5
    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_6
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v3, :cond_5

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_5
    :goto_7
    if-eqz v2, :cond_0

    :try_start_b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_1

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_8
    if-eqz v3, :cond_6

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_6
    :goto_9
    if-eqz v2, :cond_7

    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_7
    :goto_a
    throw v0

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_a
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_b
    move-exception v0

    goto :goto_6

    :catch_c
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_3

    :catch_d
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public registerHttpProcesser(Lcom/autonavi/ae/route/observer/HttpInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/route/RouteService;->mHttpProcess:Lcom/autonavi/ae/route/observer/HttpInterface;

    return-void
.end method

.method public native requestRoute(II[Lcom/autonavi/ae/route/model/RoutePoi;[Lcom/autonavi/ae/route/model/RoutePoi;[Lcom/autonavi/ae/route/model/RoutePoi;FF)I
.end method

.method public native reroute(JIII)I
.end method

.method public setPathRequestObserver(Lcom/autonavi/ae/route/observer/PathRequestObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/route/RouteService;->mPathRequestObserver:Lcom/autonavi/ae/route/observer/PathRequestObserver;

    return-void
.end method

.method public setRouteObserver(Lcom/autonavi/ae/route/observer/RouteObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/route/RouteService;->mRouteObserver:Lcom/autonavi/ae/route/observer/RouteObserver;

    return-void
.end method
