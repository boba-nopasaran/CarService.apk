.class Lcom/amap/api/mapcore/p$1;
.super Ljava/lang/Object;
.source "MapOverlayImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/p;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/p;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/p$1;->a:Lcom/amap/api/mapcore/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/p$1;->a:Lcom/amap/api/mapcore/p;

    invoke-static {v0}, Lcom/amap/api/mapcore/p;->a(Lcom/amap/api/mapcore/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
