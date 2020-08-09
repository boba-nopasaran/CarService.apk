.class Lcom/car/systemfunc/WeatherForcast$3;
.super Ljava/lang/Object;
.source "WeatherForcast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/WeatherForcast;->onRecognizeResult(IILjava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/WeatherForcast;

.field final synthetic val$area:Ljava/lang/String;

.field final synthetic val$temperature:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$weather:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/WeatherForcast;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/WeatherForcast$3;->this$0:Lcom/car/systemfunc/WeatherForcast;

    iput-object p2, p0, Lcom/car/systemfunc/WeatherForcast$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/systemfunc/WeatherForcast$3;->val$area:Ljava/lang/String;

    iput-object p4, p0, Lcom/car/systemfunc/WeatherForcast$3;->val$weather:Ljava/lang/String;

    iput-object p5, p0, Lcom/car/systemfunc/WeatherForcast$3;->val$temperature:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v6, 0x2

    iget-object v3, p0, Lcom/car/systemfunc/WeatherForcast$3;->val$url:Ljava/lang/String;

    invoke-static {v3}, Lcom/car/utils/HttpContentUtils;->performGetRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/WeatherForcast$3;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-static {v3}, Lcom/car/systemfunc/WeatherForcast;->access$100(Lcom/car/systemfunc/WeatherForcast;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/car/systemfunc/WeatherForcast$3;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-static {v3}, Lcom/car/systemfunc/WeatherForcast;->access$100(Lcom/car/systemfunc/WeatherForcast;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    const-wide/16 v6, 0x3a98

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/car/systemfunc/WeatherForcast$3;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-virtual {v3, v2}, Lcom/car/systemfunc/WeatherForcast;->getIconUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/car/systemfunc/WeatherForcast$3;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/car/systemfunc/WeatherForcast;->mLastUpdateTime:J

    iget-object v3, p0, Lcom/car/systemfunc/WeatherForcast$3;->this$0:Lcom/car/systemfunc/WeatherForcast;

    invoke-static {v3}, Lcom/car/systemfunc/WeatherForcast;->access$100(Lcom/car/systemfunc/WeatherForcast;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    const-string v3, "CarSvc_WeatherForcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "area="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/systemfunc/WeatherForcast$3;->val$area:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", weather="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/systemfunc/WeatherForcast$3;->val$weather:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", temperature="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/systemfunc/WeatherForcast$3;->val$temperature:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iconUrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.car.weather.forcast"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "area"

    iget-object v4, p0, Lcom/car/systemfunc/WeatherForcast$3;->val$area:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "condition"

    iget-object v4, p0, Lcom/car/systemfunc/WeatherForcast$3;->val$weather:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "temperature"

    iget-object v4, p0, Lcom/car/systemfunc/WeatherForcast$3;->val$temperature:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "iconurl"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/systemfunc/WeatherForcast$3;->this$0:Lcom/car/systemfunc/WeatherForcast;

    iget-object v3, v3, Lcom/car/systemfunc/WeatherForcast;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
