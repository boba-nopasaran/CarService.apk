.class public Lcom/autonavi/ae/route/route/RouteSegment;
.super Ljava/lang/Object;
.source "RouteSegment.java"


# instance fields
.field private mPtr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeGetLink(I)Lcom/autonavi/ae/route/route/RouteLink;
.end method


# virtual methods
.method public native getAssistAction()I
.end method

.method public getLink(I)Lcom/autonavi/ae/route/route/RouteLink;
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/ae/route/route/RouteSegment;->nativeGetLink(I)Lcom/autonavi/ae/route/route/RouteLink;

    move-result-object v0

    return-object v0
.end method

.method public native getLinkCount()I
.end method

.method public native getMainAction()I
.end method

.method public native getSegChargeLength()I
.end method

.method public native getSegCoor()[D
.end method

.method public native getSegLength()I
.end method

.method public native getSegTime()I
.end method

.method public native getSegTollCost()I
.end method

.method public native getSegTollPathName()Ljava/lang/String;
.end method

.method public getSegmentId()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/route/route/RouteSegment;->mPtr:J

    return-wide v0
.end method

.method public native getStartPoint()Lcom/autonavi/ae/route/model/GeoPoint;
.end method

.method public native getTrafficLightNum()I
.end method

.method public native isRightPassArea()Z
.end method
