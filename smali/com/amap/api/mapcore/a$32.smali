.class Lcom/amap/api/mapcore/a$32;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$32;->a:Lcom/amap/api/mapcore/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a$32;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->k(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->destorySurface()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a$32;->a:Lcom/amap/api/mapcore/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/a;->a(Lcom/amap/api/mapcore/a;Lcom/autonavi/ae/gmap/GLMapEngine;)Lcom/autonavi/ae/gmap/GLMapEngine;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
