.class Lcom/iflytek/speech/tts/TtsPlayer$AudioTrackSteamState;
.super Ljava/lang/Object;
.source "TtsPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/tts/TtsPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioTrackSteamState"
.end annotation


# static fields
.field public static final STREAM_PAUSED:I = 0x2

.field public static final STREAM_RELEASED:I = 0x3

.field public static final STREAM_RUNNING:I = 0x1

.field public static final STREAM_STOPPED:I


# instance fields
.field final synthetic this$0:Lcom/iflytek/speech/tts/TtsPlayer;


# direct methods
.method private constructor <init>(Lcom/iflytek/speech/tts/TtsPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/speech/tts/TtsPlayer$AudioTrackSteamState;->this$0:Lcom/iflytek/speech/tts/TtsPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
