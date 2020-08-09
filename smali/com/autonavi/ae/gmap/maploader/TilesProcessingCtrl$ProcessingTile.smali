.class Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl$ProcessingTile;
.super Ljava/lang/Object;
.source "TilesProcessingCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessingTile"
.end annotation


# instance fields
.field public mCreateTime:J

.field public mKeyName:Ljava/lang/String;

.field final synthetic this$0:Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;


# direct methods
.method public constructor <init>(Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl$ProcessingTile;->this$0:Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl$ProcessingTile;->mCreateTime:J

    iput-object p2, p0, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl$ProcessingTile;->mKeyName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl$ProcessingTile;->mCreateTime:J

    return-void
.end method
