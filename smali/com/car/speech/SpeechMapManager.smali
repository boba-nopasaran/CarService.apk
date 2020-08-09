.class public Lcom/car/speech/SpeechMapManager;
.super Ljava/lang/Object;
.source "SpeechMapManager.java"

# interfaces
.implements Lcom/aispeech/aios/sdk/listener/AIOSMapListener;


# static fields
.field static final TAG:Ljava/lang/String; = "CarSvc_SpeechMapManager"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    iput-object p1, p0, Lcom/car/speech/SpeechMapManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/aispeech/aios/common/bean/MapInfo;

    const-string v2, "\u8d27\u8f66\u7248\u5730\u56fe"

    const-string v3, "cn.jyuntech.map"

    invoke-direct {v1, v2, v3}, Lcom/aispeech/aios/common/bean/MapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/aispeech/aios/common/bean/MapInfo;->setCancelNaviSupported(Z)V

    invoke-virtual {v1, v5}, Lcom/aispeech/aios/common/bean/MapInfo;->setOverviewSupported(Z)V

    invoke-virtual {v1, v5}, Lcom/aispeech/aios/common/bean/MapInfo;->setZoomSupported(Z)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "DrivingAvoidCongestion"

    aput-object v4, v2, v3

    const-string v3, "DrivingSaveMoney"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/common/bean/MapInfo;->setSupportedRoutePlanningStrategy([Ljava/lang/String;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMapManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->setLocalMapInfo(Lcom/aispeech/aios/common/bean/MapInfo;)Z

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMapManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/aispeech/aios/sdk/manager/AIOSMapManager;->registerMapListener(Lcom/aispeech/aios/sdk/listener/AIOSMapListener;)V

    const-string v2, "sys.default.map"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSettingManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSettingManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/aispeech/aios/sdk/manager/AIOSSettingManager;->setDefaultMap(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCancelNavi(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLocate(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOverview(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRoutePlanning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStartNavi(Ljava/lang/String;Lcom/aispeech/aios/common/bean/PoiBean;)V
    .locals 6

    const-string v1, "CarSvc_SpeechMapManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u5bfc\u822a\uff0c\u5305\u540d\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | \u76ee\u7684\u5730\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/aispeech/aios/common/bean/PoiBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.trucknavi.keyword.name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "navi_keyword_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/aispeech/aios/common/bean/PoiBean;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/aispeech/aios/common/bean/PoiBean;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/aispeech/aios/common/bean/PoiBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/speech/SpeechMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onZoom(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
