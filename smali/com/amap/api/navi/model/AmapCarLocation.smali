.class public Lcom/amap/api/navi/model/AmapCarLocation;
.super Ljava/lang/Object;
.source "AmapCarLocation.java"


# instance fields
.field public m_CarDir:I

.field public m_Latitude:D

.field public m_Longitude:D

.field public m_MatchStatus:I

.field public m_Speed:I


# direct methods
.method public constructor <init>(Lcom/autonavi/rtbt/CarLocation;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/autonavi/rtbt/CarLocation;->m_Longitude:D

    iput-wide v0, p0, Lcom/amap/api/navi/model/AmapCarLocation;->m_Longitude:D

    iget-wide v0, p1, Lcom/autonavi/rtbt/CarLocation;->m_Latitude:D

    iput-wide v0, p0, Lcom/amap/api/navi/model/AmapCarLocation;->m_Latitude:D

    iget v0, p1, Lcom/autonavi/rtbt/CarLocation;->m_CarDir:I

    iput v0, p0, Lcom/amap/api/navi/model/AmapCarLocation;->m_CarDir:I

    iget v0, p1, Lcom/autonavi/rtbt/CarLocation;->m_Speed:I

    iput v0, p0, Lcom/amap/api/navi/model/AmapCarLocation;->m_Speed:I

    iget v0, p1, Lcom/autonavi/rtbt/CarLocation;->m_MatchStatus:I

    iput v0, p0, Lcom/amap/api/navi/model/AmapCarLocation;->m_MatchStatus:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/wtbt/CarLocation;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/autonavi/wtbt/CarLocation;->m_Longitude:D

    iput-wide v0, p0, Lcom/amap/api/navi/model/AmapCarLocation;->m_Longitude:D

    iget-wide v0, p1, Lcom/autonavi/wtbt/CarLocation;->m_Latitude:D

    iput-wide v0, p0, Lcom/amap/api/navi/model/AmapCarLocation;->m_Latitude:D

    iget v0, p1, Lcom/autonavi/wtbt/CarLocation;->m_CarDir:I

    iput v0, p0, Lcom/amap/api/navi/model/AmapCarLocation;->m_CarDir:I

    iget v0, p1, Lcom/autonavi/wtbt/CarLocation;->m_Speed:I

    iput v0, p0, Lcom/amap/api/navi/model/AmapCarLocation;->m_Speed:I

    iget v0, p1, Lcom/autonavi/wtbt/CarLocation;->m_MatchStatus:I

    iput v0, p0, Lcom/amap/api/navi/model/AmapCarLocation;->m_MatchStatus:I

    return-void
.end method
