.class Lcom/amap/api/mapcore/a$11;
.super Lcom/amap/api/mapcore/a$a;
.source "AMapDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/a;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/a$11;->a:Lcom/amap/api/mapcore/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/a$a;-><init>(Lcom/amap/api/mapcore/a$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Lcom/amap/api/mapcore/a$a;->run()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a$11;->a:Lcom/amap/api/mapcore/a;

    iget-boolean v1, p0, Lcom/amap/api/mapcore/a$11;->c:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/a;->setTrafficEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
