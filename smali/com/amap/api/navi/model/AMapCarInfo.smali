.class public Lcom/amap/api/navi/model/AMapCarInfo;
.super Ljava/lang/Object;
.source "AMapCarInfo.java"


# instance fields
.field private VehicleLoadSwitch:Z

.field private isRestriction:Z

.field private mCarNumber:Ljava/lang/String;

.field private mCarType:Ljava/lang/String;

.field private mVehicleHeight:Ljava/lang/String;

.field private mVehicleLoad:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCarNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapCarInfo;->mCarNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCarType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapCarInfo;->mCarType:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleHeight()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapCarInfo;->mVehicleHeight:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleLoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapCarInfo;->mVehicleLoad:Ljava/lang/String;

    return-object v0
.end method

.method public isRestriction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/model/AMapCarInfo;->isRestriction:Z

    return v0
.end method

.method public isVehicleLoadSwitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/model/AMapCarInfo;->VehicleLoadSwitch:Z

    return v0
.end method

.method public setCarNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapCarInfo;->mCarNumber:Ljava/lang/String;

    return-void
.end method

.method public setCarType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapCarInfo;->mCarType:Ljava/lang/String;

    return-void
.end method

.method public setRestriction(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/navi/model/AMapCarInfo;->isRestriction:Z

    return-void
.end method

.method public setVehicleHeight(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapCarInfo;->mVehicleHeight:Ljava/lang/String;

    return-void
.end method

.method public setVehicleLoad(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapCarInfo;->mVehicleLoad:Ljava/lang/String;

    return-void
.end method

.method public setVehicleLoadSwitch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/navi/model/AMapCarInfo;->VehicleLoadSwitch:Z

    return-void
.end method
