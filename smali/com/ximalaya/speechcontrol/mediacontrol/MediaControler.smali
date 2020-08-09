.class public abstract Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ximalaya/speechcontrol/mediacontrol/IMediaControler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$AliBroadcastReceiver;,
        Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;
    }
.end annotation


# static fields
.field private static final MSG_ADS_BUFFERING_START:I = 0xe

.field private static final MSG_ADS_BUFFERING_STOP:I = 0xf

.field private static final MSG_BUFFER_PROGRESS_CHANGE:I = 0x9

.field private static final MSG_BUFFER_STATUS_CHANGE:I = 0x6

.field private static final MSG_COMPLETE_PLAY_ADS:I = 0x11

.field private static final MSG_GET_ADS_INFO:I = 0xd

.field private static final MSG_PLAY_ADS_ERROR:I = 0x12

.field private static final MSG_PLAY_COMPLETE:I = 0x4

.field private static final MSG_PLAY_ERROR:I = 0xa

.field private static final MSG_PLAY_PAUSE:I = 0x2

.field private static final MSG_PLAY_START:I = 0x1

.field private static final MSG_PLAY_STOP:I = 0x3

.field private static final MSG_PROGRESS_CHANGE:I = 0x7

.field private static final MSG_SOUND_CHANGE:I = 0x8

.field private static final MSG_SOUND_PREPARED:I = 0x5

.field private static final MSG_START_GET_ADS_INFO:I = 0xc

.field private static final MSG_START_PLAY_ADS:I = 0x10

.field private static final MaxNum:I = 0x1e

.field public static final SHARE_DATA_BASE_URI:Landroid/net/Uri;

.field public static final SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

.field public static final SHARE_DATA_HOST:Ljava/lang/String; = "com.ximalaya.ting.android.util.TingSharedDataContentProvider"

.field private static final TAG:Ljava/lang/String; = "MediaControler"


# instance fields
.field private isDeath:Z

.field private mAdsListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;

.field private mAdsStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAppKey:Ljava/lang/String;

.field private mAppSecret:Ljava/lang/String;

.field private mBindRet:Z

.field private mConnected:Z

.field protected mContext:Landroid/content/Context;

.field private mCurModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

.field private mListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;

.field private mPackId:Ljava/lang/String;

.field private mPlayerStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mResolver:Landroid/content/ContentResolver;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceDeathListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/speechcontrol/IServiceDeathListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

.field protected mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.ximalaya.ting.android.util.TingSharedDataContentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->SHARE_DATA_BASE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->SHARE_DATA_BASE_URI:Landroid/net/Uri;

    const-string v1, "sharedpreferences"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    iput-boolean v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mConnected:Z

    iput-boolean v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->isDeath:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceDeathListeners:Ljava/util/List;

    new-instance v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;

    invoke-direct {v0, p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;-><init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;

    invoke-direct {v0, p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;-><init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;

    new-instance v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;

    invoke-direct {v0, p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;-><init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceDeathListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0

    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handlePlayStart()V

    return-void
.end method

.method static synthetic access$1100(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0

    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handlePlayPause()V

    return-void
.end method

.method static synthetic access$1200(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0

    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handlePlayStop()V

    return-void
.end method

.method static synthetic access$1300(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0

    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handlePlayComplete()V

    return-void
.end method

.method static synthetic access$1400(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0

    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleSoundPrepared()V

    return-void
.end method

.method static synthetic access$1500(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleBufferStatusChange(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handlePlayProgressChange(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleSoundChange(Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleBufferChange(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handlePlayError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0

    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleStartGetAdsInfo()V

    return-void
.end method

.method static synthetic access$202(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleGetAdsInfo(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0

    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleAdsBufferingStart()V

    return-void
.end method

.method static synthetic access$2300(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0

    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleAdsBufferingStop()V

    return-void
.end method

.method static synthetic access$2400(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleStartPlayAds(Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0

    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleCompletePlayAds()V

    return-void
.end method

.method static synthetic access$2600(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handlePlayAdsError(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0

    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->initAndSetHisPlayList()V

    return-void
.end method

.method static synthetic access$900(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->isDeath:Z

    return v0
.end method

.method static synthetic access$902(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->isDeath:Z

    return p1
.end method

.method private handleAdsBufferingStart()V
    .locals 2

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;->onAdsStartBuffering()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleAdsBufferingStop()V
    .locals 2

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;->onAdsStopBuffering()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleBufferChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onBufferProgress(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleBufferStatusChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onBufferingStart()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onBufferingStop()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleCompletePlayAds()V
    .locals 2

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;->onCompletePlayAds()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleGetAdsInfo(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V
    .locals 2

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;

    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;->onGetAdsInfo(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handlePlayAdsError(II)V
    .locals 2

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;->onError(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handlePlayComplete()V
    .locals 2

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onSoundPlayComplete()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handlePlayError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V
    .locals 2

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handlePlayPause()V
    .locals 2

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handlePlayProgressChange(II)V
    .locals 2

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayProgress(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handlePlayStart()V
    .locals 2

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handlePlayStop()V
    .locals 2

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayStop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleSoundChange(Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;)V
    .locals 2

    iput-object p2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mCurModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onSoundSwitch(Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleSoundPrepared()V
    .locals 2

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onSoundPrepared()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleStartGetAdsInfo()V
    .locals 2

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;->onStartGetAdsInfo()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleStartPlayAds(Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V
    .locals 2

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;->onStartPlayAds(Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initAndSetHisPlayList()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getCurrIndex()I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_9

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "history_play_list"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_9

    :try_start_2
    new-instance v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$2;

    invoke-direct {v1, p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$2;-><init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    invoke-virtual {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_3

    if-eqz v6, :cond_2

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_0

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_8
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getTracks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    if-eqz v6, :cond_5

    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_5
    :goto_3
    if-eqz v6, :cond_0

    :try_start_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v6, :cond_6

    :try_start_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    :cond_6
    :goto_5
    throw v0

    :cond_7
    :try_start_d
    const-string v0, "history_play_index"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    if-ltz v3, :cond_8

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->playTrackList(Ljava/util/Map;Ljava/util/List;ILcom/ximalaya/speechcontrol/IMainDataCallback;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_8
    if-eqz v6, :cond_9

    :try_start_e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_9
    :goto_6
    if-eqz v6, :cond_0

    :try_start_f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_7
    move-exception v0

    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_6

    :catch_8
    move-exception v0

    if-eqz v6, :cond_a

    :try_start_11
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_a
    :goto_7
    if-eqz v6, :cond_0

    :try_start_12
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_a
    move-exception v0

    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_7

    :catchall_1
    move-exception v0

    if-eqz v6, :cond_b

    :try_start_14
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :cond_b
    :goto_8
    :try_start_15
    throw v0

    :catch_b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_8

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_4

    :catch_d
    move-exception v0

    move-object v1, v6

    goto/16 :goto_2
.end method

.method public static radioToTrack(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;Z)Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;-><init>()V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getDataId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setDataId(J)V

    const-string v1, "radio"

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setKind(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRadioName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setTrackTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRadioDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setTrackIntro(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getScheduleID()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setScheduleId(J)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRate24AacUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setRadioRate24AacUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRate24TsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setRadioRate24TsUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRate64AacUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setRadioRate64AacUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRate64TsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setRadioRate64TsUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRadioPlayCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setPlayCount(I)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getCoverUrlLarge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setCoverUrlLarge(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getCoverUrlSmall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setCoverUrlSmall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getUpdateAt()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setUpdatedAt(J)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRadioPlayCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setPlayCount(I)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setExtra(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addAdsStatusListener(Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPlayerStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addServiceDeathListener(Lcom/ximalaya/speechcontrol/IServiceDeathListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceDeathListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceDeathListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public checkConnectionStatus()Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "MediaControler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkConnectionStatus---mConnected---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    if-nez v1, :cond_2

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPlayServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-boolean v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public destory()V
    .locals 2

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->pause()V

    iget-boolean v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    :cond_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPlayServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method protected abstract getCallBackMap(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<*>;I)J"
        }
    .end annotation
.end method

.method public getCurPosition()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getPlayCurrPosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrIndex()I
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getCurrIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentTrack()Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getCurrIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getTrack(I)Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "track"

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getKind()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract getCustomDataCallBack()Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;
.end method

.method public getDuration()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getDuration()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract getMainDataCallBack()Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;
.end method

.method protected abstract getPageName()Ljava/lang/String;
.end method

.method public getPlayList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v3, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getPlayList(I)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPlayListSize()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getPlayListSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract getPlayServiceName()Ljava/lang/String;
.end method

.method public getPlayerStatus()I
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getPlayerStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract getServiceBindSuccessCallBack()Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;
.end method

.method public hasNext()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->hasNextSound()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hasPre()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->hasPreSound()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAppSecret:Ljava/lang/String;

    iput-object p2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAppKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPackId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;-><init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPlayServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u8bf7\u4f20\u5165 PlayServiceName"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "MediaControler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init ---  PlayServiceName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPlayServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    | pageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPlayServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v1, "MediaControler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init---mBindRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    const-string v0, "MediaControler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init2---mBindRet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$AliBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$AliBroadcastReceiver;-><init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.ximalaya.ali"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isAdsActive()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->isAdsActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isOnlineSource()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->isOnlineSource()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->pausePlay()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public play()V
    .locals 1

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->isDeath:Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->startPlay()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public play(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->play(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playCommontTrackList(Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;I",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {p0, p3, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getCallBackMap(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v2

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayByAlbumTracks(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playNext()V
    .locals 1

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->playNext()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playPre()V
    .locals 1

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->playPre()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playRadio(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    :try_start_0
    new-instance v2, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;

    invoke-direct {v2}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->radioToTrack(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;Z)Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->setTracks(Ljava/util/List;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->setTotalCount(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->setTotalPage(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->playCommontTrackList(Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Lcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {p0, p2, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getCallBackMap(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayByTrack(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playTrackList(Ljava/util/List;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;I",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->playTrackList(Ljava/util/Map;Ljava/util/List;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V

    return-void
.end method

.method public playTrackList(Ljava/util/Map;Ljava/util/List;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;I",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->playTrackList(Ljava/util/Map;Ljava/util/List;ILcom/ximalaya/speechcontrol/IMainDataCallback;Z)V

    return-void
.end method

.method public playTrackList(Ljava/util/Map;Ljava/util/List;ILcom/ximalaya/speechcontrol/IMainDataCallback;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;I",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x1e

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_4

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayList(Ljava/util/Map;Ljava/util/List;)V

    :cond_2
    :goto_1
    if-eqz p5, :cond_7

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0, p3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->play(I)Z

    move-result v0

    if-eqz p4, :cond_0

    if-nez v0, :cond_0

    const-string v0, "\u64ad\u653e\u5931\u8d25"

    invoke-interface {p4, v0}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p4, :cond_3

    const-string v1, "\u901a\u4fe1\u5931\u8d25"

    invoke-interface {p4, v1}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_2
    :try_start_1
    div-int v3, v2, v1

    if-ge v0, v3, :cond_6

    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    mul-int v4, v0, v1

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v5, v1

    invoke-interface {p2, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayList(Ljava/util/Map;Ljava/util/List;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    mul-int v4, v0, v1

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v5, v1

    invoke-interface {p2, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->addPlayList(Ljava/util/List;)V

    goto :goto_3

    :cond_6
    rem-int v0, v2, v1

    if-eqz v0, :cond_2

    div-int/2addr v2, v1

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    add-int/2addr v0, v1

    invoke-interface {p2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->addPlayList(Ljava/util/List;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0, p3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayIndex(I)Z

    move-result v0

    if-eqz p4, :cond_0

    if-nez v0, :cond_0

    const-string v0, "\u8bbe\u7f6e\u5217\u8868\u5931\u8d25"

    invoke-interface {p4, v0}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public removeAdsStatusListener(Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePlayerStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removerServiceDeathListener(Lcom/ximalaya/speechcontrol/IServiceDeathListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceDeathListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public seekTo(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->seekTo(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->stopPlay()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
