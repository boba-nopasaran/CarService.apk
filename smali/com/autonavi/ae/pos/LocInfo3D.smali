.class public Lcom/autonavi/ae/pos/LocInfo3D;
.super Ljava/lang/Object;
.source "LocInfo3D.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public alt:D

.field public altAcc:D

.field public course:D

.field public courseAcc:D

.field public fromWay:B

.field public height:D

.field public isSimulate:I

.field public isUse:I

.field public linkCur:I

.field public linkType:B

.field public posAcc:D

.field public posCur:I

.field public rev:S

.field public roadDir:I

.field public roadID:I

.field public roadLevel:I

.field public speed:D

.field public stNearRoadId:Lcom/autonavi/ae/pos/LocObjectId;

.field public stPos:Lcom/autonavi/ae/pos/LocMapPoint;

.field public stPosEx:Lcom/autonavi/ae/pos/LocMapPoint64;

.field public stRoadId:Lcom/autonavi/ae/pos/LocObjectId;

.field public turnFlag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIDDDDDDDIIIIBBSII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/ae/pos/LocInfo3D;->isUse:I

    iput p2, p0, Lcom/autonavi/ae/pos/LocInfo3D;->isSimulate:I

    iget-object v2, p0, Lcom/autonavi/ae/pos/LocInfo3D;->stPos:Lcom/autonavi/ae/pos/LocMapPoint;

    iput-object v2, p0, Lcom/autonavi/ae/pos/LocInfo3D;->stPos:Lcom/autonavi/ae/pos/LocMapPoint;

    iget-object v2, p0, Lcom/autonavi/ae/pos/LocInfo3D;->stPosEx:Lcom/autonavi/ae/pos/LocMapPoint64;

    iput-object v2, p0, Lcom/autonavi/ae/pos/LocInfo3D;->stPosEx:Lcom/autonavi/ae/pos/LocMapPoint64;

    iput-wide p3, p0, Lcom/autonavi/ae/pos/LocInfo3D;->course:D

    iput-wide p5, p0, Lcom/autonavi/ae/pos/LocInfo3D;->alt:D

    iput-wide p7, p0, Lcom/autonavi/ae/pos/LocInfo3D;->speed:D

    iput-wide p9, p0, Lcom/autonavi/ae/pos/LocInfo3D;->height:D

    iput-wide p11, p0, Lcom/autonavi/ae/pos/LocInfo3D;->posAcc:D

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/autonavi/ae/pos/LocInfo3D;->courseAcc:D

    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/autonavi/ae/pos/LocInfo3D;->altAcc:D

    move/from16 v0, p17

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo3D;->roadLevel:I

    move/from16 v0, p18

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo3D;->turnFlag:I

    move/from16 v0, p19

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo3D;->roadDir:I

    iget-object v2, p0, Lcom/autonavi/ae/pos/LocInfo3D;->stRoadId:Lcom/autonavi/ae/pos/LocObjectId;

    iput-object v2, p0, Lcom/autonavi/ae/pos/LocInfo3D;->stRoadId:Lcom/autonavi/ae/pos/LocObjectId;

    iget-object v2, p0, Lcom/autonavi/ae/pos/LocInfo3D;->stNearRoadId:Lcom/autonavi/ae/pos/LocObjectId;

    iput-object v2, p0, Lcom/autonavi/ae/pos/LocInfo3D;->stNearRoadId:Lcom/autonavi/ae/pos/LocObjectId;

    move/from16 v0, p20

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo3D;->roadID:I

    move/from16 v0, p21

    iput-byte v0, p0, Lcom/autonavi/ae/pos/LocInfo3D;->fromWay:B

    move/from16 v0, p22

    iput-byte v0, p0, Lcom/autonavi/ae/pos/LocInfo3D;->linkType:B

    move/from16 v0, p23

    iput-short v0, p0, Lcom/autonavi/ae/pos/LocInfo3D;->rev:S

    move/from16 v0, p24

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo3D;->linkCur:I

    move/from16 v0, p25

    iput v0, p0, Lcom/autonavi/ae/pos/LocInfo3D;->posCur:I

    return-void
.end method


# virtual methods
.method public setObjectValue(Lcom/autonavi/ae/pos/LocMapPoint;Lcom/autonavi/ae/pos/LocMapPoint64;Lcom/autonavi/ae/pos/LocObjectId;Lcom/autonavi/ae/pos/LocObjectId;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/pos/LocInfo3D;->stPos:Lcom/autonavi/ae/pos/LocMapPoint;

    iput-object p2, p0, Lcom/autonavi/ae/pos/LocInfo3D;->stPosEx:Lcom/autonavi/ae/pos/LocMapPoint64;

    iput-object p3, p0, Lcom/autonavi/ae/pos/LocInfo3D;->stRoadId:Lcom/autonavi/ae/pos/LocObjectId;

    iput-object p4, p0, Lcom/autonavi/ae/pos/LocInfo3D;->stNearRoadId:Lcom/autonavi/ae/pos/LocObjectId;

    return-void
.end method
