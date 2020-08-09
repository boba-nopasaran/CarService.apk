.class public Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;
.super Ljava/lang/Object;
.source "TilesProcessingCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl$ProcessingTile;
    }
.end annotation


# static fields
.field private static final EXPIRED_MAX_TIME:I = 0x3c


# instance fields
.field private mProcessingTiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl$ProcessingTile;",
            ">;"
        }
    .end annotation
.end field

.field private mRequireSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;->mProcessingTiles:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;->mRequireSize:I

    return-void
.end method


# virtual methods
.method public declared-synchronized addProcessingTile(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;->mProcessingTiles:Ljava/util/Hashtable;

    new-instance v1, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl$ProcessingTile;

    invoke-direct {v1, p0, p1}, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl$ProcessingTile;-><init>(Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearAll()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;->mProcessingTiles:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public declared-synchronized getSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;->mProcessingTiles:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isProcessing(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;->mProcessingTiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl$ProcessingTile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized removeTile(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;->mProcessingTiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
