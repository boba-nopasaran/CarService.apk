.class public abstract Lcom/car/common/CarCloudServicer;
.super Ljava/lang/Object;
.source "CarCloudServicer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract deviceOnline()Z
.end method

.method abstract getCloudId()J
.end method

.method abstract getUserListAsync()Z
.end method

.method abstract getUserStatus()Ljava/lang/String;
.end method

.method abstract registerCallback(Lcom/car/common/ICarCloudCallback;)V
.end method

.method abstract removeUser(Ljava/lang/String;)Z
.end method

.method abstract unregisterCallback(Lcom/car/common/ICarCloudCallback;)V
.end method

.method abstract userOnline(Ljava/lang/String;)Z
.end method
