.class public Lcom/amap/api/navi/model/AMapNaviGuide;
.super Ljava/lang/Object;
.source "AMapNaviGuide.java"


# static fields
.field public static IconTypeArrivedDestination:I

.field public static IconTypeArrivedServiceArea:I

.field public static IconTypeArrivedTollGate:I

.field public static IconTypeArrivedTunnel:I

.field public static IconTypeArrivedWayPoint:I

.field public static IconTypeCrosswalk:I

.field public static IconTypeDefault:I

.field public static IconTypeEnterRoundabout:I

.field public static IconTypeLeft:I

.field public static IconTypeLeftAndAround:I

.field public static IconTypeLeftBack:I

.field public static IconTypeLeftFront:I

.field public static IconTypeLift:I

.field public static IconTypeNone:I

.field public static IconTypeOutRoundabout:I

.field public static IconTypeOverpass:I

.field public static IconTypePark:I

.field public static IconTypeRight:I

.field public static IconTypeRightBack:I

.field public static IconTypeRightFront:I

.field public static IconTypeSquare:I

.field public static IconTypeStaircase:I

.field public static IconTypeStraight:I

.field public static IconTypeUnderpass:I


# instance fields
.field private coord:Lcom/amap/api/navi/model/NaviLatLng;

.field private m_Icon:I

.field private m_Length:I

.field private m_Name:Ljava/lang/String;

.field private m_UseTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeNone:I

    const/4 v0, 0x1

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeDefault:I

    const/4 v0, 0x2

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeLeft:I

    const/4 v0, 0x3

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeRight:I

    const/4 v0, 0x4

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeLeftFront:I

    const/4 v0, 0x5

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeRightFront:I

    const/4 v0, 0x6

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeLeftBack:I

    const/4 v0, 0x7

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeRightBack:I

    const/16 v0, 0x8

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeLeftAndAround:I

    const/16 v0, 0x9

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeStraight:I

    const/16 v0, 0xa

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeArrivedWayPoint:I

    const/16 v0, 0xb

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeEnterRoundabout:I

    const/16 v0, 0xc

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeOutRoundabout:I

    const/16 v0, 0xd

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeArrivedServiceArea:I

    const/16 v0, 0xe

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeArrivedTollGate:I

    const/16 v0, 0xf

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeArrivedDestination:I

    const/16 v0, 0x10

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeArrivedTunnel:I

    const/16 v0, 0x11

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeCrosswalk:I

    const/16 v0, 0x12

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeOverpass:I

    const/16 v0, 0x13

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeUnderpass:I

    const/16 v0, 0x14

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeSquare:I

    const/16 v0, 0x15

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypePark:I

    const/16 v0, 0x16

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeStaircase:I

    const/16 v0, 0x17

    sput v0, Lcom/amap/api/navi/model/AMapNaviGuide;->IconTypeLift:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/navi/model/NaviGuide;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/amap/api/navi/model/NaviGuide;->m_Length:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapNaviGuide;->m_Length:I

    iget v0, p1, Lcom/amap/api/navi/model/NaviGuide;->m_Icon:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapNaviGuide;->m_Icon:I

    iget-object v0, p1, Lcom/amap/api/navi/model/NaviGuide;->m_Name:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/navi/model/AMapNaviGuide;->m_Name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviGuide;->getCoord()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/model/AMapNaviGuide;->coord:Lcom/amap/api/navi/model/NaviLatLng;

    return-void
.end method


# virtual methods
.method public getCoord()Lcom/amap/api/navi/model/NaviLatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviGuide;->coord:Lcom/amap/api/navi/model/NaviLatLng;

    return-object v0
.end method

.method public getIconType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviGuide;->m_Icon:I

    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviGuide;->m_Length:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviGuide;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviGuide;->m_UseTime:I

    return v0
.end method

.method setCoord(Lcom/amap/api/navi/model/NaviLatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapNaviGuide;->coord:Lcom/amap/api/navi/model/NaviLatLng;

    return-void
.end method

.method setIconType(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviGuide;->m_Icon:I

    return-void
.end method

.method setLength(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviGuide;->m_Length:I

    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapNaviGuide;->m_Name:Ljava/lang/String;

    return-void
.end method

.method setTime(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviGuide;->m_UseTime:I

    return-void
.end method
