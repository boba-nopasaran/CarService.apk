.class public final Lcom/maploc/t;
.super Lcom/amap/api/col/gg;
.source "LocationRequest.java"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field e:[B

.field i:[B

.field j:Z

.field k:Ljava/lang/String;

.field l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/eo;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/gg;-><init>(Landroid/content/Context;Lcom/amap/api/col/eo;)V

    iput-object v1, p0, Lcom/maploc/t;->a:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/maploc/t;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/maploc/t;->e:[B

    iput-object v1, p0, Lcom/maploc/t;->i:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maploc/t;->j:Z

    iput-object v1, p0, Lcom/maploc/t;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/maploc/t;->l:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/maploc/t;->a:Ljava/util/Map;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/maploc/t;->k:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/maploc/t;->l:Ljava/util/Map;

    return-void
.end method

.method public final b()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/maploc/t;->l:Ljava/util/Map;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/maploc/t;->d:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/maploc/t;->a:Ljava/util/Map;

    return-void
.end method

.method public final b([B)V
    .locals 0

    iput-object p1, p0, Lcom/maploc/t;->e:[B

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/maploc/t;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()[B
    .locals 1

    iget-object v0, p0, Lcom/maploc/t;->i:[B

    return-object v0
.end method

.method public final e()[B
    .locals 1

    iget-object v0, p0, Lcom/maploc/t;->e:[B

    return-object v0
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maploc/t;->j:Z

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/maploc/t;->j:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/maploc/t;->k:Ljava/lang/String;

    return-object v0
.end method
