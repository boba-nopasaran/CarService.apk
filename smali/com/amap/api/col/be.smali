.class public Lcom/amap/api/col/be;
.super Ljava/lang/Object;
.source "PopupOverlay.java"

# interfaces
.implements Lcom/amap/api/col/aq;
.implements Lcom/amap/api/col/at;
.implements Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Landroid/graphics/Bitmap;

.field private C:Z

.field private D:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field private E:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field private F:Z

.field private G:Z

.field a:Lcom/amap/api/mapcore/k;

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

.field private d:Lcom/amap/api/col/ar;

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/autonavi/amap/mapcore/FPoint;

.field private k:Ljava/nio/FloatBuffer;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/nio/FloatBuffer;

.field private o:F

.field private p:F

.field private q:Z

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/graphics/Bitmap;

.field private t:Landroid/graphics/Rect;

.field private u:F

.field private v:F

.field private w:I

.field private x:Z

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/k;Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/amap/api/col/be;->e:Z

    iput v1, p0, Lcom/amap/api/col/be;->f:I

    iput v1, p0, Lcom/amap/api/col/be;->g:I

    iput v1, p0, Lcom/amap/api/col/be;->h:I

    iput v1, p0, Lcom/amap/api/col/be;->i:I

    iput-object v2, p0, Lcom/amap/api/col/be;->k:Ljava/nio/FloatBuffer;

    iput-boolean v3, p0, Lcom/amap/api/col/be;->m:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/col/be;->o:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/col/be;->p:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/be;->t:Landroid/graphics/Rect;

    iput v4, p0, Lcom/amap/api/col/be;->u:F

    iput v4, p0, Lcom/amap/api/col/be;->v:F

    iput-boolean v3, p0, Lcom/amap/api/col/be;->x:Z

    iput-object v2, p0, Lcom/amap/api/col/be;->y:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/amap/api/col/be;->z:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/amap/api/col/be;->A:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/amap/api/col/be;->B:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/amap/api/col/be;->a:Lcom/amap/api/mapcore/k;

    iput-boolean v1, p0, Lcom/amap/api/col/be;->C:Z

    iput-boolean v1, p0, Lcom/amap/api/col/be;->F:Z

    iput-boolean v3, p0, Lcom/amap/api/col/be;->G:Z

    iput-object p2, p0, Lcom/amap/api/col/be;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/amap/api/col/be;->a:Lcom/amap/api/mapcore/k;

    invoke-virtual {p0}, Lcom/amap/api/col/be;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/be;->l:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/be;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/amap/api/col/be;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheQuality(I)V

    invoke-static {p1}, Lcom/amap/api/col/ch;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/be;)Lcom/autonavi/amap/mapcore/animation/GLAnimation;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/be;->D:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/col/be;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/be;->F:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/col/be;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/be;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/be;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/be;->b(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/be;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/be;->b(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private declared-synchronized c(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/amap/api/col/be;->E:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/be;->G:Z

    iput-boolean v1, p0, Lcom/amap/api/col/be;->F:Z

    iget-object v0, p0, Lcom/amap/api/col/be;->E:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->startNow()V

    iget-object v0, p0, Lcom/amap/api/col/be;->E:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    new-instance v1, Lcom/amap/api/col/be$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/be$1;-><init>(Lcom/amap/api/col/be;Z)V

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/be;->D:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/amap/api/col/be;->F:Z

    iget-object v0, p0, Lcom/amap/api/col/be;->D:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->startNow()V

    invoke-direct {p0, p1}, Lcom/amap/api/col/be;->b(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/api/col/be;->b(Z)V

    goto :goto_0
.end method

.method private d(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/be;->z:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/col/be;->c(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/amap/api/col/be;->z:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private e(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/be;->A:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/col/be;->c(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/amap/api/col/be;->A:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private f(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/be;->B:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/col/be;->c(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/amap/api/col/be;->B:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private g(Landroid/graphics/Bitmap;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/api/col/be;->y:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/be;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/be;->A:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/be;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/be;->z:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/be;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/be;->B:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/be;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/be;->y:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private i()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/be;->A:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private j()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/amap/api/col/be;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/be;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/amap/api/col/be;->c(Z)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/amap/api/col/be;->a(Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/be;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/be;->b(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/amap/api/col/be;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/be;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/amap/api/col/be;->c(Z)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/amap/api/col/be;->a(Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/be;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/be;->b(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private l()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/col/be;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/be;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/amap/api/col/be;->r:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/be;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/be;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/be;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/amap/api/col/be;->s:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/be;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/be;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/be;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/be;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/be;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/be;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/be;->A:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/be;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/be;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/be;->B:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/be;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/be;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    return-void
.end method

.method private m()Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amap/api/col/be;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/amap/api/col/be;->t:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/amap/api/col/be;->t:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/amap/api/col/be;->t:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/amap/api/col/be;->o()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private n()Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amap/api/col/be;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/amap/api/col/be;->t:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/amap/api/col/be;->t:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/amap/api/col/be;->t:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/amap/api/col/be;->p()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private o()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/be;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/be;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/be;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private p()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/be;->A:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/be;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/be;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/col/be;->F:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/amap/api/col/be;->h:I

    iput p2, p0, Lcom/amap/api/col/be;->i:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/amap/api/col/be;->f:I

    iput p2, p0, Lcom/amap/api/col/be;->g:I

    iput p1, p0, Lcom/amap/api/col/be;->h:I

    iput p2, p0, Lcom/amap/api/col/be;->i:I

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/be;->y:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/col/be;->c(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/amap/api/col/be;->y:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcom/amap/api/col/ar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/col/ar;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/amap/api/col/ar;->getSnippet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-interface {p1}, Lcom/amap/api/col/ar;->isInfoWindowEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    invoke-interface {v0}, Lcom/amap/api/col/ar;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amap/api/col/ar;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/amap/api/col/be;->b()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/be;->c:Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/amap/api/col/ar;->a(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/col/be;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/be;->c:Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    new-instance v1, Lcom/amap/api/maps/model/Marker;

    iget-object v2, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    invoke-direct {v1, v2}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;->getInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/be;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/be;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/be;->c:Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    new-instance v1, Lcom/amap/api/maps/model/Marker;

    iget-object v2, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    invoke-direct {v1, v2}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;->getInfoWindowClick(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/be;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/be;->d(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/be;->c:Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    new-instance v1, Lcom/amap/api/maps/model/Marker;

    iget-object v2, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    invoke-direct {v1, v2}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;->getOverturnInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/be;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/be;->e(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/be;->c:Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    new-instance v1, Lcom/amap/api/maps/model/Marker;

    iget-object v2, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    invoke-direct {v1, v2}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;->getOverturnInfoWindowClick(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/be;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/be;->f(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "PopupOverlay"

    const-string v2, "getInfoWindow"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/be;->c:Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    return-void
.end method

.method public a(Lcom/autonavi/amap/mapcore/FPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/be;->j:Lcom/autonavi/amap/mapcore/FPoint;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/be;->x:Z

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/amap/api/col/be;->m:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/be;->t:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ch;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/col/be;->setVisible(Z)V

    invoke-direct {p0}, Lcom/amap/api/col/be;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Landroid/graphics/Bitmap;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/be;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/be;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/be;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/be;->y:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/be;->z:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/be;->A:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/be;->B:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/be;->s:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/col/be;->c(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/be;->r:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/be;->s:Landroid/graphics/Bitmap;

    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/be;->C:Z

    iput-object p1, p0, Lcom/amap/api/col/be;->r:Landroid/graphics/Bitmap;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/be;->r:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/col/be;->g(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/be;->s:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/col/be;->c(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/be;->r:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/be;->s:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/col/be;->e:Z

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/be;->remove()V

    invoke-direct {p0}, Lcom/amap/api/col/be;->l()V

    iget-object v0, p0, Lcom/amap/api/col/be;->n:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/be;->n:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/be;->n:Ljava/nio/FloatBuffer;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/be;->k:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/be;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/be;->k:Ljava/nio/FloatBuffer;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/be;->j:Lcom/autonavi/amap/mapcore/FPoint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/be;->w:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PopupOverlay"

    const-string v2, "realDestroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public e()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    invoke-interface {v0}, Lcom/amap/api/col/ar;->j()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/be;->setVisible(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/col/be;->setVisible(Z)V

    iget-object v0, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    invoke-interface {v0}, Lcom/amap/api/col/ar;->h()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    invoke-interface {v0}, Lcom/amap/api/col/ar;->e()I

    move-result v0

    iget-object v3, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    invoke-interface {v3}, Lcom/amap/api/col/ar;->c()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    invoke-interface {v0}, Lcom/amap/api/col/ar;->f()I

    move-result v0

    iget-object v4, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    invoke-interface {v4}, Lcom/amap/api/col/ar;->d()I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/amap/api/col/be;->g()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/amap/api/col/be;->r:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/amap/api/col/be;->y:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/amap/api/col/be;->A:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    :cond_3
    iget-object v4, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    invoke-interface {v4}, Lcom/amap/api/col/ar;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowEnable()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/be;->setVisible(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/amap/api/col/be;->setVisible(Z)V

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowAutoOverturn()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p0}, Lcom/amap/api/col/be;->m()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0}, Lcom/amap/api/col/be;->n()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amap/api/col/be;->f()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    :goto_1
    iget-object v7, p0, Lcom/amap/api/col/be;->a:Lcom/amap/api/mapcore/k;

    invoke-interface {v7, v4, v5}, Lcom/amap/api/mapcore/k;->a(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I

    move-result v5

    iget-object v7, p0, Lcom/amap/api/col/be;->a:Lcom/amap/api/mapcore/k;

    invoke-interface {v7, v4, v6}, Lcom/amap/api/mapcore/k;->a(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I

    move-result v4

    if-lez v5, :cond_7

    if-eqz v4, :cond_5

    if-lez v4, :cond_7

    if-ge v5, v4, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    invoke-interface {v0}, Lcom/amap/api/col/ar;->f()I

    move-result v0

    iget-object v4, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    invoke-interface {v4}, Lcom/amap/api/col/ar;->d()I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/amap/api/col/be;->j()V

    :goto_2
    iget-object v1, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    invoke-interface {v1}, Lcom/amap/api/col/ar;->a()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amap/api/col/be;->a(Lcom/autonavi/amap/mapcore/FPoint;)V

    invoke-virtual {p0, v3, v0}, Lcom/amap/api/col/be;->a(II)V

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v2

    neg-int v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/amap/api/col/be;->k()V

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/amap/api/col/be;->d:Lcom/amap/api/col/ar;

    invoke-interface {v1}, Lcom/amap/api/col/ar;->a()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amap/api/col/be;->a(Lcom/autonavi/amap/mapcore/FPoint;)V

    invoke-virtual {p0, v3, v0}, Lcom/amap/api/col/be;->a(II)V

    invoke-direct {p0}, Lcom/amap/api/col/be;->k()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/col/be;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/be;->x:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/be;->F:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/be;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "PopupOverlay"

    iput-object v0, p0, Lcom/amap/api/col/be;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/be;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/be;->m:Z

    return v0
.end method

.method public remove()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public setInfoWindowAnimation(Lcom/amap/api/maps/model/animation/Animation;Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 0

    return-void
.end method

.method public setInfoWindowAppearAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/be;->E:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/be;->E:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iget-object v1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->clone()Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/be;->D:Lcom/autonavi/amap/mapcore/animation/GLAnimation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PopupOverlay"

    const-string v2, "setInfoWindowDisappearAnimation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iput-object v0, p0, Lcom/amap/api/col/be;->D:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    goto :goto_0
.end method

.method public setInfoWindowBackColor(I)V
    .locals 0

    return-void
.end method

.method public setInfoWindowBackEnable(Z)V
    .locals 0

    return-void
.end method

.method public setInfoWindowBackScale(FF)V
    .locals 0

    return-void
.end method

.method public setInfoWindowDisappearAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/be;->D:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/be;->D:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iget-object v1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->clone()Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/be;->E:Lcom/autonavi/amap/mapcore/animation/GLAnimation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PopupOverlay"

    const-string v2, "setInfoWindowDisappearAnimation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iput-object v0, p0, Lcom/amap/api/col/be;->E:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    goto :goto_0
.end method

.method public setInfoWindowMovingAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/be;->m:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/be;->q:Z

    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/col/be;->m:Z

    return-void
.end method

.method public setZIndex(F)V
    .locals 0

    return-void
.end method

.method public startAnimation()V
    .locals 0

    return-void
.end method
