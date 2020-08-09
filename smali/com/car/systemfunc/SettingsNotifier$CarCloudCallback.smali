.class final Lcom/car/systemfunc/SettingsNotifier$CarCloudCallback;
.super Lcom/car/common/ICarCloudCallback$Stub;
.source "SettingsNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/SettingsNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarCloudCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/SettingsNotifier;


# direct methods
.method private constructor <init>(Lcom/car/systemfunc/SettingsNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/SettingsNotifier$CarCloudCallback;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    invoke-direct {p0}, Lcom/car/common/ICarCloudCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/systemfunc/SettingsNotifier;Lcom/car/systemfunc/SettingsNotifier$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/systemfunc/SettingsNotifier$CarCloudCallback;-><init>(Lcom/car/systemfunc/SettingsNotifier;)V

    return-void
.end method


# virtual methods
.method public onDeviceStatusChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CarSvc_SettingsNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMessageReceived(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUserChanged(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier$CarCloudCallback;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v3, v3, Lcom/car/systemfunc/SettingsNotifier;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier$CarCloudCallback;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v3, v3, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier$CarCloudCallback;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v3, v3, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v3}, Lcom/car/httpserver/CarWebSocketServer;->hasClients()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "f"

    const-string v4, "report"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "bondlist"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "deviceid"

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cloudid"

    iget-object v4, p0, Lcom/car/systemfunc/SettingsNotifier$CarCloudCallback;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v4, v4, Lcom/car/systemfunc/SettingsNotifier;->mCarCloudServiceImpl:Lcom/car/common/CarCloudServiceImpl;

    invoke-virtual {v4}, Lcom/car/common/CarCloudServiceImpl;->getCloudId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "CarSvc_SettingsNotifier"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier$CarCloudCallback;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v3, v3, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier$CarCloudCallback;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v3, v3, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onUserStatusChanged(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
