.class public Lcom/car/voice/cmd/Navi;
.super Ljava/lang/Object;
.source "Navi.java"

# interfaces
.implements Lcom/car/common/VoiceRecognizerCallback;


# static fields
.field public static final ADDR_FROM_VOICE:I = 0x3

.field private static final AMAPAUTO_PACKAGE_NAME:Ljava/lang/String; = "com.autonavi.amapauto"

.field public static final ANSWER_FROM_VOICE:I = 0x2

.field private static final AUTOLITE_PACKAGE_NAME:Ljava/lang/String; = "com.autonavi.amapautolite"

.field private static final BAIDU_HD_PACKAGE_NAME:Ljava/lang/String; = "com.baidu.navi.hd"

.field private static final CMD_SEARCH_WAY_CHEAP:I = 0x4

.field private static final CMD_SEARCH_WAY_NEAR:I = 0x2

.field private static final CMD_SEARCH_WAY_QUICK:I = 0x3

.field private static final CMD_SEARCH_WAY_RECOMEND:I = 0x1

.field private static final GAODE_PACKAGE_NAME:Ljava/lang/String; = "com.autonavi.xmgd.navigator"

.field public static final INDEX_FROM_VOICE:I = 0x1

.field private static final MXNAVI_PACKAGE_NAME:Ljava/lang/String; = "com.mxnavi.mxnavi"

.field private static final State_CompanyAddrInput:I = 0x8

.field private static final State_CompanyAddrModify:I = 0x9

.field private static final State_HomeAddrInput:I = 0x6

.field private static final State_HomeAddrModify:I = 0x7

.field private static final State_Idle:I = 0x0

.field private static final State_NaviSearchGeo:I = 0x3

.field private static final State_NaviSearchSuggestion:I = 0x1

.field private static final State_NaviSelectIndex:I = 0x2

.field private static final State_NaviWaitAddress:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CarSvc_Navi"

.field private static final WECAR_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.wecarnavi"


# instance fields
.field ADDR_COMPANY:I

.field ADDR_HOME:I

.field ADDR_NONE:I

.field mAddrForWhich:I

.field private mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

.field private mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

.field mHandler:Landroid/os/Handler;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRepeatFailCount:I

.field private mSearchByGeo:Z

.field private mState:I

.field private mVoiceUI:Lcom/car/voice/VoiceUI;


# direct methods
.method public constructor <init>(Lcom/car/voice/RecDefaultProcess;Lcom/car/voice/VoiceEngineFactory;Lcom/car/voice/VoiceUI;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/car/voice/cmd/Navi;->ADDR_NONE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/voice/cmd/Navi;->ADDR_HOME:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/car/voice/cmd/Navi;->ADDR_COMPANY:I

    iput v1, p0, Lcom/car/voice/cmd/Navi;->mState:I

    iget v0, p0, Lcom/car/voice/cmd/Navi;->ADDR_NONE:I

    iput v0, p0, Lcom/car/voice/cmd/Navi;->mAddrForWhich:I

    iput-boolean v1, p0, Lcom/car/voice/cmd/Navi;->mSearchByGeo:Z

    new-instance v0, Lcom/car/voice/cmd/Navi$1;

    invoke-direct {v0, p0}, Lcom/car/voice/cmd/Navi$1;-><init>(Lcom/car/voice/cmd/Navi;)V

    iput-object v0, p0, Lcom/car/voice/cmd/Navi;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/car/voice/cmd/Navi;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    iput-object p2, p0, Lcom/car/voice/cmd/Navi;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    iput-object p3, p0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    return-void
.end method

.method static synthetic access$000(Lcom/car/voice/cmd/Navi;)Lcom/car/voice/VoiceEngineFactory;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/cmd/Navi;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/voice/cmd/Navi;)Lcom/car/voice/RecDefaultProcess;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/cmd/Navi;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    return-object v0
.end method

.method public static startNavi(Landroid/content/Context;DD)V
    .locals 9

    sget-object v6, Lcom/amap/api/maps/CoordinateConverter$CoordType;->BAIDU:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v1 .. v7}, Lcom/car/voice/cmd/Navi;->startNavi(Landroid/content/Context;DDLcom/amap/api/maps/CoordinateConverter$CoordType;Ljava/lang/String;)V

    return-void
.end method

.method public static startNavi(Landroid/content/Context;DDLcom/amap/api/maps/CoordinateConverter$CoordType;)V
    .locals 9

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Lcom/car/voice/cmd/Navi;->startNavi(Landroid/content/Context;DDLcom/amap/api/maps/CoordinateConverter$CoordType;Ljava/lang/String;)V

    return-void
.end method

.method public static startNavi(Landroid/content/Context;DDLcom/amap/api/maps/CoordinateConverter$CoordType;Ljava/lang/String;)V
    .locals 17

    new-instance v8, Lcom/amap/api/maps/model/LatLng;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    if-eqz p5, :cond_0

    new-instance v4, Lcom/amap/api/maps/CoordinateConverter;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/amap/api/maps/CoordinateConverter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/amap/api/maps/CoordinateConverter;->from(Lcom/amap/api/maps/CoordinateConverter$CoordType;)Lcom/amap/api/maps/CoordinateConverter;

    new-instance v12, Lcom/amap/api/maps/model/LatLng;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v4, v12}, Lcom/amap/api/maps/CoordinateConverter;->coord(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CoordinateConverter;

    invoke-virtual {v4}, Lcom/amap/api/maps/CoordinateConverter;->convert()Lcom/amap/api/maps/model/LatLng;

    move-result-object v8

    :cond_0
    const-string v12, "sys.default.map"

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "navi_type"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "CarSvc_Navi"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read default map from chebao: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_3

    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/car/common/CarUtil;->getGpsApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_3
    if-eqz p6, :cond_4

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u5bfc\u822a\u76ee\u7684\u5730\u5df2\u786e\u8ba4\u4e3a\uff1a"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    :cond_4
    const-string v12, "com.tencent.wecarnavi"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v12, "CarSvc_Navi"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "LAT:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v8, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", LON:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v8, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/content/Intent;

    const-string v12, "WECARNAVIAUTO_STANDARD_BROADCAST_RECV"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "KEY_TPYE"

    const/16 v13, 0x3f0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "SOURCE_APP"

    const-string v13, "CarService"

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "POINAME"

    move-object/from16 v0, p6

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "LAT"

    iget-wide v14, v8, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v6, v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v12, "LON"

    iget-wide v14, v8, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v6, v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v12, "COORD"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_5
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v12

    const-string v13, "\u6ca1\u6709\u627e\u5230\u5bfc\u822a\u8f6f\u4ef6\uff0c\u5bfc\u822a\u5931\u8d25"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto :goto_0

    :cond_6
    const-string v12, "com.mxnavi.mxnavi"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    new-instance v6, Landroid/content/Intent;

    const-string v12, "com.mxnavi.mxnavi.ONE_KEY_MSG"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p6, :cond_7

    const-string v12, "Destination"

    move-object/from16 v0, p6

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    const-string v12, "SearchWay"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "DestPoint"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v8, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v8, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "WayPoint"

    const-string v13, ""

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v12, 0x20

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_8
    const-string v12, "com.autonavi.xmgd.navigator"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    new-instance v7, Landroid/content/Intent;

    const-string v12, "com.autonavi.xmgd.action.NAVIGATOR"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v12, "com.autonavi.xmgd.navigator"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NAVI:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v8, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v8, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    const-string v12, "com.autonavi.amapauto"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v12, "com.autonavi.amapauto"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "androidauto://navi?sourceApplication=carservice&poiname="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&lat="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v8, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&lon="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v8, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&dev=0&style=2"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    const-string v12, "com.autonavi.amapautolite"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v12, "com.autonavi.amapautolite"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "androidauto://navi?sourceApplication=carservice&poiname="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&lat="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v8, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&lon="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v8, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&dev=0&style=2"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    const-string v12, "com.baidu.navi.hd"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bdnavi://plan?coordType=bd09ll&dest="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&name="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&strategy=10"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v7, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v9, Landroid/content/ComponentName;

    const-string v12, "com.baidu.navi.hd"

    const-string v13, "com.baidu.navi.NaviActivity"

    invoke-direct {v9, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v12, 0x14000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    const-string v12, "cn.jyuntech.map"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v12, "android.intent.action.trucknavi.keyword.name"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "navi_keyword_name"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v8, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v8, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_d
    const-string v12, "CarSvc_Navi"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "====Start navi service, lat="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",lon="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.car.navi.NaviService"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "LatEnd"

    move-wide/from16 v0, p1

    invoke-virtual {v7, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v12, "LonEnd"

    move-wide/from16 v0, p3

    invoke-virtual {v7, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    :try_start_0
    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v12}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string v12, "CarSvc_Navi"

    const-string v13, "start navi error:"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static startNavi(Landroid/content/Context;DDLjava/lang/String;)V
    .locals 9

    sget-object v6, Lcom/amap/api/maps/CoordinateConverter$CoordType;->BAIDU:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/car/voice/cmd/Navi;->startNavi(Landroid/content/Context;DDLcom/amap/api/maps/CoordinateConverter$CoordType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public companyChange()V
    .locals 6

    const-wide/16 v2, 0x0

    const-string v1, ""

    move-object v0, p0

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/car/voice/cmd/Navi;->saveCompany(Ljava/lang/String;JJ)V

    invoke-virtual {p0}, Lcom/car/voice/cmd/Navi;->naviCompany()V

    return-void
.end method

.method public homeChange()V
    .locals 6

    const-wide/16 v2, 0x0

    const-string v1, ""

    move-object v0, p0

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/car/voice/cmd/Navi;->saveHome(Ljava/lang/String;JJ)V

    invoke-virtual {p0}, Lcom/car/voice/cmd/Navi;->naviHome()V

    return-void
.end method

.method public naviCompany()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v3}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v3

    const-string v14, "company"

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "addr"

    const-string v14, ""

    invoke-interface {v2, v3, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "lat"

    const-wide/16 v14, 0x0

    invoke-interface {v2, v3, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v3, "lon"

    const-wide/16 v14, 0x0

    invoke-interface {v2, v3, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v3, v10, v14

    if-nez v3, :cond_0

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-nez v3, :cond_0

    const-string v9, "\u8bf7\u95ee\u516c\u53f8\u5728\u54ea\u91cc\uff1f"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v3, v9}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v3

    const/4 v14, 0x0

    invoke-virtual {v3, v9, v14}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/car/voice/cmd/Navi;->mState:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/voice/cmd/Navi;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x3

    invoke-virtual {v3, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    long-to-double v14, v10

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v4, v14, v16

    long-to-double v14, v12

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v6, v14, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v3}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v3

    invoke-static/range {v3 .. v8}, Lcom/car/voice/cmd/Navi;->startNavi(Landroid/content/Context;DDLjava/lang/String;)V

    goto :goto_0
.end method

.method public naviHome()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v3}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v3

    const-string v14, "home"

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "addr"

    const-string v14, ""

    invoke-interface {v2, v3, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "lat"

    const-wide/16 v14, 0x0

    invoke-interface {v2, v3, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v3, "lon"

    const-wide/16 v14, 0x0

    invoke-interface {v2, v3, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v3, v10, v14

    if-nez v3, :cond_0

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-nez v3, :cond_0

    const-string v9, "\u8bf7\u95ee\u5bb6\u5728\u54ea\u91cc\uff1f"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v3, v9}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v3

    const/4 v14, 0x0

    invoke-virtual {v3, v9, v14}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/car/voice/cmd/Navi;->mState:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/voice/cmd/Navi;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x3

    invoke-virtual {v3, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    long-to-double v14, v10

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v4, v14, v16

    long-to-double v14, v12

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v6, v14, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v3}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v3

    invoke-static/range {v3 .. v8}, Lcom/car/voice/cmd/Navi;->startNavi(Landroid/content/Context;DDLjava/lang/String;)V

    goto :goto_0
.end method

.method public onRecognizeResult(IILjava/lang/String;Z)Z
    .locals 19

    const-string v4, "CarSvc_Navi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onRecognizeResult reqId="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ",value="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ",text="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ",mState="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v11, v0, Lcom/car/voice/cmd/Navi;->mState:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ",isLast="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_8

    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/voice/cmd/Navi;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    invoke-static/range {p3 .. p3}, Lcom/car/common/voice/VoiceHelp;->voiceToIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v4}, Lcom/car/voice/VoiceUI;->getSuggestionResult()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/car/voice/cmd/Navi;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mItemList:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    if-ltz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/car/common/voice/SuggestItem;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/car/common/voice/SuggestItem;->pt:Lcom/amap/api/maps/model/LatLng;

    if-eqz v4, :cond_2

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/car/common/voice/SuggestItem;->pt:Lcom/amap/api/maps/model/LatLng;

    iget-wide v12, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/car/common/voice/SuggestItem;->pt:Lcom/amap/api/maps/model/LatLng;

    iget-wide v14, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v12

    double-to-long v6, v4

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v14

    double-to-long v8, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/voice/cmd/Navi;->mAddrForWhich:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/voice/cmd/Navi;->ADDR_HOME:I

    if-ne v4, v5, :cond_0

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/car/voice/cmd/Navi;->saveHome(Ljava/lang/String;JJ)V

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/voice/cmd/Navi;->mAddrForWhich:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/voice/cmd/Navi;->ADDR_COMPANY:I

    if-ne v4, v5, :cond_1

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/car/voice/cmd/Navi;->saveCompany(Ljava/lang/String;JJ)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v4}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Lcom/car/voice/cmd/Navi;->startNavi(Landroid/content/Context;DDLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v4}, Lcom/car/voice/VoiceUI;->dismissUI()V

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_3
    const/4 v4, -0x2

    if-ne v10, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v4}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto :goto_0

    :cond_4
    const/4 v4, -0x3

    if-ne v10, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v4}, Lcom/car/voice/VoiceUI;->onClear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/car/voice/RecDefaultProcess;->handleDefaultProcess(IILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p4, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/voice/cmd/Navi;->mRepeatFailCount:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/car/voice/cmd/Navi;->mRepeatFailCount:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_6

    const-string v18, "\u8bf7\u8bf4\u7b2c\u51e0\u6761,\u9000\u51fa,\u6216\u8005\u91cd\u65b0\u5f00\u59cb"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    const-string v5, "\u518d\u89c1"

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v4}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto :goto_0

    :cond_7
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/car/utils/SoundPlayer;->playSound(I)Z

    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    if-eqz p2, :cond_b

    if-eqz p3, :cond_b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/voice/cmd/Navi;->mRepeatFailCount:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/car/voice/cmd/Navi;->mRepeatFailCount:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\u8bf7\u8bf4\u7b2c\u51e0\u6761,\u9000\u51fa,\u6216\u8005\u91cd\u65b0\u5f00\u59cb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\u518d\u89c1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/car/voice/cmd/Navi;->mRepeatFailCount:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v4}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/voice/cmd/Navi;->mRepeatFailCount:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/car/voice/cmd/Navi;->mRepeatFailCount:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_c

    const-string v18, "\u8bf7\u8bf4\u7b2c\u51e0\u6761,\u9000\u51fa,\u6216\u8005\u91cd\u65b0\u5f00\u59cb"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    const-string v5, "\u518d\u89c1"

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v4}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto :goto_2
.end method

.method saveCompany(Ljava/lang/String;JJ)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v2}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "company"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "addr"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lat"

    invoke-interface {v2, v3, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lon"

    invoke-interface {v2, v3, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "CarSvc_Navi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v2, p2, v6

    if-eqz v2, :cond_0

    cmp-long v2, p4, v6

    if-eqz v2, :cond_0

    const-string v1, "\u516c\u53f8\u7684\u4f4d\u7f6e\u5df2\u7ecf\u8bbe\u7f6e\u6210\u529f\u5e76\u5f00\u59cb\u5bfc\u822a"

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    :cond_0
    return-void
.end method

.method saveHome(Ljava/lang/String;JJ)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/car/voice/cmd/Navi;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v2}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "home"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "addr"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lat"

    invoke-interface {v2, v3, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lon"

    invoke-interface {v2, v3, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "CarSvc_Navi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v2, p2, v6

    if-eqz v2, :cond_0

    cmp-long v2, p4, v6

    if-eqz v2, :cond_0

    const-string v1, "\u5bb6\u7684\u4f4d\u7f6e\u5df2\u7ecf\u8bbe\u7f6e\u6210\u529f\u5e76\u5f00\u59cb\u5bfc\u822a"

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    :cond_0
    return-void
.end method

.method public waitLocation()V
    .locals 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/car/voice/cmd/Navi;->mState:I

    iget-object v0, p0, Lcom/car/voice/cmd/Navi;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/car/voice/VoiceEngineFactory;->startRecognize(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)Z

    return-void
.end method
