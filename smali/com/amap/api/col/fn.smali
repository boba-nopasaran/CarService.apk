.class public Lcom/amap/api/col/fn;
.super Ljava/lang/Object;
.source "UpdateLogDBOperation.java"


# instance fields
.field private a:Lcom/amap/api/col/fc;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/fn;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/col/fn;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/col/fn;->a(Landroid/content/Context;)Lcom/amap/api/col/fc;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/fn;->a:Lcom/amap/api/col/fc;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/amap/api/col/fc;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/amap/api/col/fc;

    const-class v2, Lcom/amap/api/col/fj;

    invoke-static {v2}, Lcom/amap/api/col/fc;->a(Ljava/lang/Class;)Lcom/amap/api/col/fb;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/amap/api/col/fc;-><init>(Landroid/content/Context;Lcom/amap/api/col/fb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "UpdateLogDB"

    const-string v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/et;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/amap/api/col/fo;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/fn;->a:Lcom/amap/api/col/fc;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/fn;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/col/fn;->a(Landroid/content/Context;)Lcom/amap/api/col/fc;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/fn;->a:Lcom/amap/api/col/fc;

    :cond_0
    const-string v0, "1=1"

    iget-object v2, p0, Lcom/amap/api/col/fn;->a:Lcom/amap/api/col/fc;

    const-class v3, Lcom/amap/api/col/fo;

    invoke-virtual {v2, v0, v3}, Lcom/amap/api/col/fc;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/fo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "UpdateLogDB"

    const-string v3, "getUpdateLog"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/et;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/amap/api/col/fo;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/fn;->a:Lcom/amap/api/col/fc;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/fn;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/col/fn;->a(Landroid/content/Context;)Lcom/amap/api/col/fc;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/fn;->a:Lcom/amap/api/col/fc;

    :cond_1
    const-string v0, "1=1"

    iget-object v1, p0, Lcom/amap/api/col/fn;->a:Lcom/amap/api/col/fc;

    const-class v2, Lcom/amap/api/col/fo;

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/col/fc;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/fn;->a:Lcom/amap/api/col/fc;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/fc;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UpdateLogDB"

    const-string v2, "updateLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/et;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/fn;->a:Lcom/amap/api/col/fc;

    invoke-virtual {v1, v0, p1}, Lcom/amap/api/col/fc;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
