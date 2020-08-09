.class Lcom/amap/api/mapcore/a$24;
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

    iput-object p1, p0, Lcom/amap/api/mapcore/a$24;->a:Lcom/amap/api/mapcore/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/a$a;-><init>(Lcom/amap/api/mapcore/a$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-super {p0}, Lcom/amap/api/mapcore/a$a;->run()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a$24;->a:Lcom/amap/api/mapcore/a;

    iget v1, p0, Lcom/amap/api/mapcore/a$24;->g:I

    iget v2, p0, Lcom/amap/api/mapcore/a$24;->d:I

    iget v3, p0, Lcom/amap/api/mapcore/a$24;->e:I

    iget v4, p0, Lcom/amap/api/mapcore/a$24;->f:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amap/api/mapcore/a;->b(IIII)V

    return-void
.end method
