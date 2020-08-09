.class Lcom/car/systemfunc/WeatherForcast$1;
.super Ljava/lang/Object;
.source "WeatherForcast.java"

# interfaces
.implements Lcom/aispeech/aios/sdk/listener/AIOSDataListener;


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

    iput-object p1, p0, Lcom/car/systemfunc/WeatherForcast$1;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWeatherResult(Lorg/json/JSONObject;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x3

    if-eqz p1, :cond_0

    :try_start_0
    const-string v6, "result"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "result"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :cond_0
    const-string v6, "today"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v6, "weather"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "temperature"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.car.weather.forcast"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "area"

    iget-object v7, p0, Lcom/car/systemfunc/WeatherForcast$1;->this$0:Lcom/car/systemfunc/WeatherForcast;

    iget-object v7, v7, Lcom/car/systemfunc/WeatherForcast;->mLastCity:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "condition"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "temperature"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/etc/weathers/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/car/systemfunc/WeatherForcast$1;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-static {v7, v4}, Lcom/car/systemfunc/WeatherForcast;->access$000(Lcom/car/systemfunc/WeatherForcast;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "iconurl"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "CarSvc_WeatherForcast"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "weather="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", temp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", weatherIcon="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/car/systemfunc/WeatherForcast$1;->this$0:Lcom/car/systemfunc/WeatherForcast;

    iget-object v6, v6, Lcom/car/systemfunc/WeatherForcast;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v6, p0, Lcom/car/systemfunc/WeatherForcast$1;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/car/systemfunc/WeatherForcast;->mLastUpdateTime:J

    iget-object v6, p0, Lcom/car/systemfunc/WeatherForcast$1;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-static {v6}, Lcom/car/systemfunc/WeatherForcast;->access$100(Lcom/car/systemfunc/WeatherForcast;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/car/systemfunc/WeatherForcast$1;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-static {v6}, Lcom/car/systemfunc/WeatherForcast;->access$100(Lcom/car/systemfunc/WeatherForcast;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/car/systemfunc/WeatherForcast$1;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-static {v6}, Lcom/car/systemfunc/WeatherForcast;->access$100(Lcom/car/systemfunc/WeatherForcast;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    iget-object v6, p0, Lcom/car/systemfunc/WeatherForcast$1;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-static {v6}, Lcom/car/systemfunc/WeatherForcast;->access$100(Lcom/car/systemfunc/WeatherForcast;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/car/systemfunc/WeatherForcast$1;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-static {v6}, Lcom/car/systemfunc/WeatherForcast;->access$100(Lcom/car/systemfunc/WeatherForcast;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x1

    const-wide/16 v8, 0x3a98

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v6, p0, Lcom/car/systemfunc/WeatherForcast$1;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-static {v6}, Lcom/car/systemfunc/WeatherForcast;->access$100(Lcom/car/systemfunc/WeatherForcast;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/car/systemfunc/WeatherForcast$1;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-static {v6}, Lcom/car/systemfunc/WeatherForcast;->access$100(Lcom/car/systemfunc/WeatherForcast;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
