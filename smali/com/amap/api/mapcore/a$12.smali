.class Lcom/amap/api/mapcore/a$12;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/ci;

.field final synthetic b:Lcom/amap/api/mapcore/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/a;Lcom/amap/api/col/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$12;->b:Lcom/amap/api/mapcore/a;

    iput-object p2, p0, Lcom/amap/api/mapcore/a$12;->a:Lcom/amap/api/col/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a$12;->b:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->o(Lcom/amap/api/mapcore/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a$12;->b:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a$12;->b:Lcom/amap/api/mapcore/a;

    iget-object v1, p0, Lcom/amap/api/mapcore/a$12;->b:Lcom/amap/api/mapcore/a;

    iget-object v1, v1, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/a;->setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a$12;->a:Lcom/amap/api/col/ci;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ci;->a(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
