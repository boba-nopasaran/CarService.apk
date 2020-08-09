.class Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder$1;
.super Ljava/lang/Object;
.source "IjiazuAPIBinder.java"

# interfaces
.implements Lcom/jinglingtec/ijiazublctor/sdk/listener/IjiazuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;


# direct methods
.method constructor <init>(Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder$1;->this$0:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(ZLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[yyn]onInit "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder$1;->this$0:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->access$100(Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder$1;->this$0:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->access$100(Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;)Ljava/util/HashMap;

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

    invoke-virtual {v4, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v6, -0x1

    if-le v4, v6, :cond_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;

    invoke-interface {v4, p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;->onInit(Z)V
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

.method public onStatusChange(ZLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[yyn]onStatusChange "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder$1;->this$0:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->access$100(Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder$1;->this$0:Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->access$100(Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;)Ljava/util/HashMap;

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

    invoke-virtual {v4, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v6, -0x1

    if-le v4, v6, :cond_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;

    invoke-interface {v4, p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;->onStatusChange(Z)V
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
