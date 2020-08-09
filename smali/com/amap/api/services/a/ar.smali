.class public Lcom/amap/api/services/a/ar;
.super Ljava/lang/Object;
.source "NearbySearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/INearbySearch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/ar$a;
    }
.end annotation


# static fields
.field private static e:J


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/services/a/q;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Lcom/amap/api/services/core/LatLonPoint;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/util/Timer;

.field private k:Lcom/amap/api/services/nearby/UploadInfoCallback;

.field private l:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/amap/api/services/a/ar;->e:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/ar;->a:Ljava/util/List;

    iput-object v1, p0, Lcom/amap/api/services/a/ar;->g:Lcom/amap/api/services/core/LatLonPoint;

    iput-object v1, p0, Lcom/amap/api/services/a/ar;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/services/a/ar;->i:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/ar;->j:Ljava/util/Timer;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ar;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ar;->d:Lcom/amap/api/services/a/q;

    return-void
.end method

.method private a()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/services/a/ar;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u5df2\u5f00\u542f\u81ea\u52a8\u4e0a\u4f20"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ar;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "USERID\u975e\u6cd5"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    new-instance v0, Lcom/amap/api/services/a/r;

    iget-object v1, p0, Lcom/amap/api/services/a/ar;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ar;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/services/a/r;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/amap/api/services/a/ar;Lcom/amap/api/services/nearby/UploadInfo;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/nearby/UploadInfo;)I

    move-result v0

    return v0
.end method

.method private a(Lcom/amap/api/services/nearby/UploadInfo;)I
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/services/a/ar;->i:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x898

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ar;->b(Lcom/amap/api/services/nearby/UploadInfo;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/services/a/ar;)Lcom/amap/api/services/a/q;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/ar;->d:Lcom/amap/api/services/a/q;

    return-object v0
.end method

.method private a(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->getCenterPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "^[a-z0-9A-Z_-]{1,32}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/services/a/ar;Lcom/amap/api/services/nearby/UploadInfo;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ar;->b(Lcom/amap/api/services/nearby/UploadInfo;)I

    move-result v0

    return v0
.end method

.method private b(Lcom/amap/api/services/nearby/UploadInfo;)I
    .locals 8

    const/16 v0, 0x899

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/services/a/ar;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    if-nez p1, :cond_1

    const/16 v0, 0x89a

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/services/a/ar;->e:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1964

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    const/16 v0, 0x89b

    goto :goto_0

    :cond_2
    sput-wide v2, Lcom/amap/api/services/a/ar;->e:J

    invoke-virtual {p1}, Lcom/amap/api/services/nearby/UploadInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/services/a/ar;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/services/a/ar;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lcom/amap/api/services/a/ar;->h:Ljava/lang/String;

    :cond_3
    iget-object v2, p0, Lcom/amap/api/services/a/ar;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/nearby/UploadInfo;->getPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/amap/api/services/a/ar;->g:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v1, v0}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/16 v0, 0x89c

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/amap/api/services/a/t;

    iget-object v2, p0, Lcom/amap/api/services/a/ar;->c:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/amap/api/services/a/t;-><init>(Landroid/content/Context;Lcom/amap/api/services/nearby/UploadInfo;)V

    invoke-virtual {v0}, Lcom/amap/api/services/a/t;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->copy()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ar;->g:Lcom/amap/api/services/core/LatLonPoint;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v0, 0x3e8

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v0, 0x76c

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/services/a/ar;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/ar;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/services/a/ar;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/services/a/ar;->a()I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/amap/api/services/a/ar;)Lcom/amap/api/services/nearby/UploadInfoCallback;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/ar;->k:Lcom/amap/api/services/nearby/UploadInfoCallback;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "NearbySearch"

    const-string v2, "addNearbyListener"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearUserInfoAsyn()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/ar$1;

    invoke-direct {v0, p0}, Lcom/amap/api/services/a/ar$1;-><init>(Lcom/amap/api/services/a/ar;)V

    invoke-virtual {v0}, Lcom/amap/api/services/a/ar$1;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbySearch"

    const-string v2, "clearUserInfoAsynThrowable"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized destroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "NearbySearch"

    const-string v2, "destryoy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "NearbySearch"

    const-string v2, "removeNearbyListener"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public searchNearbyInfo(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)Lcom/amap/api/services/nearby/NearbySearchResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/s;

    iget-object v1, p0, Lcom/amap/api/services/a/ar;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/a/s;-><init>(Landroid/content/Context;Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/services/a/s;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/nearby/NearbySearchResult;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    const-string v1, "NearbySearch"

    const-string v2, "searchNearbyInfo"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public searchNearbyInfoAsyn(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/ar$3;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/ar$3;-><init>(Lcom/amap/api/services/a/ar;Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/services/a/ar$3;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbySearch"

    const-string v2, "searchNearbyInfoAsynThrowable"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/a/ar;->b:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized startUploadNearbyInfoAuto(Lcom/amap/api/services/nearby/UploadInfoCallback;I)V
    .locals 6

    const/16 v0, 0x1b58

    monitor-enter p0

    if-ge p2, v0, :cond_0

    move p2, v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/services/a/ar;->k:Lcom/amap/api/services/nearby/UploadInfoCallback;

    iget-boolean v0, p0, Lcom/amap/api/services/a/ar;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/a/ar;->l:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/a/ar;->l:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/a/ar;->i:Z

    new-instance v0, Lcom/amap/api/services/a/ar$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amap/api/services/a/ar$a;-><init>(Lcom/amap/api/services/a/ar;Lcom/amap/api/services/a/ar$1;)V

    iput-object v0, p0, Lcom/amap/api/services/a/ar;->l:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/amap/api/services/a/ar;->j:Ljava/util/Timer;

    iget-object v1, p0, Lcom/amap/api/services/a/ar;->l:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    int-to-long v4, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "NearbySearch"

    const-string v2, "startUploadNearbyInfoAuto"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopUploadNearbyInfoAuto()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->l:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/ar;->l:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/amap/api/services/a/ar;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/ar;->l:Ljava/util/TimerTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "NearbySearch"

    const-string v2, "stopUploadNearbyInfoAuto"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public uploadNearbyInfoAsyn(Lcom/amap/api/services/nearby/UploadInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/services/a/ar;->f:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ar;->f:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/services/a/ar$2;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/services/a/ar$2;-><init>(Lcom/amap/api/services/a/ar;Lcom/amap/api/services/nearby/UploadInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
