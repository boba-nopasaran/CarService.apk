.class Lcom/car/systemfunc/SettingsNotifier$4;
.super Landroid/content/BroadcastReceiver;
.source "SettingsNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/SettingsNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/SettingsNotifier;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/SettingsNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 52

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v48, "com.car.restart_dvr"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/car/systemfunc/SettingsNotifier;->restartDvr()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v48, "com.car.camera_state"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_2

    const-string v48, "state"

    const/16 v49, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    goto :goto_0

    :cond_2
    const-string v48, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/car/systemfunc/SettingsNotifier;->access$800(Lcom/car/systemfunc/SettingsNotifier;)Landroid/net/wifi/WifiManager;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/net/wifi/WifiManager;->getHotspotClients()Ljava/util/List;

    move-result-object v6

    const-string v48, "CarSvc_SettingsNotifier"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " devices connected to my hotspot"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v41, ""

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v48

    if-nez v48, :cond_3

    :goto_1
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v48

    const/16 v49, 0x3

    move-object/from16 v0, v48

    move-object/from16 v1, v41

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7f090047

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v48

    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v51

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    invoke-static/range {v48 .. v49}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    goto :goto_1

    :cond_4
    const-string v48, "com.car.custom.app"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_5

    const-string v48, "data"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v25, Lorg/json/JSONObject;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v48, "f"

    const-string v49, "report"

    move-object/from16 v0, v25

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v24, Lorg/json/JSONObject;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONObject;-><init>()V

    const-string v48, "data"

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v48, "custom"

    move-object/from16 v0, v25

    move-object/from16 v1, v48

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v48, "CarSvc_SettingsNotifier"

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    move-object/from16 v48, v0

    if-eqz v48, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    move-object/from16 v48, v0

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    const-string v48, "com.car.monitor.notify"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_7

    const-string v48, "id"

    const-wide/16 v50, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    move-wide/from16 v2, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    const-wide/16 v48, -0x1

    cmp-long v48, v20, v48

    if-nez v48, :cond_6

    const-string v48, "id"

    const/16 v49, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v20, v0

    :cond_6
    const-string v48, "operation"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v48, "percent"

    const/16 v49, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v33

    const-string v48, "result"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    new-instance v25, Lorg/json/JSONObject;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v48, "f"

    const-string v49, "broadcast"

    move-object/from16 v0, v25

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v24, Lorg/json/JSONObject;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONObject;-><init>()V

    const-string v48, "action"

    const-string v49, "com.car.monitor.notify"

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v48, "id"

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v48, "operation"

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v48, "percent"

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v48, "result"

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v48, "intent"

    move-object/from16 v0, v25

    move-object/from16 v1, v48

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v48, "CarSvc_SettingsNotifier"

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    move-object/from16 v48, v0

    if-eqz v48, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    move-object/from16 v48, v0

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    const-string v48, "com.car.fakebtn.report"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1a

    const-string v48, "ro.hw.version"

    const-string v49, ""

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v48, "ro.fakebtn.report.type"

    const/16 v49, 0x0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    new-instance v37, Ljava/lang/StringBuffer;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuffer;-><init>()V

    const-string v48, "C6"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_8

    const-string v48, "c6"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_8

    const-string v48, "ro.key.f112power"

    const/16 v49, 0x0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v48

    if-eqz v48, :cond_9

    :cond_8
    const/16 v48, 0x1a

    const/16 v49, 0x0

    const/16 v50, 0x0

    invoke-static/range {v48 .. v50}, Lcom/car/common/SystemCtrl;->sendEvent(III)V

    const/16 v48, 0x1a

    const/16 v49, 0x1

    const/16 v50, 0x0

    invoke-static/range {v48 .. v50}, Lcom/car/common/SystemCtrl;->sendEvent(III)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/car/systemfunc/SettingsNotifier;->access$800(Lcom/car/systemfunc/SettingsNotifier;)Landroid/net/wifi/WifiManager;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v46

    const-string v41, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7f09004b

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7f09004c

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7f09004d

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7f09004e

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7f09004f

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7f090050

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7f090051

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7f090052

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7f090053

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7f090054

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7f090056

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7f090057

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    const-string v49, "phone"

    invoke-virtual/range {v48 .. v49}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/telephony/TelephonyManager;

    const/16 v48, 0x5

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v49

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_a

    const/16 v23, 0x1

    :goto_2
    const-string v43, ""

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v48

    move/from16 v0, v19

    move/from16 v1, v48

    if-ge v0, v1, :cond_b

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    add-int/lit8 v49, v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    :cond_a
    const/16 v23, 0x0

    goto :goto_2

    :cond_b
    const-string v40, ""

    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v48

    move/from16 v0, v19

    move/from16 v1, v48

    if-ge v0, v1, :cond_c

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v49, v0

    add-int/lit8 v50, v19, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v19

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    :cond_c
    const-string v5, ""

    const-string v48, "softap.nopwd.report"

    const-string v49, "0"

    invoke-static/range {v48 .. v49}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    const-string v49, "1"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_12

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput-object v40, v48, v49

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-boolean v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mDvrStarted:Z

    move/from16 v48, v0

    if-eqz v48, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mDvrNum:I

    move/from16 v48, v0

    if-nez v48, :cond_13

    move-object v5, v14

    :cond_d
    :goto_6
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v9, v0, :cond_e

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mSDVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v48, v0

    if-nez v48, :cond_f

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/car/systemfunc/SettingsNotifier;->isMobileDataConnected()Z

    move-result v48

    if-eqz v48, :cond_16

    move-object/from16 v5, v27

    :goto_7
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v9, v0, :cond_10

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v9, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/car/systemfunc/SettingsNotifier;->access$900(Lcom/car/systemfunc/SettingsNotifier;)I

    move-result v48

    if-lez v48, :cond_18

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    :goto_8
    const-string v48, "ro.tts.statusmore"

    move-object/from16 v0, v48

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v9, v0, :cond_19

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v48

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v49

    const/16 v50, 0x3

    invoke-virtual/range {v48 .. v50}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_12
    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput-object v40, v48, v49

    const/16 v49, 0x1

    aput-object v43, v48, v49

    move-object/from16 v0, v38

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mDvrNum:I

    move/from16 v48, v0

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_14

    move-object/from16 v5, v35

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mDvrNum:I

    move/from16 v48, v0

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_d

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    :cond_15
    move-object v5, v11

    goto/16 :goto_6

    :cond_16
    if-eqz v23, :cond_17

    move-object/from16 v5, v29

    goto/16 :goto_7

    :cond_17
    move-object/from16 v5, v31

    goto/16 :goto_7

    :cond_18
    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_8

    :cond_19
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v48

    const/16 v49, 0x3

    move-object/from16 v0, v48

    move-object/from16 v1, v41

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_1a
    const-string v48, "android.media.VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1b

    const-string v48, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/16 v49, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v44

    const/16 v48, 0x2

    move/from16 v0, v44

    move/from16 v1, v48

    if-ne v0, v1, :cond_0

    const-string v48, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/16 v49, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v45

    const-string v48, "CarSvc_SettingsNotifier"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Volume "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " change to "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v25, Lorg/json/JSONObject;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v48, "f"

    const-string v49, "report"

    move-object/from16 v0, v25

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v24, Lorg/json/JSONObject;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONObject;-><init>()V

    const-string v48, "system_volume"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/car/common/ProviderUtils;->getVoumleCurrent(Landroid/content/Context;)I

    move-result v49

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v48, "generic"

    move-object/from16 v0, v25

    move-object/from16 v1, v48

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v48, "CarSvc_SettingsNotifier"

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    move-object/from16 v48, v0

    if-eqz v48, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    move-object/from16 v48, v0

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v12

    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_1b
    const-string v48, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/car/systemfunc/SettingsNotifier;->checkSoftAp()V

    goto/16 :goto_0

    :cond_1c
    const-string v48, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/car/systemfunc/SettingsNotifier;->isMobileDataConnected()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-boolean v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mMobileConnected:Z

    move/from16 v48, v0

    move/from16 v0, v48

    if-eq v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    move-object/from16 v48, v0

    if-eqz v48, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/car/httpserver/CarWebSocketServer;->hasClients()Z

    move-result v48

    if-eqz v48, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/car/systemfunc/SettingsNotifier;->reportMobile()V

    goto/16 :goto_0

    :cond_1d
    const-string v48, "com.car.videorecorder.recording_start"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, v48

    iput-boolean v0, v1, Lcom/car/systemfunc/SettingsNotifier;->mDvrStarted:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    const-string v49, "recording_camera"

    const/16 v50, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, v48

    iput v0, v1, Lcom/car/systemfunc/SettingsNotifier;->mDvrNum:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, v48

    iput v0, v1, Lcom/car/systemfunc/SettingsNotifier;->mDvrTime:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/car/systemfunc/SettingsNotifier;->reportRecordingStatus()V

    goto/16 :goto_0

    :cond_1e
    const-string v48, "com.car.videorecorder.recording_stop"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, v48

    iput-boolean v0, v1, Lcom/car/systemfunc/SettingsNotifier;->mDvrStarted:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, v48

    iput v0, v1, Lcom/car/systemfunc/SettingsNotifier;->mDvrTime:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    const/16 v49, -0x1

    move/from16 v0, v49

    move-object/from16 v1, v48

    iput v0, v1, Lcom/car/systemfunc/SettingsNotifier;->mDvrNum:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/car/systemfunc/SettingsNotifier;->reportRecordingStatus()V

    goto/16 :goto_0

    :cond_1f
    const-string v48, "com.car.videorecorder.recording_time_changed"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, v48

    iput-boolean v0, v1, Lcom/car/systemfunc/SettingsNotifier;->mDvrStarted:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    const-string v49, "recording_camera"

    const/16 v50, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, v48

    iput v0, v1, Lcom/car/systemfunc/SettingsNotifier;->mDvrNum:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    const-string v49, "recording_time"

    const/16 v50, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, v48

    iput v0, v1, Lcom/car/systemfunc/SettingsNotifier;->mDvrTime:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/car/systemfunc/SettingsNotifier;->reportRecordingStatus()V

    goto/16 :goto_0

    :cond_20
    const-string v48, "com.car.satellites"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    const-string v49, "count"

    const/16 v50, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v49

    invoke-static/range {v48 .. v49}, Lcom/car/systemfunc/SettingsNotifier;->access$902(Lcom/car/systemfunc/SettingsNotifier;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    move-object/from16 v48, v0

    if-eqz v48, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/car/httpserver/CarWebSocketServer;->hasClients()Z

    move-result v48

    if-eqz v48, :cond_0

    new-instance v25, Lorg/json/JSONObject;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    const-string v48, "f"

    const-string v49, "report"

    move-object/from16 v0, v25

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v24, Lorg/json/JSONObject;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONObject;-><init>()V

    const-string v48, "enable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/car/common/ProviderUtils;->getGPSEnable(Landroid/content/Context;)Z

    move-result v49

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v48, "satellites"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/car/systemfunc/SettingsNotifier;->access$900(Lcom/car/systemfunc/SettingsNotifier;)I

    move-result v49

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v48, "timestamp"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/car/systemfunc/SettingsNotifier;->access$1000(Lcom/car/systemfunc/SettingsNotifier;)Lcom/car/common/LocationManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/car/common/LocationManager;->getCurrentTimestamp()J

    move-result-wide v50

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-wide/from16 v2, v50

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v48, "nmea"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/car/systemfunc/SettingsNotifier;->access$1000(Lcom/car/systemfunc/SettingsNotifier;)Lcom/car/common/LocationManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/car/common/LocationManager;->getCurrentNmea()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v48, "gps"

    move-object/from16 v0, v25

    move-object/from16 v1, v48

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    move-object/from16 v48, v0

    if-eqz v48, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    move-object/from16 v48, v0

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v12

    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_21
    const-string v48, "com.car.otadownload"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_22

    const-string v48, "percent"

    const/16 v49, -0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    move-object/from16 v48, v0

    if-eqz v48, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/car/httpserver/CarWebSocketServer;->hasClients()Z

    move-result v48

    if-eqz v48, :cond_0

    new-instance v25, Lorg/json/JSONObject;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONObject;-><init>()V

    :try_start_4
    const-string v48, "f"

    const-string v49, "report"

    move-object/from16 v0, v25

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v24, Lorg/json/JSONObject;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONObject;-><init>()V

    const-string v48, "percent"

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v48, "version"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "V"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "ro.product.fw_ver"

    const-string v51, "0.0.1"

    invoke-static/range {v50 .. v51}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v48, "update"

    move-object/from16 v0, v25

    move-object/from16 v1, v48

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v48, "CarSvc_SettingsNotifier"

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    move-object/from16 v48, v0

    if-eqz v48, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    move-object/from16 v48, v0

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v12

    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_22
    const-string v48, "com.car.adas.ok"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_23

    const-string v48, "CarSvc_SettingsNotifier"

    move-object/from16 v0, v48

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    const-string v49, "enable"

    const/16 v50, 0x1

    invoke-virtual/range {v48 .. v50}, Lcom/car/systemfunc/SettingsNotifier;->reportAdasChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_23
    const-string v48, "com.car.sdformat"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/car/systemfunc/SettingsNotifier;->formatSdcard()V

    goto/16 :goto_0

    :cond_24
    const-string v48, "com.car.apconfig"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    const-string v49, "wifi"

    invoke-virtual/range {v48 .. v49}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v47 .. v47}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v46

    const-string v48, "ssid"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v46

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v48, "pwd"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    if-eqz v48, :cond_25

    const-string v48, "pwd"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v48

    if-lez v48, :cond_25

    const-string v48, "pwd"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v46

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_25
    invoke-virtual/range {v47 .. v47}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v48

    const/16 v49, 0xd

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_26

    const/16 v48, 0x0

    const/16 v49, 0x0

    invoke-virtual/range {v47 .. v49}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const/16 v48, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    :cond_26
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto/16 :goto_0

    :cond_27
    const-string v48, "com.car.writestorage.slow"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_0

    const-string v48, "action_show_alert_sd"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_0

    const-string v48, "com.car.updatelocale"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_28

    const-string v48, "lang"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->updateLocale(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_28
    const-string v48, "com.car.iprange"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_29

    const-string v48, "iprange"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v48

    if-lez v48, :cond_0

    const-string v48, ","

    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v48

    array-length v0, v0

    move/from16 v48, v0

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_0

    const-string v48, "persist.softap.iprange"

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    const-string v49, "wifi"

    invoke-virtual/range {v48 .. v49}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/net/wifi/WifiManager;

    const/16 v48, 0x0

    const/16 v49, 0x0

    invoke-virtual/range {v47 .. v49}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-wide/16 v48, 0x3e8

    invoke-static/range {v48 .. v49}, Landroid/os/SystemClock;->sleep(J)V

    const/16 v48, 0x0

    const/16 v49, 0x1

    invoke-virtual/range {v47 .. v49}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    :cond_29
    const-string v48, "com.car.softap"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_2a

    const-string v48, "enable"

    const/16 v49, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    const-string v49, "wifi"

    invoke-virtual/range {v48 .. v49}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/net/wifi/WifiManager;

    const/16 v48, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v13}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    :cond_2a
    const-string v48, "com.car.mobiledata"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_2b

    const-string v48, "enable"

    const/16 v49, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/car/systemfunc/SettingsNotifier;->access$700(Lcom/car/systemfunc/SettingsNotifier;)Landroid/telephony/TelephonyManager;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v13}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto/16 :goto_0

    :cond_2b
    const-string v48, "com.car.dvr.reverse.gear.popup"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_0

    const-string v48, "is.reverse.gear"

    const/16 v49, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$4;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportBackCarChange(Z)V

    goto/16 :goto_0
.end method
