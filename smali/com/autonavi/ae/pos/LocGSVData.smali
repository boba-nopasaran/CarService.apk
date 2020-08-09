.class public Lcom/autonavi/ae/pos/LocGSVData;
.super Ljava/lang/Object;
.source "LocGSVData.java"


# instance fields
.field public nAzimuth:[I

.field public nElevation:[I

.field public nNum:I

.field public nRPN:[I

.field public nSNR:[I

.field public nType:I

.field public ticktime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/autonavi/ae/pos/LocGSVData;->nRPN:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/autonavi/ae/pos/LocGSVData;->nElevation:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/autonavi/ae/pos/LocGSVData;->nAzimuth:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/autonavi/ae/pos/LocGSVData;->nSNR:[I

    return-void
.end method
