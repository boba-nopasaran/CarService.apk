.class public Lcom/aispeech/common/AIConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_VOICE_INPUT:Ljava/lang/String; = "com.aispeech.action.voiceinput"

.field public static AIENGINE_MESSAGE_TYPE_BIN:I = 0x0

.field public static AIENGINE_MESSAGE_TYPE_JSON:I = 0x0

.field public static final AISERVER_PACKAGE:Ljava/lang/String; = "com.aispeech.aiserver"

.field public static final APK_NICK_NAME:Ljava/lang/String; = "aispeech_aiservice.imy"

.field public static final ASR_ATH:F = 0.6f

.field public static final ASR_LTH:F = 0.4f

.field public static final CN_TTS:I = 0x0

.field public static final CUSTOMASR_MODE_ASR:I = 0x1

.field public static final CUSTOMASR_MODE_GENERATE:I = 0x0

.field public static final DEFAULT_NBEST_VALUE:I = 0x1

.field public static ECHO_CFG_FILE:Ljava/lang/String; = null

.field public static ECHO_IS_BIN:I = 0x0

.field public static final EN_TTS:I = 0x1

.field public static FRAME_LEN:I = 0x0

.field public static final MAX_NBEST_VALUE:I = 0xa

.field public static NEW_ECHO_ENABLE:Z = false

.field public static final OPT_FAILED:I = -0x1

.field public static final OPT_SUCCESS:I = 0x0

.field public static REC_CHANNEL:I = 0x0

.field public static final RES_KEY_COMM:Ljava/lang/String; = "comm"

.field public static final RT_MODE_FRAME:I = 0x1

.field public static final RT_MODE_OFF:I = 0x0

.field public static final RT_MODE_VAD:I = 0x2

.field public static final SDK_VERSION:Ljava/lang/String; = "2.1.2"

.field public static final STYLE_DARK:I = 0x0

.field public static final STYLE_LIGHT:I = 0x1

.field public static final SV_FOLDER:Ljava/lang/String; = "aispeech_sv"

.field public static final SV_MODE_DETECT:I = 0x2

.field public static final SV_MODE_GENERATE:I = 0x1

.field public static final SV_MODE_TRAIN:I = 0x0

.field public static final VOICE_RECOGNITION_REQUEST_CODE:I = 0x4d2

.field public static final WAKEUP_RET_MODE_1:I = 0x1

.field public static final WAKEUP_RET_MODE_2:I = 0x2

.field public static playGain:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput v2, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_JSON:I

    const/4 v0, 0x2

    sput v0, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_BIN:I

    const/16 v0, 0x200

    sput v0, Lcom/aispeech/common/AIConstant;->FRAME_LEN:I

    sput v1, Lcom/aispeech/common/AIConstant;->ECHO_IS_BIN:I

    sput-boolean v1, Lcom/aispeech/common/AIConstant;->NEW_ECHO_ENABLE:Z

    sput v1, Lcom/aispeech/common/AIConstant;->playGain:I

    const-string v0, ""

    sput-object v0, Lcom/aispeech/common/AIConstant;->ECHO_CFG_FILE:Ljava/lang/String;

    sput v2, Lcom/aispeech/common/AIConstant;->REC_CHANNEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeLog()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/aispeech/d;->a:Z

    sput-boolean v0, Lcom/aispeech/d;->b:Z

    sput-boolean v0, Lcom/aispeech/common/c;->a:Z

    sput-boolean v0, Lcom/aispeech/common/c;->b:Z

    return-void
.end method

.method public static openLog()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/aispeech/d;->a:Z

    sput-boolean v0, Lcom/aispeech/d;->b:Z

    sput-boolean v0, Lcom/aispeech/common/c;->a:Z

    sput-boolean v0, Lcom/aispeech/common/c;->b:Z

    return-void
.end method

.method public static setEchoCfgFile(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/aispeech/common/AIConstant;->ECHO_CFG_FILE:Ljava/lang/String;

    return-void
.end method

.method public static setEchoFrameLen(I)V
    .locals 0

    sput p0, Lcom/aispeech/common/AIConstant;->FRAME_LEN:I

    return-void
.end method

.method public static setEchoIsBin(I)V
    .locals 0

    sput p0, Lcom/aispeech/common/AIConstant;->ECHO_IS_BIN:I

    return-void
.end method

.method public static setNewEchoEnable(Z)V
    .locals 1

    sput-boolean p0, Lcom/aispeech/common/AIConstant;->NEW_ECHO_ENABLE:Z

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    :goto_0
    sput v0, Lcom/aispeech/d;->c:I

    sget-boolean v0, Lcom/aispeech/common/AIConstant;->NEW_ECHO_ENABLE:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    :goto_1
    sput v0, Lcom/aispeech/d;->d:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    goto :goto_1
.end method

.method public static setPlayGain(I)V
    .locals 0

    sput p0, Lcom/aispeech/common/AIConstant;->playGain:I

    return-void
.end method

.method public static setRecChannel(I)V
    .locals 0

    sput p0, Lcom/aispeech/common/AIConstant;->REC_CHANNEL:I

    return-void
.end method
