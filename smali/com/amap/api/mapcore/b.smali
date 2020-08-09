.class public Lcom/amap/api/mapcore/b;
.super Ljava/lang/Object;
.source "AMapGLRenderer.java"

# interfaces
.implements Lcom/amap/api/mapcore/l;


# instance fields
.field protected a:Z

.field private b:Lcom/amap/api/mapcore/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/b;->b:Lcom/amap/api/mapcore/k;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/b;->a:Z

    new-instance v0, Lcom/amap/api/mapcore/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/mapcore/a;-><init>(Lcom/amap/api/mapcore/l;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/b;->b:Lcom/amap/api/mapcore/k;

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore/k;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/b;->b:Lcom/amap/api/mapcore/k;

    return-object v0
.end method

.method public a(Lcom/amap/api/col/bs;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/amap/api/col/bt;)V
    .locals 0

    return-void
.end method

.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 0

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 0

    return-void
.end method
