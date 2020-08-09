.class public Lcom/iflytek/speech/tts/TtsSolution;
.super Ljava/lang/Object;
.source "TtsSolution.java"

# interfaces
.implements Lcom/iflytek/speech/tts/ITTSService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/tts/TtsSolution$TtsPlayerInstIm;,
        Lcom/iflytek/speech/tts/TtsSolution$HolderClass;
    }
.end annotation


# static fields
.field private static final tag:Ljava/lang/String; = "TtsSolution"


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TtsSolution"

    const-string v1, "new TtsSolution"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/speech/tts/TtsSolution$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/speech/tts/TtsSolution;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/iflytek/speech/tts/TtsSolution;
    .locals 1

    invoke-static {}, Lcom/iflytek/speech/tts/TtsSolution$HolderClass;->access$100()Lcom/iflytek/speech/tts/TtsSolution;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createTtsPlayerInst(Ljava/lang/String;)Lcom/iflytek/speech/tts/TtsPlayerInst;
    .locals 1

    new-instance v0, Lcom/iflytek/speech/tts/TtsSolution$TtsPlayerInstIm;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/speech/tts/TtsSolution$TtsPlayerInstIm;-><init>(Lcom/iflytek/speech/tts/TtsSolution;Ljava/lang/String;)V

    return-object v0
.end method
