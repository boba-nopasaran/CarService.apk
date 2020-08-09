.class public Lcom/car/speech/MiniSpeech;
.super Landroid/content/BroadcastReceiver;
.source "MiniSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/speech/MiniSpeech$AITTSListenerImpl;,
        Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;
    }
.end annotation


# static fields
.field public static final RO_COMMON_WAKEUPS:Ljava/lang/String; = "ro_common_wakeups"

.field private static final TAG:Ljava/lang/String; = "CarSvc_MiniSpeech"

.field static final TYPE_NAME:[Ljava/lang/String;

.field static sIntance:Lcom/car/speech/MiniSpeech;


# instance fields
.field final CAMERA_FRONT_OPEN:Ljava/lang/String;

.field final CAMERA_OPEN:Ljava/lang/String;

.field final CAMERA_REAR_OPEN:Ljava/lang/String;

.field final ECARFUWU:Ljava/lang/String;

.field final ECARKEFU:Ljava/lang/String;

.field final ECARRENEW:Ljava/lang/String;

.field final ECARRENGONG:Ljava/lang/String;

.field final ECARRESCUE:Ljava/lang/String;

.field final ECARSOS:Ljava/lang/String;

.field final ECARTIRE:Ljava/lang/String;

.field final EDOG_CLOSE:Ljava/lang/String;

.field final EDOG_OPEN:Ljava/lang/String;

.field final EDOG_TRAFFIC_REQUEST:Ljava/lang/String;

.field final EDOG_TRAFFIC_REQUEST2:Ljava/lang/String;

.field final EDOG_TRAFFIC_REQUEST3:Ljava/lang/String;

.field final EDOG_TRAFFIC_REQUEST4:Ljava/lang/String;

.field final HOME_BACK:Ljava/lang/String;

.field final HOME_BACK2:Ljava/lang/String;

.field final IMAGE_CAPTURE:Ljava/lang/String;

.field final IMAGE_CAPTURE2:Ljava/lang/String;

.field final IS_USE_AEC:Z

.field final SCREEN_CAPTURE:Ljava/lang/String;

.field final SCREEN_CLOSE:Ljava/lang/String;

.field final SCREEN_OPEN:Ljava/lang/String;

.field final VIDEO_CAPTURE:Ljava/lang/String;

.field final VIDEO_CAPTURE2:Ljava/lang/String;

.field isSpeaking:Z

.field private mAIAuthEngine:Lcom/aispeech/speech/AIAuthEngine;

.field private mAILocalTTSEngine:Lcom/aispeech/export/engines/AILocalTTSEngine;

.field private mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

.field private mAIRecorder:Lcom/car/speech/audio/IAudioRecorder;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mId:J

.field mLastPlayId:Ljava/lang/String;

.field mLock:Ljava/lang/Object;

.field mQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordSessionId:J

.field mTtsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "H"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "R"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "N"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "N"

    aput-object v2, v0, v1

    sput-object v0, Lcom/car/speech/MiniSpeech;->TYPE_NAME:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/car/speech/MiniSpeech;->sIntance:Lcom/car/speech/MiniSpeech;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/speech/MiniSpeech;->IS_USE_AEC:Z

    iput-object v2, p0, Lcom/car/speech/MiniSpeech;->mAIAuthEngine:Lcom/aispeech/speech/AIAuthEngine;

    iput-object v2, p0, Lcom/car/speech/MiniSpeech;->mAILocalTTSEngine:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iput-object v2, p0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->mQueue:Ljava/util/HashMap;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/car/speech/MiniSpeech;->mId:J

    const-string v0, ""

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->mLastPlayId:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->mTtsList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/speech/MiniSpeech;->isSpeaking:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->mLock:Ljava/lang/Object;

    iput-object v2, p0, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/car/speech/MiniSpeech$1;

    invoke-direct {v0, p0}, Lcom/car/speech/MiniSpeech$1;-><init>(Lcom/car/speech/MiniSpeech;)V

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->mHandler:Landroid/os/Handler;

    const-string v0, "da kai dian zi gou"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->EDOG_OPEN:Ljava/lang/String;

    const-string v0, "guan bi dian zi gou"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->EDOG_CLOSE:Ljava/lang/String;

    const-string v0, "da kai ping mu"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->SCREEN_OPEN:Ljava/lang/String;

    const-string v0, "guan bi ping mu"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->SCREEN_CLOSE:Ljava/lang/String;

    const-string v0, "da kai she xiang tou"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->CAMERA_OPEN:Ljava/lang/String;

    const-string v0, "da kai qian she xiang tou"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->CAMERA_FRONT_OPEN:Ljava/lang/String;

    const-string v0, "da kai hou she xiang tou"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->CAMERA_REAR_OPEN:Ljava/lang/String;

    const-string v0, "fan hui zhu ye"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->HOME_BACK:Ljava/lang/String;

    const-string v0, "fan hui zhuo mian"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->HOME_BACK2:Ljava/lang/String;

    const-string v0, "shi pin zhua pai"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->VIDEO_CAPTURE:Ljava/lang/String;

    const-string v0, "zhua pai shi pin"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->VIDEO_CAPTURE2:Ljava/lang/String;

    const-string v0, "zhua pai tu pian"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->IMAGE_CAPTURE:Ljava/lang/String;

    const-string v0, "tu pian zhua pai"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->IMAGE_CAPTURE2:Ljava/lang/String;

    const-string v0, "wo yao jie tu"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->SCREEN_CAPTURE:Ljava/lang/String;

    const-string v0, "da kai xing che ai si ou ai si"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->ECARSOS:Ljava/lang/String;

    const-string v0, "wo yao jiu yuan"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->ECARRESCUE:Ljava/lang/String;

    const-string v0, "wo yao pei liao"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->ECARTIRE:Ljava/lang/String;

    const-string v0, "hui yuan xu fei"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->ECARRENEW:Ljava/lang/String;

    const-string v0, "ren gong ke fu"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->ECARRENGONG:Ljava/lang/String;

    const-string v0, "yi ka ke fu"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->ECARKEFU:Ljava/lang/String;

    const-string v0, "yi ka fu wu"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->ECARFUWU:Ljava/lang/String;

    const-string v0, "lu kuang cha xun"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->EDOG_TRAFFIC_REQUEST:Ljava/lang/String;

    const-string v0, "cha xun lu kuang"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->EDOG_TRAFFIC_REQUEST2:Ljava/lang/String;

    const-string v0, "qian fang lu kuang"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->EDOG_TRAFFIC_REQUEST3:Ljava/lang/String;

    const-string v0, "lu kuang zen mo yang"

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->EDOG_TRAFFIC_REQUEST4:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/car/speech/MiniSpeech;)Lcom/aispeech/speech/AIAuthEngine;
    .locals 1

    iget-object v0, p0, Lcom/car/speech/MiniSpeech;->mAIAuthEngine:Lcom/aispeech/speech/AIAuthEngine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/speech/MiniSpeech;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/speech/MiniSpeech;->initTTSEngine()V

    return-void
.end method

.method static synthetic access$200(Lcom/car/speech/MiniSpeech;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/speech/MiniSpeech;->initWakeupEngine()V

    return-void
.end method

.method static synthetic access$500(Lcom/car/speech/MiniSpeech;)Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;
    .locals 1

    iget-object v0, p0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    return-object v0
.end method

.method public static getIntance()Lcom/car/speech/MiniSpeech;
    .locals 1

    sget-object v0, Lcom/car/speech/MiniSpeech;->sIntance:Lcom/car/speech/MiniSpeech;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/speech/MiniSpeech;

    invoke-direct {v0}, Lcom/car/speech/MiniSpeech;-><init>()V

    sput-object v0, Lcom/car/speech/MiniSpeech;->sIntance:Lcom/car/speech/MiniSpeech;

    :cond_0
    sget-object v0, Lcom/car/speech/MiniSpeech;->sIntance:Lcom/car/speech/MiniSpeech;

    return-object v0
.end method

.method private initTTSEngine()V
    .locals 6

    iget-object v1, p0, Lcom/car/speech/MiniSpeech;->mAILocalTTSEngine:Lcom/aispeech/export/engines/AILocalTTSEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/speech/MiniSpeech;->mAILocalTTSEngine:Lcom/aispeech/export/engines/AILocalTTSEngine;

    invoke-virtual {v1}, Lcom/aispeech/export/engines/AILocalTTSEngine;->destroy()V

    :cond_0
    invoke-static {}, Lcom/aispeech/export/engines/AILocalTTSEngine;->createInstance()Lcom/aispeech/export/engines/AILocalTTSEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/car/speech/MiniSpeech;->mAILocalTTSEngine:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v1, p0, Lcom/car/speech/MiniSpeech;->mAILocalTTSEngine:Lcom/aispeech/export/engines/AILocalTTSEngine;

    const-string v2, "/etc/aios"

    invoke-virtual {v1, v2}, Lcom/aispeech/export/engines/AILocalTTSEngine;->setResStoragePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/speech/MiniSpeech;->mAILocalTTSEngine:Lcom/aispeech/export/engines/AILocalTTSEngine;

    const-string v2, "zhilingf_common_param_ce_local.bin"

    invoke-virtual {v1, v2}, Lcom/aispeech/export/engines/AILocalTTSEngine;->setResource(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/speech/MiniSpeech;->mAILocalTTSEngine:Lcom/aispeech/export/engines/AILocalTTSEngine;

    const-string v2, "aitts_sent_dict.db"

    invoke-virtual {v1, v2}, Lcom/aispeech/export/engines/AILocalTTSEngine;->setDictDbName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/speech/MiniSpeech;->mAILocalTTSEngine:Lcom/aispeech/export/engines/AILocalTTSEngine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/aispeech/export/engines/AILocalTTSEngine;->setRealBack(Z)V

    iget-object v1, p0, Lcom/car/speech/MiniSpeech;->mAILocalTTSEngine:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v2, p0, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/car/speech/MiniSpeech$AITTSListenerImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/car/speech/MiniSpeech$AITTSListenerImpl;-><init>(Lcom/car/speech/MiniSpeech;Lcom/car/speech/MiniSpeech$1;)V

    const-string v4, "1511850880458348"

    const-string v5, "a4fe5934d5e34ebc15c39b49ca10a663"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/aispeech/export/engines/AILocalTTSEngine;->init(Landroid/content/Context;Lcom/aispeech/export/listeners/AITTSListener;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/speech/MiniSpeech;->mAILocalTTSEngine:Lcom/aispeech/export/engines/AILocalTTSEngine;

    const v2, 0x3f59999a    # 0.85f

    invoke-virtual {v1, v2}, Lcom/aispeech/export/engines/AILocalTTSEngine;->setSpeechRate(F)V

    iget-object v1, p0, Lcom/car/speech/MiniSpeech;->mAILocalTTSEngine:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v2, p0, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/aispeech/common/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/export/engines/AILocalTTSEngine;->setDeviceId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/speech/MiniSpeech;->mAILocalTTSEngine:Lcom/aispeech/export/engines/AILocalTTSEngine;

    const-string v2, "persist.tts.type"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aispeech/export/engines/AILocalTTSEngine;->setStreamType(I)V

    const-string v1, "persist.tts.volume"

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "CarSvc_MiniSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSpeechVolume to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/speech/MiniSpeech;->mAILocalTTSEngine:Lcom/aispeech/export/engines/AILocalTTSEngine;

    invoke-virtual {v1, v0}, Lcom/aispeech/export/engines/AILocalTTSEngine;->setSpeechVolume(I)V

    return-void
.end method

.method private initWakeupEngine()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    invoke-virtual {v13}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->destroy()V

    :cond_0
    invoke-static {}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->createInstance()Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    const-string v14, "/etc/aios"

    invoke-virtual {v13, v14}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->setResStoragePath(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    const-string v14, "/etc/aios"

    invoke-virtual {v13, v14}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->setResBinPath(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    const-string v14, "wakeup_aicar_comm.bin"

    invoke-virtual {v13, v14}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->setResBin(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v8, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    const-string v14, "ro_common_wakeups"

    const-string v15, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/car/speech/MiniSpeech;->readProp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_1

    new-array v12, v7, [Ljava/lang/String;

    new-array v8, v7, [F

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-string v13, "CarSvc_MiniSpeech"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u5524\u9192\u8bcd\uff1a "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput-object v5, v12, v3

    double-to-float v13, v10

    aput v13, v8, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    if-eqz v12, :cond_2

    if-nez v8, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    const/16 v14, 0x16

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "wo yao jie tu"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "da kai dian zi gou"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "guan bi dian zi gou"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "da kai ping mu"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "guan bi ping mu"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "da kai she xiang tou"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "da kai qian she xiang tou"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const-string v16, "da kai hou she xiang tou"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "fan hui zhu ye"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    const-string v16, "fan hui zhuo mian"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string v16, "shi pin zhua pai"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    const-string v16, "zhua pai shi pin"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    const-string v16, "da kai xing che ai si ou ai si"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    const-string v16, "wo yao jiu yuan"

    aput-object v16, v14, v15

    const/16 v15, 0xe

    const-string v16, "hui yuan xu fei"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    const-string v16, "ren gong ke fu"

    aput-object v16, v14, v15

    const/16 v15, 0x10

    const-string v16, "yi ka ke fu"

    aput-object v16, v14, v15

    const/16 v15, 0x11

    const-string v16, "yi ka fu wu"

    aput-object v16, v14, v15

    const/16 v15, 0x12

    const-string v16, "lu kuang cha xun"

    aput-object v16, v14, v15

    const/16 v15, 0x13

    const-string v16, "cha xun lu kuang"

    aput-object v16, v14, v15

    const/16 v15, 0x14

    const-string v16, "qian fang lu kuang"

    aput-object v16, v14, v15

    const/16 v15, 0x15

    const-string v16, "lu kuang zen mo yang"

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->setWords([Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    const/16 v14, 0x16

    new-array v14, v14, [F

    fill-array-data v14, :array_0

    invoke-virtual {v13, v14}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->setThreshold([F)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;-><init>(Lcom/car/speech/MiniSpeech;Lcom/car/speech/MiniSpeech$1;)V

    const-string v16, "1511850880458348"

    const-string v17, "a4fe5934d5e34ebc15c39b49ca10a663"

    invoke-virtual/range {v13 .. v17}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->init(Landroid/content/Context;Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->setStopOnWakeupSuccess(Z)V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    invoke-virtual {v13, v12}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->setWords([Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    invoke-virtual {v13, v8}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->setThreshold([F)V

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x3df5c28f    # 0.12f
        0x3df5c28f    # 0.12f
        0x3df5c28f    # 0.12f
        0x3df5c28f    # 0.12f
        0x3df5c28f    # 0.12f
        0x3d23d70a    # 0.04f
        0x3d23d70a    # 0.04f
        0x3d23d70a    # 0.04f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3cf5c28f    # 0.03f
        0x3cf5c28f    # 0.03f
        0x3ca3d70a    # 0.02f
        0x3e0f5c29    # 0.14f
        0x3da3d70a    # 0.08f
        0x3ca3d70a    # 0.02f
        0x3e0f5c29    # 0.14f
        0x3da3d70a    # 0.08f
        0x3cf5c28f    # 0.03f
        0x3cf5c28f    # 0.03f
        0x3cf5c28f    # 0.03f
        0x3cf5c28f    # 0.03f
    .end array-data
.end method

.method private playTTS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/car/speech/MiniSpeech;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/speech/MiniSpeech;->mQueue:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/car/speech/MiniSpeech;->mId:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/car/speech/MiniSpeech;->mId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/car/speech/MiniSpeech;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/car/speech/MiniSpeech;->playNext(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public enableWakeup(Z)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/car/speech/MiniSpeech;->initWakeupEngine()V

    iget-object v0, p0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    invoke-virtual {v0}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->start()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    invoke-virtual {v0}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->stop()V

    iget-object v0, p0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    invoke-virtual {v0}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/speech/MiniSpeech;->mAILocalWakeupDnnEngine:Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/aispeech/speech/AIAuthEngine;->getInstance(Landroid/content/Context;)Lcom/aispeech/speech/AIAuthEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/car/speech/MiniSpeech;->mAIAuthEngine:Lcom/aispeech/speech/AIAuthEngine;

    iget-object v2, p0, Lcom/car/speech/MiniSpeech;->mAIAuthEngine:Lcom/aispeech/speech/AIAuthEngine;

    const-string v3, "/etc/aios"

    invoke-virtual {v2, v3}, Lcom/aispeech/speech/AIAuthEngine;->setResStoragePath(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/aispeech/common/AIConstant;->setNewEchoEnable(Z)V

    const-string v2, "AEC_ch2-2-ch1_1ref_com.bin"

    invoke-static {v2}, Lcom/aispeech/common/AIConstant;->setEchoCfgFile(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/car/speech/MiniSpeech;->mAIAuthEngine:Lcom/aispeech/speech/AIAuthEngine;

    const-string v3, "1511850880458348"

    const-string v4, "a4fe5934d5e34ebc15c39b49ca10a663"

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/aispeech/speech/AIAuthEngine;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/car/speech/MiniSpeech;->try2Auth()V

    iget-object v2, p0, Lcom/car/speech/MiniSpeech;->mAIAuthEngine:Lcom/aispeech/speech/AIAuthEngine;

    invoke-virtual {v2}, Lcom/aispeech/speech/AIAuthEngine;->isAuthed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/car/speech/MiniSpeech;->initTTSEngine()V

    invoke-direct {p0}, Lcom/car/speech/MiniSpeech;->initWakeupEngine()V

    :goto_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.speech.minitts"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/car/speech/MiniSpeech$2;

    invoke-direct {v3, p0}, Lcom/car/speech/MiniSpeech$2;-><init>(Lcom/car/speech/MiniSpeech;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.speech.minitts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "content"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/car/speech/MiniSpeech;->TYPE_NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/car/speech/MiniSpeech;->playTTS(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method playNext(Ljava/lang/String;)V
    .locals 14

    const/4 v11, -0x1

    iget-object v10, p0, Lcom/car/speech/MiniSpeech;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Lcom/car/speech/MiniSpeech;->mQueue:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_a

    iget-object v9, p0, Lcom/car/speech/MiniSpeech;->mQueue:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-string v5, ""

    const/4 v7, -0x1

    const-string v6, ""

    const/4 v8, -0x1

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v9, "_"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v8, v11, :cond_1

    const-string v9, "_N"

    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v6, v1

    move v8, v2

    goto :goto_0

    :cond_1
    if-ne v7, v11, :cond_2

    move v7, v2

    move-object v5, v1

    goto :goto_0

    :cond_2
    const-string v9, "_N"

    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-gt v2, v8, :cond_0

    move v8, v2

    move-object v6, v1

    goto :goto_0

    :cond_3
    if-lt v2, v7, :cond_0

    move v7, v2

    move-object v5, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    move-object v5, v6

    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_6

    monitor-exit v10

    :goto_1
    return-void

    :cond_6
    iget-object v9, p0, Lcom/car/speech/MiniSpeech;->mLastPlayId:Ljava/lang/String;

    const-string v11, "_N"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    monitor-exit v10

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    :cond_7
    :try_start_1
    iget-object v9, p0, Lcom/car/speech/MiniSpeech;->mAILocalTTSEngine:Lcom/aispeech/export/engines/AILocalTTSEngine;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/car/speech/MiniSpeech;->mAILocalTTSEngine:Lcom/aispeech/export/engines/AILocalTTSEngine;

    invoke-virtual {v9}, Lcom/aispeech/export/engines/AILocalTTSEngine;->stop()V

    iget-object v11, p0, Lcom/car/speech/MiniSpeech;->mAILocalTTSEngine:Lcom/aispeech/export/engines/AILocalTTSEngine;

    iget-object v9, p0, Lcom/car/speech/MiniSpeech;->mQueue:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9, v5}, Lcom/aispeech/export/engines/AILocalTTSEngine;->speak(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v9, "_N"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/car/speech/MiniSpeech;->mQueue:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    :cond_9
    iget-object v9, p0, Lcom/car/speech/MiniSpeech;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x66

    invoke-virtual {v9, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/car/speech/MiniSpeech;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x66

    const-wide/32 v12, 0xea60

    invoke-virtual {v9, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public playTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/car/speech/MiniSpeech;->playTTS(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public readProp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    const-string v5, "/etc/aios/sdk.properties"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v10, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v12, "UTF-8"

    invoke-direct {v7, v9, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    if-eqz v10, :cond_0

    const-string v12, "CarSvc_MiniSpeech"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "property@etc["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    :goto_0
    return-object v11

    :cond_0
    const-string v12, "sdk.properties"

    invoke-virtual {v1, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v12, "UTF-8"

    invoke-direct {v7, v3, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v6, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v10, :cond_1

    move-object/from16 v10, p3

    :cond_1
    const-string v12, "CarSvc_MiniSpeech"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "property@asset["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method try2Auth()V
    .locals 2

    iget-object v0, p0, Lcom/car/speech/MiniSpeech;->mAIAuthEngine:Lcom/aispeech/speech/AIAuthEngine;

    new-instance v1, Lcom/car/speech/MiniSpeech$3;

    invoke-direct {v1, p0}, Lcom/car/speech/MiniSpeech$3;-><init>(Lcom/car/speech/MiniSpeech;)V

    invoke-virtual {v0, v1}, Lcom/aispeech/speech/AIAuthEngine;->setOnAuthListener(Lcom/aispeech/export/listeners/AIAuthListener;)V

    return-void
.end method
