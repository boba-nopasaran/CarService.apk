.class Lcom/amap/api/mapcore/a$37;
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

    iput-object p1, p0, Lcom/amap/api/mapcore/a$37;->a:Lcom/amap/api/mapcore/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/a$a;-><init>(Lcom/amap/api/mapcore/a$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-super {p0}, Lcom/amap/api/mapcore/a$a;->run()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a$37;->a:Lcom/amap/api/mapcore/a;

    iget v1, p0, Lcom/amap/api/mapcore/a$37;->g:I

    iget-boolean v2, p0, Lcom/amap/api/mapcore/a$37;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/a;->e(IZ)V

    return-void
.end method
