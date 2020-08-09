.class public Lcom/car/voice/cmd/Music;
.super Ljava/lang/Object;
.source "Music.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/car/common/VoiceRecognizerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/voice/cmd/Music$DownLoadTask;,
        Lcom/car/voice/cmd/Music$DownLoadItem;
    }
.end annotation


# static fields
.field private static final ACTION_STOP_MUSIC:Ljava/lang/String; = "action_stop_music"

.field static final ANSWER_FROM_VOICE:I = 0x9

.field static final INDEX_FROM_VOICE:I = 0x8

.field private static final KW_EXITAPP:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.EXITAPP"

.field private static final KW_MEDIA_BUTTON:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

.field private static final KW_PLAYER_STATUS:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAYER_STATUS"

.field private static final KW_STARTAPP:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.STARTAPP"

.field private static final KW_STATUS_BUFFERING:I = 0x2

.field private static final KW_STATUS_INIT:I = 0x0

.field private static final KW_STATUS_PAUSE:I = 0x3

.field private static final KW_STATUS_PLAYING:I = 0x1

.field private static final KW_STATUS_STOP:I = 0x4

.field public static final LAST:I = 0x3

.field static final MUSIC_LOOP_ALL:I = 0x3

.field static final MUSIC_LOOP_ONE:I = 0x2

.field static final MUSIC_NEXT:I = 0x6

.field static final MUSIC_ORDER:I = 0x5

.field static final MUSIC_PAUSE:I = 0x1

.field static final MUSIC_PLAY:I = 0x0

.field static final MUSIC_PREV:I = 0x7

.field static final MUSIC_SHUFFLE:I = 0x4

.field public static final NEXT:I = 0x2

.field public static final NOW:I = 0x1

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field private static final ROOT_PATH:Ljava/lang/String;

.field static final SEARCH_FINISHED:I = 0xa

.field static final SHOW_PERCENT:I = 0xb

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarSvc_Music"

.field private static USE_SYSTEM_MUSIC:Z = false

.field private static final delayMs:I = 0x1f4

.field static mKwStatus:I


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

.field mCurReqId:I

.field private final mCursorCols:[Ljava/lang/String;

.field mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

.field mDownLoadTask:Lcom/car/voice/cmd/Music$DownLoadTask;

.field mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

.field mFileDownloadIndex:I

.field mHandler:Landroid/os/Handler;

.field mIndex:I

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaScannerListener:Landroid/media/IMediaScannerListener$Stub;

.field private mMediaScannerRebind:Ljava/lang/Runnable;

.field mMediaScannerService:Landroid/media/IMediaScannerService;

.field mMsgId:I

.field private mRebind:Ljava/lang/Runnable;

.field private mService:Lcom/android/music/IMediaPlaybackService;

.field mToast:Landroid/widget/Toast;

.field mVoiceUI:Lcom/car/voice/VoiceUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Music/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/voice/cmd/Music;->ROOT_PATH:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/car/voice/cmd/Music;->USE_SYSTEM_MUSIC:Z

    const/4 v0, 0x0

    sput v0, Lcom/car/voice/cmd/Music;->mKwStatus:I

    return-void
.end method

.method public constructor <init>(Lcom/car/voice/RecDefaultProcess;Lcom/car/voice/VoiceUI;Lcom/car/voice/VoiceEngineFactory;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/car/voice/cmd/Music;->mService:Lcom/android/music/IMediaPlaybackService;

    iput v4, p0, Lcom/car/voice/cmd/Music;->mFileDownloadIndex:I

    iput v4, p0, Lcom/car/voice/cmd/Music;->mCurReqId:I

    iput-object v1, p0, Lcom/car/voice/cmd/Music;->mDownLoadTask:Lcom/car/voice/cmd/Music$DownLoadTask;

    new-instance v1, Lcom/car/voice/cmd/Music$1;

    invoke-direct {v1, p0}, Lcom/car/voice/cmd/Music$1;-><init>(Lcom/car/voice/cmd/Music;)V

    iput-object v1, p0, Lcom/car/voice/cmd/Music;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    new-instance v1, Lcom/car/voice/cmd/Music$2;

    invoke-direct {v1, p0}, Lcom/car/voice/cmd/Music$2;-><init>(Lcom/car/voice/cmd/Music;)V

    iput-object v1, p0, Lcom/car/voice/cmd/Music;->mMediaScannerListener:Landroid/media/IMediaScannerListener$Stub;

    new-instance v1, Lcom/car/voice/cmd/Music$3;

    invoke-direct {v1, p0}, Lcom/car/voice/cmd/Music$3;-><init>(Lcom/car/voice/cmd/Music;)V

    iput-object v1, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "mime_type"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "artist"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "album"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "data1"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "data2"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/car/voice/cmd/Music;->mCursorCols:[Ljava/lang/String;

    new-instance v1, Lcom/car/voice/cmd/Music$4;

    invoke-direct {v1, p0}, Lcom/car/voice/cmd/Music$4;-><init>(Lcom/car/voice/cmd/Music;)V

    iput-object v1, p0, Lcom/car/voice/cmd/Music;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/car/voice/cmd/Music$5;

    invoke-direct {v1, p0}, Lcom/car/voice/cmd/Music$5;-><init>(Lcom/car/voice/cmd/Music;)V

    iput-object v1, p0, Lcom/car/voice/cmd/Music;->mRebind:Ljava/lang/Runnable;

    new-instance v1, Lcom/car/voice/cmd/Music$6;

    invoke-direct {v1, p0}, Lcom/car/voice/cmd/Music$6;-><init>(Lcom/car/voice/cmd/Music;)V

    iput-object v1, p0, Lcom/car/voice/cmd/Music;->mMediaScannerRebind:Ljava/lang/Runnable;

    invoke-interface {p2}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/car/voice/cmd/Music;->isKuwoInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v4, Lcom/car/voice/cmd/Music;->USE_SYSTEM_MUSIC:Z

    :cond_0
    iput-object p1, p0, Lcom/car/voice/cmd/Music;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    iput-object p2, p0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    iput-object p3, p0, Lcom/car/voice/cmd/Music;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    invoke-interface {p2}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.music"

    invoke-static {v1, v2}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/car/voice/cmd/Music;->bindMusicService(Lcom/car/voice/VoiceUI;)V

    :cond_1
    invoke-direct {p0, p2}, Lcom/car/voice/cmd/Music;->bindMediaScannerService(Lcom/car/voice/VoiceUI;)V

    iget-object v1, p0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v1}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/car/voice/cmd/Music;->mToast:Landroid/widget/Toast;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAYER_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v1}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/cmd/Music;->mService:Lcom/android/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/voice/cmd/Music;)Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/cmd/Music;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/car/voice/cmd/Music;->USE_SYSTEM_MUSIC:Z

    return v0
.end method

.method static synthetic access$300(Lcom/car/voice/cmd/Music;Lcom/car/voice/VoiceUI;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/voice/cmd/Music;->bindMusicService(Lcom/car/voice/VoiceUI;)V

    return-void
.end method

.method static synthetic access$400(Lcom/car/voice/cmd/Music;Lcom/car/voice/VoiceUI;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/voice/cmd/Music;->bindMediaScannerService(Lcom/car/voice/VoiceUI;)V

    return-void
.end method

.method static synthetic access$500(Lcom/car/voice/cmd/Music;)Landroid/media/IMediaScannerListener$Stub;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/cmd/Music;->mMediaScannerListener:Landroid/media/IMediaScannerListener$Stub;

    return-object v0
.end method

.method private bindMediaScannerService(Lcom/car/voice/VoiceUI;)V
    .locals 8

    const-wide/16 v6, 0x7d0

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mMediaScannerService:Landroid/media/IMediaScannerService;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.IMediaScannerService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.providers.media"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    invoke-interface {p1}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CarSvc_Music"

    const-string v3, "bind MediaScannerService failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/car/voice/cmd/Music;->mMediaScannerRebind:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/car/voice/cmd/Music;->mMediaScannerRebind:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private bindMusicService(Lcom/car/voice/VoiceUI;)V
    .locals 8

    const-wide/16 v6, 0x7d0

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.MediaPlaybackService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.music"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    invoke-interface {p1}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CarSvc_Music"

    const-string v3, "bind IMediaPlaybackService failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/car/voice/cmd/Music;->mRebind:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/car/voice/cmd/Music;->mRebind:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;I)Z
    .locals 22

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    :try_start_0
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v16

    const/4 v4, 0x0

    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    const/16 v20, 0x2000

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v9, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v13, Ljava/io/BufferedOutputStream;

    const/16 v19, 0x2000

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-direct {v13, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v19, 0x400

    :try_start_2
    move/from16 v0, v19

    new-array v5, v0, [B

    const/4 v7, 0x1

    :cond_0
    :goto_0
    invoke-virtual {v9, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v10, v0, :cond_5

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v5, v0, v10}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v4, v10

    mul-int/lit8 v19, v4, 0x64

    div-int v14, v19, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/voice/cmd/Music;->mFileDownloadIndex:I

    move/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/car/voice/VoiceUI;->isUIShowing()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/cmd/Music;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/car/voice/VoiceEngineFactory;->getCurReqId()I

    move-result v19

    move/from16 v0, p4

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0xb

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_0

    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    const/16 v19, 0xb

    move/from16 v0, v19

    iput v0, v11, Landroid/os/Message;->what:I

    iput v14, v11, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_4

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    iput v0, v11, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p3

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v8, v9

    move-object v12, v13

    :goto_2
    :try_start_3
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v15, 0x0

    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    if-eqz v12, :cond_2

    :try_start_4
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    return v15

    :cond_4
    const/16 v19, 0x0

    goto :goto_1

    :cond_5
    const/4 v15, 0x1

    move-object v8, v9

    move-object v12, v13

    :cond_6
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    if-eqz v12, :cond_8

    :try_start_5
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V

    :cond_8
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v19

    :goto_4
    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    if-eqz v12, :cond_a

    :try_start_6
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V

    :cond_a
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_b
    :goto_5
    throw v19

    :catch_3
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v19

    move-object v8, v9

    goto :goto_4

    :catchall_2
    move-exception v19

    move-object v8, v9

    move-object v12, v13

    goto :goto_4

    :catch_4
    move-exception v6

    goto :goto_2

    :catch_5
    move-exception v6

    move-object v8, v9

    goto :goto_2
.end method

.method public static exitKuwoApp(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.EXITAPP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "kuwo_key"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static isKuwoInstalled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "cn.kuwo.kwmusiccar"

    invoke-static {p0, v0}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isKuwoPlaying()Z
    .locals 3

    const/4 v0, 0x1

    sget v1, Lcom/car/voice/cmd/Music;->mKwStatus:I

    if-eq v1, v0, :cond_0

    sget v1, Lcom/car/voice/cmd/Music;->mKwStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQQMusicInstalled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.tencent.qqmusiccar"

    invoke-static {p0, v0}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTxzInstalled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.txznet.music"

    invoke-static {p0, v0}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static pauseKuwoMusic(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA"

    const-string v2, "MEDIA_PAUSE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "kuwo_key"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static playKuwoMusic(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA"

    const-string v2, "MEDIA_PLAY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "kuwo_key"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method doPlay([J)V
    .locals 23

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v2

    const-string v3, "\u5f00\u59cb\u64ad\u653e\u97f3\u4e50"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio._id AS _id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "artist"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "title"

    aput-object v3, v4, v2

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/16 v21, 0x0

    move-object/from16 v8, p1

    array-length v0, v8

    move/from16 v19, v0

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v19

    if-ge v14, v0, :cond_1

    aget-wide v16, v8, v14

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v2}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "_data"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v2, "artist"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v2, "title"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v2, "CarSvc_Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", artist="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "+ title="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_1
    sget-boolean v2, Lcom/car/voice/cmd/Music;->USE_SYSTEM_MUSIC:Z

    if-nez v2, :cond_5

    :try_start_1
    new-instance v18, Landroid/content/Intent;

    const-string v2, "cn.kuwo.kwmusicauto.action.SEARCH_MUSIC"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "singer"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const/high16 v2, 0x30000000

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v2}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v12

    const-string v2, "CarSvc_Music"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [J

    move-object/from16 v22, v0

    const/4 v13, 0x0

    :goto_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_6

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v22, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    new-instance v15, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.music"

    const-string v3, "com.android.music.MusicBrowserActivity"

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x30000000

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v2}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v15, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.music"

    const-string v3, "com.android.music.MediaPlaybackActivity"

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x30000000

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v2}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/voice/cmd/Music;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/voice/cmd/Music;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v3, -0x1

    move-object/from16 v0, v22

    invoke-interface {v2, v0, v3}, Lcom/android/music/IMediaPlaybackService;->open([JI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/voice/cmd/Music;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->play()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v2

    goto/16 :goto_1
.end method

.method globalSearchAgain(Ljava/lang/String;)[J
    .locals 32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/external/audio/search/fancy/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v14, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {v14}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    sget-object v4, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {v14, v4}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v4}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v18, 0x0

    :cond_0
    :goto_0
    return-object v18

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Music;->mCursorCols:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    if-eqz v28, :cond_f

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_2
    const-string v4, "mime_type"

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v4, "title"

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    const-string v4, "artist"

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v4, "_id"

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string v4, "CarSvc_Music"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", title="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", aritist="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x0

    if-eqz v30, :cond_3

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-ltz v19, :cond_3

    const/16 v29, 0x1

    :cond_3
    const/16 v23, 0x2

    :cond_4
    :goto_1
    if-lez v23, :cond_e

    add-int/lit8 v23, v23, -0x1

    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_7

    if-eqz v30, :cond_4

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v25, 0x0

    const/16 v24, 0x0

    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_8

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    :goto_2
    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v21

    if-ge v15, v0, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move/from16 v20, v25

    :goto_4
    array-length v4, v11

    move/from16 v0, v20

    if-ge v0, v4, :cond_a

    aget-char v4, v11, v20

    if-ne v9, v4, :cond_9

    add-int/lit8 v25, v20, 0x1

    add-int/lit8 v24, v24, 0x1

    :cond_6
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    :cond_7
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5

    goto :goto_1

    :cond_8
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    goto :goto_2

    :cond_9
    aget-char v4, v11, v20
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, 0x7f

    if-le v4, v5, :cond_6

    const/16 v4, 0x7f

    if-le v9, v4, :cond_6

    :try_start_1
    invoke-static {v9, v14}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object v10

    aget-char v4, v11, v20

    invoke-static {v4, v14}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v25, v20, 0x1

    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    :catch_0
    move-exception v12

    :try_start_2
    invoke-virtual {v12}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception v13

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_b
    array-length v4, v11

    move/from16 v0, v24

    if-le v0, v4, :cond_c

    array-length v0, v11

    move/from16 v24, v0

    :cond_c
    move/from16 v0, v24

    int-to-float v4, v0

    array-length v5, v11

    int-to-float v5, v5

    div-float v27, v4, v5

    const-string v4, "CarSvc_Music"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Song matching percent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v27

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_4

    if-eqz v29, :cond_d

    const/4 v4, 0x1

    new-array v0, v4, [J

    move-object/from16 v18, v0

    const/4 v4, 0x0

    aput-wide v16, v18, v4

    goto/16 :goto_0

    :cond_d
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [J

    move-object/from16 v18, v0

    const/4 v15, 0x0

    :goto_6
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v18, v15
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method public loopAll()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public loopOne()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method networkSearch(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/voice/cmd/Music$7;

    invoke-direct {v1, p0}, Lcom/car/voice/cmd/Music$7;-><init>(Lcom/car/voice/cmd/Music;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/car/voice/cmd/Music;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u64ad\u653e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/car/voice/cmd/Music;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/voice/VoiceEngineFactory;->startRecognize(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)Z

    return-void
.end method

.method public next()V
    .locals 4

    iget-object v0, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method nothingFound()V
    .locals 2

    iget-object v0, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/voice/cmd/Music$8;

    invoke-direct {v1, p0}, Lcom/car/voice/cmd/Music$8;-><init>(Lcom/car/voice/cmd/Music;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRecognizeResult(IILjava/lang/String;Z)Z
    .locals 10

    const/16 v9, 0x2710

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\u8bf7\u91cd\u65b0\u64cd\u4f5c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v4, p0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v4}, Lcom/car/voice/VoiceUI;->dismissUI()V

    move v4, v5

    :goto_0
    return v4

    :cond_0
    iget v4, p0, Lcom/car/voice/cmd/Music;->mMsgId:I

    if-ne v4, v8, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {p3}, Lcom/car/common/voice/VoiceHelp;->voiceToIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/car/voice/cmd/Music;->mIndex:I

    iget-object v4, p0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v4}, Lcom/car/voice/VoiceUI;->getSuggestionResult()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/car/voice/cmd/Music;->mList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/car/voice/cmd/Music;->mIndex:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/car/voice/cmd/Music;->mIndex:I

    if-eq v4, v9, :cond_2

    iget v4, p0, Lcom/car/voice/cmd/Music;->mIndex:I

    iget-object v7, p0, Lcom/car/voice/cmd/Music;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v4, v7, :cond_2

    :cond_1
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    const-string v7, "\u8d85\u51fa\u53ef\u9009\u8303\u56f4\uff0c\u8bf7\u9009\u62e9\u7b2c\u51e0\u9996\u6216\u8005\u5168\u90e8"

    invoke-virtual {v4, v7, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v4, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v4, v6

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/car/voice/cmd/Music;->mDownLoadTask:Lcom/car/voice/cmd/Music$DownLoadTask;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/car/voice/cmd/Music;->mDownLoadTask:Lcom/car/voice/cmd/Music$DownLoadTask;

    invoke-virtual {v4}, Lcom/car/voice/cmd/Music$DownLoadTask;->stop()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/car/voice/cmd/Music;->mDownLoadTask:Lcom/car/voice/cmd/Music$DownLoadTask;

    :cond_3
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/utils/TipPlayer;->removeTaskIfExist()V

    const-string v3, "\u6b63\u5728\u7f13\u51b2\u6240\u9009\u6b4c\u66f2\uff0c\u8bf7\u7a0d\u5019"

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v4, p0, Lcom/car/voice/cmd/Music;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    invoke-virtual {v4}, Lcom/car/voice/VoiceEngineFactory;->getCurReqId()I

    move-result v4

    iput v4, p0, Lcom/car/voice/cmd/Music;->mCurReqId:I

    iget-object v4, p0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v4, v6}, Lcom/car/voice/VoiceUI;->setProcess(Z)V

    iget-object v4, p0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v4, v3}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v4, p0, Lcom/car/voice/cmd/Music;->mIndex:I

    if-ne v4, v9, :cond_4

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/car/voice/cmd/Music;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    new-instance v0, Lcom/car/voice/cmd/Music$DownLoadItem;

    iget-object v4, p0, Lcom/car/voice/cmd/Music;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/car/common/voice/SuggestItem;

    iget-object v6, v4, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/car/voice/cmd/Music;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/car/common/voice/SuggestItem;

    iget-object v4, v4, Lcom/car/common/voice/SuggestItem;->key:Ljava/lang/String;

    invoke-direct {v0, p0, v6, v4}, Lcom/car/voice/cmd/Music$DownLoadItem;-><init>(Lcom/car/voice/cmd/Music;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/car/voice/cmd/Music$DownLoadItem;

    iget-object v4, p0, Lcom/car/voice/cmd/Music;->mList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/car/voice/cmd/Music;->mIndex:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/car/common/voice/SuggestItem;

    iget-object v6, v4, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/car/voice/cmd/Music;->mList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/car/voice/cmd/Music;->mIndex:I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/car/common/voice/SuggestItem;

    iget-object v4, v4, Lcom/car/common/voice/SuggestItem;->key:Ljava/lang/String;

    invoke-direct {v0, p0, v6, v4}, Lcom/car/voice/cmd/Music$DownLoadItem;-><init>(Lcom/car/voice/cmd/Music;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v4, Lcom/car/voice/cmd/Music$DownLoadTask;

    invoke-direct {v4, p0, v2}, Lcom/car/voice/cmd/Music$DownLoadTask;-><init>(Lcom/car/voice/cmd/Music;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/car/voice/cmd/Music;->mDownLoadTask:Lcom/car/voice/cmd/Music$DownLoadTask;

    new-instance v4, Ljava/lang/Thread;

    iget-object v6, p0, Lcom/car/voice/cmd/Music;->mDownLoadTask:Lcom/car/voice/cmd/Music$DownLoadTask;

    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_6
    move v4, v5

    goto/16 :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "CarSvc_Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.music.MediaPlaybackService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    iput-object v0, p0, Lcom/car/voice/cmd/Music;->mService:Lcom/android/music/IMediaPlaybackService;

    const-string v0, "CarSvc_Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind IMediaPlaybackService return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.providers.media.MediaScannerService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/media/IMediaScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;

    move-result-object v0

    iput-object v0, p0, Lcom/car/voice/cmd/Music;->mMediaScannerService:Landroid/media/IMediaScannerService;

    const-string v0, "CarSvc_Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind IMediaScannerService return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mMediaScannerService:Landroid/media/IMediaScannerService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6

    const-wide/16 v4, 0x7d0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.music.MediaPlaybackService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/car/voice/cmd/Music;->mService:Lcom/android/music/IMediaPlaybackService;

    iget-object v0, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/voice/cmd/Music;->mRebind:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.providers.media.MediaScannerService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/car/voice/cmd/Music;->mMediaScannerService:Landroid/media/IMediaScannerService;

    iget-object v0, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/voice/cmd/Music;->mMediaScannerRebind:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public orderly()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public play()V
    .locals 4

    iget-object v0, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public playAll()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/voice/cmd/Music$11;

    invoke-direct {v1, p0}, Lcom/car/voice/cmd/Music$11;-><init>(Lcom/car/voice/cmd/Music;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public playSong(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/voice/cmd/Music$10;

    invoke-direct {v1, p0, p1}, Lcom/car/voice/cmd/Music$10;-><init>(Lcom/car/voice/cmd/Music;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/car/voice/VoiceUI;->setProcess(Z)V

    iget-object v0, p0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    const-string v1, "\u6b63\u5728\u67e5\u627e\u672c\u5730\u6b4c\u66f2"

    invoke-interface {v0, v1}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    return-void
.end method

.method public playSongAgain(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/voice/cmd/Music$9;

    invoke-direct {v1, p0, p1}, Lcom/car/voice/cmd/Music$9;-><init>(Lcom/car/voice/cmd/Music;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    const-string v1, "\u6b63\u5728\u67e5\u627e\u672c\u5730\u6b4c\u66f2"

    invoke-interface {v0, v1}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/car/voice/VoiceUI;->setProcess(Z)V

    return-void
.end method

.method public prev()V
    .locals 4

    iget-object v0, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method saveFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const/4 v10, 0x0

    const/16 v12, 0x2e

    new-instance v2, Ljava/io/File;

    sget-object v11, Lcom/car/voice/cmd/Music;->ROOT_PATH:Ljava/lang/String;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {p1, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v11, -0x1

    if-ne v7, v11, :cond_1

    move-object v8, v10

    :goto_0
    return-object v8

    :cond_1
    invoke-virtual {p1, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    invoke-virtual {p1, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x4

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/car/voice/cmd/Music;->ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v6, 0x1

    :goto_1
    const/16 v11, 0x14

    if-ge v6, v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/car/voice/cmd/Music;->ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    iget v11, p0, Lcom/car/voice/cmd/Music;->mCurReqId:I

    invoke-direct {p0, p1, v5, p2, v11}, Lcom/car/voice/cmd/Music;->downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v5, :cond_3

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_2
    move-object v4, v5

    :goto_3
    move-object v8, v10

    goto/16 :goto_0

    :cond_4
    const/16 v11, 0x13

    if-ne v6, v11, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v10

    goto/16 :goto_0

    :cond_6
    :try_start_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v4, v5

    :goto_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4
.end method

.method public scanFileAsync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method search(Ljava/lang/String;)[J
    .locals 18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/external/audio/search/fancy/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v4}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v14, 0x0

    :goto_0
    return-object v14

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/voice/cmd/Music;->mCursorCols:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v14, v4, [J

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    const-string v4, "mime_type"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v4, "title"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v4, "artist"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v4, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-string v4, "CarSvc_Music"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", title="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", aritist="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v10, 0x1

    aput-wide v12, v14, v10

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v11

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_2
    move v10, v9

    goto/16 :goto_1
.end method

.method public setItemList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/car/voice/cmd/Music;->mList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/car/voice/cmd/Music;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mList:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/car/voice/VoiceUI;->onSuggestionResult(Ljava/util/List;)V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v1

    const-string v2, "\u4e3a\u60a8\u627e\u5230\u4ee5\u4e0b\u51e0\u9996\u76f8\u5173\u6b4c\u66f2\uff0c\u8bf7\u9009\u62e9\u7b2c\u51e0\u9996\u6216\u8005\u5168\u90e8\u8fdb\u884c\u64ad\u653e"

    invoke-virtual {v1, v2, v3}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v1, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u6ca1\u6709\u627e\u5230\u76f8\u5173\u6b4c\u66f2\uff0c\u8bf7\u91cd\u65b0\u5f00\u59cb"

    iget-object v1, p0, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v1, v0}, Lcom/car/voice/VoiceUI;->onTipString(Ljava/lang/String;)V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v1, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public shuffle()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    iget-object v0, p0, Lcom/car/voice/cmd/Music;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
