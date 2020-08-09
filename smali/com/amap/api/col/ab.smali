.class public Lcom/amap/api/col/ab;
.super Lcom/amap/api/col/z;
.source "CompleteState.java"


# direct methods
.method public constructor <init>(ILcom/amap/api/mapcore/offlinemap/CityObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/z;-><init>(ILcom/amap/api/mapcore/offlinemap/CityObject;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ab;->b:Lcom/amap/api/mapcore/offlinemap/CityObject;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/CityObject;->e()V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/ab;->b:Lcom/amap/api/mapcore/offlinemap/CityObject;

    iget-object v0, v0, Lcom/amap/api/mapcore/offlinemap/CityObject;->g:Lcom/amap/api/col/aa;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/ab;->b(Lcom/amap/api/col/aa;)V

    iget-object v0, p0, Lcom/amap/api/col/ab;->b:Lcom/amap/api/mapcore/offlinemap/CityObject;

    iget-object v1, p0, Lcom/amap/api/col/ab;->b:Lcom/amap/api/mapcore/offlinemap/CityObject;

    iget-object v1, v1, Lcom/amap/api/mapcore/offlinemap/CityObject;->g:Lcom/amap/api/col/aa;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/offlinemap/CityObject;->a(Lcom/amap/api/col/aa;)V

    iget-object v0, p0, Lcom/amap/api/col/ab;->b:Lcom/amap/api/mapcore/offlinemap/CityObject;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/CityObject;->d()V

    return-void
.end method
