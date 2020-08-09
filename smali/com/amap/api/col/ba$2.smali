.class Lcom/amap/api/col/ba$2;
.super Ljava/lang/Object;
.source "MyLocationOverlay.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/ba;


# direct methods
.method constructor <init>(Lcom/amap/api/col/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/ba$2;->a:Lcom/amap/api/col/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/col/ba$2;->a:Lcom/amap/api/col/ba;

    invoke-static {v1}, Lcom/amap/api/col/ba;->b(Lcom/amap/api/col/ba;)Lcom/amap/api/maps/model/Circle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Circle;->setCenter(Lcom/amap/api/maps/model/LatLng;)V

    iget-object v1, p0, Lcom/amap/api/col/ba$2;->a:Lcom/amap/api/col/ba;

    invoke-static {v1}, Lcom/amap/api/col/ba;->c(Lcom/amap/api/col/ba;)Lcom/amap/api/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
