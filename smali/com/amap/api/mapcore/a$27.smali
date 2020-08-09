.class Lcom/amap/api/mapcore/a$27;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a;->setIndoorEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/amap/api/mapcore/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$27;->b:Lcom/amap/api/mapcore/a;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/a$27;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a$27;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a$27;->b:Lcom/amap/api/mapcore/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/a;->b(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a$27;->b:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a$27;->b:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0}, Lcom/amap/api/col/cm;->d()Lcom/amap/api/col/ck;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a$27;->b:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0}, Lcom/amap/api/col/cm;->d()Lcom/amap/api/col/ck;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ck;->a(Z)V

    goto :goto_0
.end method
