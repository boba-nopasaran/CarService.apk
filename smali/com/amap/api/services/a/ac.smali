.class public Lcom/amap/api/services/a/ac;
.super Lcom/amap/api/services/a/b;
.source "RoadTrafficSearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/services/a/b",
        "<",
        "Lcom/amap/api/services/traffic/RoadTrafficQuery;",
        "Lcom/amap/api/services/traffic/TrafficStatusResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/traffic/RoadTrafficQuery;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/b;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/ac;->e(Ljava/lang/String;)Lcom/amap/api/services/traffic/TrafficStatusResult;

    move-result-object v0

    return-object v0
.end method

.method protected e(Ljava/lang/String;)Lcom/amap/api/services/traffic/TrafficStatusResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-static {p1}, Lcom/amap/api/services/a/n;->p(Ljava/lang/String;)Lcom/amap/api/services/traffic/TrafficStatusResult;

    move-result-object v0

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "key="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/services/a/ac;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/services/a/az;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&name="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/ac;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/traffic/RoadTrafficQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/traffic/RoadTrafficQuery;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&adcode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/ac;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/traffic/RoadTrafficQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/traffic/RoadTrafficQuery;->getAdCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&level="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/ac;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/traffic/RoadTrafficQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/traffic/RoadTrafficQuery;->getLevel()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "&extensions=all"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&output=json"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/services/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/traffic/status/road?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
