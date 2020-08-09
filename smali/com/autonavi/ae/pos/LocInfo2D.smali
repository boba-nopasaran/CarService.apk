.class public Lcom/autonavi/ae/pos/LocInfo2D;
.super Ljava/lang/Object;
.source "LocInfo2D.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public alt:D

.field public altAcc:D

.field public bindFlag:B

.field public course:D

.field public courseAcc:D

.field public day:I

.field public distFromHeadLine:D

.field public fromWay:B

.field public hour:I

.field public isHLocData:I

.field public isOnGuideRoad:B

.field public isSimulate:I

.field public isUse:I

.field public lineType:B

.field public linkCur:I

.field public linkType:B

.field public minute:I

.field public mouth:I

.field public nearRoadId:Lcom/autonavi/ae/pos/LocObjectId;

.field public posAcc:D

.field public postCur:I

.field public proType:B

.field public rev:S

.field public roadDir:I

.field public roadID:I

.field public roadId:Lcom/autonavi/ae/pos/LocObjectId;

.field public roadLevel:I

.field public second:I

.field public segIdx:I

.field public segmCur:I

.field public showPosAcc:D

.field public sourType:I

.field public speed:D

.field public stDoorInPos:Lcom/autonavi/ae/pos/LocMapPoint;

.field public stPos:Lcom/autonavi/ae/pos/LocMapPoint;

.field public stPrjPos:Lcom/autonavi/ae/pos/LocMapPoint;

.field public strFloor:Ljava/lang/String;

.field public strPoiid:Ljava/lang/String;

.field public ticktime:J

.field public turnFlag:I

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIDDDDDDDIIIIIBBBBBBSDIIIIJIIIIII)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/ae/pos/LocInfo2D;->isUse:I

    iput p2, p0, Lcom/autonavi/ae/pos/LocInfo2D;->isSimulate:I

    iput p3, p0, Lcom/autonavi/ae/pos/LocInfo2D;->sourType:I

    iget-object v2, p0, Lcom/autonavi/ae/pos/LocInfo2D;->stPos:Lcom/autonavi/ae/pos/LocMapPoint;

    iput-object v2, p0, Lcom/autonavi/ae/pos/LocInfo2D;->stPos:Lcom/autonavi/ae/pos/LocMapPoint;

    iget-object v2, p0, Lcom/autonavi/ae/pos/LocInfo2D;->stPrjPos:Lcom/autonavi/ae/pos/LocMapPoint;

    iput-object v2, p0, Lcom/autonavi/ae/pos/LocInfo2D;->stPrjPos:Lcom/autonavi/ae/pos/LocMapPoint;

    iput-wide p4, p0, Lcom/autonavi/ae/pos/LocInfo2D;->course:D

    iput-wide p6, p0, Lcom/autonavi/ae/pos/LocInfo2D;->alt:D

    iput-wide p8, p0, Lcom/autonavi/ae/pos/LocInfo2D;->speed:D

    iput-wide p10, p0, Lcom/autonavi/ae/pos/LocInfo2D;->posAcc:D

    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->showPosAcc:D

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->courseAcc:D

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->altAcc:D

    move/from16 v0, p18

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->roadLevel:I

    move/from16 v0, p19

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->turnFlag:I

    move/from16 v0, p20

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->roadDir:I

    iget-object v2, p0, Lcom/autonavi/ae/pos/LocInfo2D;->roadId:Lcom/autonavi/ae/pos/LocObjectId;

    iput-object v2, p0, Lcom/autonavi/ae/pos/LocInfo2D;->roadId:Lcom/autonavi/ae/pos/LocObjectId;

    iget-object v2, p0, Lcom/autonavi/ae/pos/LocInfo2D;->nearRoadId:Lcom/autonavi/ae/pos/LocObjectId;

    iput-object v2, p0, Lcom/autonavi/ae/pos/LocInfo2D;->nearRoadId:Lcom/autonavi/ae/pos/LocObjectId;

    move/from16 v0, p21

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->roadID:I

    move/from16 v0, p22

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->segIdx:I

    move/from16 v0, p23

    iput-byte v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->fromWay:B

    move/from16 v0, p24

    iput-byte v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->lineType:B

    move/from16 v0, p25

    iput-byte v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->linkType:B

    move/from16 v0, p26

    iput-byte v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->proType:B

    move/from16 v0, p27

    iput-byte v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->bindFlag:B

    move/from16 v0, p28

    iput-byte v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->isOnGuideRoad:B

    move/from16 v0, p29

    iput-short v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->rev:S

    move-wide/from16 v0, p30

    iput-wide v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->distFromHeadLine:D

    move/from16 v0, p32

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->isHLocData:I

    move/from16 v0, p33

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->segmCur:I

    move/from16 v0, p34

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->linkCur:I

    move/from16 v0, p35

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->postCur:I

    move-wide/from16 v0, p36

    iput-wide v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->ticktime:J

    move/from16 v0, p38

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->year:I

    iget v2, p0, Lcom/autonavi/ae/pos/LocInfo2D;->mouth:I

    iput v2, p0, Lcom/autonavi/ae/pos/LocInfo2D;->mouth:I

    move/from16 v0, p40

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->day:I

    move/from16 v0, p41

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->hour:I

    move/from16 v0, p42

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->minute:I

    move/from16 v0, p43

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo2D;->second:I

    return-void
.end method


# virtual methods
.method public setObjectValue(Lcom/autonavi/ae/pos/LocMapPoint;Lcom/autonavi/ae/pos/LocMapPoint;Lcom/autonavi/ae/pos/LocObjectId;Lcom/autonavi/ae/pos/LocObjectId;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/pos/LocInfo2D;->stPos:Lcom/autonavi/ae/pos/LocMapPoint;

    iput-object p2, p0, Lcom/autonavi/ae/pos/LocInfo2D;->stPrjPos:Lcom/autonavi/ae/pos/LocMapPoint;

    iput-object p3, p0, Lcom/autonavi/ae/pos/LocInfo2D;->roadId:Lcom/autonavi/ae/pos/LocObjectId;

    iput-object p4, p0, Lcom/autonavi/ae/pos/LocInfo2D;->nearRoadId:Lcom/autonavi/ae/pos/LocObjectId;

    return-void
.end method

.method public setStDoorInPos(Lcom/autonavi/ae/pos/LocMapPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/pos/LocInfo2D;->stDoorInPos:Lcom/autonavi/ae/pos/LocMapPoint;

    return-void
.end method

.method public setStringValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/pos/LocInfo2D;->strPoiid:Ljava/lang/String;

    iput-object p2, p0, Lcom/autonavi/ae/pos/LocInfo2D;->strFloor:Ljava/lang/String;

    return-void
.end method
