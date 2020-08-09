.class public Lcom/autonavi/ae/pos/LocObjectId;
.super Ljava/lang/Object;
.source "LocObjectId.java"


# instance fields
.field public adareaID:S

.field public layerID:C

.field public meshID:I

.field public objectID:I

.field public rev:C


# direct methods
.method public constructor <init>(CCSII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/autonavi/ae/pos/LocObjectId;->layerID:C

    iput-char p2, p0, Lcom/autonavi/ae/pos/LocObjectId;->rev:C

    iput-short p3, p0, Lcom/autonavi/ae/pos/LocObjectId;->adareaID:S

    iput p4, p0, Lcom/autonavi/ae/pos/LocObjectId;->meshID:I

    iput p5, p0, Lcom/autonavi/ae/pos/LocObjectId;->objectID:I

    return-void
.end method
