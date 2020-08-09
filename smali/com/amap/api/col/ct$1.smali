.class final Lcom/amap/api/col/ct$1;
.super Lcom/amap/api/col/gg;
.source "Ae8Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/ct;->a(Landroid/content/Context;I[B)Lcom/amap/api/col/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[B


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/col/eo;[B)V
    .locals 0

    iput-object p3, p0, Lcom/amap/api/col/ct$1;->a:[B

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/gg;-><init>(Landroid/content/Context;Lcom/amap/api/col/eo;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
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

.method public c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amap/api/col/ct;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ct$1;->a:[B

    return-object v0
.end method

.method public e()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
