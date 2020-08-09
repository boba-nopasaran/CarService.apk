.class Lcom/car/systemfunc/SettingsNotifier$1;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/SettingsNotifier$1;->removeMessages(I)V

    new-instance v16, Ljava/lang/Thread;

    new-instance v17, Lcom/car/systemfunc/SettingsNotifier$1$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/car/systemfunc/SettingsNotifier$1$1;-><init>(Lcom/car/systemfunc/SettingsNotifier$1;)V

    invoke-direct/range {v16 .. v17}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    const/16 v16, 0x1

    const-wide/16 v18, 0x3a98

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/systemfunc/SettingsNotifier$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarCloudServiceImpl:Lcom/car/common/CarCloudServiceImpl;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/car/common/CarCloudServiceImpl;->getUserListAsync()Z

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    new-instance v16, Ljava/lang/Thread;

    new-instance v17, Lcom/car/systemfunc/SettingsNotifier$1$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/car/systemfunc/SettingsNotifier$1$2;-><init>(Lcom/car/systemfunc/SettingsNotifier$1;)V

    invoke-direct/range {v16 .. v17}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    const/16 v16, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/car/systemfunc/SettingsNotifier;->access$700(Lcom/car/systemfunc/SettingsNotifier;)Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    const/4 v10, 0x1

    :goto_1
    const-string v17, "CarSvc_SettingsNotifier"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Trigger SIM_NETWORK_CHECK, state="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, ", isSimReady="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/SettingsNotifier$1;->removeMessages(I)V

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    const-string v16, "CarSvc_SettingsNotifier"

    const-string v17, "Trying to reset radio"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.car.modem_off"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v16, 0x5

    const-wide/32 v18, 0x2bf20

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/systemfunc/SettingsNotifier$1;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.car.modem_on"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_6
    const-string v16, "unknown"

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x6

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/car/systemfunc/SettingsNotifier;->access$700(Lcom/car/systemfunc/SettingsNotifier;)Landroid/telephony/TelephonyManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mFlowReportedSet:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v16

    if-lez v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mFlowReportedSet:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v16, -0x1

    cmp-long v16, v8, v16

    if-nez v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "flow"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "flow_reported_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, 0x0

    invoke-interface/range {v16 .. v19}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mFlowReportedSet:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mFlowUsedSet:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v12, v16, v8

    const-wide/32 v16, 0x500000

    div-long v16, v12, v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_8

    const-string v15, "http://api.carassist.cn/datacard/whiteflow?device_id=%s&iccid=%s&time=%s&%s=%s"

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mTimeTokenSet:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mTimeTokenSet:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/car/utils/HttpRequestManager;->instance()Lcom/car/utils/HttpRequestManager;

    move-result-object v16

    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v4, v17, v18

    const/16 v18, 0x1

    aput-object v7, v17, v18

    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mTimeTokenSet:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    aput-object v14, v17, v18

    const/16 v18, 0x4

    aput-object v6, v17, v18

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v12, v13, v14}, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;-><init>(Lcom/car/systemfunc/SettingsNotifier;JLjava/lang/String;)V

    invoke-virtual/range {v16 .. v18}, Lcom/car/utils/HttpRequestManager;->requestHttp(Ljava/lang/String;Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;)V

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier$1;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/SettingsNotifier;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x6

    const-wide/32 v18, 0x493e0

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
