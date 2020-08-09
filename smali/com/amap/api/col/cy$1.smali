.class Lcom/amap/api/col/cy$1;
.super Ljava/lang/Object;
.source "AMapNaviViewCore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/cy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/cy;


# direct methods
.method constructor <init>(Lcom/amap/api/col/cy;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cy$1;->a:Lcom/amap/api/col/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/cy$1;->a:Lcom/amap/api/col/cy;

    invoke-static {v0}, Lcom/amap/api/col/cy;->a(Lcom/amap/api/col/cy;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cy$1;->a:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->recoverLockMode()V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/cy$1;->a:Lcom/amap/api/col/cy;

    invoke-static {v0}, Lcom/amap/api/col/cy;->c(Lcom/amap/api/col/cy;)Lcom/amap/api/navi/AMapNaviViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cy$1;->a:Lcom/amap/api/col/cy;

    invoke-static {v0}, Lcom/amap/api/col/cy;->c(Lcom/amap/api/col/cy;)Lcom/amap/api/navi/AMapNaviViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviViewListener;->onScanViewButtonClick()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/cy$1;->a:Lcom/amap/api/col/cy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/col/cy;->a(Lcom/amap/api/col/cy;Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy$1;->a:Lcom/amap/api/col/cy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cy;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy$1;->a:Lcom/amap/api/col/cy;

    invoke-static {v0}, Lcom/amap/api/col/cy;->b(Lcom/amap/api/col/cy;)Lcom/amap/api/col/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/di;->b()V

    goto :goto_0
.end method
