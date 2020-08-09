.class public Lcom/autonavi/ae/route/route/RouteLink;
.super Ljava/lang/Object;
.source "RouteLink.java"


# instance fields
.field private mPtr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native getLinkCoorOffset()I
.end method


# virtual methods
.method public native get3DEndLinkIndex()I
.end method

.method public native get3DStartLinkIndex()I
.end method

.method public native getCurbParkingFlag()I
.end method

.method public native getLinkCityCode()I
.end method

.method public native getLinkCoor()[D
.end method

.method public native getLinkCoorNum()I
.end method

.method public native getLinkFormWay()Lcom/autonavi/ae/route/model/FormWay;
.end method

.method public native getLinkIsRestrict()I
.end method

.method public native getLinkOwnership()I
.end method

.method public native getLinkRoadClass()I
.end method

.method public native getLinkRoadName()Ljava/lang/String;
.end method

.method public native getLinkTrafficStatus()Lcom/autonavi/ae/route/model/LinkStatus;
.end method

.method public native getLinkType()I
.end method

.method public native getTopoId64()J
.end method

.method public native haveTrafficLights()Z
.end method

.method public native isToll()Z
.end method
