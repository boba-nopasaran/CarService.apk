.class Lcom/car/speech/audio/AIAudioRecorder$ReadRunnbale;
.super Ljava/lang/Object;
.source "AIAudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/speech/audio/AIAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadRunnbale"
.end annotation


# instance fields
.field private sessionId:J

.field final synthetic this$0:Lcom/car/speech/audio/AIAudioRecorder;


# direct methods
.method public constructor <init>(Lcom/car/speech/audio/AIAudioRecorder;J)V
    .locals 2

    iput-object p1, p0, Lcom/car/speech/audio/AIAudioRecorder$ReadRunnbale;->this$0:Lcom/car/speech/audio/AIAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/car/speech/audio/AIAudioRecorder$ReadRunnbale;->sessionId:J

    iput-wide p2, p0, Lcom/car/speech/audio/AIAudioRecorder$ReadRunnbale;->sessionId:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "AIAudioRecorder"

    const-string v1, "Read Buffer Task run..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/speech/audio/AIAudioRecorder$ReadRunnbale;->this$0:Lcom/car/speech/audio/AIAudioRecorder;

    iget-wide v2, p0, Lcom/car/speech/audio/AIAudioRecorder$ReadRunnbale;->sessionId:J

    invoke-static {v0, v2, v3}, Lcom/car/speech/audio/AIAudioRecorder;->access$000(Lcom/car/speech/audio/AIAudioRecorder;J)V

    const-string v0, "AIAudioRecorder"

    const-string v1, "Read Buffer Task end..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
