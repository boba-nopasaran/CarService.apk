.class public Lcom/car/common/ThumbnailCacheManager;
.super Ljava/lang/Object;
.source "ThumbnailCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/common/ThumbnailCacheManager$ThumbnailCacheListener;,
        Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSvc_ThumbnailCacheManager"

.field public static final TYPE_LOCAL_THUMB:I = 0x3

.field public static final TYPE_NET_ORIGINAL:I = 0x1

.field public static final TYPE_NET_THUMB:I = 0x2

.field private static sIns:Lcom/car/common/ThumbnailCacheManager;


# instance fields
.field private mDiskLruCache:Llibcore/io/DiskLruCache;

.field private mHandler:Landroid/os/Handler;

.field private mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailCacheListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/common/ThumbnailCacheManager$ThumbnailCacheListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkThread:Lcom/car/common/util/WorkThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;II)V
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/car/common/ThumbnailCacheManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/car/common/ThumbnailCacheManager;->mThumbnailCacheListenerList:Ljava/util/List;

    new-instance v2, Lcom/car/common/ThumbnailCacheManager$1;

    invoke-direct {v2, p0, p2}, Lcom/car/common/ThumbnailCacheManager$1;-><init>(Lcom/car/common/ThumbnailCacheManager;I)V

    iput-object v2, p0, Lcom/car/common/ThumbnailCacheManager;->mMemoryCache:Landroid/util/LruCache;

    :try_start_0
    const-string v2, "thumb"

    invoke-direct {p0, p1, v2}, Lcom/car/common/ThumbnailCacheManager;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/car/common/ThumbnailCacheManager;->getAppVersion(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    int-to-long v4, p3

    invoke-static {v0, v2, v3, v4, v5}, Llibcore/io/DiskLruCache;->open(Ljava/io/File;IIJ)Llibcore/io/DiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/car/common/ThumbnailCacheManager;->mDiskLruCache:Llibcore/io/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lcom/car/common/util/WorkThread;

    const-string v3, "thumbnail decode"

    invoke-direct {v2, v3}, Lcom/car/common/util/WorkThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/car/common/ThumbnailCacheManager;->mWorkThread:Lcom/car/common/util/WorkThread;

    iget-object v2, p0, Lcom/car/common/ThumbnailCacheManager;->mWorkThread:Lcom/car/common/util/WorkThread;

    invoke-virtual {v2, v6}, Lcom/car/common/util/WorkThread;->setDispatchMode(I)V

    iget-object v2, p0, Lcom/car/common/ThumbnailCacheManager;->mWorkThread:Lcom/car/common/util/WorkThread;

    invoke-virtual {v2}, Lcom/car/common/util/WorkThread;->start()V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/car/common/ThumbnailCacheManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/car/common/ThumbnailCacheManager;->mThumbnailCacheListenerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/common/ThumbnailCacheManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/common/ThumbnailCacheManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/common/ThumbnailCacheManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/car/common/ThumbnailCacheManager;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/common/ThumbnailCacheManager;)Llibcore/io/DiskLruCache;
    .locals 1

    iget-object v0, p0, Lcom/car/common/ThumbnailCacheManager;->mDiskLruCache:Llibcore/io/DiskLruCache;

    return-object v0
.end method

.method static synthetic access$700(Lcom/car/common/ThumbnailCacheManager;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/car/common/ThumbnailCacheManager;->mMemoryCache:Landroid/util/LruCache;

    return-object v0
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static create(Landroid/content/Context;II)V
    .locals 1

    new-instance v0, Lcom/car/common/ThumbnailCacheManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/car/common/ThumbnailCacheManager;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/car/common/ThumbnailCacheManager;->sIns:Lcom/car/common/ThumbnailCacheManager;

    return-void
.end method

.method public static destory()V
    .locals 7

    sget-object v6, Lcom/car/common/ThumbnailCacheManager;->sIns:Lcom/car/common/ThumbnailCacheManager;

    if-eqz v6, :cond_2

    :try_start_0
    sget-object v6, Lcom/car/common/ThumbnailCacheManager;->sIns:Lcom/car/common/ThumbnailCacheManager;

    iget-object v6, v6, Lcom/car/common/ThumbnailCacheManager;->mDiskLruCache:Llibcore/io/DiskLruCache;

    invoke-virtual {v6}, Llibcore/io/DiskLruCache;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v6, Lcom/car/common/ThumbnailCacheManager;->sIns:Lcom/car/common/ThumbnailCacheManager;

    iget-object v6, v6, Lcom/car/common/ThumbnailCacheManager;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v6}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/car/common/ThumbnailCacheManager;->sIns:Lcom/car/common/ThumbnailCacheManager;

    iget-object v6, v6, Lcom/car/common/ThumbnailCacheManager;->mWorkThread:Lcom/car/common/util/WorkThread;

    invoke-virtual {v6}, Lcom/car/common/util/WorkThread;->exit()V

    :cond_2
    return-void
.end method

.method private getAppVersion(Landroid/content/Context;)I
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/car/common/ThumbnailCacheManager;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static instance()Lcom/car/common/ThumbnailCacheManager;
    .locals 1

    sget-object v0, Lcom/car/common/ThumbnailCacheManager;->sIns:Lcom/car/common/ThumbnailCacheManager;

    return-object v0
.end method


# virtual methods
.method public addThumbnailCacheListener(Lcom/car/common/ThumbnailCacheManager$ThumbnailCacheListener;)V
    .locals 2

    iget-object v1, p0, Lcom/car/common/ThumbnailCacheManager;->mThumbnailCacheListenerList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/common/ThumbnailCacheManager;->mThumbnailCacheListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearTask()V
    .locals 1

    iget-object v0, p0, Lcom/car/common/ThumbnailCacheManager;->mWorkThread:Lcom/car/common/util/WorkThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/common/ThumbnailCacheManager;->mWorkThread:Lcom/car/common/util/WorkThread;

    invoke-virtual {v0}, Lcom/car/common/util/WorkThread;->cancelReqsList()V

    :cond_0
    return-void
.end method

.method public getThumbnail(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v2, p0, Lcom/car/common/ThumbnailCacheManager;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v2, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;-><init>(Lcom/car/common/ThumbnailCacheManager;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/car/common/ThumbnailCacheManager;->mWorkThread:Lcom/car/common/util/WorkThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/common/ThumbnailCacheManager;->mWorkThread:Lcom/car/common/util/WorkThread;

    invoke-virtual {v2, v1}, Lcom/car/common/util/WorkThread;->isDuplicateWorking(Lcom/car/common/util/Match4Req;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/car/common/ThumbnailCacheManager;->mWorkThread:Lcom/car/common/util/WorkThread;

    invoke-virtual {v2, v1}, Lcom/car/common/util/WorkThread;->addReq(Lcom/car/common/util/WorkReq;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeThumbnailCacheListener(Lcom/car/common/ThumbnailCacheManager$ThumbnailCacheListener;)V
    .locals 2

    iget-object v1, p0, Lcom/car/common/ThumbnailCacheManager;->mThumbnailCacheListenerList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/common/ThumbnailCacheManager;->mThumbnailCacheListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
