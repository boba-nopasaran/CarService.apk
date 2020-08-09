.class public Lcom/car/systemfunc/WeatherForcast;
.super Landroid/content/BroadcastReceiver;
.source "WeatherForcast.java"

# interfaces
.implements Lcom/car/common/VoiceRecognizerCallback;
.implements Lcom/amap/api/location/AMapLocationListener;
.implements Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;


# static fields
.field static final CHECK_TIMER:I = 0x3a98

.field static final LISTEN_REMOVE:I = 0x3

.field static final REFRESH_TIMER:I = 0x36ee80

.field static final TAG:Ljava/lang/String; = "CarSvc_WeatherForcast"

.field static final WEATHER_CHECK:I = 0x2

.field static final WEATHER_REFRESH:I = 0x1


# instance fields
.field mAiosDataListener:Lcom/aispeech/aios/sdk/listener/AIOSDataListener;

.field mContext:Landroid/content/Context;

.field private mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

.field private mHandler:Landroid/os/Handler;

.field mLastCity:Ljava/lang/String;

.field mLastUpdateTime:J

.field private mVoiceUI:Lcom/car/voice/VoiceUI;

.field mWeatherRefreshDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/car/systemfunc/WeatherForcast;->mLastUpdateTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/systemfunc/WeatherForcast;->mWeatherRefreshDisabled:Z

    new-instance v0, Lcom/car/systemfunc/WeatherForcast$1;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/WeatherForcast$1;-><init>(Lcom/car/systemfunc/WeatherForcast;)V

    iput-object v0, p0, Lcom/car/systemfunc/WeatherForcast;->mAiosDataListener:Lcom/aispeech/aios/sdk/listener/AIOSDataListener;

    new-instance v0, Lcom/car/systemfunc/WeatherForcast$2;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/WeatherForcast$2;-><init>(Lcom/car/systemfunc/WeatherForcast;)V

    iput-object v0, p0, Lcom/car/systemfunc/WeatherForcast;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/car/systemfunc/WeatherForcast;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/car/systemfunc/WeatherForcast;->getIconByWeather(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/systemfunc/WeatherForcast;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/WeatherForcast;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/systemfunc/WeatherForcast;)Lcom/car/voice/VoiceUI;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/WeatherForcast;->mVoiceUI:Lcom/car/voice/VoiceUI;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/systemfunc/WeatherForcast;)Lcom/car/voice/VoiceEngineFactory;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/WeatherForcast;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    return-object v0
.end method

.method private getIconByWeather(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "weather_na.png"

    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    const-string v3, "\u5230"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "\u8f6c"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    const-string v3, "\u5230"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const-string v3, "\u8f6c"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :cond_3
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const-string v3, "\u66b4\u96ea"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "\u66b4\u96ea"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    const-string v0, "weather_baoxue.png"

    :cond_6
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_7
    const-string v3, "\u66b4\u96e8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "\u66b4\u96e8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    const-string v0, "weather_baoyu.png"

    goto :goto_1

    :cond_9
    const-string v3, "\u51b0\u96e8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "\u51b0\u96e8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    const-string v0, "weather_bingyu.png"

    goto :goto_1

    :cond_b
    const-string v3, "\u5927\u66b4\u96e8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "\u5927\u66b4\u96e8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    const-string v0, "weather_dabaoyu.png"

    goto :goto_1

    :cond_d
    const-string v3, "\u5927\u96ea"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "\u5927\u96ea"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    const-string v0, "weather_daxue.png"

    goto :goto_1

    :cond_f
    const-string v3, "\u5927\u96e8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "\u5927\u96e8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    const-string v0, "weather_dayu.png"

    goto :goto_1

    :cond_11
    const-string v3, "\u591a\u4e91"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "\u591a\u4e91"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    const-string v0, "weather_duoyun.png"

    goto :goto_1

    :cond_13
    const-string v3, "\u6d6e\u5c18"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "\u6d6e\u5c18"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    const-string v0, "weather_fuchen.png"

    goto/16 :goto_1

    :cond_15
    const-string v3, "\u96f7\u9635\u96e8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "\u96f7\u9635\u96e8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    const-string v0, "weather_leizhenyu.png"

    goto/16 :goto_1

    :cond_17
    const-string v3, "\u96f7\u9635\u96e8\u4f34\u6709\u51b0\u96f9"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "\u51b0\u96f9"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_18
    const-string v0, "weather_leizhenyubanyoubingbao.png"

    goto/16 :goto_1

    :cond_19
    const-string v3, "\u973e"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, "\u973e"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_1a
    const-string v0, "weather_mai.png"

    goto/16 :goto_1

    :cond_1b
    const-string v3, "\u6674"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "\u6674"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    :cond_1c
    const-string v0, "weather_qing.png"

    goto/16 :goto_1

    :cond_1d
    const-string v3, "\u6c99\u5c18\u66b4"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v3, "\u6c99\u5c18\u66b4"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_1e
    const-string v0, "weather_shachenbao.png"

    goto/16 :goto_1

    :cond_1f
    const-string v3, "\u7279\u5927\u66b4\u96e8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "\u7279\u5927\u66b4\u96e8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_20
    const-string v0, "weather_tedabaoyu.png"

    goto/16 :goto_1

    :cond_21
    const-string v3, "\u96fe"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "\u96fe"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_22
    const-string v0, "weather_wu.png"

    goto/16 :goto_1

    :cond_23
    const-string v3, "\u5c0f\u96ea"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    const-string v3, "\u5c0f\u96ea"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_24
    const-string v0, "weather_xiaoxue.png"

    goto/16 :goto_1

    :cond_25
    const-string v3, "\u5c0f\u96e8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string v3, "\u5c0f\u96e8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_26
    const-string v0, "weather_xiaoyu.png"

    goto/16 :goto_1

    :cond_27
    const-string v3, "\u626c\u6c99"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string v3, "\u626c\u6c99"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    :cond_28
    const-string v0, "weather_yangsha.png"

    goto/16 :goto_1

    :cond_29
    const-string v3, "\u9634"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "\u9634"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    :cond_2a
    const-string v0, "weather_yin.png"

    goto/16 :goto_1

    :cond_2b
    const-string v3, "\u96e8\u5939\u96ea"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    const-string v3, "\u96e8\u5939\u96ea"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    :cond_2c
    const-string v0, "weather_yujiaxue.png"

    goto/16 :goto_1

    :cond_2d
    const-string v3, "\u9635\u96e8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "\u9635\u96e8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    :cond_2e
    const-string v0, "weather_zhenyu.png"

    goto/16 :goto_1

    :cond_2f
    const-string v3, "\u4e2d\u96ea"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "\u4e2d\u96ea"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    :cond_30
    const-string v0, "weather_zhongxue.png"

    goto/16 :goto_1

    :cond_31
    const-string v3, "\u4e2d\u96e8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    const-string v3, "\u4e2d\u96e8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_32
    const-string v0, "weather_zhongyu.png"

    goto/16 :goto_1
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/car/voice/VoiceEngineFactory;Lcom/car/voice/VoiceUI;)V
    .locals 6

    iput-object p1, p0, Lcom/car/systemfunc/WeatherForcast;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/car/systemfunc/WeatherForcast;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    iput-object p3, p0, Lcom/car/systemfunc/WeatherForcast;->mVoiceUI:Lcom/car/voice/VoiceUI;

    iget-object v1, p0, Lcom/car/systemfunc/WeatherForcast;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lcom/car/common/map/MyLocation;->instance()Lcom/car/common/map/MyLocation;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/car/common/map/MyLocation;->registerListener(Lcom/amap/api/location/AMapLocationListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.weather.refresh"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/systemfunc/WeatherForcast;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "CarSvc_WeatherForcast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoiceRecConst.getVoiceEngineID()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getIconUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    const-string v6, "class"

    const-string v7, "text"

    invoke-virtual {v0, v6, v7}, Lorg/jsoup/nodes/Document;->getElementsByAttributeValue(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "CarSvc_WeatherForcast"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "weather condition is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "img"

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    const-string v6, "src"

    invoke-virtual {v1, v6}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "CarSvc_WeatherForcast"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "img link is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/car/common/map/MyLocation;->instance()Lcom/car/common/map/MyLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/common/map/MyLocation;->curCity()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/car/systemfunc/WeatherForcast;->mLastCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/car/common/map/MyLocation;->instance()Lcom/car/common/map/MyLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/common/map/MyLocation;->curCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/systemfunc/WeatherForcast;->mLastCity:Ljava/lang/String;

    const-string v0, "CarSvc_WeatherForcast"

    const-string v1, "Location changed and reschedule weather refreshing timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/systemfunc/WeatherForcast;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/systemfunc/WeatherForcast;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/car/systemfunc/WeatherForcast;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/NetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/car/systemfunc/WeatherForcast;->mLastUpdateTime:J

    sub-long v2, v0, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/car/systemfunc/WeatherForcast;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3a98

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/car/systemfunc/WeatherForcast;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.weather.refresh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/car/systemfunc/WeatherForcast;->mWeatherRefreshDisabled:Z

    iget-object v4, p0, Lcom/car/systemfunc/WeatherForcast;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/car/systemfunc/WeatherForcast;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/car/systemfunc/WeatherForcast;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onRecognizeResult(IILjava/lang/String;Z)Z
    .locals 15

    const/high16 v2, 0xff0000

    and-int v9, p1, v2

    const v2, 0xffff

    and-int p1, p1, v2

    const-string v2, "CarSvc_WeatherForcast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onRecognizeResult from engineType = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Lcom/car/common/VoiceRecConst;->getEngineTypeString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ", reqId="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ",value="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ",text="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ",isLast="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string v2, "\u67e5\u8be2"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v2, ":"

    const/4 v3, 0x2

    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    array-length v2, v12

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v2, v12, v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v12, v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v2, v8

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v5, v8, v2

    const/4 v2, 0x1

    aget-object v2, v8, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x3

    aget-object v2, v8, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    aget-object v4, v12, v2

    const-string v2, "http://fake.com"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/car/systemfunc/WeatherForcast;->mLastUpdateTime:J

    iget-object v2, p0, Lcom/car/systemfunc/WeatherForcast;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v10, Landroid/content/Intent;

    const-string v2, "com.car.weather.forcast"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "area"

    invoke-virtual {v10, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "condition"

    invoke-virtual {v10, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "temperature"

    invoke-virtual {v10, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/etc/weathers/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v6}, Lcom/car/systemfunc/WeatherForcast;->getIconByWeather(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v2, "iconurl"

    invoke-virtual {v10, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/systemfunc/WeatherForcast;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v10, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v2, "CarSvc_WeatherForcast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "area="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ", weather="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ", temperature="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ", iconUrl="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_1
    new-instance v14, Ljava/lang/Thread;

    new-instance v2, Lcom/car/systemfunc/WeatherForcast$3;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/car/systemfunc/WeatherForcast$3;-><init>(Lcom/car/systemfunc/WeatherForcast;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v14, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onWeatherForecastSearched(Lcom/amap/api/services/weather/LocalWeatherForecastResult;I)V
    .locals 12

    const/16 v9, 0x3e8

    if-ne p2, v9, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/services/weather/LocalWeatherForecastResult;->getForecastResult()Lcom/amap/api/services/weather/LocalWeatherForecast;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v9, "CarSvc_WeatherForcast"

    const-string v10, "Gaode weather forecast failed, weatherForecast=null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v7}, Lcom/amap/api/services/weather/LocalWeatherForecast;->getWeatherForecast()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/weather/LocalDayWeatherForecast;

    iget-object v0, p0, Lcom/car/systemfunc/WeatherForcast;->mLastCity:Ljava/lang/String;

    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v10, 0x12

    if-ge v9, v10, :cond_2

    invoke-virtual {v2}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->getDayWeather()Ljava/lang/String;

    move-result-object v6

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->getNightTemp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "~"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->getDayTemp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u2103"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "CarSvc_WeatherForcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Gaode.onWeatherForecastSearched: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/car/systemfunc/WeatherForcast;->mLastUpdateTime:J

    iget-object v9, p0, Lcom/car/systemfunc/WeatherForcast;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.car.weather.forcast"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "area"

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "condition"

    invoke-virtual {v3, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "temperature"

    invoke-virtual {v3, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/etc/weathers/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v6}, Lcom/car/systemfunc/WeatherForcast;->getIconByWeather(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "iconurl"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/car/systemfunc/WeatherForcast;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->getNightWeather()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_3
    const-string v9, "CarSvc_WeatherForcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Gaode weather forecast failed, errCode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onWeatherLiveSearched(Lcom/amap/api/services/weather/LocalWeatherLiveResult;I)V
    .locals 9

    const/16 v6, 0x3e8

    if-ne p2, v6, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/weather/LocalWeatherLiveResult;->getLiveResult()Lcom/amap/api/services/weather/LocalWeatherLive;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/weather/LocalWeatherLiveResult;->getLiveResult()Lcom/amap/api/services/weather/LocalWeatherLive;

    move-result-object v5

    iget-object v0, p0, Lcom/car/systemfunc/WeatherForcast;->mLastCity:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/amap/api/services/weather/LocalWeatherLive;->getWeather()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/amap/api/services/weather/LocalWeatherLive;->getTemperature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u2103"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "CarSvc_WeatherForcast"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Gaode.onWeatherLiveSearched: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/car/systemfunc/WeatherForcast;->mLastUpdateTime:J

    iget-object v6, p0, Lcom/car/systemfunc/WeatherForcast;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.car.weather.forcast"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "area"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "condition"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "temperature"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/etc/weathers/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v3}, Lcom/car/systemfunc/WeatherForcast;->getIconByWeather(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "iconurl"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/car/systemfunc/WeatherForcast;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void

    :cond_0
    const-string v6, "CarSvc_WeatherForcast"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Gaode weather search failed, errCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v6, "CarSvc_WeatherForcast"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Gaode weather search failed, errCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
