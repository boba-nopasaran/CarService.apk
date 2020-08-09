.class public Lcom/iflytek/sr/SrSession;
.super Ljava/lang/Object;
.source "SrSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sr/SrSession$OnSrInitedRunnable;
    }
.end annotation


# static fields
.field public static final ISS_SR_ACOUS_LANG_VALUE_CANTONESE:I = 0x2

.field public static final ISS_SR_ACOUS_LANG_VALUE_ENGLISH:I = 0x1

.field public static final ISS_SR_ACOUS_LANG_VALUE_MANDARIN:I = 0x0

.field public static final ISS_SR_MODE_CLOUD_REC:I = 0x0

.field public static final ISS_SR_MODE_LOCAL_CMDLIST:I = 0x3

.field public static final ISS_SR_MODE_LOCAL_NLP:I = 0x4

.field public static final ISS_SR_MODE_LOCAL_REC:I = 0x1

.field public static final ISS_SR_MODE_MIX_REC:I = 0x2

.field public static final ISS_SR_MSG_CloudInitStatus:I = 0x4e2d

.field public static final ISS_SR_MSG_Error:I = 0x4e28

.field public static final ISS_SR_MSG_ErrorDecodingAudio:I = 0x4e2b

.field public static final ISS_SR_MSG_InitStatus:I = 0x4e20

.field public static final ISS_SR_MSG_PreResult:I = 0x4e2c

.field public static final ISS_SR_MSG_ResponseTimeout:I = 0x4e24

.field public static final ISS_SR_MSG_Result:I = 0x4e29

.field public static final ISS_SR_MSG_SpeechEnd:I = 0x4e27

.field public static final ISS_SR_MSG_SpeechStart:I = 0x4e25

.field public static final ISS_SR_MSG_SpeechTimeOut:I = 0x4e26

.field public static final ISS_SR_MSG_UpLoadDictToCloudStatus:I = 0x4e22

.field public static final ISS_SR_MSG_UpLoadDictToLocalStatus:I = 0x4e21

.field public static final ISS_SR_MSG_VolumeLevel:I = 0x4e23

.field public static final ISS_SR_MSG_WaitingForCloudResult:I = 0x4e32

.field public static final ISS_SR_MSG_WaitingForLocalResult:I = 0x4e35

.field public static final ISS_SR_MVW_PARAM_AEC:Ljava/lang/String; = "mvw_enable_aec"

.field public static final ISS_SR_MVW_PARAM_LSA:Ljava/lang/String; = "mvw_enable_lsa"

.field public static final ISS_SR_PARAM_ACOUS_LANG:Ljava/lang/String; = "ent"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_CANTONESE:Ljava/lang/String; = "cantonese16k"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_CHANGSHANESE:Ljava/lang/String; = "changshanese16k"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_DONGBEIESE:Ljava/lang/String; = "dongbeiese16k"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_ENGLISH:Ljava/lang/String; = "sms-en16k"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_HEFEINESE:Ljava/lang/String; = "hefeinese16k"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_HENANESE:Ljava/lang/String; = "henanese16k"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_LMZ:Ljava/lang/String; = "lmz16k"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_MANDARIN:Ljava/lang/String; = "automotiveknife16k"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_MINNANESE:Ljava/lang/String; = "minnanese16k"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_NANCHANGNESE:Ljava/lang/String; = "nanchangnese16k"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_NANJING:Ljava/lang/String; = "nankinese16k"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_SHANDONGNESE:Ljava/lang/String; = "shandongnese16k"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_SHANGHAINESE:Ljava/lang/String; = "shanghainese16k"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_SHANXINESE:Ljava/lang/String; = "shanxinese16k"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_TAIYUANESE:Ljava/lang/String; = "taiyuanese16k"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_TIANJINESE:Ljava/lang/String; = "tianjinese16k"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_UYGHUR:Ljava/lang/String; = "uyghur16k"

.field public static final ISS_SR_PARAM_ACOUS_LANG_VALUE_WUHANESE:Ljava/lang/String; = "wuhanese16k"

.field public static final ISS_SR_PARAM_CITY:Ljava/lang/String; = "city"

.field public static final ISS_SR_PARAM_IAT_EXTEND_PARAMS:Ljava/lang/String; = "iatextendparams"

.field public static final ISS_SR_PARAM_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final ISS_SR_PARAM_LONGTITUDE:Ljava/lang/String; = "longitude"

.field public static final ISS_SR_PARAM_NET_SUBTYPE:Ljava/lang/String; = "net_subtype"

.field public static final ISS_SR_PARAM_RESPONSE_TIMEOUT:Ljava/lang/String; = "responsetimeout"

.field public static final ISS_SR_PARAM_SPEECH_TAIL:Ljava/lang/String; = "speechtail"

.field public static final ISS_SR_PARAM_SPEECH_TIMEOUT:Ljava/lang/String; = "speechtimeout"

.field public static final ISS_SR_PARAM_TMP_LOG_DIR:Ljava/lang/String; = "TmpLogDir"

.field public static final ISS_SR_PARAM_TRACE_LEVEL:Ljava/lang/String; = "tracelevel"

.field public static final ISS_SR_PARAM_TRACE_LEVEL_VALUE_DEBUG:Ljava/lang/String; = "debug"

.field public static final ISS_SR_PARAM_TRACE_LEVEL_VALUE_ERROR:Ljava/lang/String; = "error"

.field public static final ISS_SR_PARAM_TRACE_LEVEL_VALUE_INFOR:Ljava/lang/String; = "infor"

.field public static final ISS_SR_PARAM_TRACE_LEVEL_VALUE_NONE:Ljava/lang/String; = "none"

.field public static final ISS_SR_PARAM_VALUE_OFF:Ljava/lang/String; = "off"

.field public static final ISS_SR_PARAM_VALUE_ON:Ljava/lang/String; = "on"

.field public static final ISS_SR_PARAM_WAP_PROXY:Ljava/lang/String; = "wap_proxy"

.field public static final ISS_SR_SCENE_ALL:Ljava/lang/String; = "all"

.field public static final ISS_SR_SCENE_ANSWER_CALL:Ljava/lang/String; = "answer_call"

.field public static final ISS_SR_SCENE_ANSWER_CALL_MVW:Ljava/lang/String; = "answer_call_mvw"

.field public static final ISS_SR_SCENE_BUILD_GRM_MVW:Ljava/lang/String; = "build_grm_mvw"

.field public static final ISS_SR_SCENE_CMDLIST_WITHALL:Ljava/lang/String; = "cmdlist_withall"

.field public static final ISS_SR_SCENE_CONFIRM:Ljava/lang/String; = "confirm"

.field public static final ISS_SR_SCENE_CONFIRM_MVW:Ljava/lang/String; = "confirm_mvw"

.field public static final ISS_SR_SCENE_CONTACTS:Ljava/lang/String; = "contacts"

.field public static final ISS_SR_SCENE_POI:Ljava/lang/String; = "poi"

.field public static final ISS_SR_SCENE_SELECT:Ljava/lang/String; = "select"

.field public static final ISS_SR_SCENE_SELECT_MVW:Ljava/lang/String; = "select_mvw"

.field private static final TAG:Ljava/lang/String; = "SrSession"

.field private static instance:Lcom/iflytek/sr/SrSession;


# instance fields
.field private Imei:Ljava/lang/String;

.field private isrAidlListener:Lcom/iflytek/speech/sr/ISRListener;

.field private isrListener:Lcom/iflytek/sr/IIsrListener;

.field private lock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mIsr:Lcom/iflytek/speech/sr/ISRService;

.field private mSerialNumber:Ljava/lang/String;

.field private resDir:Ljava/lang/String;

.field private sr_session_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/sr/SrSession;->instance:Lcom/iflytek/sr/SrSession;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/iflytek/sr/IIsrListener;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->isrListener:Lcom/iflytek/sr/IIsrListener;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/sr/SrSession;->Imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/sr/SrSession;->mSerialNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->resDir:Ljava/lang/String;

    new-instance v0, Lcom/iflytek/sr/SrSession$1;

    invoke-direct {v0, p0}, Lcom/iflytek/sr/SrSession$1;-><init>(Lcom/iflytek/sr/SrSession;)V

    iput-object v0, p0, Lcom/iflytek/sr/SrSession;->isrAidlListener:Lcom/iflytek/speech/sr/ISRListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sr/SrSession;->lock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "SrSession"

    const-string v2, "new SrSession"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/iflytek/sr/SrSession;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/sr/SrSession;->isrListener:Lcom/iflytek/sr/IIsrListener;

    iput-object p4, p0, Lcom/iflytek/sr/SrSession;->resDir:Ljava/lang/String;

    invoke-direct {p0, p5}, Lcom/iflytek/sr/SrSession;->setImei(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/iflytek/sr/SrSession;->initServiceEx(I)I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/iflytek/sr/IIsrListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->isrListener:Lcom/iflytek/sr/IIsrListener;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/sr/SrSession;->Imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/sr/SrSession;->mSerialNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->resDir:Ljava/lang/String;

    new-instance v0, Lcom/iflytek/sr/SrSession$1;

    invoke-direct {v0, p0}, Lcom/iflytek/sr/SrSession$1;-><init>(Lcom/iflytek/sr/SrSession;)V

    iput-object v0, p0, Lcom/iflytek/sr/SrSession;->isrAidlListener:Lcom/iflytek/speech/sr/ISRListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sr/SrSession;->lock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "SrSession"

    const-string v2, "new SrSession"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/iflytek/sr/SrSession;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/sr/SrSession;->isrListener:Lcom/iflytek/sr/IIsrListener;

    iput-object p4, p0, Lcom/iflytek/sr/SrSession;->resDir:Ljava/lang/String;

    iput-object p6, p0, Lcom/iflytek/sr/SrSession;->mSerialNumber:Ljava/lang/String;

    invoke-direct {p0, p5}, Lcom/iflytek/sr/SrSession;->setImei(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/iflytek/sr/SrSession;->initServiceEx(I)I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/iflytek/sr/IIsrListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->isrListener:Lcom/iflytek/sr/IIsrListener;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/sr/SrSession;->Imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/sr/SrSession;->mSerialNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->resDir:Ljava/lang/String;

    new-instance v0, Lcom/iflytek/sr/SrSession$1;

    invoke-direct {v0, p0}, Lcom/iflytek/sr/SrSession$1;-><init>(Lcom/iflytek/sr/SrSession;)V

    iput-object v0, p0, Lcom/iflytek/sr/SrSession;->isrAidlListener:Lcom/iflytek/speech/sr/ISRListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sr/SrSession;->lock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "SrSession"

    const-string v2, "new SrSession"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/iflytek/sr/SrSession;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/sr/SrSession;->isrListener:Lcom/iflytek/sr/IIsrListener;

    iput-object p3, p0, Lcom/iflytek/sr/SrSession;->resDir:Ljava/lang/String;

    invoke-direct {p0, p4}, Lcom/iflytek/sr/SrSession;->setImei(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/sr/SrSession;->initService()I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$002(Lcom/iflytek/sr/SrSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/iflytek/sr/SrSession;)Lcom/iflytek/sr/IIsrListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sr/SrSession;->isrListener:Lcom/iflytek/sr/IIsrListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/sr/SrSession;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sr/SrSession;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/sr/SrSession;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/sr/SrSession;->castInitState(ZI)V

    return-void
.end method

.method private castInitState(ZI)V
    .locals 3

    const-string v0, "SrSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "castInitState, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sr/SrSession;->isrListener:Lcom/iflytek/sr/IIsrListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sr/SrSession;->isrListener:Lcom/iflytek/sr/IIsrListener;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/sr/IIsrListener;->onSrInited(ZI)V

    :cond_0
    return-void
.end method

.method private getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sr/SrSession;->Imei:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/iflytek/sr/IIsrListener;ILjava/lang/String;Ljava/lang/String;)Lcom/iflytek/sr/SrSession;
    .locals 7

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/iflytek/sr/SrSession;->instance:Lcom/iflytek/sr/SrSession;

    if-nez v0, :cond_3

    const-class v6, Lcom/iflytek/sr/SrSession;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/iflytek/sr/SrSession;->instance:Lcom/iflytek/sr/SrSession;

    if-nez v0, :cond_2

    new-instance v0, Lcom/iflytek/sr/SrSession;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/sr/SrSession;-><init>(Landroid/content/Context;Lcom/iflytek/sr/IIsrListener;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/sr/SrSession;->instance:Lcom/iflytek/sr/SrSession;

    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sget-object v0, Lcom/iflytek/sr/SrSession;->instance:Lcom/iflytek/sr/SrSession;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/iflytek/sr/IIsrListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sr/SrSession;
    .locals 8

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/iflytek/sr/SrSession;->instance:Lcom/iflytek/sr/SrSession;

    if-nez v0, :cond_3

    const-class v7, Lcom/iflytek/sr/SrSession;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/iflytek/sr/SrSession;->instance:Lcom/iflytek/sr/SrSession;

    if-nez v0, :cond_2

    new-instance v0, Lcom/iflytek/sr/SrSession;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/sr/SrSession;-><init>(Landroid/content/Context;Lcom/iflytek/sr/IIsrListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/sr/SrSession;->instance:Lcom/iflytek/sr/SrSession;

    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sget-object v0, Lcom/iflytek/sr/SrSession;->instance:Lcom/iflytek/sr/SrSession;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/iflytek/sr/IIsrListener;Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sr/SrSession;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/iflytek/sr/SrSession;->instance:Lcom/iflytek/sr/SrSession;

    if-nez v0, :cond_3

    const-class v1, Lcom/iflytek/sr/SrSession;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/sr/SrSession;->instance:Lcom/iflytek/sr/SrSession;

    if-nez v0, :cond_2

    new-instance v0, Lcom/iflytek/sr/SrSession;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iflytek/sr/SrSession;-><init>(Landroid/content/Context;Lcom/iflytek/sr/IIsrListener;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/sr/SrSession;->instance:Lcom/iflytek/sr/SrSession;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sget-object v0, Lcom/iflytek/sr/SrSession;->instance:Lcom/iflytek/sr/SrSession;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sr/SrSession;->Imei:Ljava/lang/String;

    return-void
.end method

.method private static trimInvalid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "[,\n ]"

    const-string v1, "|"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized appendAudioData([B)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "SrSession"

    const-string v1, "session id error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x2710

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x277a

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    array-length v2, p1

    invoke-interface {v0, v1, p1, v2}, Lcom/iflytek/speech/sr/ISRService;->appendAudioData(Ljava/lang/String;[BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized appendAudioData([BI)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "SrSession"

    const-string v1, "session id error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x2710

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x277a

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/iflytek/speech/sr/ISRService;->appendAudioData(Ljava/lang/String;[BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endAudioData()I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "SrSession"

    const-string v2, "endAudioData return ISS_ERROR_INVALID_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x2710

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v2, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/iflytek/speech/sr/ISRService;->endAudioData(Ljava/lang/String;)I

    move-result v0

    const-string v1, "SrSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endAudioData return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getActiveKey(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "SrSession"

    const-string v1, "getActiveKey Res is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x277a

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string v0, "SrSession"

    const-string v1, "getActiveKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    invoke-interface {v0, p1}, Lcom/iflytek/speech/sr/ISRService;->getActiveKey(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initService()I
    .locals 5

    const/16 v1, 0x277a

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    const-string v2, "SrSession"

    const-string v3, "sr initService start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    if-eqz v2, :cond_0

    const-string v1, "SrSession"

    const-string v2, "Already inited."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/iflytek/sr/SrSession$OnSrInitedRunnable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/iflytek/sr/SrSession$OnSrInitedRunnable;-><init>(Lcom/iflytek/sr/SrSession;ZI)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/iflytek/sr/SrSession;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    const-string v0, "SrSession"

    const-string v2, "initService: mContext==null, castInitState(false, ISS_ERROR_INVALID_PARA) and return"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/iflytek/sr/SrSession$OnSrInitedRunnable;

    const/4 v3, 0x0

    const/16 v4, 0x277a

    invoke-direct {v2, p0, v3, v4}, Lcom/iflytek/sr/SrSession$OnSrInitedRunnable;-><init>(Lcom/iflytek/sr/SrSession;ZI)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->Imei:Ljava/lang/String;

    invoke-static {v1}, Lcom/iflytek/speech/sr/SRSolution;->getInstance(Ljava/lang/String;)Lcom/iflytek/speech/sr/SRSolution;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->mSerialNumber:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SrSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SerialNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/sr/SrSession;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v2, p0, Lcom/iflytek/sr/SrSession;->mSerialNumber:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/iflytek/speech/sr/ISRService;->setSerialNumber(Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v2, p0, Lcom/iflytek/sr/SrSession;->resDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/sr/SrSession;->isrAidlListener:Lcom/iflytek/speech/sr/ISRListener;

    invoke-interface {v1, v2, v3}, Lcom/iflytek/speech/sr/ISRService;->create(Ljava/lang/String;Lcom/iflytek/speech/sr/ISRListener;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    const-string v1, "SrSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create return id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/iflytek/sr/SrSession$OnSrInitedRunnable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/iflytek/sr/SrSession$OnSrInitedRunnable;-><init>(Lcom/iflytek/sr/SrSession;ZI)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initServiceEx(I)I
    .locals 5

    const/16 v1, 0x277a

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    const-string v2, "SrSession"

    const-string v3, "sr initServiceEx start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    if-eqz v2, :cond_0

    const-string v1, "SrSession"

    const-string v2, "Already inited."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/iflytek/sr/SrSession$OnSrInitedRunnable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/iflytek/sr/SrSession$OnSrInitedRunnable;-><init>(Lcom/iflytek/sr/SrSession;ZI)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/iflytek/sr/SrSession;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    const-string v0, "SrSession"

    const-string v2, "initServiceEx: mContext==null, castInitState(false, ISS_ERROR_INVALID_PARA) and return"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/iflytek/sr/SrSession$OnSrInitedRunnable;

    const/4 v3, 0x0

    const/16 v4, 0x277a

    invoke-direct {v2, p0, v3, v4}, Lcom/iflytek/sr/SrSession$OnSrInitedRunnable;-><init>(Lcom/iflytek/sr/SrSession;ZI)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->Imei:Ljava/lang/String;

    invoke-static {v1}, Lcom/iflytek/speech/sr/SRSolution;->getInstance(Ljava/lang/String;)Lcom/iflytek/speech/sr/SRSolution;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->mSerialNumber:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SrSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SerialNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/sr/SrSession;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v2, p0, Lcom/iflytek/sr/SrSession;->mSerialNumber:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/iflytek/speech/sr/ISRService;->setSerialNumber(Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v2, p0, Lcom/iflytek/sr/SrSession;->resDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/sr/SrSession;->isrAidlListener:Lcom/iflytek/speech/sr/ISRListener;

    invoke-interface {v1, p1, v2, v3}, Lcom/iflytek/speech/sr/ISRService;->createEx(ILjava/lang/String;Lcom/iflytek/speech/sr/ISRListener;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    const-string v1, "SrSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createEx return id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/iflytek/sr/SrSession$OnSrInitedRunnable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/iflytek/sr/SrSession$OnSrInitedRunnable;-><init>(Lcom/iflytek/sr/SrSession;ZI)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized localNli(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "SrSession"

    const-string v1, "localNli return ISS_ERROR_INVALID_CALL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/iflytek/speech/sr/ISRService;->localNli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mspSearch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "SrSession"

    const-string v1, "mspSearch return ISS_ERROR_INVALID_CALL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/iflytek/speech/sr/ISRService;->mspSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "SrSession"

    const-string v2, "release return ISS_ERROR_INVALID_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x2710

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v2, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/iflytek/speech/sr/ISRService;->destroy(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/sr/SrSession;->instance:Lcom/iflytek/sr/SrSession;

    const-string v1, "SrSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setParam(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "SrSession"

    const-string v2, "ISS_ERROR_INVALID_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x2710

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v2, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/iflytek/speech/sr/ISRService;->setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "SrSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParam return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized start(Ljava/lang/String;ILjava/lang/String;)I
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v4, "SrSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start scene="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, "SrSession"

    const-string v5, "session id is null, return ISS_ERROR_INVALID_CALL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x2710

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/iflytek/sr/SrSession;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v5, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    const-string v6, "wap_proxy"

    const-string v7, "none"

    invoke-interface {v4, v5, v6, v7}, Lcom/iflytek/speech/sr/ISRService;->setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v4, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v5, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    invoke-interface {v4, v5, p1, p2, p3}, Lcom/iflytek/speech/sr/ISRService;->sessionStart(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    const-string v4, "SrSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/iflytek/sr/SrSession;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v5, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    const-string v6, "wap_proxy"

    const-string v7, "none"

    invoke-interface {v4, v5, v6, v7}, Lcom/iflytek/speech/sr/ISRService;->setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v5, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    const-string v6, "wap_proxy"

    invoke-static {v0}, Lcom/iflytek/speech/util/NetworkUtil;->getNetType(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/iflytek/speech/sr/ISRService;->setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/iflytek/speech/util/NetworkUtil;->getNetSubType(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v5, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    const-string v6, "net_subtype"

    invoke-static {v3}, Lcom/iflytek/sr/SrSession;->trimInvalid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/iflytek/speech/sr/ISRService;->setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized stop()I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "SrSession"

    const-string v2, "stop return ISS_ERROR_INVALID_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x2710

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v2, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/iflytek/speech/sr/ISRService;->sessionStop(Ljava/lang/String;)I

    move-result v0

    const-string v1, "SrSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized uploadDict(Ljava/lang/String;I)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "SrSession"

    const-string v2, "uploadDict return ISS_ERROR_INVALID_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x2710

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sr/SrSession;->mIsr:Lcom/iflytek/speech/sr/ISRService;

    iget-object v2, p0, Lcom/iflytek/sr/SrSession;->sr_session_id:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/iflytek/speech/sr/ISRService;->uploadDict(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "SrSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadDict return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
