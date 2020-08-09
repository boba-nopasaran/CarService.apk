.class public Lcom/autonavi/ae/guide/GuideService;
.super Ljava/lang/Object;
.source "GuideService.java"


# static fields
.field public static final DATA_ADD_OP:I = 0x2

.field public static final DATA_DELETE_OP:I = 0x5

.field public static final DATA_FINISH_OP:I = 0x4

.field public static final DATA_UPDAE_OP:I = 0x3

.field private static final FILE_TYPE_CHANGEPLAY:I = 0x3

.field private static final FILE_TYPE_CITY:I = 0x1

.field private static final FILE_TYPE_GUIDESAFE:I = 0x4

.field private static final FILE_TYPE_NAVISOUND:I = 0x2

.field public static final NET_ERROR_CANCEL:I = 0x2

.field public static final NET_ERROR_NO_NETWORK_CONNECTION:I = 0x3

.field public static final NET_ERROR_OTHER:I = -0x1

.field public static final NET_ERROR_TIMEOUT:I = 0x1

.field public static final OFFLINE_DATAMANAGER:I = 0x1

.field public static final VERSION_GET_OP:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mElecEyeObserver:Lcom/autonavi/ae/guide/observer/GElecEyeObserver;

.field private mHttpProcess:Lcom/autonavi/ae/route/observer/HttpInterface;

.field private mNaviObserver:Lcom/autonavi/ae/guide/observer/GNaviObserver;

.field private mPtr:J

.field private mSoundPlayObserver:Lcom/autonavi/ae/guide/observer/GSoundPlayObserver;

.field private mStatusListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/autonavi/ae/guide/observer/GStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateCityDataObserver:Lcom/autonavi/ae/guide/observer/GUpdateCityDataObserver;


# direct methods
.method public constructor <init>(Lcom/autonavi/ae/guide/model/GuideConfig;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/autonavi/ae/guide/GuideService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/autonavi/ae/guide/GuideService;->init(Lcom/autonavi/ae/guide/model/GuideConfig;)V

    return-void
.end method

.method public static native getEngineVersion()Ljava/lang/String;
.end method

.method private final native init(Lcom/autonavi/ae/guide/model/GuideConfig;)V
.end method

.method private notifyStatusChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/ae/guide/GuideService;->mStatusListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/guide/GuideService;->mStatusListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/guide/observer/GStatusObserver;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Lcom/autonavi/ae/guide/observer/GStatusObserver;->onTbtStatusChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public native IOParam(III)I
.end method

.method public native SetMotionData(Lcom/autonavi/ae/guide/model/MotionVector3D;Lcom/autonavi/ae/guide/model/MotionVector3D;Lcom/autonavi/ae/guide/model/MotionVector3D;D)I
.end method

.method public addStatusObserver(Lcom/autonavi/ae/guide/observer/GStatusObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/guide/GuideService;->mStatusListeners:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/guide/GuideService;->mStatusListeners:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/guide/GuideService;->mStatusListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/guide/GuideService;->mStatusListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public native control(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public final native destroy()V
.end method

.method public native getDriveReport()Ljava/lang/String;
.end method

.method public native getEventTips()[Lcom/autonavi/ae/guide/model/EventTip;
.end method

.method public native getRecentGPS(III)[Lcom/autonavi/ae/guide/model/GuideGPSInfo;
.end method

.method public native getStaticInfo()Lcom/autonavi/ae/guide/model/NaviStaticInfo;
.end method

.method public native pauseNavi()I
.end method

.method public native playNaviManual()I
.end method

.method public native playTrafficRadioManual(I)I
.end method

.method public native processHttpData(II[B)V
.end method

.method public native processHttpError(II)V
.end method

.method public readAssetsFile(II)[B
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p1, v2, :cond_1

    const-string v0, "navi/cityinfo.dat"

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    if-ne p2, v2, :cond_2

    const-string v0, "navi/odd_config.bin"

    goto :goto_0

    :cond_2
    const-string v0, "navi/default_config.bin"

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    const-string v0, "navi/changeplay.bin"

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    const-string v0, "navi/GSafeConfig.dat"

    goto :goto_0

    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/autonavi/ae/guide/GuideService;->mContext:Landroid/content/Context;

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

    if-lez v4, :cond_7

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

    if-eqz v3, :cond_6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_6
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

    :cond_7
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v1

    if-eqz v3, :cond_8

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_8
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

    if-eqz v3, :cond_9

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_9
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
    if-eqz v3, :cond_a

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_a
    :goto_9
    if-eqz v2, :cond_b

    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_b
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

    :cond_c
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public registerHttpProcesser(Lcom/autonavi/ae/route/observer/HttpInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/guide/GuideService;->mHttpProcess:Lcom/autonavi/ae/route/observer/HttpInterface;

    return-void
.end method

.method public removeStatusObserver(Lcom/autonavi/ae/guide/observer/GStatusObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/guide/GuideService;->mStatusListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/guide/GuideService;->mStatusListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/guide/GuideService;->mStatusListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public native renderManeuverIcon(Lcom/autonavi/ae/guide/model/ManeuverIconConfig;)V
.end method

.method public native reroute(III[Lcom/autonavi/ae/route/model/RoutePoi;[Lcom/autonavi/ae/route/model/RoutePoi;[Lcom/autonavi/ae/route/model/RoutePoi;D)I
.end method

.method public native resumeNavi()I
.end method

.method public setElecEyeObserver(Lcom/autonavi/ae/guide/observer/GElecEyeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/guide/GuideService;->mElecEyeObserver:Lcom/autonavi/ae/guide/observer/GElecEyeObserver;

    return-void
.end method

.method public setNaviObserver(Lcom/autonavi/ae/guide/observer/GNaviObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/guide/GuideService;->mNaviObserver:Lcom/autonavi/ae/guide/observer/GNaviObserver;

    return-void
.end method

.method public native setNaviPath(JI[Lcom/autonavi/ae/route/model/RoutePoi;[Lcom/autonavi/ae/route/model/RoutePoi;[Lcom/autonavi/ae/route/model/RoutePoi;)I
.end method

.method public native setPressure(D)V
.end method

.method public setSoundPlayObserver(Lcom/autonavi/ae/guide/observer/GSoundPlayObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/guide/GuideService;->mSoundPlayObserver:Lcom/autonavi/ae/guide/observer/GSoundPlayObserver;

    return-void
.end method

.method public setUpdateCityDataObserver(Lcom/autonavi/ae/guide/observer/GUpdateCityDataObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/guide/GuideService;->mUpdateCityDataObserver:Lcom/autonavi/ae/guide/observer/GUpdateCityDataObserver;

    return-void
.end method

.method public native startNavi(I)I
.end method

.method public native stopNavi()I
.end method
