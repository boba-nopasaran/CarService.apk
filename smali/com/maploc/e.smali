.class public final Lcom/maploc/e;
.super Ljava/lang/Object;
.source "MapLocFilter.java"


# static fields
.field private static c:Lcom/maploc/e;


# instance fields
.field a:I

.field b:J

.field private d:Lcom/maploc/b;

.field private e:J

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/maploc/e;->c:Lcom/maploc/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    iput-wide v2, p0, Lcom/maploc/e;->e:J

    iput-wide v2, p0, Lcom/maploc/e;->f:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/maploc/e;->a:I

    iput-wide v2, p0, Lcom/maploc/e;->b:J

    return-void
.end method

.method public static declared-synchronized a()Lcom/maploc/e;
    .locals 2

    const-class v1, Lcom/maploc/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/maploc/e;->c:Lcom/maploc/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/maploc/e;

    invoke-direct {v0}, Lcom/maploc/e;-><init>()V

    sput-object v0, Lcom/maploc/e;->c:Lcom/maploc/e;

    :cond_0
    sget-object v0, Lcom/maploc/e;->c:Lcom/maploc/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Lcom/maploc/b;)Lcom/maploc/b;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/maploc/b;)Lcom/maploc/b;
    .locals 12

    invoke-static {}, Lcom/maploc/y;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/maploc/e;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iput-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    invoke-static {}, Lcom/maploc/y;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maploc/e;->b:J

    iget-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcom/maploc/y;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maploc/e;->b:J

    iget-object v0, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    invoke-static {v0}, Lcom/maploc/l;->a(Lcom/maploc/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/maploc/l;->a(Lcom/maploc/b;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/maploc/y;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maploc/e;->e:J

    iput-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    iget-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/maploc/b;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    invoke-virtual {v2}, Lcom/maploc/b;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/maploc/b;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/maploc/b;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/maploc/y;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maploc/e;->e:J

    iput-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    iget-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/maploc/b;->c()I

    move-result v0

    iget-object v1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    invoke-virtual {v1}, Lcom/maploc/b;->c()I

    move-result v1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/maploc/y;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maploc/e;->e:J

    iput-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    iget-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/maploc/b;->getBuildingId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    invoke-virtual {v1}, Lcom/maploc/b;->getBuildingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/maploc/b;->getBuildingId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/maploc/y;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maploc/e;->e:J

    iput-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    iget-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/maploc/b;->getLocationType()I

    move-result v0

    iput v0, p0, Lcom/maploc/e;->a:I

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/maploc/b;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/maploc/b;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    invoke-virtual {v2}, Lcom/maploc/b;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    invoke-virtual {v2}, Lcom/maploc/b;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-static {v0}, Lcom/maploc/y;->a([D)F

    move-result v0

    iget-object v1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    invoke-virtual {v1}, Lcom/maploc/b;->getAccuracy()F

    move-result v1

    invoke-virtual {p1}, Lcom/maploc/b;->getAccuracy()F

    move-result v2

    sub-float v3, v2, v1

    invoke-static {}, Lcom/maploc/y;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/maploc/e;->e:J

    sub-long v6, v4, v6

    const/high16 v8, 0x42ca0000    # 101.0f

    cmpg-float v8, v1, v8

    if-gez v8, :cond_8

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v2, v8

    if-gtz v8, :cond_9

    :cond_8
    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v1, v8

    if-lez v8, :cond_c

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v2, v8

    if-lez v8, :cond_c

    :cond_9
    iget-wide v0, p0, Lcom/maploc/e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    iput-wide v4, p0, Lcom/maploc/e;->f:J

    :cond_a
    iget-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    goto/16 :goto_0

    :cond_b
    iget-wide v0, p0, Lcom/maploc/e;->f:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    iput-wide v4, p0, Lcom/maploc/e;->e:J

    iput-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/maploc/e;->f:J

    iget-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    goto/16 :goto_0

    :cond_c
    const/high16 v8, 0x42c80000    # 100.0f

    cmpg-float v8, v2, v8

    if-gez v8, :cond_d

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v1, v8

    if-lez v8, :cond_d

    iput-wide v4, p0, Lcom/maploc/e;->e:J

    iput-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/maploc/e;->f:J

    iget-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    goto/16 :goto_0

    :cond_d
    const v8, 0x43958000    # 299.0f

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_e

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/maploc/e;->f:J

    :cond_e
    const/high16 v8, 0x41200000    # 10.0f

    cmpg-float v8, v0, v8

    if-gez v8, :cond_11

    float-to-double v8, v0

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v8, v10

    if-lez v0, :cond_11

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_11

    const/high16 v0, -0x3c6a0000    # -300.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_f

    iget-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    goto/16 :goto_0

    :cond_f
    div-float v0, v1, v2

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_10

    iput-wide v4, p0, Lcom/maploc/e;->e:J

    iput-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    iget-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    goto/16 :goto_0

    :cond_10
    iget-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    goto/16 :goto_0

    :cond_11
    const/high16 v0, 0x43960000    # 300.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_13

    const-wide/16 v0, 0x7530

    cmp-long v0, v6, v0

    if-ltz v0, :cond_12

    invoke-static {}, Lcom/maploc/y;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maploc/e;->e:J

    iput-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    iget-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    goto/16 :goto_0

    :cond_12
    iget-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/maploc/y;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maploc/e;->e:J

    iput-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    iget-object p1, p0, Lcom/maploc/e;->d:Lcom/maploc/b;

    goto/16 :goto_0
.end method
