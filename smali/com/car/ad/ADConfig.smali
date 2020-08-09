.class public Lcom/car/ad/ADConfig;
.super Ljava/lang/Object;
.source "ADConfig.java"


# static fields
.field public static final CLIENT_MODEL_APP_ANDROID:Ljava/lang/String; = "carassist_android"

.field public static final CLIENT_MODEL_APP_IOS:Ljava/lang/String; = "carassist_ios"

.field static GETAD_SERVER_URL:Ljava/lang/String; = null

.field static final KEY_ADID:Ljava/lang/String; = "adid"

.field static final KEY_ADLINK:Ljava/lang/String; = "linkurl"

.field static final KEY_ADURL:Ljava/lang/String; = "adurl"

.field static final KEY_COMMON_CITY:Ljava/lang/String; = "city"

.field static final KEY_COMMON_CLIENTID:Ljava/lang/String; = "clientid"

.field static final KEY_COMMON_ERRCODE:Ljava/lang/String; = "ret"

.field static final KEY_COMMON_ERRMSG:Ljava/lang/String; = "err"

.field static final KEY_COMMON_MODEL:Ljava/lang/String; = "model"

.field static final KEY_COMMON_TOKEN:Ljava/lang/String; = "token"

.field static final KEY_EXPIREDTIME:Ljava/lang/String; = "endtime"

.field static final KEY_LIST:Ljava/lang/String; = "list"

.field static final KEY_POSITION:Ljava/lang/String; = "position"

.field static final KEY_PROP:Ljava/lang/String; = "prop"

.field static final KEY_PROP_DURATION:Ljava/lang/String; = "duration"

.field static final KEY_PROP_SKIP:Ljava/lang/String; = "skip"

.field static final KEY_REPORT_ADID:Ljava/lang/String; = "adid"

.field static final KEY_REPORT_CLICKED:Ljava/lang/String; = "clicked"

.field static final KEY_REPORT_PLAYTIME:Ljava/lang/String; = "playtime"

.field static final KEY_SINGLEPLAYCOUNT:Ljava/lang/String; = "singleplaycount"

.field public static final POSITION_APP_CARLIFE:Ljava/lang/String; = "carassist_carlife"

.field public static final POSITION_APP_SPLASH:Ljava/lang/String; = "carassist_splash"

.field public static final POSITION_MIRROR_POWERON:Ljava/lang/String; = "mirror_poweron"

.field public static final POSITION_MIRROR_WAKEUP:Ljava/lang/String; = "mirror_wakeup"

.field static REPORT_SERVER_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ad.report.url"

    const-string v1, "http://api.carassist.cn/ad/report?"

    invoke-static {v0, v1}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/ad/ADConfig;->REPORT_SERVER_URL:Ljava/lang/String;

    const-string v0, "ad.get.url"

    const-string v1, "http://api.carassist.cn/ad/get?"

    invoke-static {v0, v1}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/ad/ADConfig;->GETAD_SERVER_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
