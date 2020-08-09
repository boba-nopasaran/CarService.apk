.class Lcom/amap/api/mapcore/a$6;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a;->t(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/amap/api/mapcore/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$6;->b:Lcom/amap/api/mapcore/a;

    iput p2, p0, Lcom/amap/api/mapcore/a$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/a$6;->b:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->k(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/a$6;->a:I

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->clearAllMessages(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a$6;->b:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->k(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/a$6;->a:I

    const/16 v2, 0xfa1

    const/4 v3, 0x1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    return-void
.end method
