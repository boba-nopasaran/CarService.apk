.class public Lcom/autonavi/ae/pos/LocParallelRoads;
.super Ljava/lang/Object;
.source "LocParallelRoads.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public nCount:I

.field public nFlag:I

.field public nStatus:I

.field public paraRoads:[Lcom/autonavi/ae/pos/LocParaRoadInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III[Lcom/autonavi/ae/pos/LocParaRoadInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/ae/pos/LocParallelRoads;->nStatus:I

    iput p2, p0, Lcom/autonavi/ae/pos/LocParallelRoads;->nFlag:I

    iput p3, p0, Lcom/autonavi/ae/pos/LocParallelRoads;->nCount:I

    iput-object p4, p0, Lcom/autonavi/ae/pos/LocParallelRoads;->paraRoads:[Lcom/autonavi/ae/pos/LocParaRoadInfo;

    return-void
.end method
