.class Lcom/iflytek/tts/TtsSession$2;
.super Ljava/lang/Object;
.source "TtsSession.java"

# interfaces
.implements Lcom/iflytek/speech/ITtsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/tts/TtsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/tts/TtsSession;


# direct methods
.method constructor <init>(Lcom/iflytek/tts/TtsSession;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/tts/TtsSession$2;->this$0:Lcom/iflytek/tts/TtsSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReady()V
    .locals 0

    return-void
.end method

.method public onProgress(II)V
    .locals 0

    return-void
.end method
