.class Lcom/amap/api/services/a/cm;
.super Lcom/amap/api/services/a/dd;
.source "DexDownLoadRequest.java"


# instance fields
.field private a:Lcom/amap/api/services/a/ci;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/ci;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/services/a/dd;-><init>()V

    iput-object p1, p0, Lcom/amap/api/services/a/cm;->a:Lcom/amap/api/services/a/ci;

    return-void
.end method


# virtual methods
.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/cm;->a:Lcom/amap/api/services/a/ci;

    invoke-virtual {v0}, Lcom/amap/api/services/a/ci;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
