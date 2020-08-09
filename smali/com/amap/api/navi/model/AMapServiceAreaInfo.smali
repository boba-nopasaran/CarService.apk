.class public Lcom/amap/api/navi/model/AMapServiceAreaInfo;
.super Ljava/lang/Object;
.source "AMapServiceAreaInfo.java"


# instance fields
.field private name:Ljava/lang/String;

.field private remainDist:I

.field private type:I


# direct methods
.method public constructor <init>(Lcom/autonavi/ae/guide/model/ServiceAreaInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/autonavi/ae/guide/model/ServiceAreaInfo;->remainDist:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapServiceAreaInfo;->remainDist:I

    iget v0, p1, Lcom/autonavi/ae/guide/model/ServiceAreaInfo;->type:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapServiceAreaInfo;->type:I

    iget-object v0, p1, Lcom/autonavi/ae/guide/model/ServiceAreaInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/navi/model/AMapServiceAreaInfo;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapServiceAreaInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainDist()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapServiceAreaInfo;->remainDist:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapServiceAreaInfo;->type:I

    return v0
.end method
