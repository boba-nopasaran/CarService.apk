.class public Lcom/aispeech/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/a/e;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static f:J

.field private static synthetic g:Z


# instance fields
.field private d:Lcom/aispeech/a/d;

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const-class v0, Lcom/aispeech/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/aispeech/a/f;->g:Z

    const-class v0, Lcom/aispeech/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aispeech/a/f;->a:Ljava/lang/String;

    sput v2, Lcom/aispeech/a/f;->b:I

    sget v0, Lcom/aispeech/a/a;->a:I

    const/16 v3, 0xc

    if-ne v0, v3, :cond_0

    move v1, v2

    :cond_0
    sput v1, Lcom/aispeech/a/f;->c:I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/aispeech/a/f;)V
    .locals 9

    const/4 v1, 0x0

    sget-boolean v0, Lcom/aispeech/a/f;->g:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-virtual {v1}, Lcom/aispeech/AISampleRate;->getValue()I

    array-length v0, v1

    new-array v2, v0, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    array-length v3, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v6, p0, Lcom/aispeech/a/f;->e:Z

    if-nez v6, :cond_3

    sget-object v2, Lcom/aispeech/a/f;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/aispeech/a/f;->e:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " break in recording:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v2, Lcom/aispeech/a/f;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "total cost time:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalFeedSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , dataSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/a/f;->d:Lcom/aispeech/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/a/f;->d:Lcom/aispeech/a/d;

    sget-wide v2, Lcom/aispeech/a/f;->f:J

    invoke-interface {v0, v2, v3}, Lcom/aispeech/a/d;->b(J)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/a/f;->e:Z

    iget-object v0, p0, Lcom/aispeech/a/f;->d:Lcom/aispeech/a/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/a/f;->d:Lcom/aispeech/a/d;

    invoke-interface {v0}, Lcom/aispeech/a/d;->c()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/aispeech/a/f;->d:Lcom/aispeech/a/d;

    if-eqz v0, :cond_4

    if-lez v3, :cond_4

    iget-object v0, p0, Lcom/aispeech/a/f;->d:Lcom/aispeech/a/d;

    sget-wide v6, Lcom/aispeech/a/f;->f:J

    invoke-interface {v0, v6, v7, v2, v3}, Lcom/aispeech/a/d;->a(J[BI)V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/aispeech/a/f;->d:Lcom/aispeech/a/d;

    new-instance v2, Lcom/aispeech/AIError;

    const v3, 0x114f7

    const-string v4, "\u6a21\u62df\u5f55\u97f3\u5f02\u5e38\u505c\u6b62"

    invoke-direct {v2, v3, v4}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/aispeech/a/d;->a(Lcom/aispeech/AIError;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private declared-synchronized g()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/a/f;->d:Lcom/aispeech/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/a/f;->d:Lcom/aispeech/a/d;

    sget-wide v2, Lcom/aispeech/a/f;->f:J

    invoke-interface {v0, v2, v3}, Lcom/aispeech/a/d;->a(J)V

    :cond_0
    new-instance v0, Lcom/aispeech/a/f$1;

    invoke-direct {v0, p0}, Lcom/aispeech/a/f$1;-><init>(Lcom/aispeech/a/f;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aispeech/a/f;->e:Z

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/aispeech/a/d;)J
    .locals 4

    sget-wide v0, Lcom/aispeech/a/f;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/aispeech/a/f;->f:J

    iput-object p1, p0, Lcom/aispeech/a/f;->d:Lcom/aispeech/a/d;

    invoke-direct {p0}, Lcom/aispeech/a/f;->g()V

    sget-wide v0, Lcom/aispeech/a/f;->f:J

    return-wide v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()Lcom/aispeech/AISampleRate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lcom/aispeech/a/d;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/a/f;->e:Z

    return-void
.end method

.method public final c()I
    .locals 1

    sget v0, Lcom/aispeech/a/f;->c:I

    return v0
.end method

.method public final c(Lcom/aispeech/a/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/a/f;->e:Z

    return v0
.end method

.method public final d()I
    .locals 1

    sget v0, Lcom/aispeech/a/f;->b:I

    return v0
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method
