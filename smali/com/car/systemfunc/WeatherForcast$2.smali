.class Lcom/car/systemfunc/WeatherForcast$2;
.super Landroid/os/Handler;
.source "WeatherForcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/WeatherForcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/WeatherForcast;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/WeatherForcast;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/WeatherForcast$2;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x2

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/car/systemfunc/WeatherForcast$2;->this$0:Lcom/car/systemfunc/WeatherForcast;

    iget-object v3, v3, Lcom/car/systemfunc/WeatherForcast;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/common/NetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/car/systemfunc/WeatherForcast$2;->this$0:Lcom/car/systemfunc/WeatherForcast;

    iget-boolean v3, v3, Lcom/car/systemfunc/WeatherForcast;->mWeatherRefreshDisabled:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    if-eq v3, v8, :cond_1

    new-instance v1, Lcom/amap/api/services/weather/WeatherSearchQuery;

    iget-object v3, p0, Lcom/car/systemfunc/WeatherForcast$2;->this$0:Lcom/car/systemfunc/WeatherForcast;

    iget-object v3, v3, Lcom/car/systemfunc/WeatherForcast;->mLastCity:Ljava/lang/String;

    invoke-direct {v1, v3, v6}, Lcom/amap/api/services/weather/WeatherSearchQuery;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/amap/api/services/weather/WeatherSearch;

    iget-object v3, p0, Lcom/car/systemfunc/WeatherForcast$2;->this$0:Lcom/car/systemfunc/WeatherForcast;

    iget-object v3, v3, Lcom/car/systemfunc/WeatherForcast;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/amap/api/services/weather/WeatherSearch;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/amap/api/services/weather/WeatherSearch;->setQuery(Lcom/amap/api/services/weather/WeatherSearchQuery;)V

    iget-object v3, p0, Lcom/car/systemfunc/WeatherForcast$2;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/weather/WeatherSearch;->setOnWeatherSearchListener(Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;)V

    invoke-virtual {v2}, Lcom/amap/api/services/weather/WeatherSearch;->searchWeatherAsyn()V

    :cond_0
    :goto_1
    invoke-virtual {p0, v6}, Lcom/car/systemfunc/WeatherForcast$2;->removeMessages(I)V

    const-wide/16 v4, 0x3a98

    invoke-virtual {p0, v6, v4, v5}, Lcom/car/systemfunc/WeatherForcast$2;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0, v7}, Lcom/car/systemfunc/WeatherForcast$2;->removeMessages(I)V

    const-wide/32 v4, 0x36ee80

    invoke-virtual {p0, v7, v4, v5}, Lcom/car/systemfunc/WeatherForcast$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    if-ne v3, v8, :cond_2

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSDataManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSDataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/car/systemfunc/WeatherForcast$2;->this$0:Lcom/car/systemfunc/WeatherForcast;

    iget-object v4, v4, Lcom/car/systemfunc/WeatherForcast;->mAiosDataListener:Lcom/aispeech/aios/sdk/listener/AIOSDataListener;

    invoke-virtual {v3, v4}, Lcom/aispeech/aios/sdk/manager/AIOSDataManager;->registerDataListener(Lcom/aispeech/aios/sdk/listener/AIOSDataListener;)V

    new-instance v0, Lcom/aispeech/aios/sdk/bean/WeatherBean;

    invoke-direct {v0}, Lcom/aispeech/aios/sdk/bean/WeatherBean;-><init>()V

    iget-object v3, p0, Lcom/car/systemfunc/WeatherForcast$2;->this$0:Lcom/car/systemfunc/WeatherForcast;

    iget-object v3, v3, Lcom/car/systemfunc/WeatherForcast;->mLastCity:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/aispeech/aios/sdk/bean/WeatherBean;->setCity(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Lcom/aispeech/aios/sdk/bean/WeatherBean;->setDate(Ljava/util/Date;)V

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSDataManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSDataManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/aispeech/aios/sdk/manager/AIOSDataManager;->queryWeather(Lcom/aispeech/aios/sdk/bean/WeatherBean;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/WeatherForcast$2;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-static {v3}, Lcom/car/systemfunc/WeatherForcast;->access$200(Lcom/car/systemfunc/WeatherForcast;)Lcom/car/voice/VoiceUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/car/voice/VoiceUI;->isUIShowing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/WeatherForcast$2;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-static {}, Lcom/car/common/map/MyLocation;->instance()Lcom/car/common/map/MyLocation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/common/map/MyLocation;->curCity()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/car/systemfunc/WeatherForcast;->mLastCity:Ljava/lang/String;

    iget-object v3, p0, Lcom/car/systemfunc/WeatherForcast$2;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-static {v3}, Lcom/car/systemfunc/WeatherForcast;->access$300(Lcom/car/systemfunc/WeatherForcast;)Lcom/car/voice/VoiceEngineFactory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/car/systemfunc/WeatherForcast$2;->this$0:Lcom/car/systemfunc/WeatherForcast;

    iget-object v5, v5, Lcom/car/systemfunc/WeatherForcast;->mLastCity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5929\u6c14\u600e\u6837"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/car/systemfunc/WeatherForcast$2;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-virtual {v3, v8, v4, v5, v7}, Lcom/car/voice/VoiceEngineFactory;->startRecognize(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;Z)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v6}, Lcom/car/systemfunc/WeatherForcast$2;->removeMessages(I)V

    invoke-virtual {p0, v7}, Lcom/car/systemfunc/WeatherForcast$2;->removeMessages(I)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0, v6}, Lcom/car/systemfunc/WeatherForcast$2;->removeMessages(I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v7, v4, v5}, Lcom/car/systemfunc/WeatherForcast$2;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSDataManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aispeech/aios/sdk/manager/AIOSDataManager;->unregisterDataListener()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
