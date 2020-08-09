.class Lcom/amap/api/mapcore/a$22;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a;->a(ILjavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
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

    iput-object p1, p0, Lcom/amap/api/mapcore/a$22;->b:Lcom/amap/api/mapcore/a;

    iput p2, p0, Lcom/amap/api/mapcore/a$22;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a$22;->b:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->n(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a$22;->b:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->n(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/a$22;->a:I

    invoke-interface {v0, v1}, Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;->onSurfaceCreated(I)V

    :cond_0
    return-void
.end method
