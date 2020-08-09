.class public Lcom/aispeech/aios/aimedia/a/a/k;
.super Lcom/aispeech/aios/aimedia/a/a/c;


# static fields
.field private static final e:Ljava/lang/String; = "AIOS-AIMedia-XimalayaProxy-Ting"

.field private static final f:Ljava/lang/String; = "e3a3c2d6f3aa52e55572a3af66619a83"

.field private static final g:Ljava/lang/String; = "ef2ca3afc7db9c30b8d1ccb7f742c497"

.field private static final h:Ljava/lang/String; = "com.aispeech.aios.adapter"

.field private static i:Lcom/aispeech/aios/aimedia/a/a/k;

.field private static k:Ljava/lang/Object;

.field private static final l:Ljava/lang/Object;


# instance fields
.field d:J

.field private j:Landroid/content/Context;

.field private m:Ljava/lang/String;

.field private n:Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;

.field private o:Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;

.field private p:Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/ximalaya/speechcontrol/SpeechControler;

.field private s:Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/aispeech/aios/aimedia/a/a/k;->k:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/aispeech/aios/aimedia/a/a/k;->l:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/aispeech/aios/aimedia/a/a/c;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->d:J

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->m:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->t:Z

    iput-boolean v2, p0, Lcom/aispeech/aios/aimedia/a/a/k;->u:Z

    iput-boolean v2, p0, Lcom/aispeech/aios/aimedia/a/a/k;->v:Z

    iput-boolean v2, p0, Lcom/aispeech/aios/aimedia/a/a/k;->w:Z

    new-instance v0, Lcom/aispeech/aios/aimedia/a/a/p;

    invoke-direct {v0, p0}, Lcom/aispeech/aios/aimedia/a/a/p;-><init>(Lcom/aispeech/aios/aimedia/a/a/k;)V

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->x:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/k;->j:Landroid/content/Context;

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->getInstance(Landroid/content/Context;)Lcom/ximalaya/speechcontrol/SpeechControler;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    const-string v1, "e3a3c2d6f3aa52e55572a3af66619a83"

    const-string v2, "ef2ca3afc7db9c30b8d1ccb7f742c497"

    const-string v3, "com.aispeech.aios.adapter"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ximalaya/speechcontrol/SpeechControler;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/a/l;

    invoke-direct {v1, p0}, Lcom/aispeech/aios/aimedia/a/a/l;-><init>(Lcom/aispeech/aios/aimedia/a/a/k;)V

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/SpeechControler;->setDebugBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/k;->x:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/SpeechControler;->addPlayerStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/a/q;

    invoke-direct {v1, p0}, Lcom/aispeech/aios/aimedia/a/a/q;-><init>(Lcom/aispeech/aios/aimedia/a/a/k;)V

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/SpeechControler;->registerServiceBindSuccessCallBack(Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/a/r;

    invoke-direct {v1, p0}, Lcom/aispeech/aios/aimedia/a/a/r;-><init>(Lcom/aispeech/aios/aimedia/a/a/k;)V

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/SpeechControler;->addServiceDeathListener(Lcom/ximalaya/speechcontrol/IServiceDeathListener;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic A(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->e()V

    return-void
.end method

.method static synthetic B(Lcom/aispeech/aios/aimedia/a/a/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->v:Z

    return v0
.end method

.method static synthetic C(Lcom/aispeech/aios/aimedia/a/a/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->w:Z

    return v0
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/a/k;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->q:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\u65b0\u95fb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u8d44\u8baf"

    :cond_0
    const-string v0, "\u516b\u5366"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u5a31\u4e50"

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "category="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;->getCategoryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;->getCategoryId()I

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    const-string v1, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v2, "CategoryName not equal!!"

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/a/k;Ljava/util/List;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Ljava/util/List;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/aimedia/bean/FMInfo;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-wide/16 v2, -0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aispeech/aios/aimedia/bean/FMInfo;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->getTrack()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/a/a/k;
    .locals 2

    const-class v1, Lcom/aispeech/aios/aimedia/a/a/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/a/k;->i:Lcom/aispeech/aios/aimedia/a/a/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-direct {v0, p0}, Lcom/aispeech/aios/aimedia/a/a/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aispeech/aios/aimedia/a/a/k;->i:Lcom/aispeech/aios/aimedia/a/a/k;

    :cond_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/a/k;->i:Lcom/aispeech/aios/aimedia/a/a/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/a/k;Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;)Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/k;->s:Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;

    return-object p1
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/a/k;Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;)Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/k;->n:Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;

    return-object p1
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/a/k;Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;)Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/k;->o:Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;

    return-object p1
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/a/k;Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;)Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/k;->p:Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;

    return-object p1
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/a/k;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/k;->q:Ljava/util/List;

    return-object p1
.end method

.method private a(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "syncNetfmCategoryIdAlbumList"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/aispeech/aios/aimedia/a/a/k;->c(J)V

    sget-object v1, Lcom/aispeech/aios/aimedia/a/a/k;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/a/k;->l:Ljava/lang/Object;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(JZ)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/a/k;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/aispeech/aios/aimedia/a/a/k;->b(J)V

    return-void
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/a/k;JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/aispeech/aios/aimedia/a/a/k;->b(JZ)V

    return-void
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/a/k;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/a/k;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/aispeech/aios/aimedia/a/a/k;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lcom/aispeech/aios/aimedia/bean/FmSearchParam;Lcom/aispeech/aios/aimedia/listenner/SearchListnner;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/aispeech/aios/aimedia/a/a/v;

    invoke-direct {v0, p0, p1, p2}, Lcom/aispeech/aios/aimedia/a/a/v;-><init>(Lcom/aispeech/aios/aimedia/a/a/k;Lcom/aispeech/aios/aimedia/bean/FmSearchParam;Lcom/aispeech/aios/aimedia/listenner/SearchListnner;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/a/a/v;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a(Ljava/lang/Long;)V
    .locals 4

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "setAlbumtrackPlay"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->o:Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;

    if-nez v0, :cond_0

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "commonTrackList == null"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-nez v0, :cond_1

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "setAlbumtrackPlay error !"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/k;->o:Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ximalaya/speechcontrol/SpeechControler;->setPlayByAlbumTracks(Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/a/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->t:Z

    return v0
.end method

.method static synthetic a(Lcom/aispeech/aios/aimedia/a/a/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/aios/aimedia/a/a/k;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/aispeech/aios/aimedia/a/a/k;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/aispeech/aios/aimedia/a/a/k;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/aimedia/bean/FMInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->o:Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->o:Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getTracks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->o:Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/aispeech/aios/aimedia/bean/FMInfo;

    invoke-direct {v2}, Lcom/aispeech/aios/aimedia/bean/FMInfo;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getDataId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->setId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->setTrack(Ljava/lang/String;)V

    const-string v0, "track"

    invoke-virtual {v2, v0}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->setAlbum(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v1
.end method

.method private b(J)V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTrack "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->p:Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->p:Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;->getTracks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->p:Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;->getTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getDataId()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->o:Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->o:Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getTracks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->o:Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getDataId()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    :goto_1
    const-string v1, "AIOS-AIMedia-XimalayaProxy-Ting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playTrack ==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getDataId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-nez v1, :cond_2

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "playTrack error !"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v1, v0, v2}, Lcom/ximalaya/speechcontrol/SpeechControler;->setPlayByTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Lcom/ximalaya/speechcontrol/IMainDataCallback;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_0
.end method

.method private b(JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "syncNetfmCommonTracks"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/aispeech/aios/aimedia/a/a/k;->c(JZ)V

    return-void
.end method

.method static synthetic b(Lcom/aispeech/aios/aimedia/a/a/k;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/aispeech/aios/aimedia/a/a/k;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/aispeech/aios/aimedia/a/a/k;JZ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/aispeech/aios/aimedia/a/a/k;->a(JZ)V

    return-void
.end method

.method static synthetic b(Lcom/aispeech/aios/aimedia/a/a/k;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/aispeech/aios/aimedia/a/a/k;->c(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "syncNetfmAlbumByCategoryId"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aispeech/aios/aimedia/a/a/k;->d(Ljava/lang/String;I)V

    sget-object v1, Lcom/aispeech/aios/aimedia/a/a/k;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/a/k;->l:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/aispeech/aios/aimedia/a/a/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->u:Z

    return v0
.end method

.method static synthetic b(Lcom/aispeech/aios/aimedia/a/a/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/aios/aimedia/a/a/k;->v:Z

    return p1
.end method

.method static synthetic c(Lcom/aispeech/aios/aimedia/a/a/k;)Lcom/ximalaya/speechcontrol/SpeechControler;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    return-object v0
.end method

.method private c(J)V
    .locals 7

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-nez v0, :cond_0

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "getAlbumByCategoryId error !"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    const/4 v4, 0x1

    const/16 v5, 0x14

    new-instance v6, Lcom/aispeech/aios/aimedia/a/a/o;

    invoke-direct {v6, p0}, Lcom/aispeech/aios/aimedia/a/a/o;-><init>(Lcom/aispeech/aios/aimedia/a/a/k;)V

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/ximalaya/speechcontrol/SpeechControler;->getAlbumByCategoryId(JIILcom/ximalaya/speechcontrol/IMainDataCallback;)V

    goto :goto_0
.end method

.method private c(JZ)V
    .locals 7

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-nez v0, :cond_0

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "getAlbumtrackList error !"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    const/4 v4, 0x1

    const/16 v5, 0x14

    new-instance v6, Lcom/aispeech/aios/aimedia/a/a/n;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/aispeech/aios/aimedia/a/a/n;-><init>(Lcom/aispeech/aios/aimedia/a/a/k;JZ)V

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/ximalaya/speechcontrol/SpeechControler;->browseAlbums(JIILcom/ximalaya/speechcontrol/IMainDataCallback;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "syncNetfmTrackByCategoryId"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aispeech/aios/aimedia/a/a/k;->e(Ljava/lang/String;I)V

    sget-object v1, Lcom/aispeech/aios/aimedia/a/a/k;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/a/k;->l:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/aispeech/aios/aimedia/a/a/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/aios/aimedia/a/a/k;->w:Z

    return p1
.end method

.method static synthetic d(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->q()V

    return-void
.end method

.method private d(Ljava/lang/String;I)V
    .locals 7

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-nez v0, :cond_0

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "getAlbumList error !"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    const/16 v4, 0x19

    new-instance v6, Lcom/aispeech/aios/aimedia/a/a/x;

    invoke-direct {v6, p0}, Lcom/aispeech/aios/aimedia/a/a/x;-><init>(Lcom/aispeech/aios/aimedia/a/a/k;)V

    move-object v1, p1

    move v2, p2

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/ximalaya/speechcontrol/SpeechControler;->getSourseLists(Ljava/lang/String;IIIILcom/ximalaya/speechcontrol/IMainDataCallback;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/aispeech/aios/aimedia/a/a/k;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->t()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-nez v0, :cond_0

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "getTracksList error !"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    const/4 v3, 0x1

    const/16 v4, 0x19

    const/4 v5, 0x2

    new-instance v6, Lcom/aispeech/aios/aimedia/a/a/m;

    invoke-direct {v6, p0}, Lcom/aispeech/aios/aimedia/a/a/m;-><init>(Lcom/aispeech/aios/aimedia/a/a/k;)V

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/ximalaya/speechcontrol/SpeechControler;->getSourseLists(Ljava/lang/String;IIIILcom/ximalaya/speechcontrol/IMainDataCallback;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/aispeech/aios/aimedia/a/a/k;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->s()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/aispeech/aios/aimedia/a/a/k;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->u()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/aispeech/aios/aimedia/a/a/k;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->m()V

    return-void
.end method

.method static synthetic j(Lcom/aispeech/aios/aimedia/a/a/k;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->e()V

    return-void
.end method

.method static synthetic l()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/aispeech/aios/aimedia/a/a/k;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic l(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->d()V

    return-void
.end method

.method private m()V
    .locals 2

    sget-object v1, Lcom/aispeech/aios/aimedia/a/a/k;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/a/k;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic m(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->n()V

    return-void
.end method

.method static synthetic n(Lcom/aispeech/aios/aimedia/a/a/k;)Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->n:Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;

    return-object v0
.end method

.method private n()V
    .locals 2

    sget-object v1, Lcom/aispeech/aios/aimedia/a/a/k;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/a/k;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private o()V
    .locals 2

    sget-object v1, Lcom/aispeech/aios/aimedia/a/a/k;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/a/k;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic o(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->e()V

    return-void
.end method

.method private p()V
    .locals 2

    sget-object v1, Lcom/aispeech/aios/aimedia/a/a/k;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/a/k;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic p(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->d()V

    return-void
.end method

.method private q()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->r()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/aispeech/aios/aimedia/a/a/k;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/aimedia/a/a/k;->l:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic q(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->o()V

    return-void
.end method

.method static synthetic r(Lcom/aispeech/aios/aimedia/a/a/k;)Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->p:Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;

    return-object v0
.end method

.method private r()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/k;->q:Ljava/util/List;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-nez v1, :cond_1

    const-string v1, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v2, "getCategoryList error !"

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    new-instance v1, Lcom/aispeech/aios/aimedia/a/a/w;

    invoke-direct {v1, p0}, Lcom/aispeech/aios/aimedia/a/a/w;-><init>(Lcom/aispeech/aios/aimedia/a/a/k;)V

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/SpeechControler;->getCategoryList(Lcom/ximalaya/speechcontrol/IMainDataCallback;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/aimedia/bean/FMInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->p:Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->p:Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;->getTracks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->p:Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;->getTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    new-instance v3, Lcom/aispeech/aios/aimedia/bean/FMInfo;

    invoke-direct {v3}, Lcom/aispeech/aios/aimedia/bean/FMInfo;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getDataId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->setId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->setTrack(Ljava/lang/String;)V

    const-string v0, "track"

    invoke-virtual {v3, v0}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->setAlbum(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic s(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->e()V

    return-void
.end method

.method private t()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/aimedia/bean/FMInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->n:Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->n:Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->getAlbums()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->n:Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->getAlbums()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    new-instance v3, Lcom/aispeech/aios/aimedia/bean/FMInfo;

    invoke-direct {v3}, Lcom/aispeech/aios/aimedia/bean/FMInfo;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->setId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->setTrack(Ljava/lang/String;)V

    const-string v0, "album"

    invoke-virtual {v3, v0}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->setAlbum(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic t(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->d()V

    return-void
.end method

.method static synthetic u(Lcom/aispeech/aios/aimedia/a/a/k;)Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->o:Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;

    return-object v0
.end method

.method private u()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/aimedia/bean/FMInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->s:Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->s:Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;->getAlbums()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    new-instance v3, Lcom/aispeech/aios/aimedia/bean/FMInfo;

    invoke-direct {v3}, Lcom/aispeech/aios/aimedia/bean/FMInfo;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->setId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->setTrack(Ljava/lang/String;)V

    const-string v0, "album"

    invoke-virtual {v3, v0}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->setAlbum(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic v(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->e()V

    return-void
.end method

.method static synthetic w(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->d()V

    return-void
.end method

.method static synthetic x(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->p()V

    return-void
.end method

.method static synthetic y(Lcom/aispeech/aios/aimedia/a/a/k;)Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->s:Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;

    return-object v0
.end method

.method static synthetic z(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->e()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "openApp"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/b/a;->a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/b/a;

    move-result-object v0

    const-string v1, "com.ximalaya.ting.android.car"

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/b/a;->c(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "tingcar://welcome?msg_type=continue_play"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/aispeech/aios/aimedia/a/a/k;->j:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/aispeech/aios/aimedia/a/a/u;

    invoke-direct {v1, p0}, Lcom/aispeech/aios/aimedia/a/a/u;-><init>(Lcom/aispeech/aios/aimedia/a/a/k;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/aispeech/aios/aimedia/bean/FMInfo;)V
    .locals 6

    const-wide/16 v4, 0x3e8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->u:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->w:Z

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/b/a;->a(Landroid/content/Context;)Lcom/aispeech/aios/aimedia/b/a;

    move-result-object v0

    const-string v1, "com.ximalaya.ting.android.car"

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/aimedia/b/a;->b(Ljava/lang/String;)Z

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayAction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/aispeech/aios/aimedia/bean/FMInfo;->getAlbum()Ljava/lang/String;

    move-result-object v2

    const-string v3, "album"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/aispeech/aios/aimedia/a/a/s;

    invoke-direct {v3, p0, v0, v1}, Lcom/aispeech/aios/aimedia/a/a/s;-><init>(Lcom/aispeech/aios/aimedia/a/a/k;J)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/aispeech/aios/aimedia/a/a/t;

    invoke-direct {v3, p0, v0, v1}, Lcom/aispeech/aios/aimedia/a/a/t;-><init>(Lcom/aispeech/aios/aimedia/a/a/k;J)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/aispeech/aios/aimedia/listenner/SearchListnner;)V
    .locals 3

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "------------------ net fm  \u6839\u636e\u5173\u952e\u5b57\u641c\u7d22\u58f0\u97f3----------"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/aispeech/aios/aimedia/a/a/k;->c:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;

    invoke-direct {v1}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;-><init>()V

    const-string v2, "category"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "category"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->setCategory(Ljava/lang/String;)V

    :cond_0
    const-string v2, "album"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "album"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->setAlbum(Ljava/lang/String;)V

    :cond_1
    const-string v2, "tracks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "tracks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->setTrack(Ljava/lang/String;)V

    :cond_2
    const-string v2, "artist"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "artist"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->setArtist(Ljava/lang/String;)V

    :cond_3
    const-string v2, "keyWord"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "keyWord"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/aispeech/aios/aimedia/bean/FmSearchParam;->setKeyWord(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Lcom/aispeech/aios/aimedia/bean/FmSearchParam;Lcom/aispeech/aios/aimedia/listenner/SearchListnner;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "exitApp"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->stopAndExitApp()V

    :cond_0
    return-void
.end method

.method public b(Lcom/aispeech/aios/aimedia/bean/FMInfo;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->u:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->w:Z

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "Ting switchChannel..."

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->playNext()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->a()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->destroy()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->u:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->w:Z

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "Ting play..."

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->play()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/aispeech/aios/aimedia/a/a/k;->a()V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->u:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->w:Z

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "Ting pause..."

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->pause()V

    :cond_0
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->u:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->w:Z

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "Ting playPrev..."

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->hasPre()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->playPre()V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u5df2\u7ecf\u662f\u7b2c\u4e00\u9996\u4e86"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->u:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->w:Z

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "Ting playNext..."

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->playNext()V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u5df2\u7ecf\u662f\u6700\u540e\u4e00\u9996\u4e86"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->u:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->w:Z

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "Ting stop..."

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->stop()V

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/k;->r:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method
