.class public Lcom/car/voice/remote/RemoteVoice;
.super Ljava/lang/Object;
.source "RemoteVoice.java"

# interfaces
.implements Lcom/car/voice/remote/NetServImpl$RemoteMicInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/voice/remote/RemoteVoice$1;,
        Lcom/car/voice/remote/RemoteVoice$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final MSG_FINAL_TEXT:I = 0x1

.field static final MSG_START_RECOGNIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarSvc_RemoteVoice"

.field static sInstance:Lcom/car/voice/remote/RemoteVoice;


# instance fields
.field CONST_INDEX:[Ljava/lang/String;

.field mActiveNow:Z

.field public mContext:Landroid/content/Context;

.field private mCurrentReqID:I

.field private mDisplay:Landroid/view/Display;

.field private mHandler:Lcom/car/voice/remote/RemoteVoice$MyHandler;

.field mNetServImpl:Lcom/car/voice/remote/NetServImpl;

.field private mParam:Ljava/lang/String;

.field private mRecType:I

.field mRecognizing:Z

.field private mVoiceListener:Lcom/car/voice/VoiceEngineFactory$VoiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.remote.voice"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/car/voice/remote/RemoteVoice;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/car/voice/remote/RemoteVoice;->sInstance:Lcom/car/voice/remote/RemoteVoice;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u7b2c\u4e00"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "\u7b2c\u4e8c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u7b2c\u4e09"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u7b2c\u56db"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u7b2c\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u7b2c\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u7b2c\u4e03"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u7b2c\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u7b2c\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u7b2c\u5341"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/car/voice/remote/RemoteVoice;->CONST_INDEX:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/voice/remote/RemoteVoice;->mRecType:I

    iput v3, p0, Lcom/car/voice/remote/RemoteVoice;->mCurrentReqID:I

    iput-boolean v3, p0, Lcom/car/voice/remote/RemoteVoice;->mActiveNow:Z

    iput-boolean v3, p0, Lcom/car/voice/remote/RemoteVoice;->mRecognizing:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/car/voice/remote/RemoteVoice;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/car/voice/remote/RemoteVoice;)I
    .locals 1

    iget v0, p0, Lcom/car/voice/remote/RemoteVoice;->mCurrentReqID:I

    return v0
.end method

.method static synthetic access$200(Lcom/car/voice/remote/RemoteVoice;)Lcom/car/voice/VoiceEngineFactory$VoiceListener;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/remote/RemoteVoice;->mVoiceListener:Lcom/car/voice/VoiceEngineFactory$VoiceListener;

    return-object v0
.end method

.method public static getInstance()Lcom/car/voice/remote/RemoteVoice;
    .locals 1

    sget-object v0, Lcom/car/voice/remote/RemoteVoice;->sInstance:Lcom/car/voice/remote/RemoteVoice;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/voice/remote/RemoteVoice;

    invoke-direct {v0}, Lcom/car/voice/remote/RemoteVoice;-><init>()V

    sput-object v0, Lcom/car/voice/remote/RemoteVoice;->sInstance:Lcom/car/voice/remote/RemoteVoice;

    :cond_0
    sget-object v0, Lcom/car/voice/remote/RemoteVoice;->sInstance:Lcom/car/voice/remote/RemoteVoice;

    return-object v0
.end method


# virtual methods
.method public connectionStatus(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/car/voice/remote/RemoteVoice;->mActiveNow:Z

    iget-boolean v1, p0, Lcom/car/voice/remote/RemoteVoice;->mActiveNow:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/voice/remote/RemoteVoice;->mHandler:Lcom/car/voice/remote/RemoteVoice$MyHandler;

    invoke-virtual {v1, v2}, Lcom/car/voice/remote/RemoteVoice$MyHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v3, v0, Landroid/os/Message;->what:I

    const-string v1, "{\"text\":\"\u9000\u51fa\"}"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v3, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/car/voice/remote/RemoteVoice;->mHandler:Lcom/car/voice/remote/RemoteVoice$MyHandler;

    invoke-virtual {v1, v0}, Lcom/car/voice/remote/RemoteVoice$MyHandler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v2, p0, Lcom/car/voice/remote/RemoteVoice;->mRecognizing:Z

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Lcom/car/voice/VoiceEngineFactory$VoiceListener;)V
    .locals 3

    iput-object p1, p0, Lcom/car/voice/remote/RemoteVoice;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/car/voice/remote/RemoteVoice;->mVoiceListener:Lcom/car/voice/VoiceEngineFactory$VoiceListener;

    new-instance v1, Lcom/car/voice/remote/NetServImpl;

    invoke-direct {v1, p0}, Lcom/car/voice/remote/NetServImpl;-><init>(Lcom/car/voice/remote/NetServImpl$RemoteMicInfo;)V

    iput-object v1, p0, Lcom/car/voice/remote/RemoteVoice;->mNetServImpl:Lcom/car/voice/remote/NetServImpl;

    iget-object v1, p0, Lcom/car/voice/remote/RemoteVoice;->mNetServImpl:Lcom/car/voice/remote/NetServImpl;

    invoke-virtual {v1}, Lcom/car/voice/remote/NetServImpl;->start()V

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/car/voice/remote/RemoteVoice;->mDisplay:Landroid/view/Display;

    new-instance v1, Lcom/car/voice/remote/RemoteVoice$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/car/voice/remote/RemoteVoice$MyHandler;-><init>(Lcom/car/voice/remote/RemoteVoice;Lcom/car/voice/remote/RemoteVoice$1;)V

    iput-object v1, p0, Lcom/car/voice/remote/RemoteVoice;->mHandler:Lcom/car/voice/remote/RemoteVoice$MyHandler;

    return-void
.end method

.method public isActiveNow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/voice/remote/RemoteVoice;->mActiveNow:Z

    return v0
.end method

.method public onVoiceInput(Ljava/lang/String;ZI)V
    .locals 5

    const/4 v1, 0x1

    const-string v2, "\u3002"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "CarSvc_RemoteVoice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVoiceInput:text = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isLast = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p2, :cond_2

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/car/voice/remote/RemoteVoice;->mHandler:Lcom/car/voice/remote/RemoteVoice$MyHandler;

    invoke-virtual {v1, v0}, Lcom/car/voice/remote/RemoteVoice$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public sendSuggestionResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/car/voice/remote/RemoteVoice;->mActiveNow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/remote/RemoteVoice;->mNetServImpl:Lcom/car/voice/remote/NetServImpl;

    invoke-virtual {v0, p1}, Lcom/car/voice/remote/NetServImpl;->sendSuggestionResult(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public sendTips(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/car/voice/remote/RemoteVoice;->mActiveNow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/remote/RemoteVoice;->mNetServImpl:Lcom/car/voice/remote/NetServImpl;

    invoke-virtual {v0, p1}, Lcom/car/voice/remote/NetServImpl;->sendTips(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showProgress(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/car/voice/remote/RemoteVoice;->mNetServImpl:Lcom/car/voice/remote/NetServImpl;

    const-string v1, "PROGRESS_SHOW"

    invoke-virtual {v0, v1, v2}, Lcom/car/voice/remote/NetServImpl;->sendReq(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/voice/remote/RemoteVoice;->mNetServImpl:Lcom/car/voice/remote/NetServImpl;

    const-string v1, "PROGRESS_UNSHOW"

    invoke-virtual {v0, v1, v2}, Lcom/car/voice/remote/NetServImpl;->sendReq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start(IILjava/lang/String;)V
    .locals 3

    iput p1, p0, Lcom/car/voice/remote/RemoteVoice;->mCurrentReqID:I

    iput p2, p0, Lcom/car/voice/remote/RemoteVoice;->mRecType:I

    iput-object p3, p0, Lcom/car/voice/remote/RemoteVoice;->mParam:Ljava/lang/String;

    iget-object v0, p0, Lcom/car/voice/remote/RemoteVoice;->mVoiceListener:Lcom/car/voice/VoiceEngineFactory$VoiceListener;

    invoke-interface {v0}, Lcom/car/voice/VoiceEngineFactory$VoiceListener;->onBeginOfSpeech()V

    iget-object v0, p0, Lcom/car/voice/remote/RemoteVoice;->mNetServImpl:Lcom/car/voice/remote/NetServImpl;

    const-string v1, "BEGIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/car/voice/remote/NetServImpl;->sendReq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/voice/remote/RemoteVoice;->mRecognizing:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/voice/remote/RemoteVoice;->stop(Z)V

    return-void
.end method

.method public stop(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/car/common/voice/VoiceHelp;->muteTTS(Z)V

    iget-object v0, p0, Lcom/car/voice/remote/RemoteVoice;->mVoiceListener:Lcom/car/voice/VoiceEngineFactory$VoiceListener;

    invoke-interface {v0}, Lcom/car/voice/VoiceEngineFactory$VoiceListener;->onEndOfSpeech()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/car/voice/remote/RemoteVoice;->mNetServImpl:Lcom/car/voice/remote/NetServImpl;

    const-string v1, "QUIT"

    invoke-virtual {v0, v1, v3}, Lcom/car/voice/remote/NetServImpl;->sendReq(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-boolean v2, p0, Lcom/car/voice/remote/RemoteVoice;->mRecognizing:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/voice/remote/RemoteVoice;->mNetServImpl:Lcom/car/voice/remote/NetServImpl;

    const-string v1, "END"

    invoke-virtual {v0, v1, v3}, Lcom/car/voice/remote/NetServImpl;->sendReq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
