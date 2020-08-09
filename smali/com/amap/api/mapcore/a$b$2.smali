.class Lcom/amap/api/mapcore/a$b$2;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/a$b;->a(Lcom/amap/api/col/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/ck;

.field final synthetic b:Lcom/amap/api/mapcore/a$b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/a$b;Lcom/amap/api/col/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$b$2;->b:Lcom/amap/api/mapcore/a$b;

    iput-object p2, p0, Lcom/amap/api/mapcore/a$b$2;->a:Lcom/amap/api/col/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a$b$2;->a:Lcom/amap/api/col/ck;

    iget-object v1, p0, Lcom/amap/api/mapcore/a$b$2;->b:Lcom/amap/api/mapcore/a$b;

    iget-object v1, v1, Lcom/amap/api/mapcore/a$b;->a:Lcom/amap/api/mapcore/a;

    iget-object v1, v1, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    iget-object v1, v1, Lcom/amap/api/col/g;->floor_names:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ck;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a$b$2;->a:Lcom/amap/api/col/ck;

    iget-object v1, p0, Lcom/amap/api/mapcore/a$b$2;->b:Lcom/amap/api/mapcore/a$b;

    iget-object v1, v1, Lcom/amap/api/mapcore/a$b;->a:Lcom/amap/api/mapcore/a;

    iget-object v1, v1, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    iget-object v1, v1, Lcom/amap/api/col/g;->activeFloorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ck;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a$b$2;->a:Lcom/amap/api/col/ck;

    invoke-virtual {v0}, Lcom/amap/api/col/ck;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a$b$2;->a:Lcom/amap/api/col/ck;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ck;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
