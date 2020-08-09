.class public Lcom/amap/api/services/a/ch;
.super Ljava/lang/Thread;
.source "DexDownLoad.java"

# interfaces
.implements Lcom/amap/api/services/a/cz$a;


# instance fields
.field private a:Lcom/amap/api/services/a/ci;

.field private b:Lcom/amap/api/services/a/cz;

.field private c:Lcom/amap/api/services/a/bh;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/RandomAccessFile;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/a/ci;Lcom/amap/api/services/a/bh;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    new-instance v0, Lcom/amap/api/services/a/cz;

    new-instance v1, Lcom/amap/api/services/a/cm;

    iget-object v2, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    invoke-direct {v1, v2}, Lcom/amap/api/services/a/cm;-><init>(Lcom/amap/api/services/a/ci;)V

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/cz;-><init>(Lcom/amap/api/services/a/dd;)V

    iput-object v0, p0, Lcom/amap/api/services/a/ch;->b:Lcom/amap/api/services/a/cz;

    iget-object v0, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    iget-object v0, v0, Lcom/amap/api/services/a/ci;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amap/api/services/a/cn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ch;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "DexDownLoad()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/cs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "clearMarker()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/cs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    invoke-virtual {v0}, Lcom/amap/api/services/a/ci;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/amap/api/services/a/bu;

    iget-object v0, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/services/a/cq;->c()Lcom/amap/api/services/a/cq;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/amap/api/services/a/bu;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bt;)V

    new-instance v0, Lcom/amap/api/services/a/cr$a;

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    iget-object v1, v1, Lcom/amap/api/services/a/ci;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    iget-object v3, v2, Lcom/amap/api/services/a/ci;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    iget-object v5, v2, Lcom/amap/api/services/a/ci;->d:Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/cr$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "copy"

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/cr$a;->a(Ljava/lang/String;)Lcom/amap/api/services/a/cr$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/cr$a;->a()Lcom/amap/api/services/a/cr;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    iget-object v1, v1, Lcom/amap/api/services/a/ci;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    iget-object v2, v2, Lcom/amap/api/services/a/ci;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    iget-object v3, v3, Lcom/amap/api/services/a/ci;->d:Ljava/lang/String;

    invoke-static {v1, v2, v4, v3}, Lcom/amap/api/services/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/amap/api/services/a/cn$a;->a(Lcom/amap/api/services/a/bu;Lcom/amap/api/services/a/cr;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    iget-object v1, v1, Lcom/amap/api/services/a/ci;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/amap/api/services/a/ch;->a(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    iget-object v2, p0, Lcom/amap/api/services/a/ch;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    iget-object v3, v3, Lcom/amap/api/services/a/ci;->d:Ljava/lang/String;

    invoke-static {v0, v6, v1, v2, v3}, Lcom/amap/api/services/a/cn;->a(Landroid/content/Context;Lcom/amap/api/services/a/bu;Lcom/amap/api/services/a/bh;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    invoke-static {v0, v1}, Lcom/amap/api/services/a/cn;->a(Landroid/content/Context;Lcom/amap/api/services/a/bh;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "onFinish1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/cs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/amap/api/services/a/bd;->m(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/amap/api/services/a/bu;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    iget-object v0, v0, Lcom/amap/api/services/a/ci;->b:Ljava/lang/String;

    const-string v2, "used"

    invoke-static {p1, v0, v2}, Lcom/amap/api/services/a/cn$a;->a(Lcom/amap/api/services/a/bu;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cr;

    invoke-virtual {v0}, Lcom/amap/api/services/a/cr;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    iget-object v2, v2, Lcom/amap/api/services/a/ci;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amap/api/services/a/cs;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "dDownLoad"

    const-string v3, "isUsed()"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/cs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/amap/api/services/a/bu;Lcom/amap/api/services/a/cr;Lcom/amap/api/services/a/ci;)Z
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p3, Lcom/amap/api/services/a/ci;->b:Ljava/lang/String;

    iget-object v2, p3, Lcom/amap/api/services/a/ci;->c:Ljava/lang/String;

    iget-object v3, p3, Lcom/amap/api/services/a/ci;->d:Ljava/lang/String;

    iget-object v4, p3, Lcom/amap/api/services/a/ci;->e:Ljava/lang/String;

    const-string v4, "errorstatus"

    invoke-virtual {p2}, Lcom/amap/api/services/a/cr;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ch;->b(Lcom/amap/api/services/a/bu;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/amap/api/services/a/ch;->d:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    invoke-static {v4, v1, v2}, Lcom/amap/api/services/a/cn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v2, v3}, Lcom/amap/api/services/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/amap/api/services/a/cr;

    invoke-virtual {p1, v2, v4}, Lcom/amap/api/services/a/bu;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    invoke-virtual {v4}, Lcom/amap/api/services/a/bh;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/amap/api/services/a/cn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    iget-object v4, p0, Lcom/amap/api/services/a/ch;->d:Ljava/lang/String;

    invoke-static {v1, p1, v2, v4, v3}, Lcom/amap/api/services/a/cn;->a(Landroid/content/Context;Lcom/amap/api/services/a/bu;Lcom/amap/api/services/a/bh;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    invoke-static {v1, v2}, Lcom/amap/api/services/a/cn;->a(Landroid/content/Context;Lcom/amap/api/services/a/bh;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "dDownLoad"

    const-string v3, "processDownloadedFile()"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/cs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/amap/api/services/a/bu;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    invoke-virtual {v2}, Lcom/amap/api/services/a/bh;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    invoke-virtual {v3}, Lcom/amap/api/services/a/bh;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/cn;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    invoke-static {v0, p1, v1}, Lcom/amap/api/services/a/cn;->a(Landroid/content/Context;Lcom/amap/api/services/a/bu;Lcom/amap/api/services/a/bh;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    invoke-static {v0, v1}, Lcom/amap/api/services/a/cn;->a(Landroid/content/Context;Lcom/amap/api/services/a/bh;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private f()Z
    .locals 3

    new-instance v0, Lcom/amap/api/services/a/bu;

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/services/a/cq;->c()Lcom/amap/api/services/a/cq;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/bu;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bt;)V

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ch;->a(Lcom/amap/api/services/a/bu;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    iget-object v1, v1, Lcom/amap/api/services/a/ci;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amap/api/services/a/cn$a;->a(Lcom/amap/api/services/a/bu;Ljava/lang/String;)Lcom/amap/api/services/a/cr;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/services/a/ch;->a(Lcom/amap/api/services/a/bu;Lcom/amap/api/services/a/cr;Lcom/amap/api/services/a/ci;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    iget v1, v1, Lcom/amap/api/services/a/ci;->g:I

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    iget v1, v1, Lcom/amap/api/services/a/ci;->f:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/services/a/ch;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "startDownload()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/cs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ch;->e:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/amap/api/services/a/cs;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a([BJ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ch;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amap/api/services/a/ch;->e:Ljava/io/RandomAccessFile;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/ch;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/amap/api/services/a/ch;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "onDownload()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/cs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    invoke-virtual {v1}, Lcom/amap/api/services/a/bh;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    iget-object v2, v2, Lcom/amap/api/services/a/ci;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    invoke-virtual {v1}, Lcom/amap/api/services/a/bh;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    iget-object v2, v2, Lcom/amap/api/services/a/ci;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method c()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/services/a/ch;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/services/a/ch;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/amap/api/services/a/ch;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/services/a/ch;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    invoke-virtual {v2}, Lcom/amap/api/services/a/bh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/services/a/cn;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "dDownLoad"

    const-string v3, "isNeedDownload()"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/cs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ch;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/ch;->e:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/amap/api/services/a/cs;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ci;

    invoke-virtual {v0}, Lcom/amap/api/services/a/ci;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amap/api/services/a/cs;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ch;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/a/di;

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    invoke-virtual {v2}, Lcom/amap/api/services/a/bh;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    invoke-virtual {v3}, Lcom/amap/api/services/a/bh;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "O008"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/services/a/di;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "{\"param_int_first\":1}"

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/di;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/amap/api/services/a/dj;->a(Lcom/amap/api/services/a/di;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/cs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "dDownLoad"

    const-string v2, "onFinish"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/cs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/services/a/ch;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/services/a/di;

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    invoke-virtual {v2}, Lcom/amap/api/services/a/bh;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/services/a/ch;->c:Lcom/amap/api/services/a/bh;

    invoke-virtual {v3}, Lcom/amap/api/services/a/bh;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "O008"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/services/a/di;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "{\"param_int_first\":0}"

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/di;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/amap/api/services/a/dj;->a(Lcom/amap/api/services/a/di;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/services/a/ch;->b:Lcom/amap/api/services/a/cz;

    invoke-virtual {v0, p0}, Lcom/amap/api/services/a/cz;->a(Lcom/amap/api/services/a/cz$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "run()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/cs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
