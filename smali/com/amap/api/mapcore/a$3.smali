.class Lcom/amap/api/mapcore/a$3;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$3;->a:Lcom/amap/api/mapcore/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a$3;->a:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a$3;->a:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0}, Lcom/amap/api/col/cm;->h()Lcom/amap/api/col/co;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/co;->c()V

    :cond_0
    return-void
.end method
