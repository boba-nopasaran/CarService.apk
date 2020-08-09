.class public Lcom/amap/api/navi/model/AMapRestrictionInfo;
.super Ljava/lang/Object;
.source "AMapRestrictionInfo.java"


# instance fields
.field private descLen:I

.field private restrictionDesc:Ljava/lang/String;

.field private restrictionTitle:Ljava/lang/String;

.field private titleLen:I

.field private titleType:I


# direct methods
.method public constructor <init>(Lcom/autonavi/ae/route/model/RestrictionInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/autonavi/ae/route/model/RestrictionInfo;->restrictionTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/navi/model/AMapRestrictionInfo;->restrictionTitle:Ljava/lang/String;

    iget-object v0, p1, Lcom/autonavi/ae/route/model/RestrictionInfo;->restrictionDesc:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/navi/model/AMapRestrictionInfo;->restrictionDesc:Ljava/lang/String;

    iget v0, p1, Lcom/autonavi/ae/route/model/RestrictionInfo;->titleLen:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapRestrictionInfo;->titleLen:I

    iget v0, p1, Lcom/autonavi/ae/route/model/RestrictionInfo;->descLen:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapRestrictionInfo;->descLen:I

    iget v0, p1, Lcom/autonavi/ae/route/model/RestrictionInfo;->titleType:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapRestrictionInfo;->titleType:I

    goto :goto_0
.end method


# virtual methods
.method public getDescLen()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapRestrictionInfo;->descLen:I

    return v0
.end method

.method public getRestrictionDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapRestrictionInfo;->restrictionDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getRestrictionTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapRestrictionInfo;->restrictionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleLen()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapRestrictionInfo;->titleLen:I

    return v0
.end method

.method public getTitleType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapRestrictionInfo;->titleType:I

    return v0
.end method
