.class Lcom/car/systemfunc/SystemEventHandler$3$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/SystemEventHandler$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/systemfunc/SystemEventHandler$3;

.field final synthetic val$jso:Lorg/json/JSONObject;

.field final synthetic val$waitingLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/SystemEventHandler$3;Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/SystemEventHandler$3$1;->this$1:Lcom/car/systemfunc/SystemEventHandler$3;

    iput-object p2, p0, Lcom/car/systemfunc/SystemEventHandler$3$1;->val$jso:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/car/systemfunc/SystemEventHandler$3$1;->val$waitingLock:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v5, "ret"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "error"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "path"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "seqid"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-long v6, v4

    iget-object v5, p0, Lcom/car/systemfunc/SystemEventHandler$3$1;->this$1:Lcom/car/systemfunc/SystemEventHandler$3;

    iget-wide v8, v5, Lcom/car/systemfunc/SystemEventHandler$3;->val$relayid:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v5, "CarSvc_SystemEventHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/car/common/CarPath;->getCapturePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/F"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/car/systemfunc/SystemEventHandler$3$1;->val$jso:Lorg/json/JSONObject;

    const-string v6, "videourl"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/car/systemfunc/SystemEventHandler$3$1;->val$waitingLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget-object v5, p0, Lcom/car/systemfunc/SystemEventHandler$3$1;->val$waitingLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v5, p0, Lcom/car/systemfunc/SystemEventHandler$3$1;->this$1:Lcom/car/systemfunc/SystemEventHandler$3;

    iget-object v5, v5, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v5}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/car/systemfunc/SystemEventHandler$3$1;->val$jso:Lorg/json/JSONObject;

    const-string v6, "videourlrear"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method
