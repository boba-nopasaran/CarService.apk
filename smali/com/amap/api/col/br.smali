.class public Lcom/amap/api/col/br;
.super Ljava/lang/Object;
.source "GLESUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/br$a;,
        Lcom/amap/api/col/br$c;,
        Lcom/amap/api/col/br$b;,
        Lcom/amap/api/col/br$d;
    }
.end annotation


# static fields
.field static a:Lcom/amap/api/col/br$d;


# direct methods
.method public static a()V
    .locals 2

    new-instance v0, Lcom/amap/api/col/br$d;

    const-string v1, "point.glsl"

    invoke-direct {v0, v1}, Lcom/amap/api/col/br$d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amap/api/col/br;->a:Lcom/amap/api/col/br$d;

    return-void
.end method

.method private static a(IILjava/nio/FloatBuffer;FII[F)V
    .locals 9

    const/16 v8, 0xbe2

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/high16 v6, 0x437f0000    # 255.0f

    const/4 v3, 0x0

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/amap/api/col/br;->a:Lcom/amap/api/col/br$d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/col/br;->a:Lcom/amap/api/col/br$d;

    invoke-virtual {v0}, Lcom/amap/api/col/br$d;->a()V

    invoke-static {v8}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    const/4 v6, 0x4

    new-array v6, v6, [F

    aput v2, v6, v3

    aput v4, v6, v7

    const/4 v2, 0x2

    aput v5, v6, v2

    aput v0, v6, v1

    invoke-static {p3}, Landroid/opengl/GLES20;->glLineWidth(F)V

    sget-object v0, Lcom/amap/api/col/br;->a:Lcom/amap/api/col/br$d;

    iget v0, v0, Lcom/amap/api/col/br$d;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    sget-object v0, Lcom/amap/api/col/br;->a:Lcom/amap/api/col/br$d;

    iget v0, v0, Lcom/amap/api/col/br$d;->b:I

    const/16 v2, 0x1406

    move v4, v3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    sget-object v0, Lcom/amap/api/col/br;->a:Lcom/amap/api/col/br$d;

    iget v0, v0, Lcom/amap/api/col/br$d;->c:I

    invoke-static {v0, v7, v6, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    sget-object v0, Lcom/amap/api/col/br;->a:Lcom/amap/api/col/br$d;

    iget v0, v0, Lcom/amap/api/col/br$d;->a:I

    invoke-static {v0, v7, v3, p6, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {p0, p4, p5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    sget-object v0, Lcom/amap/api/col/br;->a:Lcom/amap/api/col/br$d;

    iget v0, v0, Lcom/amap/api/col/br$d;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v8}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    goto :goto_0
.end method

.method private static a(IILjava/nio/FloatBuffer;FI[F)V
    .locals 7

    const/4 v4, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/amap/api/col/br;->a(IILjava/nio/FloatBuffer;FII[F)V

    return-void
.end method

.method public static a(IILjava/nio/FloatBuffer;FI[FII)V
    .locals 7

    const/4 v0, 0x6

    const/high16 v3, 0x3f800000    # 1.0f

    move v1, p0

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/br;->a(IILjava/nio/FloatBuffer;FI[F)V

    const/4 v0, 0x2

    const/4 v4, 0x1

    add-int/lit8 v5, p4, -0x1

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/amap/api/col/br;->a(IILjava/nio/FloatBuffer;FII[F)V

    return-void
.end method

.method public static a(IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II[F)V
    .locals 6

    const/4 v0, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    move v1, p0

    move-object v2, p4

    move v4, p6

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/br;->a(IILjava/nio/FloatBuffer;FI[F)V

    const/4 v0, 0x2

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/br;->a(IILjava/nio/FloatBuffer;FI[F)V

    return-void
.end method

.method public static a(ILjava/nio/FloatBuffer;FI[F)V
    .locals 6

    const/4 v0, 0x3

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/br;->a(IILjava/nio/FloatBuffer;FI[F)V

    return-void
.end method

.method public static a(Lcom/amap/api/mapcore/l;IIIIII)V
    .locals 7

    if-lez p4, :cond_0

    invoke-interface {p0}, Lcom/amap/api/mapcore/l;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_0
    new-instance v0, Lcom/amap/api/col/br$b;

    invoke-direct {v0}, Lcom/amap/api/col/br$b;-><init>()V

    invoke-interface {p0, v0}, Lcom/amap/api/mapcore/l;->a(Lcom/amap/api/col/bt;)V

    new-instance v0, Lcom/amap/api/col/br$a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/br$a;-><init>(IIIIII)V

    invoke-interface {p0, v0}, Lcom/amap/api/mapcore/l;->a(Lcom/amap/api/col/bs;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "amap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method
