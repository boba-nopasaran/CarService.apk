.class Lcom/amap/api/mapcore/a$b$1;
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

    iput-object p1, p0, Lcom/amap/api/mapcore/a$b$1;->b:Lcom/amap/api/mapcore/a$b;

    iput-object p2, p0, Lcom/amap/api/mapcore/a$b$1;->a:Lcom/amap/api/col/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a$b$1;->a:Lcom/amap/api/col/ck;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ck;->a(Z)V

    return-void
.end method
