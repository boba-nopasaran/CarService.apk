.class public Lcom/car/ad/ADManager;
.super Ljava/lang/Object;
.source "ADManager.java"

# interfaces
.implements Lcom/car/ad/ADDownloadTask$ADDownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/ad/ADManager$MyTrustManager;,
        Lcom/car/ad/ADManager$MyHostnameVerifier;,
        Lcom/car/ad/ADManager$ADStatusListener;
    }
.end annotation


# static fields
.field private static final AUTO_REFRESH_INTERVAL_TIME:J = 0xdbba00L

.field private static final AUTO_REPORT_INTERVAL_TIME:J = 0x1b7740L

.field private static final MSG_NOTIFY_AD_CHANGE:I = 0x67

.field private static final MSG_REFRESH_AD:I = 0x66

.field private static final MSG_REFRESH_ADLIST:I = 0x64

.field private static final MSG_REPORT_AD:I = 0x65

.field private static final RETRY_REFRESH_INTERVAL_TIME:J = 0x927c0L

.field private static final TAG:Ljava/lang/String; = "CarAD_ADManager"

.field private static mIns:Lcom/car/ad/ADManager;


# instance fields
.field private mADClient:Lcom/car/ad/IADClient;

.field private mADItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/ad/ADItem;",
            ">;"
        }
    .end annotation
.end field

.field private mADStatusListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/ad/ADManager$ADStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mADStorage:Lcom/car/ad/ADStorage;

.field private mContext:Landroid/content/Context;

.field private mUIHandler:Landroid/os/Handler;

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/car/ad/IADClient;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/ad/ADManager;->mADItemList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/ad/ADManager;->mADStatusListenerList:Ljava/util/List;

    new-instance v0, Lcom/car/ad/ADManager$2;

    invoke-direct {v0, p0}, Lcom/car/ad/ADManager$2;-><init>(Lcom/car/ad/ADManager;)V

    iput-object v0, p0, Lcom/car/ad/ADManager;->mUIHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/car/ad/ADManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/car/ad/ADManager;->mADClient:Lcom/car/ad/IADClient;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ad work"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/car/ad/ADManager;->mWorkThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/car/ad/ADManager;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/ad/ADManager;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/car/ad/ADManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/ad/ADStorage;

    iget-object v1, p0, Lcom/car/ad/ADManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/car/ad/ADStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/car/ad/ADManager;->mADStorage:Lcom/car/ad/ADStorage;

    iget-object v0, p0, Lcom/car/ad/ADManager;->mADStorage:Lcom/car/ad/ADStorage;

    invoke-virtual {v0}, Lcom/car/ad/ADStorage;->getADItemList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/car/ad/ADManager;->mADItemList:Ljava/util/List;

    invoke-direct {p0}, Lcom/car/ad/ADManager;->checkADItemValidity()V

    invoke-direct {p0}, Lcom/car/ad/ADManager;->doRefreshADs()V

    iget-object v0, p0, Lcom/car/ad/ADManager;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/car/ad/ADManager;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/32 v2, 0xdbba00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic access$000(Lcom/car/ad/ADManager;)Lcom/car/ad/IADClient;
    .locals 1

    iget-object v0, p0, Lcom/car/ad/ADManager;->mADClient:Lcom/car/ad/IADClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/ad/ADManager;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/car/ad/ADManager;->generatePlayCountKey(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/car/ad/ADManager;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/car/ad/ADManager;->startCheckADServer()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/ad/ADManager;)Lcom/car/ad/ADStorage;
    .locals 1

    iget-object v0, p0, Lcom/car/ad/ADManager;->mADStorage:Lcom/car/ad/ADStorage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/ad/ADManager;Lcom/car/ad/ADReportItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/car/ad/ADManager;->reportOneItem2Server(Lcom/car/ad/ADReportItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/car/ad/ADManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/car/ad/ADManager;->mADItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/ad/ADManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/ad/ADManager;->checkADItemValidity()V

    return-void
.end method

.method static synthetic access$600(Lcom/car/ad/ADManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/ad/ADManager;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/car/ad/ADManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/ad/ADManager;->reportAllAD2Server()V

    return-void
.end method

.method static synthetic access$800(Lcom/car/ad/ADManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/ad/ADManager;->doRefreshADs()V

    return-void
.end method

.method static synthetic access$900(Lcom/car/ad/ADManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/car/ad/ADManager;->mADStatusListenerList:Ljava/util/List;

    return-object v0
.end method

.method private checkADItemValidity()V
    .locals 12

    iget-object v8, p0, Lcom/car/ad/ADManager;->mADClient:Lcom/car/ad/IADClient;

    invoke-interface {v8}, Lcom/car/ad/IADClient;->getClientTime()J

    move-result-wide v4

    iget-object v8, p0, Lcom/car/ad/ADManager;->mADItemList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/car/ad/ADItem;

    iget-wide v8, v3, Lcom/car/ad/ADItem;->expiredtime:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_1

    const/4 v6, 0x1

    :cond_1
    iget v8, v3, Lcom/car/ad/ADItem;->singleplaycount:I

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/car/ad/ADManager;->mADClient:Lcom/car/ad/IADClient;

    invoke-interface {v8}, Lcom/car/ad/IADClient;->getClientID()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/car/ad/ADManager;->mADStorage:Lcom/car/ad/ADStorage;

    iget-wide v10, v3, Lcom/car/ad/ADItem;->adid:J

    invoke-direct {p0, v10, v11}, Lcom/car/ad/ADManager;->generatePlayCountKey(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/car/ad/ADStorage;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget v8, v3, Lcom/car/ad/ADItem;->singleplaycount:I

    if-lt v0, v8, :cond_2

    const/4 v6, 0x1

    :cond_2
    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    iget-object v8, p0, Lcom/car/ad/ADManager;->mADStorage:Lcom/car/ad/ADStorage;

    invoke-virtual {v8, v3}, Lcom/car/ad/ADStorage;->deleteADItem(Lcom/car/ad/ADItem;)I

    invoke-direct {p0, v3}, Lcom/car/ad/ADManager;->isADFileExist(Lcom/car/ad/ADItem;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v8, v3, Lcom/car/ad/ADItem;->adfile:Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-direct {p0, v3}, Lcom/car/ad/ADManager;->isADFileExist(Lcom/car/ad/ADItem;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0, v3}, Lcom/car/ad/ADManager;->downloadADFile(Lcom/car/ad/ADItem;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private doRefreshADs()V
    .locals 2

    iget-object v0, p0, Lcom/car/ad/ADManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/ad/ADManager$3;

    invoke-direct {v1, p0}, Lcom/car/ad/ADManager$3;-><init>(Lcom/car/ad/ADManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private downloadADFile(Lcom/car/ad/ADItem;)V
    .locals 3

    new-instance v0, Lcom/car/ad/ADDownloadTask;

    iget-object v1, p1, Lcom/car/ad/ADItem;->adfile:Ljava/lang/String;

    iget-object v2, p1, Lcom/car/ad/ADItem;->adurl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/car/ad/ADDownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/car/ad/ADDownloadTask$ADDownloadListener;)V

    iget-object v1, p0, Lcom/car/ad/ADManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private generatePlayCountKey(J)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play count_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/car/ad/ADManager;->mADClient:Lcom/car/ad/IADClient;

    invoke-interface {v1}, Lcom/car/ad/IADClient;->getClientID()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Lcom/car/ad/IADClient;)V
    .locals 1

    new-instance v0, Lcom/car/ad/ADManager;

    invoke-direct {v0, p0, p1}, Lcom/car/ad/ADManager;-><init>(Landroid/content/Context;Lcom/car/ad/IADClient;)V

    sput-object v0, Lcom/car/ad/ADManager;->mIns:Lcom/car/ad/ADManager;

    return-void
.end method

.method public static instance()Lcom/car/ad/ADManager;
    .locals 1

    sget-object v0, Lcom/car/ad/ADManager;->mIns:Lcom/car/ad/ADManager;

    return-object v0
.end method

.method private isADFileExist(Lcom/car/ad/ADItem;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/car/ad/ADItem;->adfile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private reportAllAD2Server()V
    .locals 4

    iget-object v3, p0, Lcom/car/ad/ADManager;->mADStorage:Lcom/car/ad/ADStorage;

    invoke-virtual {v3}, Lcom/car/ad/ADStorage;->loadADReportItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/ad/ADReportItem;

    invoke-direct {p0, v1}, Lcom/car/ad/ADManager;->reportOneItem2Server(Lcom/car/ad/ADReportItem;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reportOneItem2Server(Lcom/car/ad/ADReportItem;)Z
    .locals 12

    const/4 v10, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clientid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p1, Lcom/car/ad/ADReportItem;->clientid:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p1, Lcom/car/ad/ADReportItem;->adid:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/car/ad/ADReportItem;->clicked:I

    if-eq v7, v10, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clicked="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/car/ad/ADReportItem;->clicked:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v7, p1, Lcom/car/ad/ADReportItem;->city:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p1, Lcom/car/ad/ADReportItem;->city:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "city="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/car/ad/ADReportItem;->city:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playtime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p1, Lcom/car/ad/ADReportItem;->playtime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "model="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/car/ad/ADReportItem;->model:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/car/ad/ADReportItem;->token:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/car/ad/ADConfig;->REPORT_SERVER_URL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CarAD_ADManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportOneItem2Server:server = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/car/ad/ADManager;->requestHttpOrHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "ret"

    const/4 v8, -0x1

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v7, "err"

    const-string v8, "unknow error"

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "CarAD_ADManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportOneItem2Server:errcode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", errmsg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3

    iget-wide v8, p1, Lcom/car/ad/ADReportItem;->id:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/car/ad/ADManager;->mADStorage:Lcom/car/ad/ADStorage;

    invoke-virtual {v7, p1}, Lcom/car/ad/ADStorage;->deleteADReportItem(Lcom/car/ad/ADReportItem;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v7, 0x1

    :goto_0
    return v7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private requestHttp(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    const/16 v8, 0x7530

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Ljava/util/Scanner;

    invoke-direct {v5, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v8, "\\A"

    invoke-virtual {v5, v8}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    invoke-virtual {v5}, Ljava/util/Scanner;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :goto_0
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    :cond_1
    move-object v4, v5

    :goto_1
    return-object v3

    :cond_2
    :try_start_2
    const-string v3, ""
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    :cond_4
    :goto_3
    const/4 v3, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    goto :goto_3

    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    :cond_7
    throw v8

    :catchall_1
    move-exception v8

    move-object v4, v5

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v4, v5

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v4, v5

    goto :goto_2
.end method

.method private requestHttpOrHttps(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/car/ad/ADManager;->requestHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/car/ad/ADManager;->requestHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestHttps(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    :try_start_0
    const-string v9, "TLS"

    invoke-static {v9}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljavax/net/ssl/TrustManager;

    const/4 v11, 0x0

    new-instance v12, Lcom/car/ad/ADManager$MyTrustManager;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/car/ad/ADManager$MyTrustManager;-><init>(Lcom/car/ad/ADManager;Lcom/car/ad/ADManager$1;)V

    aput-object v12, v10, v11

    new-instance v11, Ljava/security/SecureRandom;

    invoke-direct {v11}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4, v9, v10, v11}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v8, v0

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v9, Lcom/car/ad/ADManager$MyHostnameVerifier;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/car/ad/ADManager$MyHostnameVerifier;-><init>(Lcom/car/ad/ADManager;Lcom/car/ad/ADManager$1;)V

    invoke-virtual {v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v8, v0

    const/16 v9, 0x7530

    invoke-virtual {v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v6, Ljava/util/Scanner;

    invoke-direct {v6, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v9, "\\A"

    invoke-virtual {v6, v9}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    invoke-virtual {v6}, Ljava/util/Scanner;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :goto_0
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/Scanner;->close()V

    :cond_1
    move-object v5, v6

    :cond_2
    :goto_1
    return-object v3

    :cond_3
    :try_start_2
    const-string v3, ""
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_4
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_5
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_6
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    goto :goto_1

    :catch_3
    move-exception v1

    :goto_5
    :try_start_6
    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_7
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    goto :goto_1

    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    :cond_9
    throw v9

    :catchall_1
    move-exception v9

    move-object v5, v6

    goto :goto_6

    :catch_4
    move-exception v1

    move-object v5, v6

    goto :goto_5

    :catch_5
    move-exception v1

    move-object v5, v6

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v5, v6

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v5, v6

    goto :goto_2
.end method

.method private startCheckADServer()Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/car/ad/ADItem;",
            ">;"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/car/ad/ADManager;->reportAllAD2Server()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADManager;->mADClient:Lcom/car/ad/IADClient;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/car/ad/IADClient;->getClientID()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADManager;->mADClient:Lcom/car/ad/IADClient;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/car/ad/IADClient;->getClientModel()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADManager;->mADClient:Lcom/car/ad/IADClient;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/car/ad/IADClient;->getClientToken()Ljava/lang/String;

    move-result-object v20

    const-wide/16 v22, 0x0

    cmp-long v21, v6, v22

    if-eqz v21, :cond_0

    if-eqz v15, :cond_0

    if-nez v20, :cond_2

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADManager;->mADClient:Lcom/car/ad/IADClient;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/car/ad/IADClient;->getClientCity()Ljava/lang/String;

    move-result-object v5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "model="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_3

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "city="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "clientid="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "token="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/car/ad/ADConfig;->GETAD_SERVER_URL:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v21, "CarAD_ADManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startCheckADServer:server = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/car/ad/ADManager;->requestHttpOrHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v21, "CarAD_ADManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startCheckADServer:result = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_4

    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v21, "ret"

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v21, "err"

    const-string v22, "unknow error"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v21, "CarAD_ADManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startCheckADServer:errcode = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", errmsg = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v21, "list"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_1

    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADManager;->mADClient:Lcom/car/ad/IADClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/car/ad/ADItem;->fromJson(Lorg/json/JSONObject;Lcom/car/ad/IADClient;)Lcom/car/ad/ADItem;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADManager;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x66

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ad/ADManager;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x66

    const-wide/32 v24, 0x927c0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v4, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getADList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/car/ad/ADItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/car/ad/ADManager;->checkADItemValidity()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/car/ad/ADManager;->mADClient:Lcom/car/ad/IADClient;

    invoke-interface {v5}, Lcom/car/ad/IADClient;->getClientID()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/car/ad/ADManager;->mADItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/car/ad/ADItem;

    invoke-direct {p0, v3}, Lcom/car/ad/ADManager;->isADFileExist(Lcom/car/ad/ADItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public onDownloadEnd(Lcom/car/ad/ADDownloadTask;Z)V
    .locals 2

    iget-object v0, p0, Lcom/car/ad/ADManager;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDownloadProgress(Lcom/car/ad/ADDownloadTask;I)V
    .locals 0

    return-void
.end method

.method public onDownloadStart(Lcom/car/ad/ADDownloadTask;)V
    .locals 0

    return-void
.end method

.method public refreshADs()V
    .locals 0

    invoke-direct {p0}, Lcom/car/ad/ADManager;->doRefreshADs()V

    return-void
.end method

.method public registADStatusListener(Lcom/car/ad/ADManager$ADStatusListener;)V
    .locals 2

    iget-object v1, p0, Lcom/car/ad/ADManager;->mADStatusListenerList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/ad/ADManager;->mADStatusListenerList:Ljava/util/List;

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

.method public reportAD(JI)V
    .locals 3

    iget-object v0, p0, Lcom/car/ad/ADManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/ad/ADManager$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/car/ad/ADManager$1;-><init>(Lcom/car/ad/ADManager;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregistADStatusListener(Lcom/car/ad/ADManager$ADStatusListener;)V
    .locals 2

    iget-object v1, p0, Lcom/car/ad/ADManager;->mADStatusListenerList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/ad/ADManager;->mADStatusListenerList:Ljava/util/List;

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
