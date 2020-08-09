.class Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;
.super Ljava/lang/Object;
.source "SettingsNotifier.java"

# interfaces
.implements Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/SettingsNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHttpResponseListener"
.end annotation


# instance fields
.field mPackage:Ljava/lang/String;

.field mReportedFlow:J

.field final synthetic this$0:Lcom/car/systemfunc/SettingsNotifier;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/SettingsNotifier;JLjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->mReportedFlow:J

    iput-wide p2, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->mReportedFlow:J

    iput-object p4, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->mPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onHttpResponse(Ljava/lang/String;)V
    .locals 12

    const-string v4, "CarSvc_SettingsNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->mReportedFlow:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "ret"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v4, "CarSvc_SettingsNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error_code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", error_message:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "err"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v4, "CarSvc_SettingsNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v4, v4, Lcom/car/systemfunc/SettingsNotifier;->mTimeTokenSet:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->mPackage:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v5, v4, Lcom/car/systemfunc/SettingsNotifier;->mFlowReportedSet:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->mPackage:Ljava/lang/String;

    iget-object v4, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v4, v4, Lcom/car/systemfunc/SettingsNotifier;->mFlowReportedSet:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->mReportedFlow:J

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "CarSvc_SettingsNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total reported flow is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v6, v6, Lcom/car/systemfunc/SettingsNotifier;->mFlowReportedSet:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->mPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    invoke-static {v4}, Lcom/car/systemfunc/SettingsNotifier;->access$700(Lcom/car/systemfunc/SettingsNotifier;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v4, v4, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    const-string v5, "flow"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "flow_reported_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v4, v4, Lcom/car/systemfunc/SettingsNotifier;->mFlowReportedSet:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
