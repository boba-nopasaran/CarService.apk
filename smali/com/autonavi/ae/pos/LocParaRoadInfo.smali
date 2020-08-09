.class public Lcom/autonavi/ae/pos/LocParaRoadInfo;
.super Ljava/lang/Object;
.source "LocParaRoadInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public nType:I

.field public stRoadId:Lcom/autonavi/ae/pos/LocObjectId;

.field public u8FromWay:C

.field public u8LinkType:C

.field public unRoadID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/ae/pos/LocObjectId;IICC)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/ae/pos/LocParaRoadInfo;->stRoadId:Lcom/autonavi/ae/pos/LocObjectId;

    iput p2, p0, Lcom/autonavi/ae/pos/LocParaRoadInfo;->unRoadID:I

    iput p3, p0, Lcom/autonavi/ae/pos/LocParaRoadInfo;->nType:I

    iput-char p4, p0, Lcom/autonavi/ae/pos/LocParaRoadInfo;->u8FromWay:C

    iput-char p5, p0, Lcom/autonavi/ae/pos/LocParaRoadInfo;->u8LinkType:C

    return-void
.end method
