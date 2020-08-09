.class Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder$1;
.super Ljava/lang/Object;
.source "DeviceAPIBinder.java"

# interfaces
.implements Lcom/jinglingtec/ijiazublctor/sdk/listener/DeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;


# direct methods
.method constructor <init>(Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder$1;->this$0:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceConnected(Z)V
    .locals 6

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder$1;->this$0:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;

    invoke-static {v3}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->access$100(Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder$1;->this$0:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;

    invoke-static {v3}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->access$100(Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;

    invoke-interface {v3, p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;->onBleConnected(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public onDeviceEvent(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;)V
    .locals 7

    const-string v4, "DeviceAPIBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ble_debug]onDeviceEvent event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder$1;->this$0:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->access$100(Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder$1;->this$0:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->access$100(Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v6, "120700003"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;

    invoke-interface {v4, p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;->onIjiazuDeviceEvent(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catch_1
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :cond_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public onDeviceKeyEvent(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;)V
    .locals 6

    const-string v3, "DeviceAPIBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ble_debug]onDeviceKeyEvent event 123 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "DeviceAPIBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ble_debug]onDeviceKeyEvent currentAppID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder$1;->this$0:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;

    invoke-static {v3}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->access$100(Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder$1;->this$0:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;

    invoke-virtual {v3}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->isSupportedDevice()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    monitor-exit v4

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    iget-object v3, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder$1;->this$0:Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;

    invoke-static {v3}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->access$100(Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :try_start_2
    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v5, "120700003"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;

    invoke-interface {v3, p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;->onIjiazuKeyEvent(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :cond_2
    :try_start_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;

    invoke-interface {v3, p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IDeviceCallback;->onIjiazuKeyEvent(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method
