.class public abstract Lcom/car/common/VoiceRecognizer;
.super Ljava/lang/Object;
.source "VoiceRecognizer.java"


# static fields
.field private static sImpl:Lcom/car/common/VoiceRecognizerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createInstance(Landroid/content/Context;)Lcom/car/common/VoiceRecognizer;
    .locals 2

    sget-object v0, Lcom/car/common/VoiceRecognizer;->sImpl:Lcom/car/common/VoiceRecognizerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/common/VoiceRecognizerImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/car/common/VoiceRecognizerImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/car/common/VoiceRecognizer;->sImpl:Lcom/car/common/VoiceRecognizerImpl;

    :cond_0
    sget-object v0, Lcom/car/common/VoiceRecognizer;->sImpl:Lcom/car/common/VoiceRecognizerImpl;

    return-object v0
.end method

.method public static final getInstance()Lcom/car/common/VoiceRecognizer;
    .locals 1

    sget-object v0, Lcom/car/common/VoiceRecognizer;->sImpl:Lcom/car/common/VoiceRecognizerImpl;

    return-object v0
.end method


# virtual methods
.method public abstract playTTS(Ljava/lang/String;IZ)V
.end method

.method public abstract releaseRecognizer(I)V
.end method

.method public abstract requestRecognizer(ILjava/lang/String;)I
.end method

.method public abstract setCallback(Lcom/car/common/VoiceRecognizerCallback;)V
.end method
