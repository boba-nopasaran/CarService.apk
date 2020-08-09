.class public Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;
.super Ljava/lang/Object;
.source "MapSourceGridData.java"


# instance fields
.field public mGridName:Ljava/lang/String;

.field public mIndoorIndex:I

.field public mIndoorVersion:I

.field private mKeyGridName:Ljava/lang/StringBuilder;

.field public mObj:Ljava/lang/Object;

.field public mSourceType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mObj:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mGridName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mSourceType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mObj:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->setGridData(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mObj:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->setGridData(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mObj:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->setGridData(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getGridName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mGridName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyGridName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceType()I
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mSourceType:I

    return v0
.end method

.method public setGridData(Ljava/lang/String;I)V
    .locals 3

    iput-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mGridName:Ljava/lang/String;

    iput p2, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mSourceType:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mGridName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public setGridData(Ljava/lang/String;III)V
    .locals 3

    iput-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mGridName:Ljava/lang/String;

    iput p3, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mIndoorIndex:I

    iput p4, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mIndoorVersion:I

    iput p2, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mSourceType:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mGridName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public setGridData(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iput-object p1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mGridName:Ljava/lang/String;

    iput p3, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mSourceType:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mGridName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mKeyGridName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
