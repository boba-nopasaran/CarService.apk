.class Lcom/amap/api/services/a/bs$a;
.super Ljava/lang/Object;
.source "LogProcessor.java"

# interfaces
.implements Lcom/amap/api/services/a/cu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/bs;

.field private b:Lcom/amap/api/services/a/cc;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/bs;Lcom/amap/api/services/a/cc;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/a/bs$a;->a:Lcom/amap/api/services/a/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amap/api/services/a/bs$a;->b:Lcom/amap/api/services/a/cc;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/bs$a;->b:Lcom/amap/api/services/a/cc;

    iget-object v1, p0, Lcom/amap/api/services/a/bs$a;->a:Lcom/amap/api/services/a/bs;

    invoke-virtual {v1}, Lcom/amap/api/services/a/bs;->c()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/services/a/bm;->a(I)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amap/api/services/a/cc;->b(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
