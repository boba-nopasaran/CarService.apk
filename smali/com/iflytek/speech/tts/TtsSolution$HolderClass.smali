.class Lcom/iflytek/speech/tts/TtsSolution$HolderClass;
.super Ljava/lang/Object;
.source "TtsSolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/tts/TtsSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HolderClass"
.end annotation


# static fields
.field private static final instance:Lcom/iflytek/speech/tts/TtsSolution;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iflytek/speech/tts/TtsSolution;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iflytek/speech/tts/TtsSolution;-><init>(Lcom/iflytek/speech/tts/TtsSolution$1;)V

    sput-object v0, Lcom/iflytek/speech/tts/TtsSolution$HolderClass;->instance:Lcom/iflytek/speech/tts/TtsSolution;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/iflytek/speech/tts/TtsSolution;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/tts/TtsSolution$HolderClass;->instance:Lcom/iflytek/speech/tts/TtsSolution;

    return-object v0
.end method
