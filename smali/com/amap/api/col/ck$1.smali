.class Lcom/amap/api/col/ck$1;
.super Ljava/lang/Object;
.source "IndoorFloorSwitchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/ck;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/ck;


# direct methods
.method constructor <init>(Lcom/amap/api/col/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    invoke-virtual {v0}, Lcom/amap/api/col/ck;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    invoke-static {v1}, Lcom/amap/api/col/ck;->a(Lcom/amap/api/col/ck;)I

    move-result v1

    sub-int v0, v1, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    invoke-static {v0}, Lcom/amap/api/col/ck;->a(Lcom/amap/api/col/ck;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    invoke-static {v1}, Lcom/amap/api/col/ck;->b(Lcom/amap/api/col/ck;)I

    move-result v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    invoke-static {v1}, Lcom/amap/api/col/ck;->a(Lcom/amap/api/col/ck;)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    invoke-static {v2}, Lcom/amap/api/col/ck;->b(Lcom/amap/api/col/ck;)I

    move-result v2

    div-int/2addr v1, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    iget-object v2, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    invoke-static {v2}, Lcom/amap/api/col/ck;->c(Lcom/amap/api/col/ck;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/amap/api/col/ck;->b:I

    iget-object v0, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    invoke-static {v0}, Lcom/amap/api/col/ck;->d(Lcom/amap/api/col/ck;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    invoke-static {v2}, Lcom/amap/api/col/ck;->b(Lcom/amap/api/col/ck;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    new-instance v3, Lcom/amap/api/col/ck$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/amap/api/col/ck$1$1;-><init>(Lcom/amap/api/col/ck$1;II)V

    invoke-virtual {v2, v3}, Lcom/amap/api/col/ck;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    new-instance v3, Lcom/amap/api/col/ck$1$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/amap/api/col/ck$1$2;-><init>(Lcom/amap/api/col/ck$1;II)V

    invoke-virtual {v2, v3}, Lcom/amap/api/col/ck;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    iget-object v1, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    invoke-virtual {v1}, Lcom/amap/api/col/ck;->getScrollY()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amap/api/col/ck;->a(Lcom/amap/api/col/ck;I)I

    iget-object v0, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    iget-object v1, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    invoke-static {v1}, Lcom/amap/api/col/ck;->e(Lcom/amap/api/col/ck;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/ck$1;->a:Lcom/amap/api/col/ck;

    invoke-static {v2}, Lcom/amap/api/col/ck;->f(Lcom/amap/api/col/ck;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/col/ck;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
