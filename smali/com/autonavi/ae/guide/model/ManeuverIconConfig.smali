.class public Lcom/autonavi/ae/guide/model/ManeuverIconConfig;
.super Ljava/lang/Object;
.source "ManeuverIconConfig.java"


# instance fields
.field public arrowColor:I

.field public bgColor:I

.field public height:I

.field public maneuverId:I

.field public roadColor:I

.field public segmentIdx:I

.field public width:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/ae/guide/model/ManeuverIconConfig;->width:I

    iput p2, p0, Lcom/autonavi/ae/guide/model/ManeuverIconConfig;->height:I

    iput p3, p0, Lcom/autonavi/ae/guide/model/ManeuverIconConfig;->bgColor:I

    iput p4, p0, Lcom/autonavi/ae/guide/model/ManeuverIconConfig;->roadColor:I

    iput p5, p0, Lcom/autonavi/ae/guide/model/ManeuverIconConfig;->arrowColor:I

    iput p6, p0, Lcom/autonavi/ae/guide/model/ManeuverIconConfig;->maneuverId:I

    iput p7, p0, Lcom/autonavi/ae/guide/model/ManeuverIconConfig;->segmentIdx:I

    return-void
.end method
