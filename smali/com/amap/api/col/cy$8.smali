.class Lcom/amap/api/col/cy$8;
.super Ljava/lang/Object;
.source "AMapNaviViewCore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/cy;->p()V
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

    iput-object p1, p0, Lcom/amap/api/col/cy$8;->a:Lcom/amap/api/col/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/amap/api/col/cy$8;->a:Lcom/amap/api/col/cy;

    invoke-static {v0}, Lcom/amap/api/col/cy;->g(Lcom/amap/api/col/cy;)Lcom/amap/api/navi/INavi;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->stopNavi()V

    iget-object v0, p0, Lcom/amap/api/col/cy$8;->a:Lcom/amap/api/col/cy;

    invoke-static {v0}, Lcom/amap/api/col/cy;->h(Lcom/amap/api/col/cy;)Lcom/amap/api/col/cy$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cy$a;->sendEmptyMessage(I)Z

    return-void
.end method
