.class public Lcom/amap/api/col/bf;
.super Ljava/lang/Object;
.source "TextDelegateImp.java"

# interfaces
.implements Lcom/amap/api/col/ax;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/bf$a;
    }
.end annotation


# static fields
.field public static a:Lcom/amap/api/col/bf$a;

.field private static g:I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Landroid/graphics/Typeface;

.field private E:F

.field private F:Landroid/graphics/Rect;

.field private G:Landroid/graphics/Paint;

.field private H:I

.field private I:I

.field private J:Z

.field private K:Z

.field private L:[F

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Ljava/nio/ShortBuffer;

.field private h:F

.field private i:F

.field private j:I

.field private k:I

.field private l:Lcom/autonavi/amap/mapcore/FPoint;

.field private m:I

.field private n:Landroid/graphics/Bitmap;

.field private o:I

.field private p:I

.field private q:Ljava/nio/FloatBuffer;

.field private r:Ljava/lang/String;

.field private s:Lcom/amap/api/maps/model/LatLng;

.field private t:F

.field private u:F

.field private v:Z

.field private w:Lcom/amap/api/mapcore/p;

.field private x:Ljava/nio/FloatBuffer;

.field private y:Ljava/lang/Object;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/col/bf;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/TextOptions;Lcom/amap/api/mapcore/p;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/col/bf;->h:F

    iput v0, p0, Lcom/amap/api/col/bf;->i:F

    iput v2, p0, Lcom/amap/api/col/bf;->j:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/amap/api/col/bf;->k:I

    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/bf;->l:Lcom/autonavi/amap/mapcore/FPoint;

    iput-object v3, p0, Lcom/amap/api/col/bf;->q:Ljava/nio/FloatBuffer;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/col/bf;->t:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/col/bf;->u:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/bf;->v:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/bf;->F:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/bf;->G:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/amap/api/col/bf;->J:Z

    iput-boolean v1, p0, Lcom/amap/api/col/bf;->K:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/col/bf;->L:[F

    iput v2, p0, Lcom/amap/api/col/bf;->b:I

    iput v1, p0, Lcom/amap/api/col/bf;->c:I

    iput v1, p0, Lcom/amap/api/col/bf;->d:I

    iput v1, p0, Lcom/amap/api/col/bf;->e:I

    iput-object v3, p0, Lcom/amap/api/col/bf;->f:Ljava/nio/ShortBuffer;

    iput-object p2, p0, Lcom/amap/api/col/bf;->w:Lcom/amap/api/mapcore/p;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bf;->s:Lcom/amap/api/maps/model/LatLng;

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getAlignX()I

    move-result v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getAlignY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/col/bf;->setAlign(II)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/bf;->v:Z

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bf;->z:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/bf;->A:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getFontColor()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/bf;->B:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getFontSize()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/bf;->C:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bf;->y:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getZIndex()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/bf;->E:F

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bf;->D:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/amap/api/col/bf;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bf;->r:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TextOptions;->getRotate()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/bf;->setRotateAngle(F)V

    invoke-direct {p0}, Lcom/amap/api/col/bf;->c()V

    invoke-virtual {p0}, Lcom/amap/api/col/bf;->a()Z

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

    sget v0, Lcom/amap/api/col/bf;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/col/bf;->g:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/col/bf;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/autonavi/amap/mapcore/MapConfig;)V
    .locals 6

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/amap/api/col/bf;->a:Lcom/amap/api/col/bf$a;

    invoke-virtual {v0}, Lcom/amap/api/col/bf$a;->a()V

    sget-object v0, Lcom/amap/api/col/bf;->a:Lcom/amap/api/col/bf$a;

    iget v0, v0, Lcom/amap/api/col/bf$a;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    sget-object v0, Lcom/amap/api/col/bf;->a:Lcom/amap/api/col/bf$a;

    iget v0, v0, Lcom/amap/api/col/bf$a;->d:I

    iget v1, p0, Lcom/amap/api/col/bf;->h:F

    invoke-virtual {p4}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v2

    invoke-virtual {p4}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    const v0, 0x8892

    iget v1, p0, Lcom/amap/api/col/bf;->c:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    sget-object v0, Lcom/amap/api/col/bf;->a:Lcom/amap/api/col/bf$a;

    iget v0, v0, Lcom/amap/api/col/bf$a;->b:I

    const/4 v1, 0x4

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    sget-object v0, Lcom/amap/api/col/bf;->a:Lcom/amap/api/col/bf$a;

    iget v0, v0, Lcom/amap/api/col/bf$a;->e:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    sget-object v0, Lcom/amap/api/col/bf;->a:Lcom/amap/api/col/bf$a;

    iget v0, v0, Lcom/amap/api/col/bf$a;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v0, 0x8892

    iget v1, p0, Lcom/amap/api/col/bf;->d:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    sget-object v0, Lcom/amap/api/col/bf;->a:Lcom/amap/api/col/bf$a;

    iget v0, v0, Lcom/amap/api/col/bf$a;->c:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    sget-object v0, Lcom/amap/api/col/bf;->a:Lcom/amap/api/col/bf$a;

    iget v0, v0, Lcom/amap/api/col/bf$a;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amap/api/col/bf;->w:Lcom/amap/api/mapcore/p;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/p;->h()[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x8893

    iget v1, p0, Lcom/amap/api/col/bf;->e:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v2, 0x1403

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    const v0, 0x8892

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v0, 0x8893

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    sget-object v0, Lcom/amap/api/col/bf;->a:Lcom/amap/api/col/bf$a;

    iget v0, v0, Lcom/amap/api/col/bf$a;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    sget-object v0, Lcom/amap/api/col/bf;->a:Lcom/amap/api/col/bf$a;

    iget v0, v0, Lcom/amap/api/col/bf$a;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    goto/16 :goto_0
.end method

.method public static b()V
    .locals 2

    new-instance v0, Lcom/amap/api/col/bf$a;

    const-string v1, "texture_normal.glsl"

    invoke-direct {v0, v1}, Lcom/amap/api/col/bf$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amap/api/col/bf;->a:Lcom/amap/api/col/bf$a;

    return-void
.end method

.method private b(Lcom/amap/api/mapcore/k;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v11, 0x3

    const v10, 0x88e4

    const v9, 0x8892

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/amap/api/col/bf;->d()I

    move-result v0

    invoke-direct {p0}, Lcom/amap/api/col/bf;->e()I

    move-result v1

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore/k;->g(I)F

    move-result v0

    invoke-interface {p1, v1}, Lcom/amap/api/mapcore/k;->g(I)F

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/bf;->l:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v3, p0, Lcom/amap/api/col/bf;->l:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget-object v4, p0, Lcom/amap/api/col/bf;->L:[F

    iget v5, p0, Lcom/amap/api/col/bf;->b:I

    mul-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x0

    iget v6, p0, Lcom/amap/api/col/bf;->t:F

    mul-float/2addr v6, v0

    sub-float v6, v2, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/bf;->L:[F

    iget v5, p0, Lcom/amap/api/col/bf;->b:I

    mul-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/amap/api/col/bf;->u:F

    sub-float v6, v7, v6

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    aput v6, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/bf;->L:[F

    iget v5, p0, Lcom/amap/api/col/bf;->b:I

    mul-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x2

    aput v2, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/bf;->L:[F

    iget v5, p0, Lcom/amap/api/col/bf;->b:I

    mul-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x3

    aput v3, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/bf;->L:[F

    iget v5, p0, Lcom/amap/api/col/bf;->b:I

    mul-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x0

    iget v6, p0, Lcom/amap/api/col/bf;->t:F

    sub-float v6, v7, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v2

    aput v6, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/bf;->L:[F

    iget v5, p0, Lcom/amap/api/col/bf;->b:I

    mul-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/amap/api/col/bf;->u:F

    sub-float v6, v7, v6

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    aput v6, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/bf;->L:[F

    iget v5, p0, Lcom/amap/api/col/bf;->b:I

    mul-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x2

    aput v2, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/bf;->L:[F

    iget v5, p0, Lcom/amap/api/col/bf;->b:I

    mul-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x3

    aput v3, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/bf;->L:[F

    iget v5, p0, Lcom/amap/api/col/bf;->b:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x0

    iget v6, p0, Lcom/amap/api/col/bf;->t:F

    sub-float v6, v7, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v2

    aput v6, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/bf;->L:[F

    iget v5, p0, Lcom/amap/api/col/bf;->b:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/amap/api/col/bf;->u:F

    mul-float/2addr v6, v1

    sub-float v6, v3, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/bf;->L:[F

    iget v5, p0, Lcom/amap/api/col/bf;->b:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x2

    aput v2, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/bf;->L:[F

    iget v5, p0, Lcom/amap/api/col/bf;->b:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x3

    aput v3, v4, v5

    iget-object v4, p0, Lcom/amap/api/col/bf;->L:[F

    iget v5, p0, Lcom/amap/api/col/bf;->b:I

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x0

    iget v6, p0, Lcom/amap/api/col/bf;->t:F

    mul-float/2addr v0, v6

    sub-float v0, v2, v0

    aput v0, v4, v5

    iget-object v0, p0, Lcom/amap/api/col/bf;->L:[F

    iget v4, p0, Lcom/amap/api/col/bf;->b:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/amap/api/col/bf;->u:F

    mul-float/2addr v1, v5

    sub-float v1, v3, v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/amap/api/col/bf;->L:[F

    iget v1, p0, Lcom/amap/api/col/bf;->b:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/col/bf;->L:[F

    iget v1, p0, Lcom/amap/api/col/bf;->b:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/amap/api/col/bf;->q:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/bf;->L:[F

    invoke-static {v0}, Lcom/amap/api/col/ch;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bf;->q:Ljava/nio/FloatBuffer;

    :goto_0
    iget v0, p0, Lcom/amap/api/col/bf;->c:I

    if-nez v0, :cond_0

    new-array v0, v11, [I

    invoke-static {v11, v0, v8}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v1, v0, v8

    iput v1, p0, Lcom/amap/api/col/bf;->c:I

    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/amap/api/col/bf;->d:I

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/amap/api/col/bf;->e:I

    :cond_0
    iget v0, p0, Lcom/amap/api/col/bf;->c:I

    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/amap/api/col/bf;->L:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/amap/api/col/bf;->q:Ljava/nio/FloatBuffer;

    invoke-static {v9, v0, v1, v10}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    iget v0, p0, Lcom/amap/api/col/bf;->d:I

    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/amap/api/col/bf;->x:Ljava/nio/FloatBuffer;

    invoke-static {v9, v0, v1, v10}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/amap/api/col/bf;->f:Ljava/nio/ShortBuffer;

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

    iput-object v1, p0, Lcom/amap/api/col/bf;->f:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/amap/api/col/bf;->f:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/amap/api/col/bf;->f:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    const v0, 0x8893

    iget v1, p0, Lcom/amap/api/col/bf;->e:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v0, 0x8893

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/amap/api/col/bf;->f:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v10}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    :cond_1
    iget v0, p0, Lcom/amap/api/col/bf;->m:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/col/bf;->m:I

    iget-object v1, p0, Lcom/amap/api/col/bf;->q:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/amap/api/col/bf;->x:Ljava/nio/FloatBuffer;

    invoke-interface {p1}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/bf;->a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/autonavi/amap/mapcore/MapConfig;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/bf;->L:[F

    iget-object v1, p0, Lcom/amap/api/col/bf;->q:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1}, Lcom/amap/api/col/ch;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bf;->q:Ljava/nio/FloatBuffer;

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

.method private c()V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/bf;->z:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bf;->z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/bf;->G:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/amap/api/col/bf;->D:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/amap/api/col/bf;->G:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    iget-object v0, p0, Lcom/amap/api/col/bf;->G:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/amap/api/col/bf;->G:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/amap/api/col/bf;->G:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/amap/api/col/bf;->G:Landroid/graphics/Paint;

    iget v1, p0, Lcom/amap/api/col/bf;->C:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/amap/api/col/bf;->G:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/amap/api/col/bf;->G:Landroid/graphics/Paint;

    iget v1, p0, Lcom/amap/api/col/bf;->B:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/amap/api/col/bf;->G:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, v1

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v2, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/amap/api/col/bf;->G:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/amap/api/col/bf;->z:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amap/api/col/bf;->z:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/amap/api/col/bf;->F:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/amap/api/col/bf;->F:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v3, p0, Lcom/amap/api/col/bf;->A:I

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v3, p0, Lcom/amap/api/col/bf;->z:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/col/bf;->F:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    int-to-float v0, v0

    iget-object v5, p0, Lcom/amap/api/col/bf;->G:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/amap/api/col/bf;->n:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/col/bf;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/bf;->o:I

    iget-object v0, p0, Lcom/amap/api/col/bf;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/bf;->p:I

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/amap/api/col/ch;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bf;->x:Ljava/nio/FloatBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TextDelegateImp"

    const-string v2, "initBitmap"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private d()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/bf;->o:I

    return v0
.end method

.method private e()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/bf;->p:I

    return v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/bf;->w:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bf;->w:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method

.method private g()I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [I

    aput v1, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v0, v1

    return v0
.end method

.method private declared-synchronized l()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/bf;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/bf;->K:Z

    invoke-direct {p0}, Lcom/amap/api/col/bf;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore/k;)V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/col/bf;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/bf;->J:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bf;->s:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bf;->n:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/bf;->l:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, p0, Lcom/amap/api/col/bf;->H:I

    invoke-interface {p1}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v0, p0, Lcom/amap/api/col/bf;->l:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, p0, Lcom/amap/api/col/bf;->I:I

    invoke-interface {p1}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget-boolean v0, p0, Lcom/amap/api/col/bf;->K:Z

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/bf;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/bf;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/amap/api/col/bf;->m:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/amap/api/col/bf;->g()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/bf;->m:I

    :cond_2
    iget v0, p0, Lcom/amap/api/col/bf;->m:I

    iget-object v1, p0, Lcom/amap/api/col/bf;->n:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ch;->b(ILandroid/graphics/Bitmap;Z)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/bf;->K:Z

    iget-object v0, p0, Lcom/amap/api/col/bf;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amap/api/col/bf;->b(Lcom/amap/api/mapcore/k;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TextDelegateImp"

    const-string v2, "drawMarker"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "TextDelegateImp"

    const-string v2, "loadtexture"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a()Z
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/bf;->s:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/bf;->s:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v1, p0, Lcom/amap/api/col/bf;->s:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iput v1, p0, Lcom/amap/api/col/bf;->H:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iput v0, p0, Lcom/amap/api/col/bf;->I:I

    iget-object v0, p0, Lcom/amap/api/col/bf;->w:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/col/bf;->s:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lcom/amap/api/col/bf;->s:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v6, p0, Lcom/amap/api/col/bf;->l:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/k;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/col/bf;->J:Z

    invoke-virtual {p0}, Lcom/amap/api/col/bf;->remove()Z

    iget-object v0, p0, Lcom/amap/api/col/bf;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bf;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/bf;->n:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/bf;->x:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/bf;->x:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/bf;->x:Ljava/nio/FloatBuffer;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/bf;->q:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/bf;->q:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/bf;->q:Ljava/nio/FloatBuffer;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/bf;->s:Lcom/amap/api/maps/model/LatLng;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/bf;->y:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TextDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "destroy erro"

    const-string v1, "TextDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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

    invoke-virtual {p0}, Lcom/amap/api/col/bf;->getId()Ljava/lang/String;

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

.method public getAlignX()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/bf;->j:I

    return v0
.end method

.method public getAlignY()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/bf;->k:I

    return v0
.end method

.method public getAnchorU()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/bf;->t:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/bf;->u:F

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/bf;->A:I

    return v0
.end method

.method public getFontColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/bf;->B:I

    return v0
.end method

.method public getFontSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/bf;->C:I

    return v0
.end method

.method public getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/bf;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Text"

    invoke-static {v0}, Lcom/amap/api/col/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bf;->r:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/bf;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/bf;->y:Ljava/lang/Object;

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/bf;->s:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getRotateAngle()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/bf;->i:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/bf;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/bf;->D:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/bf;->E:F

    return v0
.end method

.method public h()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCodeRemote()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInfoWindowShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/bf;->v:Z

    return v0
.end method

.method public j()Z
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/bf;->w:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->a()Lcom/amap/api/mapcore/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/amap/api/col/bf;->H:I

    iget v2, p0, Lcom/amap/api/col/bf;->I:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/Rectangle;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized remove()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/bf;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/bf;->v:Z

    iget-object v0, p0, Lcom/amap/api/col/bf;->w:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/p;->a(Lcom/amap/api/col/au;)Z
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

.method public setAlign(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/amap/api/col/bf;->j:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iput v0, p0, Lcom/amap/api/col/bf;->t:F

    :goto_0
    iput p2, p0, Lcom/amap/api/col/bf;->k:I

    sparse-switch p2, :sswitch_data_0

    iput v0, p0, Lcom/amap/api/col/bf;->u:F

    :goto_1
    invoke-direct {p0}, Lcom/amap/api/col/bf;->f()V

    return-void

    :pswitch_1
    iput v0, p0, Lcom/amap/api/col/bf;->t:F

    goto :goto_0

    :pswitch_2
    iput v1, p0, Lcom/amap/api/col/bf;->t:F

    goto :goto_0

    :pswitch_3
    iput v2, p0, Lcom/amap/api/col/bf;->t:F

    goto :goto_0

    :sswitch_0
    iput v0, p0, Lcom/amap/api/col/bf;->u:F

    goto :goto_1

    :sswitch_1
    iput v1, p0, Lcom/amap/api/col/bf;->u:F

    goto :goto_1

    :sswitch_2
    iput v2, p0, Lcom/amap/api/col/bf;->u:F

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public setAnchor(FF)V
    .locals 0

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/bf;->A:I

    invoke-direct {p0}, Lcom/amap/api/col/bf;->l()V

    return-void
.end method

.method public setFontColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/bf;->B:I

    invoke-direct {p0}, Lcom/amap/api/col/bf;->l()V

    return-void
.end method

.method public setFontSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/bf;->C:I

    invoke-direct {p0}, Lcom/amap/api/col/bf;->l()V

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/bf;->y:Ljava/lang/Object;

    return-void
.end method

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/bf;->s:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/amap/api/col/bf;->a()Z

    invoke-direct {p0}, Lcom/amap/api/col/bf;->f()V

    return-void
.end method

.method public setRotateAngle(F)V
    .locals 2

    const/high16 v1, 0x43b40000    # 360.0f

    iput p1, p0, Lcom/amap/api/col/bf;->i:F

    neg-float v0, p1

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/bf;->h:F

    invoke-direct {p0}, Lcom/amap/api/col/bf;->f()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/bf;->z:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/col/bf;->l()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/bf;->D:Landroid/graphics/Typeface;

    invoke-direct {p0}, Lcom/amap/api/col/bf;->l()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/bf;->v:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/col/bf;->v:Z

    invoke-direct {p0}, Lcom/amap/api/col/bf;->f()V

    goto :goto_0
.end method

.method public setZIndex(F)V
    .locals 1

    iput p1, p0, Lcom/amap/api/col/bf;->E:F

    iget-object v0, p0, Lcom/amap/api/col/bf;->w:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->g()V

    return-void
.end method
