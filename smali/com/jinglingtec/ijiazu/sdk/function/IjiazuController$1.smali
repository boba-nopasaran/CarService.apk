.class Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;
.super Ljava/lang/Object;
.source "IjiazuController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;


# direct methods
.method constructor <init>(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    const-string v4, "[yyn]IjiazuController"

    const-string v5, "onServiceConnected: register listeners"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {p2}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$002(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;

    iget-object v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    iget-object v5, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v5}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$000(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;

    move-result-object v5

    const-string v6, "ijiazu"

    invoke-interface {v5, v6}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;->requestInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI$Stub;->asInterface(Landroid/os/IBinder;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$102(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    iget-object v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    iget-object v5, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v5}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$000(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;

    move-result-object v5

    const-string v6, "ijiazu_device"

    invoke-interface {v5, v6}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;->requestInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI$Stub;->asInterface(Landroid/os/IBinder;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$202(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;

    iget-object v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    iget-object v5, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v5}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$000(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;

    move-result-object v5

    const-string v6, "ijiazu_tts"

    invoke-interface {v5, v6}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController;->requestInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/ITtsAPI$Stub;->asInterface(Landroid/os/IBinder;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/ITtsAPI;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$302(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;Lcom/jinglingtec/ijiazublctor/sdk/aidl/ITtsAPI;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/ITtsAPI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v4}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$100(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v4}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$400(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    :try_start_1
    const-string v4, "[yyn]IjiazuController"

    const-string v5, "start to registerIjiazuListener"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v4}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$100(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;

    invoke-interface {v6, v4, v5}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;->registerIjiazuListener(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v4}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$400(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_1
    iget-object v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v4}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$200(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v4}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$500(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_2
    const-string v4, "[yyn]IjiazuController"

    const-string v5, "start to registerDeviceListener"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v4}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$200(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;

    invoke-interface {v6, v4, v5}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;->registerDeviceListener(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;

    iget-object v5, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v5}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$200(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;

    move-result-object v5

    invoke-interface {v5}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;->isBleConnect()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;->onBleConnected(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v4}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$500(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v4}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$100(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v4}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$100(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    move-result-object v4

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;->init(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_3
    return-void

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "[yyn]IjiazuController"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v0, v2}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$102(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v0, v2}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$202(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceAPI;

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v0, v2}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$302(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;Lcom/jinglingtec/ijiazublctor/sdk/aidl/ITtsAPI;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/ITtsAPI;

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController$1;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->access$600(Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;)V

    return-void
.end method
