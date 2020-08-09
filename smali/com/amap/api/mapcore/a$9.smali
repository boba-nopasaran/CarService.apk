.class Lcom/amap/api/mapcore/a$9;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a;->b(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/MotionEvent;

.field final synthetic b:Lcom/amap/api/mapcore/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/a;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$9;->b:Lcom/amap/api/mapcore/a;

    iput-object p2, p0, Lcom/amap/api/mapcore/a$9;->a:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a$9;->b:Lcom/amap/api/mapcore/a;

    iget-object v2, p0, Lcom/amap/api/mapcore/a$9;->a:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore/a$9;->a:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    const/16 v4, 0x19

    invoke-static {v1, v2, v3, v4}, Lcom/amap/api/mapcore/a;->a(Lcom/amap/api/mapcore/a;III)Lcom/amap/api/maps/model/Poi;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/a$9;->b:Lcom/amap/api/mapcore/a;

    invoke-static {v2}, Lcom/amap/api/mapcore/a;->l(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnPOIClickListener;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x14

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/mapcore/a$9;->b:Lcom/amap/api/mapcore/a;

    iget-object v1, v1, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/mapcore/a$9;->a:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/amap/api/mapcore/a$9;->a:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/amap/api/mapcore/a$9;->b:Lcom/amap/api/mapcore/a;

    iget-object v1, v1, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
