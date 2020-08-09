.class Lcom/aispeech/aios/sdk/SDKNode$1;
.super Landroid/os/Handler;
.source "SDKNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/sdk/SDKNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aispeech/aios/sdk/SDKNode;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/sdk/SDKNode;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/SDKNode$1;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v12, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v11, "topic"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "bytes"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    new-array v5, v12, [Ljava/lang/String;

    :cond_0
    :try_start_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "keys.aios.state"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "player.tts.state"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "recorder.state"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_1
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;

    move-result-object v11

    invoke-virtual {v11, v9, v5}, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->handleMessage(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v11, "keys.aios.state"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/aispeech/aios/sdk/SDKNode$1;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-static {v11, v12}, Lcom/aispeech/aios/sdk/SDKNode;->access$002(Lcom/aispeech/aios/sdk/SDKNode;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v11, "keys.aios.log.level"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    array-length v11, v5

    if-lez v11, :cond_2

    const-string v11, "SDKNode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "log.level ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v5, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/aispeech/ailog/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/aispeech/ailog/AILog;->setLogLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v11, "data.sync.state"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v8, ""

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->getMusicListener()Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;

    move-result-object v4

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/aispeech/aios/sdk/manager/AIOSPhoneManager;->getPhoneListener()Lcom/aispeech/aios/sdk/listener/AIOSPhoneListener;

    move-result-object v6

    const-string v11, "contacts"

    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v6, :cond_6

    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-interface {v6, v11}, Lcom/aispeech/aios/sdk/listener/AIOSPhoneListener;->onSyncContactsResult(Z)Ljava/lang/String;

    move-result-object v8

    :cond_5
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v8}, Lcom/aispeech/aios/sdk/manager/AIOSTTSManager;->speak(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v11, "songs"

    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v4, :cond_5

    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-interface {v4, v11}, Lcom/aispeech/aios/sdk/listener/AIOSMusicListener;->onSyncMusicsFinished(Z)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_7
    const-string v11, "kernel.ready"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/aispeech/aios/sdk/SDKNode$1;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v11}, Lcom/aispeech/aios/sdk/SDKNode;->access$100(Lcom/aispeech/aios/sdk/SDKNode;)V

    goto/16 :goto_0

    :cond_8
    const-string v11, "adapter.nodes.ready"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v11, "SDKNode"

    const-string v12, "ADAPTER_READY"

    invoke-static {v11, v12}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/aispeech/aios/sdk/SDKNode$1;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v11}, Lcom/aispeech/aios/sdk/SDKNode;->access$200(Lcom/aispeech/aios/sdk/SDKNode;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v11, "SDKNode"

    const-string v12, "AIOS rebooted, reinitializeSDK"

    invoke-static {v11, v12}, Lcom/aispeech/ailog/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/aispeech/aios/sdk/SDKNode$1;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v11}, Lcom/aispeech/aios/sdk/SDKNode;->access$300(Lcom/aispeech/aios/sdk/SDKNode;)Z

    :goto_2
    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAdapterReadyListener()Lcom/aispeech/aios/sdk/listener/AIOSAdapterReadyListener;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v11, "SDKNode"

    const-string v12, "AIOSAdapterReadyListener is implemented, call onAdapterReady()"

    invoke-static {v11, v12}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/aispeech/aios/sdk/listener/AIOSAdapterReadyListener;->onAdapterReady()V

    goto/16 :goto_0

    :cond_9
    iget-object v11, p0, Lcom/aispeech/aios/sdk/SDKNode$1;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    iget-object v12, p0, Lcom/aispeech/aios/sdk/SDKNode$1;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v12}, Lcom/aispeech/aios/sdk/SDKNode;->access$400(Lcom/aispeech/aios/sdk/SDKNode;)Z

    move-result v12

    invoke-static {v11, v12}, Lcom/aispeech/aios/sdk/SDKNode;->access$202(Lcom/aispeech/aios/sdk/SDKNode;Z)Z

    const-string v11, "SDKNode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AIOS\'s just ready "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/aispeech/aios/sdk/SDKNode$1;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v13}, Lcom/aispeech/aios/sdk/SDKNode;->access$200(Lcom/aispeech/aios/sdk/SDKNode;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v11, "\\u002E"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "SDKNode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Region :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/aispeech/aios/sdk/SDKNode$1;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v11}, Lcom/aispeech/aios/sdk/SDKNode;->access$500(Lcom/aispeech/aios/sdk/SDKNode;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aispeech/aios/common/manage/AIOSManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v9, v5}, Lcom/aispeech/aios/common/manage/AIOSManager;->handleMessage(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
