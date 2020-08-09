.class Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;
.super Ljava/lang/Object;
.source "DataCardManager.java"

# interfaces
.implements Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/DataCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHttpResponseListener"
.end annotation


# instance fields
.field private mForceShowUI:Z

.field final synthetic this$0:Lcom/car/systemfunc/DataCardManager;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/DataCardManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->mForceShowUI:Z

    return-void
.end method


# virtual methods
.method public onHttpResponse(Ljava/lang/String;)V
    .locals 26

    const-string v21, "CarSvc_DataCardManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "result = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/car/systemfunc/DataCardManager;->mLastUpdateTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/systemfunc/DataCardManager;->access$000(Lcom/car/systemfunc/DataCardManager;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0xc8

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/systemfunc/DataCardManager;->access$000(Lcom/car/systemfunc/DataCardManager;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0xc8

    const-wide/32 v24, 0x36ee80

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v21, "ret"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    if-eqz v16, :cond_2

    const-string v21, "CarSvc_DataCardManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "error_code:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", error_message:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "err"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v21, "CarSvc_DataCardManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string v21, "card_provider"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/car/systemfunc/DataCardManager;->access$600()Z

    move-result v21

    if-eqz v21, :cond_3

    const-string v21, "ecar"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/car/systemfunc/DataCardManager;->eCarInit(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/car/systemfunc/DataCardManager;->eCar2Init(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/car/systemfunc/DataCardManager;->hiCarInit(Z)V

    :cond_3
    :goto_1
    const-string v21, "package_type"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v21, "blockit"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/systemfunc/DataCardManager;->access$800(Lcom/car/systemfunc/DataCardManager;)V

    goto/16 :goto_0

    :cond_4
    const-string v21, "ecar2"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/car/systemfunc/DataCardManager;->eCarInit(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/car/systemfunc/DataCardManager;->eCar2Init(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/car/systemfunc/DataCardManager;->hiCarInit(Z)V

    goto :goto_1

    :cond_5
    const-string v21, "tian_an"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/car/systemfunc/DataCardManager;->eCarInit(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/car/systemfunc/DataCardManager;->eCar2Init(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/car/systemfunc/DataCardManager;->hiCarInit(Z)V

    goto :goto_1

    :cond_6
    const-string v21, "tencent"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/car/systemfunc/DataCardManager;->eCarInit(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/car/systemfunc/DataCardManager;->eCar2Init(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/car/systemfunc/DataCardManager;->hiCarInit(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/systemfunc/DataCardManager;->access$100(Lcom/car/systemfunc/DataCardManager;)Landroid/content/Context;

    move-result-object v21

    const-string v22, "com.car.tencent"

    invoke-static/range {v21 .. v22}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    const-string v22, "\u975e\u6cd5\u4f7f\u7528\u817e\u8baf\u5361\uff0c\u8bf7\u66f4\u6362\u4e3a\u51fa\u5382\u9884\u88c5\u7684\u7269\u8054\u7f51\u5361\u3002"

    invoke-static/range {v21 .. v22}, Lcom/car/systemfunc/DataCardManager;->access$700(Lcom/car/systemfunc/DataCardManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v21, "hsnofor"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/systemfunc/DataCardManager;->access$100(Lcom/car/systemfunc/DataCardManager;)Landroid/content/Context;

    move-result-object v21

    new-instance v22, Landroid/content/Intent;

    const-string v23, "com.car.forward"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v23, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_8
    const-string v21, "white_flow_pkgs"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    move-object v4, v14

    array-length v10, v4

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v10, :cond_d

    aget-object v13, v4, v8

    const/4 v11, 0x1

    const-string v21, "-"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    const/4 v11, 0x0

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/systemfunc/DataCardManager;->access$100(Lcom/car/systemfunc/DataCardManager;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/systemfunc/DataCardManager;->access$100(Lcom/car/systemfunc/DataCardManager;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lcom/car/utils/Util;->isApkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    if-eq v0, v11, :cond_a

    const-string v22, "CarSvc_DataCardManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v11, :cond_b

    const-string v21, "to enable "

    :goto_3
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/systemfunc/DataCardManager;->access$100(Lcom/car/systemfunc/DataCardManager;)Landroid/content/Context;

    move-result-object v22

    if-nez v11, :cond_c

    const/16 v21, 0x1

    :goto_4
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v13, v1}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_b
    const-string v21, "to disable "

    goto :goto_3

    :cond_c
    const/16 v21, 0x0

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/systemfunc/DataCardManager;->access$100(Lcom/car/systemfunc/DataCardManager;)Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v21, "last_iccid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/DataCardManager$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/DataCardManager;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/car/systemfunc/DataCardManager;->access$200(Lcom/car/systemfunc/DataCardManager;)Landroid/telephony/TelephonyManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v21, "last_card_provider"

    move-object/from16 v0, v21

    invoke-interface {v7, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v21, "sys.datacard.params"

    const-string v22, ""

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "&limit=_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v21, "notify_usage_limit"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_11

    const-string v18, "\u6570\u636e\u6d41\u91cf\u5373\u5c06\u8017\u5c3d\uff0c\u8bf7\u5728\u60a8\u7684\u624b\u673a\u4e2d\u5b89\u88c5\u548c\u8fd0\u884c\u8f66\u8f66\u52a9\u624b\u4ee5\u4fbf\u5145\u503c"

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    const-string v18, "\u6570\u636e\u6d41\u91cf\u5df2\u7ecf\u8017\u5c3d\uff0c\u8bf7\u5728\u60a8\u7684\u624b\u673a\u4e2d\u5b89\u88c5\u548c\u8fd0\u884c\u8f66\u8f66\u52a9\u624b\u4ee5\u4fbf\u5145\u503c"

    :cond_e
    :goto_5
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    :cond_f
    :goto_6
    const-string v21, "notify_real_name"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_0

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v21

    const-string v22, "\u4f9d\u636e\u76f8\u5173\u6cd5\u5f8b\u6cd5\u89c4\uff0c\u60a8\u7684\u6d41\u91cf\u5361\u5fc5\u987b\u8fdb\u884c\u5b9e\u540d\u8ba4\u8bc1\uff0c\u5426\u5219\u5c06\u4f9d\u6cd5\u505c\u6b62\u901a\u4fe1\u670d\u52a1\u3002\u8bf7\u5728\u60a8\u7684\u624b\u673a\u4e2d\u5b89\u88c5\u548c\u8fd0\u884c\u8f66\u8f66\u52a9\u624b\uff0c\u4ee5\u4fbf\u8fdb\u884c\u5b9e\u540d\u8ba4\u8bc1"

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_10
    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    const-string v18, "\u6570\u636e\u6d41\u91cf\u5361\u670d\u52a1\u5373\u5c06\u5230\u671f\uff0c\u8bf7\u5728\u60a8\u7684\u624b\u673a\u4e2d\u5b89\u88c5\u548c\u8fd0\u884c\u8f66\u8f66\u52a9\u624b\u4ee5\u4fbf\u5145\u503c"

    goto :goto_5

    :cond_11
    const-string v21, "tts_tips"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_f

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method
