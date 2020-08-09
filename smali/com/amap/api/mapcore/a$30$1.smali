.class Lcom/amap/api/mapcore/a$30$1;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a$30;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/a$30;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/a$30;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$30$1;->a:Lcom/amap/api/mapcore/a$30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a$30$1;->a:Lcom/amap/api/mapcore/a$30;

    iget-object v0, v0, Lcom/amap/api/mapcore/a$30;->b:Lcom/amap/api/mapcore/a;

    iget-object v1, p0, Lcom/amap/api/mapcore/a$30$1;->a:Lcom/amap/api/mapcore/a$30;

    iget v1, v1, Lcom/amap/api/mapcore/a$30;->a:I

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/a;->b(Lcom/amap/api/mapcore/a;I)I

    iget-object v0, p0, Lcom/amap/api/mapcore/a$30$1;->a:Lcom/amap/api/mapcore/a$30;

    iget-object v0, v0, Lcom/amap/api/mapcore/a$30;->b:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a$30$1;->a:Lcom/amap/api/mapcore/a$30;

    iget-object v0, v0, Lcom/amap/api/mapcore/a$30;->b:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0}, Lcom/amap/api/col/cm;->h()Lcom/amap/api/col/co;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/co;->setVisibility(I)V

    :cond_0
    return-void
.end method
