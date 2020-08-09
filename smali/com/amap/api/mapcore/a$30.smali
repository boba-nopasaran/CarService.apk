.class Lcom/amap/api/mapcore/a$30;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Lcom/amap/api/maps/model/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a;->setMaskLayerParams(IIIIIJ)V
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

    iput-object p1, p0, Lcom/amap/api/mapcore/a$30;->b:Lcom/amap/api/mapcore/a;

    iput p2, p0, Lcom/amap/api/mapcore/a$30;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a$30;->b:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/mapcore/a$30$1;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/a$30$1;-><init>(Lcom/amap/api/mapcore/a$30;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    return-void
.end method
