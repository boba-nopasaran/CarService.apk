.class Lcom/amap/api/mapcore/a$34;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a;->afterDrawFrame(ILcom/autonavi/ae/gmap/GLMapState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/amap/api/mapcore/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$34;->b:Lcom/amap/api/mapcore/a;

    iput p2, p0, Lcom/amap/api/mapcore/a$34;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/a$34;->b:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->n(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a$34;->b:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->n(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/a$34;->a:I

    iget-object v2, p0, Lcom/amap/api/mapcore/a$34;->b:Lcom/amap/api/mapcore/a;

    iget v2, v2, Lcom/amap/api/mapcore/a;->k:I

    iget-object v3, p0, Lcom/amap/api/mapcore/a$34;->b:Lcom/amap/api/mapcore/a;

    iget v3, v3, Lcom/amap/api/mapcore/a;->l:I

    invoke-interface {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;->onSurfaceChanged(III)V

    :cond_0
    return-void
.end method
