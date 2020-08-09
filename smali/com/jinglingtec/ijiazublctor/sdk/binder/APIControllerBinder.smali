.class public Lcom/jinglingtec/ijiazublctor/sdk/binder/APIControllerBinder;
.super Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController$Stub;
.source "APIControllerBinder.java"


# instance fields
.field private binders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IAPIController$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/APIControllerBinder;->binders:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/jinglingtec/ijiazublctor/sdk/binder/APIControllerBinder;->initBinder()V

    return-void
.end method

.method private initBinder()V
    .locals 3

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/APIControllerBinder;->binders:Ljava/util/HashMap;

    const-string v1, "ijiazu"

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/APIControllerBinder;->binders:Ljava/util/HashMap;

    const-string v1, "ijiazu_device"

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public requestInterface(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/binder/APIControllerBinder;->binders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public setForeground(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jinglingtec/ijiazublctor/sdk/binder/IjiazuAPIBinder;->setForeground(Ljava/lang/String;)V

    invoke-static {}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->getInstance()Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jinglingtec/ijiazublctor/sdk/binder/DeviceAPIBinder;->setForeground(Ljava/lang/String;)V

    return-void
.end method
