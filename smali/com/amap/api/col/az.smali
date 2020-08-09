.class public Lcom/amap/api/col/az;
.super Ljava/lang/Object;
.source "MarkerDelegateImp.java"

# interfaces
.implements Lcom/amap/api/col/ar;
.implements Lcom/autonavi/amap/mapcore/interfaces/IAnimation;
.implements Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/az$a;
    }
.end annotation


# static fields
.field public static e:Lcom/amap/api/col/az$a;

.field private static k:I


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:Lcom/amap/api/maps/model/MarkerOptions;

.field private F:Z

.field private G:Z

.field private H:I

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Lcom/autonavi/amap/mapcore/FPoint;

.field private N:Landroid/graphics/Point;

.field private O:F

.field private P:F

.field private Q:Z

.field private R:Ljava/nio/FloatBuffer;

.field private S:Ljava/lang/String;

.field private T:Lcom/amap/api/maps/model/LatLng;

.field private U:Lcom/amap/api/maps/model/LatLng;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:F

.field private Y:F

.field private Z:Z

.field a:[F

.field private aa:Z

.field private ab:Lcom/amap/api/mapcore/p;

.field private ac:Ljava/nio/FloatBuffer;

.field private ad:Ljava/lang/Object;

.field private ae:Z

.field private af:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:I

.field private ak:I

.field private al:Z

.field private am:I

.field private an:I

.field private ao:J

.field private ap:F

.field private aq:F

.field private ar:F

.field private as:F

.field b:[F

.field c:Landroid/graphics/Rect;

.field d:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Ljava/nio/ShortBuffer;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:F

.field private p:F

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Lcom/autonavi/amap/mapcore/FPoint;

.field private y:[F

.field private z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/col/az;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/mapcore/p;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/amap/api/col/az;->l:Z

    iput-boolean v2, p0, Lcom/amap/api/col/az;->m:Z

    iput-boolean v2, p0, Lcom/amap/api/col/az;->n:Z

    iput v5, p0, Lcom/amap/api/col/az;->o:F

    iput v5, p0, Lcom/amap/api/col/az;->p:F

    iput-boolean v2, p0, Lcom/amap/api/col/az;->q:Z

    iput v2, p0, Lcom/amap/api/col/az;->r:I

    iput v2, p0, Lcom/amap/api/col/az;->s:I

    iput v2, p0, Lcom/amap/api/col/az;->t:I

    iput v2, p0, Lcom/amap/api/col/az;->u:I

    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/col/az;->y:[F

    iput-object v4, p0, Lcom/amap/api/col/az;->z:[I

    iput v5, p0, Lcom/amap/api/col/az;->A:F

    iput v3, p0, Lcom/amap/api/col/az;->B:F

    iput v3, p0, Lcom/amap/api/col/az;->C:F

    iput v3, p0, Lcom/amap/api/col/az;->D:F

    iput-boolean v2, p0, Lcom/amap/api/col/az;->F:Z

    iput-boolean v1, p0, Lcom/amap/api/col/az;->G:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/amap/api/col/az;->H:I

    iput-boolean v1, p0, Lcom/amap/api/col/az;->I:Z

    iput-boolean v1, p0, Lcom/amap/api/col/az;->J:Z

    iput-boolean v2, p0, Lcom/amap/api/col/az;->K:Z

    iput-boolean v1, p0, Lcom/amap/api/col/az;->L:Z

    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/az;->M:Lcom/autonavi/amap/mapcore/FPoint;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/az;->N:Landroid/graphics/Point;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/col/az;->a:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/col/az;->b:[F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/amap/api/col/az;->c:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/amap/api/col/az;->Q:Z

    iput-object v4, p0, Lcom/amap/api/col/az;->R:Ljava/nio/FloatBuffer;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/col/az;->X:F

    iput v3, p0, Lcom/amap/api/col/az;->Y:F

    iput-boolean v2, p0, Lcom/amap/api/col/az;->Z:Z

    iput-boolean v1, p0, Lcom/amap/api/col/az;->aa:Z

    iput-boolean v2, p0, Lcom/amap/api/col/az;->ae:Z

    iput-object v4, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-boolean v2, p0, Lcom/amap/api/col/az;->ag:Z

    iput-boolean v2, p0, Lcom/amap/api/col/az;->ah:Z

    iput-boolean v1, p0, Lcom/amap/api/col/az;->ai:Z

    iput v2, p0, Lcom/amap/api/col/az;->aj:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/col/az;->ak:I

    iput-boolean v2, p0, Lcom/amap/api/col/az;->al:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/az;->ao:J

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/amap/api/col/az;->ap:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/az;->aq:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/az;->ar:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/amap/api/col/az;->as:F

    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/api/col/az;->f:I

    iput v2, p0, Lcom/amap/api/col/az;->g:I

    iput v2, p0, Lcom/amap/api/col/az;->h:I

    iput v2, p0, Lcom/amap/api/col/az;->i:I

    iput-object v4, p0, Lcom/amap/api/col/az;->j:Ljava/nio/ShortBuffer;

    iput-object p2, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/az;->setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
    .end array-data
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/amap/api/col/az;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/col/az;->k:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/col/az;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .locals 7

    iput p1, p0, Lcom/amap/api/col/az;->v:I

    iput p2, p0, Lcom/amap/api/col/az;->w:I

    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    iget v1, p0, Lcom/amap/api/col/az;->v:I

    iget v2, p0, Lcom/amap/api/col/az;->w:I

    invoke-static {v1, v2, v0}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iput-object v1, p0, Lcom/amap/api/col/az;->T:Lcom/amap/api/maps/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->b()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/col/az;->v:I

    iget v2, p0, Lcom/amap/api/col/az;->w:I

    iget-object v3, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    return-void
.end method

.method private a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/autonavi/amap/mapcore/MapConfig;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    const v7, 0x8892

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/amap/api/col/az;->e:Lcom/amap/api/col/az$a;

    invoke-virtual {v0}, Lcom/amap/api/col/az$a;->a()V

    sget-object v0, Lcom/amap/api/col/az;->e:Lcom/amap/api/col/az$a;

    iget v0, v0, Lcom/amap/api/col/az$a;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-boolean v0, p0, Lcom/amap/api/col/az;->q:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amap/api/col/az;->e:Lcom/amap/api/col/az$a;

    iget v0, v0, Lcom/amap/api/col/az$a;->d:I

    iget v1, p0, Lcom/amap/api/col/az;->o:F

    invoke-static {v0, v1, v2, v2}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    :goto_1
    iget v0, p0, Lcom/amap/api/col/az;->g:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    sget-object v0, Lcom/amap/api/col/az;->e:Lcom/amap/api/col/az$a;

    iget v0, v0, Lcom/amap/api/col/az$a;->b:I

    const/4 v1, 0x4

    const/16 v2, 0x1406

    const/16 v4, 0x10

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x303

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget v0, p0, Lcom/amap/api/col/az;->D:F

    mul-float/2addr v0, v6

    iget v1, p0, Lcom/amap/api/col/az;->D:F

    mul-float/2addr v1, v6

    iget v2, p0, Lcom/amap/api/col/az;->D:F

    mul-float/2addr v2, v6

    iget v4, p0, Lcom/amap/api/col/az;->D:F

    invoke-static {v0, v1, v2, v4}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    sget-object v0, Lcom/amap/api/col/az;->e:Lcom/amap/api/col/az$a;

    iget v0, v0, Lcom/amap/api/col/az$a;->e:I

    iget v1, p0, Lcom/amap/api/col/az;->D:F

    mul-float/2addr v1, v6

    iget v2, p0, Lcom/amap/api/col/az;->D:F

    mul-float/2addr v2, v6

    iget v4, p0, Lcom/amap/api/col/az;->D:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/amap/api/col/az;->D:F

    invoke-static {v0, v1, v2, v4, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    sget-object v0, Lcom/amap/api/col/az;->e:Lcom/amap/api/col/az$a;

    iget v0, v0, Lcom/amap/api/col/az$a;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/amap/api/col/az;->h:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    sget-object v0, Lcom/amap/api/col/az;->e:Lcom/amap/api/col/az$a;

    iget v0, v0, Lcom/amap/api/col/az$a;->c:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x8

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    sget-object v0, Lcom/amap/api/col/az;->e:Lcom/amap/api/col/az$a;

    iget v0, v0, Lcom/amap/api/col/az$a;->a:I

    iget-object v1, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/p;->h()[F

    move-result-object v1

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x8893

    iget v1, p0, Lcom/amap/api/col/az;->i:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v2, 0x1403

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v0, 0x8893

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/16 v0, 0xde1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    sget-object v0, Lcom/amap/api/col/az;->e:Lcom/amap/api/col/az$a;

    iget v0, v0, Lcom/amap/api/col/az$a;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    sget-object v0, Lcom/amap/api/col/az;->e:Lcom/amap/api/col/az$a;

    iget v0, v0, Lcom/amap/api/col/az$a;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/amap/api/col/az;->e:Lcom/amap/api/col/az$a;

    iget v0, v0, Lcom/amap/api/col/az$a;->d:I

    iget v1, p0, Lcom/amap/api/col/az;->o:F

    invoke-virtual {p4}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v2

    invoke-virtual {p4}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v4

    invoke-static {v0, v1, v2, v4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    goto/16 :goto_1
.end method

.method private a(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V
    .locals 7

    instance-of v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/az;->al:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/az;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/az;->T:Lcom/amap/api/maps/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/col/az;->T:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/az;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/az;->al:Z

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/az;->al:Z

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v1, p0, Lcom/amap/api/col/az;->am:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v1, p0, Lcom/amap/api/col/az;->an:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/k;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    check-cast p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v0, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v1, p0, Lcom/amap/api/col/az;->v:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v1, p0, Lcom/amap/api/col/az;->w:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    invoke-static {v2, v3, v4, v5, v1}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    move-object v0, p1

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v2, v2

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    check-cast p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v0, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    goto :goto_0
.end method

.method private a([Lcom/autonavi/amap/mapcore/FPoint;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/az;->w()V

    iget v0, p0, Lcom/amap/api/col/az;->O:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/amap/api/col/az;->P:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    aget-object v0, p1, v2

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aget-object v1, p1, v4

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->ap:F

    iget v0, p0, Lcom/amap/api/col/az;->ap:F

    aget-object v1, p1, v5

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->ap:F

    iget v0, p0, Lcom/amap/api/col/az;->ap:F

    aget-object v1, p1, v6

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->ap:F

    aget-object v0, p1, v2

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aget-object v1, p1, v4

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->aq:F

    iget v0, p0, Lcom/amap/api/col/az;->aq:F

    aget-object v1, p1, v5

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->aq:F

    iget v0, p0, Lcom/amap/api/col/az;->aq:F

    aget-object v1, p1, v6

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->aq:F

    aget-object v0, p1, v2

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aget-object v1, p1, v4

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->as:F

    iget v0, p0, Lcom/amap/api/col/az;->as:F

    aget-object v1, p1, v5

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->as:F

    iget v0, p0, Lcom/amap/api/col/az;->as:F

    aget-object v1, p1, v6

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->as:F

    aget-object v0, p1, v2

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aget-object v1, p1, v4

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->ar:F

    iget v0, p0, Lcom/amap/api/col/az;->ar:F

    aget-object v1, p1, v5

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->ar:F

    iget v0, p0, Lcom/amap/api/col/az;->ar:F

    aget-object v1, p1, v6

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->ar:F

    iget-object v0, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, p0, Lcom/amap/api/col/az;->ap:F

    iget v2, p0, Lcom/amap/api/col/az;->aq:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/az;->M:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v1, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v2, p0, Lcom/amap/api/col/az;->O:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v1, p0, Lcom/amap/api/col/az;->as:F

    iget v2, p0, Lcom/amap/api/col/az;->ar:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/az;->M:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v1, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/az;->M:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v1, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v2, p0, Lcom/amap/api/col/az;->O:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/az;->M:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v1, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v2, p0, Lcom/amap/api/col/az;->P:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    goto/16 :goto_0
.end method

.method private b(Lcom/amap/api/mapcore/k;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v11, 0x1

    const v10, 0x88e4

    const v9, 0x8892

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    iget v0, p0, Lcom/amap/api/col/az;->B:F

    invoke-virtual {p0}, Lcom/amap/api/col/az;->m()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/amap/api/col/az;->C:F

    invoke-virtual {p0}, Lcom/amap/api/col/az;->n()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore/k;->g(I)F

    move-result v0

    invoke-interface {p1, v1}, Lcom/amap/api/mapcore/k;->g(I)F

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v3, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget-object v4, p0, Lcom/amap/api/col/az;->y:[F

    iget v5, p0, Lcom/amap/api/col/az;->f:I

    mul-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x0

    iget v6, p0, Lcom/amap/api/col/az;->X:F

    mul-float/2addr v6, v0

    sub-float v6, v2, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/az;->y:[F

    iget v5, p0, Lcom/amap/api/col/az;->f:I

    mul-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/amap/api/col/az;->Y:F

    sub-float v6, v8, v6

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    aput v6, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/az;->y:[F

    iget v5, p0, Lcom/amap/api/col/az;->f:I

    mul-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x2

    aput v2, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/az;->y:[F

    iget v5, p0, Lcom/amap/api/col/az;->f:I

    mul-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x3

    aput v3, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/az;->y:[F

    iget v5, p0, Lcom/amap/api/col/az;->f:I

    mul-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x0

    iget v6, p0, Lcom/amap/api/col/az;->X:F

    sub-float v6, v8, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v2

    aput v6, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/az;->y:[F

    iget v5, p0, Lcom/amap/api/col/az;->f:I

    mul-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/amap/api/col/az;->Y:F

    sub-float v6, v8, v6

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    aput v6, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/az;->y:[F

    iget v5, p0, Lcom/amap/api/col/az;->f:I

    mul-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x2

    aput v2, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/az;->y:[F

    iget v5, p0, Lcom/amap/api/col/az;->f:I

    mul-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x3

    aput v3, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/az;->y:[F

    iget v5, p0, Lcom/amap/api/col/az;->f:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x0

    iget v6, p0, Lcom/amap/api/col/az;->X:F

    sub-float v6, v8, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v2

    aput v6, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/az;->y:[F

    iget v5, p0, Lcom/amap/api/col/az;->f:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/amap/api/col/az;->Y:F

    mul-float/2addr v6, v1

    sub-float v6, v3, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/az;->y:[F

    iget v5, p0, Lcom/amap/api/col/az;->f:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x2

    aput v2, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/az;->y:[F

    iget v5, p0, Lcom/amap/api/col/az;->f:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x3

    aput v3, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/az;->y:[F

    iget v5, p0, Lcom/amap/api/col/az;->f:I

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x0

    iget v6, p0, Lcom/amap/api/col/az;->X:F

    mul-float/2addr v0, v6

    sub-float v0, v2, v0

    aput v0, v4, v5

    iget-object v0, p0, Lcom/amap/api/col/az;->y:[F

    iget v4, p0, Lcom/amap/api/col/az;->f:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/amap/api/col/az;->Y:F

    mul-float/2addr v1, v5

    sub-float v1, v3, v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/amap/api/col/az;->y:[F

    iget v1, p0, Lcom/amap/api/col/az;->f:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/col/az;->y:[F

    iget v1, p0, Lcom/amap/api/col/az;->f:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/amap/api/col/az;->R:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/az;->y:[F

    invoke-static {v0}, Lcom/amap/api/col/ch;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/az;->R:Ljava/nio/FloatBuffer;

    :goto_0
    iget v0, p0, Lcom/amap/api/col/az;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x3

    invoke-static {v1, v0, v7}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v1, v0, v7

    iput v1, p0, Lcom/amap/api/col/az;->g:I

    aget v1, v0, v11

    iput v1, p0, Lcom/amap/api/col/az;->h:I

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/amap/api/col/az;->i:I

    :cond_0
    iget v0, p0, Lcom/amap/api/col/az;->g:I

    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/amap/api/col/az;->y:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/amap/api/col/az;->R:Ljava/nio/FloatBuffer;

    invoke-static {v9, v0, v1, v10}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    iget v0, p0, Lcom/amap/api/col/az;->h:I

    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/amap/api/col/az;->ac:Ljava/nio/FloatBuffer;

    invoke-static {v9, v0, v1, v10}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/amap/api/col/az;->j:Ljava/nio/ShortBuffer;

    if-nez v0, :cond_1

    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/az;->j:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/amap/api/col/az;->j:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/amap/api/col/az;->j:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    const v0, 0x8893

    iget v1, p0, Lcom/amap/api/col/az;->i:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v0, 0x8893

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/amap/api/col/az;->j:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v10}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget v0, p0, Lcom/amap/api/col/az;->aj:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/az;->aj:I

    iget v0, p0, Lcom/amap/api/col/az;->ak:I

    iget-object v1, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/col/az;->aj:I

    if-lt v1, v0, :cond_2

    iput v7, p0, Lcom/amap/api/col/az;->aj:I

    :cond_2
    iget v0, p0, Lcom/amap/api/col/az;->ak:I

    if-nez v0, :cond_3

    iput v11, p0, Lcom/amap/api/col/az;->ak:I

    :cond_3
    iget v0, p0, Lcom/amap/api/col/az;->aj:I

    iget v1, p0, Lcom/amap/api/col/az;->ak:I

    div-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/amap/api/col/az;->ai:Z

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/amap/api/col/az;->s()V

    :cond_4
    iget-object v1, p0, Lcom/amap/api/col/az;->z:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/az;->z:[I

    array-length v1, v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/az;->z:[I

    iget-object v2, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    rem-int/2addr v0, v2

    aget v0, v1, v0

    iget-object v1, p0, Lcom/amap/api/col/az;->R:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/amap/api/col/az;->ac:Ljava/nio/FloatBuffer;

    invoke-interface {p1}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/az;->a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/autonavi/amap/mapcore/MapConfig;)V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/az;->y:[F

    iget-object v1, p0, Lcom/amap/api/col/az;->R:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1}, Lcom/amap/api/col/ch;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/az;->R:Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method public static r()V
    .locals 2

    new-instance v0, Lcom/amap/api/col/az$a;

    const-string v1, "texture_normal.glsl"

    invoke-direct {v0, v1}, Lcom/amap/api/col/az$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amap/api/col/az;->e:Lcom/amap/api/col/az$a;

    return-void
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/az;->ac:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/az;->ac:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/az;->o()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    int-to-float v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    aput v0, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v1, 0x4

    aput v0, v2, v1

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput v1, v2, v0

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, v2, v0

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, v2, v0

    invoke-static {v2}, Lcom/amap/api/col/ch;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/az;->ac:Ljava/nio/FloatBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private u()V
    .locals 8

    const/4 v7, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/amap/api/col/az;->L:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/az;->d:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/az;->d:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/amap/api/col/az;->s()V

    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/az;->d:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z

    if-eqz v0, :cond_3

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    double-to-float v1, v2

    iput v1, p0, Lcom/amap/api/col/az;->B:F

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    double-to-float v1, v2

    iput v1, p0, Lcom/amap/api/col/az;->C:F

    :cond_0
    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    double-to-float v1, v2

    invoke-virtual {p0, v1}, Lcom/amap/api/col/az;->setRotateAngle(F)V

    :cond_1
    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    iget-boolean v1, p0, Lcom/amap/api/col/az;->al:Z

    if-eqz v1, :cond_4

    new-instance v1, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    iget-object v6, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v6}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v6

    invoke-interface {v6}, Lcom/amap/api/mapcore/k;->b()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v6

    double-to-int v2, v2

    double-to-int v3, v4

    invoke-virtual {v6, v2, v3, v1}, Lcom/autonavi/ae/gmap/GLMapState;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget-object v3, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/api/mapcore/k;->b()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v3

    iget v4, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v3, v4, v1, v2}, Lcom/autonavi/ae/gmap/GLMapState;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-direct {p0, v1, v2}, Lcom/amap/api/col/az;->a(II)V

    iput-boolean v7, p0, Lcom/amap/api/col/az;->al:Z

    :cond_2
    :goto_0
    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    iget-wide v0, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/col/az;->D:F

    :cond_3
    :goto_1
    return-void

    :cond_4
    double-to-int v1, v2

    double-to-int v2, v4

    invoke-direct {p0, v1, v2}, Lcom/amap/api/col/az;->a(II)V

    goto :goto_0

    :cond_5
    iput v1, p0, Lcom/amap/api/col/az;->B:F

    iput v1, p0, Lcom/amap/api/col/az;->C:F

    iput-boolean v7, p0, Lcom/amap/api/col/az;->L:Z

    goto :goto_1
.end method

.method private v()I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [I

    aput v1, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v0, v1

    return v0
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/col/az;->m()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/az;->O:F

    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/col/az;->n()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/az;->P:F

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/autonavi/amap/mapcore/FPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    return-object v0
.end method

.method public a(Lcom/amap/api/mapcore/k;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/amap/api/col/az;->aa:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/az;->Q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/az;->T:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/az;->al:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/az;->o()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, p0, Lcom/amap/api/col/az;->v:I

    invoke-interface {p1}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v0, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, p0, Lcom/amap/api/col/az;->w:I

    invoke-interface {p1}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget-boolean v0, p0, Lcom/amap/api/col/az;->ah:Z

    if-nez v0, :cond_9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/col/az;->z:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_6

    move v3, v4

    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v3, :cond_3

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore/k;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)I

    move-result v1

    :cond_3
    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-direct {p0}, Lcom/amap/api/col/az;->v()I

    move-result v1

    if-eqz v3, :cond_4

    new-instance v7, Lcom/amap/api/mapcore/r;

    invoke-direct {v7, v0, v1}, Lcom/amap/api/mapcore/r;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    invoke-interface {p1, v7}, Lcom/amap/api/mapcore/k;->a(Lcom/amap/api/mapcore/r;)V

    :cond_4
    const/4 v0, 0x0

    invoke-static {v1, v6, v0}, Lcom/amap/api/col/ch;->b(ILandroid/graphics/Bitmap;Z)I

    :cond_5
    move v0, v1

    iget-object v1, p0, Lcom/amap/api/col/az;->z:[I

    aput v0, v1, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    :cond_6
    move v3, v1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/az;->ai:Z

    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/az;->ah:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/col/az;->p()Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :try_start_2
    iget-boolean v0, p0, Lcom/amap/api/col/az;->l:Z

    if-nez v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/az;->ao:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/az;->l:Z

    :cond_a
    iget-boolean v0, p0, Lcom/amap/api/col/az;->al:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/amap/api/col/az;->J:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/amap/api/col/az;->am:I

    iget v1, p0, Lcom/amap/api/col/az;->an:I

    iget-object v2, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-interface {p1, v0, v1, v2}, Lcom/amap/api/mapcore/k;->b(IILandroid/graphics/PointF;)V

    :cond_b
    invoke-direct {p0}, Lcom/amap/api/col/az;->u()V

    invoke-direct {p0, p1}, Lcom/amap/api/col/az;->b(Lcom/amap/api/mapcore/k;)V

    iget-boolean v0, p0, Lcom/amap/api/col/az;->n:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/col/az;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->i()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/az;->ao:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/az;->n:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MarkerDelegateImp"

    const-string v2, "drawMarker"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/amap/api/col/az;->ai:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "MarkerDelegateImp"

    const-string v2, "loadtexture"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/az;->l()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/col/az;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/az;->n:Z

    return-void
.end method

.method public b()Lcom/amap/api/maps/model/LatLng;
    .locals 6

    iget-boolean v0, p0, Lcom/amap/api/col/az;->al:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->b()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/col/az;->am:I

    iget v2, p0, Lcom/amap/api/col/az;->an:I

    iget-object v3, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    new-instance v1, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v0

    iget v2, p0, Lcom/amap/api/col/az;->am:I

    iget v3, p0, Lcom/amap/api/col/az;->an:I

    invoke-interface {v0, v2, v3, v1}, Lcom/amap/api/mapcore/k;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/az;->ag:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/az;->U:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/az;->T:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/az;->r:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/az;->s:I

    return v0
.end method

.method public destroy()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/amap/api/col/az;->Q:Z

    invoke-virtual {p0}, Lcom/amap/api/col/az;->remove()Z

    iget-object v1, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/az;->z:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/az;->z:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    iget-object v3, p0, Lcom/amap/api/col/az;->z:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/p;->a(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/az;->z:[I

    aget v3, v3, v1

    invoke-interface {v2, v3}, Lcom/amap/api/mapcore/k;->h(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/az;->ac:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/az;->ac:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/az;->ac:Ljava/nio/FloatBuffer;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/az;->R:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/az;->R:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/az;->R:Ljava/nio/FloatBuffer;

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/az;->T:Lcom/amap/api/maps/model/LatLng;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/az;->ad:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/az;->z:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MarkerDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "destroy erro"

    const-string v1, "MarkerDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/az;->t:I

    return v0
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/col/az;->getId()Ljava/lang/String;

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

.method public f()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/az;->u:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/az;->al:Z

    return v0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/az;->D:F

    return v0
.end method

.method public getAnchorU()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/az;->X:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/az;->Y:F

    return v0
.end method

.method public getDisplayLevel()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/az;->H:I

    return v0
.end method

.method public getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 4

    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget-boolean v1, p0, Lcom/amap/api/col/az;->al:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/col/az;->am:I

    iget v3, p0, Lcom/amap/api/col/az;->an:I

    invoke-interface {v1, v2, v3, v0}, Lcom/amap/api/mapcore/k;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget v1, p0, Lcom/amap/api/col/az;->v:I

    iget v2, p0, Lcom/amap/api/col/az;->w:I

    invoke-direct {v0, v1, v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    goto :goto_0
.end method

.method public getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;
    .locals 0

    return-object p0
.end method

.method public declared-synchronized getIcons()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/az;->S:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Marker"

    invoke-static {v0}, Lcom/amap/api/col/az;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/az;->S:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/az;->S:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/az;->ad:Ljava/lang/Object;

    return-object v0
.end method

.method public getOptions()Lcom/amap/api/maps/model/MarkerOptions;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    return-object v0
.end method

.method public getPeriod()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/az;->ak:I

    return v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 6

    iget-boolean v0, p0, Lcom/amap/api/col/az;->al:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    invoke-virtual {p0}, Lcom/amap/api/col/az;->p()Z

    iget-object v2, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v4, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v4, v4, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-interface {v2, v3, v4, v0}, Lcom/amap/api/mapcore/k;->a(FFLcom/autonavi/amap/mapcore/IPoint;)V

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v2, v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/az;->T:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0
.end method

.method public getRotateAngle()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/az;->p:F

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/az;->W:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/az;->V:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/az;->A:F

    return v0
.end method

.method public h()Landroid/graphics/Rect;
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/amap/api/col/az;->y:[F

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/az;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/amap/api/col/az;->c:Landroid/graphics/Rect;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->b()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/col/az;->m()I

    move-result v6

    invoke-virtual {p0}, Lcom/amap/api/col/az;->n()I

    move-result v7

    new-instance v8, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v2, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v0, v1, v2, v8}, Lcom/autonavi/ae/gmap/GLMapState;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    iget-object v0, p0, Lcom/amap/api/col/az;->a:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/amap/api/col/az;->a:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/amap/api/col/az;->o:F

    neg-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-boolean v0, p0, Lcom/amap/api/col/az;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/az;->a:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/amap/api/col/az;->a:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v2, 0x0

    neg-int v3, v6

    int-to-float v3, v3

    iget v4, p0, Lcom/amap/api/col/az;->X:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v2, 0x1

    int-to-float v3, v7

    iget v4, p0, Lcom/amap/api/col/az;->Y:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/col/az;->a:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v1, p0, Lcom/amap/api/col/az;->c:Landroid/graphics/Rect;

    iget v2, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aget v5, v0, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v5, v5

    const/4 v9, 0x1

    aget v9, v0, v9

    sub-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v2, 0x0

    int-to-float v3, v6

    iget v4, p0, Lcom/amap/api/col/az;->X:F

    sub-float v4, v11, v4

    mul-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v2, 0x1

    int-to-float v3, v7

    iget v4, p0, Lcom/amap/api/col/az;->Y:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/col/az;->a:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v1, p0, Lcom/amap/api/col/az;->c:Landroid/graphics/Rect;

    iget v2, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->union(II)V

    iget-object v1, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v2, 0x0

    int-to-float v3, v6

    iget v4, p0, Lcom/amap/api/col/az;->X:F

    sub-float v4, v11, v4

    mul-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v2, 0x1

    neg-int v3, v7

    int-to-float v3, v3

    iget v4, p0, Lcom/amap/api/col/az;->Y:F

    sub-float v4, v11, v4

    mul-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/col/az;->a:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v1, p0, Lcom/amap/api/col/az;->c:Landroid/graphics/Rect;

    iget v2, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->union(II)V

    iget-object v1, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v2, 0x0

    neg-int v3, v6

    int-to-float v3, v3

    iget v4, p0, Lcom/amap/api/col/az;->X:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v2, 0x1

    neg-int v3, v7

    int-to-float v3, v3

    iget v4, p0, Lcom/amap/api/col/az;->Y:F

    sub-float v4, v11, v4

    mul-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/col/az;->a:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/col/az;->b:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v1, p0, Lcom/amap/api/col/az;->c:Landroid/graphics/Rect;

    iget v2, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    sub-float v0, v3, v0

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->union(II)V

    iget-object v0, p0, Lcom/amap/api/col/az;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget v1, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/az;->t:I

    iget-object v0, p0, Lcom/amap/api/col/az;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/az;->u:I

    iget-object v0, p0, Lcom/amap/api/col/az;->c:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MarkerDelegateImp"

    const-string v2, "getRect"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_0
.end method

.method public hashCodeRemote()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public hideInfoWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amap/api/col/az;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/p;->c(Lcom/amap/api/col/au;)V

    invoke-direct {p0}, Lcom/amap/api/col/az;->s()V

    iput-boolean v1, p0, Lcom/amap/api/col/az;->m:Z

    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/col/az;->n:Z

    return-void
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/az;->ai:Z

    return v0
.end method

.method public isClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/az;->I:Z

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/az;->Z:Z

    return v0
.end method

.method public isFlat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/az;->q:Z

    return v0
.end method

.method public isInfoWindowAutoOverturn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/az;->F:Z

    return v0
.end method

.method public isInfoWindowEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/az;->G:Z

    return v0
.end method

.method public isInfoWindowShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/az;->m:Z

    return v0
.end method

.method public isPerspective()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/az;->ae:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/az;->aa:Z

    return v0
.end method

.method public j()Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/amap/api/col/az;->al:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/amap/api/col/az;->L:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/az;->N:Landroid/graphics/Point;

    iget v2, p0, Lcom/amap/api/col/az;->v:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/amap/api/col/az;->N:Landroid/graphics/Point;

    iget v2, p0, Lcom/amap/api/col/az;->w:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/col/az;->v:I

    iget v3, p0, Lcom/amap/api/col/az;->w:I

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amap/mapcore/Rectangle;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/az;->w()V

    iget-object v1, p0, Lcom/amap/api/col/az;->M:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v2, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iput v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v1, p0, Lcom/amap/api/col/az;->M:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v2, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iput v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget-object v1, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/az;->a([Lcom/autonavi/amap/mapcore/FPoint;)V

    iget-object v2, p0, Lcom/amap/api/col/az;->M:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v2, v1}, Lcom/amap/api/col/ch;->a(Lcom/autonavi/amap/mapcore/FPoint;[Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/az;->K:Z

    return v0
.end method

.method declared-synchronized l()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/az;->o()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/az;->o()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized o()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/az;->l()V

    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p0}, Lcom/amap/api/col/az;->o()Lcom/amap/api/maps/model/BitmapDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MarkerDelegateImp"

    const-string v2, "getBitmapDescriptor"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/k;->b()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    if-nez v1, :cond_2

    new-instance v1, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    :cond_2
    iget-boolean v1, p0, Lcom/amap/api/col/az;->al:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/col/az;->am:I

    iget v3, p0, Lcom/amap/api/col/az;->an:I

    iget-object v4, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-interface {v1, v2, v3, v4}, Lcom/amap/api/mapcore/k;->b(IILandroid/graphics/PointF;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/col/az;->w:I

    iget v3, p0, Lcom/amap/api/col/az;->v:I

    iget-object v4, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-interface {v1, v2, v3, v4}, Lcom/amap/api/mapcore/k;->a(IILcom/autonavi/amap/mapcore/FPoint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public q()Lcom/autonavi/amap/mapcore/interfaces/IAnimation;
    .locals 0

    return-object p0
.end method

.method public remove()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/amap/api/col/az;->s()V

    iput-boolean v0, p0, Lcom/amap/api/col/az;->aa:Z

    iget-object v1, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/p;->a(Lcom/amap/api/col/au;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public set2Top()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/p;->b(Lcom/amap/api/col/au;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iput p1, p0, Lcom/amap/api/col/az;->D:F

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->alpha(F)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setAnchor(FF)V
    .locals 1

    iget v0, p0, Lcom/amap/api/col/az;->X:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/col/az;->Y:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    iput p1, p0, Lcom/amap/api/col/az;->X:F

    iput p2, p0, Lcom/amap/api/col/az;->Y:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/az;->n:Z

    invoke-direct {p0}, Lcom/amap/api/col/az;->s()V

    goto :goto_0
.end method

.method public setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 2

    invoke-virtual {p0}, Lcom/amap/api/col/az;->q()Lcom/autonavi/amap/mapcore/interfaces/IAnimation;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAnimation;->setAnimation(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    goto :goto_0
.end method

.method public setAnimation(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/az;->d:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    goto :goto_0
.end method

.method public setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/az;->d:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/az;->d:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public setAutoOverturnInfoWindow(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/col/az;->F:Z

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->autoOverturnInfoWindow(Z)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setBelowMaskLayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/az;->K:Z

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/az;->I:Z

    return-void
.end method

.method public setDisplayLevel(I)V
    .locals 1

    iput p1, p0, Lcom/amap/api/col/az;->H:I

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->displayLevel(I)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setDraggable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/col/az;->Z:Z

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {p0}, Lcom/amap/api/col/az;->s()V

    return-void
.end method

.method public setFixingPointEnable(Z)V
    .locals 4

    const/4 v1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/az;->J:Z

    if-nez p1, :cond_2

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/amap/api/col/az;->al:Z

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/az;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/az;->T:Lcom/amap/api/maps/model/LatLng;

    iget-object v2, p0, Lcom/amap/api/col/az;->T:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0, v2}, Lcom/amap/api/col/az;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/amap/api/col/az;->al:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/col/az;->al:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/az;->T:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/k;->b()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v3, p0, Lcom/amap/api/col/az;->x:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/ae/gmap/GLMapState;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iput v1, p0, Lcom/amap/api/col/az;->am:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iput v0, p0, Lcom/amap/api/col/az;->an:I

    goto :goto_0
.end method

.method public setFlat(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/col/az;->q:Z

    invoke-direct {p0}, Lcom/amap/api/col/az;->s()V

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->setFlat(Z)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/az;->al:Z

    iget v0, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-direct {p0, v0, v1}, Lcom/amap/api/col/az;->a(II)V

    return-void
.end method

.method public declared-synchronized setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/amap/api/col/az;->t()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/az;->ah:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/az;->l:Z

    invoke-direct {p0}, Lcom/amap/api/col/az;->s()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/az;->n:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MarkerDelegateImp"

    const-string v2, "setIcon"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIcons(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/az;->af:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amap/api/col/az;->a(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/az;->ah:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/az;->l:Z

    invoke-direct {p0}, Lcom/amap/api/col/az;->t()V

    invoke-direct {p0}, Lcom/amap/api/col/az;->s()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/az;->n:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MarkerDelegateImp"

    const-string v2, "setIcons"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInfoWindowEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/col/az;->G:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/az;->hideInfoWindow()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->infoWindowEnable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V
    .locals 8

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/az;->T:Lcom/amap/api/maps/model/LatLng;

    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isGps()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/az;->ag:Z

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/az;->ag:Z

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/gw;->a(DD)[D

    move-result-object v0

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    const/4 v3, 0x0

    aget-wide v6, v0, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/col/az;->U:Lcom/amap/api/maps/model/LatLng;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-static {v2, v3, v4, v5, v1}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget v0, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iput v0, p0, Lcom/amap/api/col/az;->v:I

    iget v0, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iput v0, p0, Lcom/amap/api/col/az;->w:I

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAnchorU()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->X:F

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAnchorV()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->Y:F

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getInfoWindowOffsetX()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->r:I

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getInfoWindowOffsetY()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->s:I

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPeriod()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->ak:I

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getZIndex()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->A:F

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isBelowMaskLayer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/az;->K:Z

    invoke-virtual {p0}, Lcom/amap/api/col/az;->p()Z

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/az;->a(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/amap/api/col/az;->t()V

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/az;->aa:Z

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/az;->W:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/az;->V:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isDraggable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/az;->Z:Z

    invoke-virtual {p0}, Lcom/amap/api/col/az;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/az;->S:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isPerspective()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/az;->ae:Z

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isFlat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/az;->q:Z

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isBelowMaskLayer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/az;->K:Z

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->D:F

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getRotateAngle()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/az;->setRotateAngle(F)V

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getDisplayLevel()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/az;->H:I

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isInfoWindowAutoOverturn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/az;->F:Z

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isInfoWindowEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/az;->G:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MarkerDelegateImp"

    const-string v3, "create"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/az;->U:Lcom/amap/api/maps/model/LatLng;

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/az;->T:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v0, p0, Lcom/amap/api/col/az;->T:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v1}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    goto/16 :goto_1
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/az;->ad:Ljava/lang/Object;

    return-void
.end method

.method public setPeriod(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    iput v0, p0, Lcom/amap/api/col/az;->ak:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/amap/api/col/az;->ak:I

    goto :goto_0
.end method

.method public setPerspective(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/az;->ae:Z

    return-void
.end method

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string v1, "\u975e\u6cd5\u5750\u6807\u503c latlng is null"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    const-string v1, "setPosition"

    const-string v2, "Marker"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/az;->T:Lcom/amap/api/maps/model/LatLng;

    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget-boolean v1, p0, Lcom/amap/api/col/az;->ag:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/gw;->a(DD)[D

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const/4 v3, 0x1

    aget-wide v4, v1, v3

    const/4 v3, 0x0

    aget-wide v6, v1, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/col/az;->U:Lcom/amap/api/maps/model/LatLng;

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iput v1, p0, Lcom/amap/api/col/az;->v:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iput v0, p0, Lcom/amap/api/col/az;->w:I

    iput-boolean v8, p0, Lcom/amap/api/col/az;->al:Z

    invoke-virtual {p0}, Lcom/amap/api/col/az;->p()Z

    invoke-direct {p0}, Lcom/amap/api/col/az;->s()V

    iput-boolean v9, p0, Lcom/amap/api/col/az;->n:Z

    goto :goto_0

    :catch_0
    move-exception v1

    iput-object p1, p0, Lcom/amap/api/col/az;->U:Lcom/amap/api/maps/model/LatLng;

    goto :goto_1

    :cond_1
    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    goto :goto_1
.end method

.method public setPositionByPixels(II)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lcom/amap/api/col/az;->am:I

    iput p2, p0, Lcom/amap/api/col/az;->an:I

    iput-boolean v0, p0, Lcom/amap/api/col/az;->al:Z

    invoke-virtual {p0}, Lcom/amap/api/col/az;->p()Z

    invoke-direct {p0}, Lcom/amap/api/col/az;->s()V

    iput-boolean v0, p0, Lcom/amap/api/col/az;->n:Z

    return-void
.end method

.method public setPositionNotUpdate(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/az;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    return-void
.end method

.method public setRotateAngle(F)V
    .locals 2

    const/high16 v1, 0x43b40000    # 360.0f

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->rotateAngle(F)Lcom/amap/api/maps/model/MarkerOptions;

    iput p1, p0, Lcom/amap/api/col/az;->p:F

    neg-float v0, p1

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/az;->o:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/az;->n:Z

    invoke-direct {p0}, Lcom/amap/api/col/az;->s()V

    return-void
.end method

.method public setRotateAngleNotUpdate(F)V
    .locals 0

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/az;->W:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/col/az;->s()V

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/az;->V:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/col/az;->s()V

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/az;->aa:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps/model/MarkerOptions;

    iput-boolean p1, p0, Lcom/amap/api/col/az;->aa:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/col/az;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/p;->c(Lcom/amap/api/col/au;)V

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/az;->s()V

    goto :goto_0
.end method

.method public setZIndex(F)V
    .locals 1

    iput p1, p0, Lcom/amap/api/col/az;->A:F

    iget-object v0, p0, Lcom/amap/api/col/az;->E:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->zIndex(F)Lcom/amap/api/maps/model/MarkerOptions;

    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->g()V

    return-void
.end method

.method public showInfoWindow()V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/az;->aa:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/az;->isInfoWindowEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/az;->ab:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/p;->a(Lcom/amap/api/col/ar;)V

    invoke-direct {p0}, Lcom/amap/api/col/az;->s()V

    goto :goto_0
.end method

.method public startAnimation()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/amap/api/col/az;->d:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/az;->d:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    instance-of v0, v0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/az;->d:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-direct {p0, v1}, Lcom/amap/api/col/az;->a(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->getDuration()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setDuration(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/az;->d:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-direct {p0, v0}, Lcom/amap/api/col/az;->a(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    :cond_1
    iput-boolean v3, p0, Lcom/amap/api/col/az;->L:Z

    iget-object v0, p0, Lcom/amap/api/col/az;->d:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->start()V

    invoke-direct {p0}, Lcom/amap/api/col/az;->s()V

    :cond_2
    return v3
.end method
