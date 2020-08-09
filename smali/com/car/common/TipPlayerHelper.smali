.class public Lcom/car/common/TipPlayerHelper;
.super Ljava/lang/Object;
.source "TipPlayerHelper.java"


# static fields
.field public static final TYPE_HELP:I = 0x0

.field public static final TYPE_NAVI:I = 0x2

.field public static final TYPE_NOTICE:I = 0x3

.field public static final TYPE_REMINDER:I = 0x1

.field static sInstance:Lcom/car/common/TipPlayerHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/car/common/TipPlayerHelper;->sInstance:Lcom/car/common/TipPlayerHelper;

    return-void
.end method

.method public static instance()Lcom/car/common/TipPlayerHelper;
    .locals 1

    sget-object v0, Lcom/car/common/TipPlayerHelper;->sInstance:Lcom/car/common/TipPlayerHelper;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/car/common/VoiceRecognizer;->createInstance(Landroid/content/Context;)Lcom/car/common/VoiceRecognizer;

    return-void
.end method

.method public playSpeech(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Lcom/car/common/VoiceRecognizer;->getInstance()Lcom/car/common/VoiceRecognizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/car/common/VoiceRecognizer;->playTTS(Ljava/lang/String;IZ)V

    return-void
.end method

.method public playSpeech(Ljava/lang/String;IZ)V
    .locals 1

    invoke-static {}, Lcom/car/common/VoiceRecognizer;->getInstance()Lcom/car/common/VoiceRecognizer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/car/common/VoiceRecognizer;->playTTS(Ljava/lang/String;IZ)V

    return-void
.end method
