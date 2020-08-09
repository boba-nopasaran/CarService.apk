.class Lcom/amap/api/mapcore/a$28;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a;->setLoadOfflineData(Z)V
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

    iput-object p1, p0, Lcom/amap/api/mapcore/a$28;->b:Lcom/amap/api/mapcore/a;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/a$28;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/a$28;->b:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->k(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a$28;->b:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->k(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    const/16 v2, 0xa29

    iget-boolean v3, p0, Lcom/amap/api/mapcore/a$28;->a:Z

    if-eqz v3, :cond_1

    move v3, v1

    :goto_0
    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :cond_0
    return-void

    :cond_1
    move v3, v4

    goto :goto_0
.end method
