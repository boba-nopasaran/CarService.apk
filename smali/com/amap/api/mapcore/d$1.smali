.class Lcom/amap/api/mapcore/d$1;
.super Ljava/lang/Object;
.source "AMapGLTextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/d;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/d;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/d$1;->a:Lcom/amap/api/mapcore/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/d$1;->a:Lcom/amap/api/mapcore/d;

    invoke-static {v0}, Lcom/amap/api/mapcore/d;->a(Lcom/amap/api/mapcore/d;)Lcom/autonavi/ae/gmap/GLMapRender;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/d$1;->a:Lcom/amap/api/mapcore/d;

    invoke-static {v0}, Lcom/amap/api/mapcore/d;->a(Lcom/amap/api/mapcore/d;)Lcom/autonavi/ae/gmap/GLMapRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->onSurfaceDestory()V

    :cond_0
    return-void
.end method
