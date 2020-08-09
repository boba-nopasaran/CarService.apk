.class public Lcom/amap/api/col/r;
.super Ljava/lang/Object;
.source "NetFileFetch.java"

# interfaces
.implements Lcom/amap/api/col/gh$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/r$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/col/s;

.field b:J

.field c:J

.field d:J

.field e:Z

.field f:Lcom/amap/api/col/m;

.field g:J

.field h:Lcom/amap/api/col/r$a;

.field private i:Landroid/content/Context;

.field private j:Lcom/amap/api/col/w;

.field private k:Ljava/lang/String;

.field private l:Lcom/amap/api/col/gh;

.field private m:Lcom/amap/api/col/n;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/s;Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/col/w;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/r;->a:Lcom/amap/api/col/s;

    iput-wide v2, p0, Lcom/amap/api/col/r;->b:J

    iput-wide v2, p0, Lcom/amap/api/col/r;->c:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/r;->e:Z

    iput-wide v2, p0, Lcom/amap/api/col/r;->g:J

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/m;->a(Landroid/content/Context;)Lcom/amap/api/col/m;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/r;->f:Lcom/amap/api/col/m;

    iput-object p1, p0, Lcom/amap/api/col/r;->a:Lcom/amap/api/col/s;

    iput-object p3, p0, Lcom/amap/api/col/r;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/r;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    invoke-direct {p0}, Lcom/amap/api/col/r;->g()V

    return-void
.end method

.method private a(I)V
    .locals 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private a(J)V
    .locals 5

    iget-wide v0, p0, Lcom/amap/api/col/r;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    iget-wide v2, p0, Lcom/amap/api/col/r;->d:J

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/amap/api/col/w;->a(JJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/r;->g:J

    :cond_0
    return-void
.end method

.method private f()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v2, 0x1b7740

    new-instance v1, Lcom/amap/api/col/x;

    iget-object v0, p0, Lcom/amap/api/col/r;->k:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/amap/api/col/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/amap/api/col/x;->a(I)V

    invoke-virtual {v1, v2}, Lcom/amap/api/col/x;->b(I)V

    new-instance v0, Lcom/amap/api/col/gh;

    iget-wide v2, p0, Lcom/amap/api/col/r;->b:J

    iget-wide v4, p0, Lcom/amap/api/col/r;->c:J

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/gh;-><init>(Lcom/amap/api/col/gl;JJ)V

    iput-object v0, p0, Lcom/amap/api/col/r;->l:Lcom/amap/api/col/gh;

    new-instance v0, Lcom/amap/api/col/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/r;->a:Lcom/amap/api/col/s;

    invoke-virtual {v2}, Lcom/amap/api/col/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/r;->a:Lcom/amap/api/col/s;

    invoke-virtual {v2}, Lcom/amap/api/col/s;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/amap/api/col/r;->b:J

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/col/n;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/amap/api/col/r;->m:Lcom/amap/api/col/n;

    return-void
.end method

.method private g()V
    .locals 4

    const-wide/16 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/r;->a:Lcom/amap/api/col/s;

    invoke-virtual {v1}, Lcom/amap/api/col/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/r;->a:Lcom/amap/api/col/s;

    invoke-virtual {v1}, Lcom/amap/api/col/s;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/r;->e:Z

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/r;->b:J

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/r;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/r;->d:J

    iget-wide v0, p0, Lcom/amap/api/col/r;->d:J

    iput-wide v0, p0, Lcom/amap/api/col/r;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    sget-object v1, Lcom/amap/api/col/w$a;->c:Lcom/amap/api/col/w$a;

    invoke-interface {v0, v1}, Lcom/amap/api/col/w;->a(Lcom/amap/api/col/w$a;)V

    goto :goto_0

    :cond_1
    iput-wide v2, p0, Lcom/amap/api/col/r;->b:J

    iput-wide v2, p0, Lcom/amap/api/col/r;->c:J

    goto :goto_0
.end method

.method private h()Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/r;->a:Lcom/amap/api/col/s;

    invoke-virtual {v1}, Lcom/amap/api/col/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/r;->a:Lcom/amap/api/col/s;

    invoke-virtual {v1}, Lcom/amap/api/col/s;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    sget v0, Lcom/amap/api/col/eh;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/r;->i:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/ch;->e()Lcom/amap/api/col/eo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amap/api/col/eh;->a(Landroid/content/Context;Lcom/amap/api/col/eo;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SiteFileFetch"

    const-string v3, "authOffLineDownLoad"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private j()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/col/r;->a:Lcom/amap/api/col/s;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/amap/api/col/r;->g:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/r;->k()V

    iput-wide v0, p0, Lcom/amap/api/col/r;->g:J

    iget-wide v0, p0, Lcom/amap/api/col/r;->b:J

    invoke-direct {p0, v0, v1}, Lcom/amap/api/col/r;->a(J)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 10

    iget-object v1, p0, Lcom/amap/api/col/r;->f:Lcom/amap/api/col/m;

    iget-object v0, p0, Lcom/amap/api/col/r;->a:Lcom/amap/api/col/s;

    invoke-virtual {v0}, Lcom/amap/api/col/s;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/col/r;->a:Lcom/amap/api/col/s;

    invoke-virtual {v0}, Lcom/amap/api/col/s;->d()I

    move-result v3

    iget-wide v4, p0, Lcom/amap/api/col/r;->d:J

    iget-wide v6, p0, Lcom/amap/api/col/r;->b:J

    iget-wide v8, p0, Lcom/amap/api/col/r;->c:J

    invoke-virtual/range {v1 .. v9}, Lcom/amap/api/col/m;->a(Ljava/lang/String;IJJJ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/r;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/ch;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/r;->i()V

    sget v0, Lcom/amap/api/col/eh;->a:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    sget-object v1, Lcom/amap/api/col/w$a;->a:Lcom/amap/api/col/w$a;

    invoke-interface {v0, v1}, Lcom/amap/api/col/w;->a(Lcom/amap/api/col/w$a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    sget-object v1, Lcom/amap/api/col/w$a;->b:Lcom/amap/api/col/w$a;

    invoke-interface {v0, v1}, Lcom/amap/api/col/w;->a(Lcom/amap/api/col/w$a;)V
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SiteFileFetch"

    const-string v2, "download"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    sget-object v1, Lcom/amap/api/col/w$a;->a:Lcom/amap/api/col/w$a;

    invoke-interface {v0, v1}, Lcom/amap/api/col/w;->a(Lcom/amap/api/col/w$a;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/col/r;->h()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/r;->e:Z

    :cond_3
    iget-boolean v0, p0, Lcom/amap/api/col/r;->e:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/amap/api/col/r;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/r;->d:J

    iget-wide v0, p0, Lcom/amap/api/col/r;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const-string v0, "File Length is not known!"

    invoke-static {v0}, Lcom/amap/api/col/u;->a(Ljava/lang/String;)V

    :goto_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/r;->b:J

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    invoke-interface {v0}, Lcom/amap/api/col/w;->n()V

    :cond_5
    iget-wide v0, p0, Lcom/amap/api/col/r;->b:J

    iget-wide v2, p0, Lcom/amap/api/col/r;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    invoke-virtual {p0}, Lcom/amap/api/col/r;->e()V
    :try_end_1
    .catch Lcom/amap/api/maps/AMapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    sget-object v1, Lcom/amap/api/col/w$a;->c:Lcom/amap/api/col/w$a;

    invoke-interface {v0, v1}, Lcom/amap/api/col/w;->a(Lcom/amap/api/col/w$a;)V

    goto :goto_0

    :cond_6
    :try_start_2
    iget-wide v0, p0, Lcom/amap/api/col/r;->d:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const-string v0, "File is not access!"

    invoke-static {v0}, Lcom/amap/api/col/u;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-wide v0, p0, Lcom/amap/api/col/r;->d:J

    iput-wide v0, p0, Lcom/amap/api/col/r;->c:J

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/amap/api/col/r;->f()V

    iget-object v0, p0, Lcom/amap/api/col/r;->l:Lcom/amap/api/col/gh;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/gh;->a(Lcom/amap/api/col/gh$a;)V
    :try_end_2
    .catch Lcom/amap/api/maps/AMapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public a(Lcom/amap/api/col/r$a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/r;->h:Lcom/amap/api/col/r$a;

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    sget-object v1, Lcom/amap/api/col/w$a;->b:Lcom/amap/api/col/w$a;

    invoke-interface {v0, v1}, Lcom/amap/api/col/w;->a(Lcom/amap/api/col/w$a;)V

    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/r;->m:Lcom/amap/api/col/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/r;->m:Lcom/amap/api/col/n;

    invoke-virtual {v0}, Lcom/amap/api/col/n;->a()V

    goto :goto_0
.end method

.method public a([BJ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/r;->m:Lcom/amap/api/col/n;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/n;->a([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-wide p2, p0, Lcom/amap/api/col/r;->b:J

    invoke-direct {p0}, Lcom/amap/api/col/r;->j()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "fileAccessI"

    const-string v2, "fileAccessI.write(byte[] data)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    sget-object v1, Lcom/amap/api/col/w$a;->c:Lcom/amap/api/col/w$a;

    invoke-interface {v0, v1}, Lcom/amap/api/col/w;->a(Lcom/amap/api/col/w$a;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/r;->l:Lcom/amap/api/col/gh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/r;->l:Lcom/amap/api/col/gh;

    invoke-virtual {v0}, Lcom/amap/api/col/gh;->a()V

    goto :goto_0
.end method

.method public b()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/amap/api/col/r;->a:Lcom/amap/api/col/s;

    invoke-virtual {v1}, Lcom/amap/api/col/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    sget-object v3, Lcom/amap/api/mapcore/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0x190

    if-lt v1, v3, :cond_0

    invoke-direct {p0, v1}, Lcom/amap/api/col/r;->a(I)V

    const-wide/16 v0, -0x2

    :goto_0
    return-wide v0

    :cond_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    int-to-long v0, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/r;->l:Lcom/amap/api/col/gh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/r;->l:Lcom/amap/api/col/gh;

    invoke-virtual {v0}, Lcom/amap/api/col/gh;->a()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    invoke-interface {v0}, Lcom/amap/api/col/w;->p()V

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/r;->k()V

    return-void
.end method

.method public e()V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/r;->j()V

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/r;->j:Lcom/amap/api/col/w;

    invoke-interface {v0}, Lcom/amap/api/col/w;->o()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/r;->m:Lcom/amap/api/col/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/r;->m:Lcom/amap/api/col/n;

    invoke-virtual {v0}, Lcom/amap/api/col/n;->a()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/r;->h:Lcom/amap/api/col/r$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/r;->h:Lcom/amap/api/col/r$a;

    invoke-interface {v0}, Lcom/amap/api/col/r$a;->d()V

    :cond_2
    return-void
.end method
