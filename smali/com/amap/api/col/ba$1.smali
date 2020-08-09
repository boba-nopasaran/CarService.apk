.class Lcom/amap/api/col/ba$1;
.super Ljava/lang/Object;
.source "MyLocationOverlay.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Lcom/amap/api/col/ba$1;->a:Lcom/amap/api/col/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ba$1;->a:Lcom/amap/api/col/ba;

    invoke-static {v0}, Lcom/amap/api/col/ba;->a(Lcom/amap/api/col/ba;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
