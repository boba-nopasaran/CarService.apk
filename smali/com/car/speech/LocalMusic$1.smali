.class Lcom/car/speech/LocalMusic$1;
.super Ljava/lang/Object;
.source "LocalMusic.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/speech/LocalMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/speech/LocalMusic;


# direct methods
.method constructor <init>(Lcom/car/speech/LocalMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/LocalMusic$1;->this$0:Lcom/car/speech/LocalMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 2

    const-string v0, "CarSvc_Music"

    const-string v1, "onMediaScannerConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    new-array v1, v2, [J

    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    aput-wide v2, v1, v5

    const-string v2, "CarSvc_Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScanCompleted, path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v1, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/car/speech/LocalMusic$1;->this$0:Lcom/car/speech/LocalMusic;

    iget v2, v2, Lcom/car/speech/LocalMusic;->mFileDownloadIndex:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/car/speech/LocalMusic$1;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v2}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/speech/LocalMusic$1;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v2}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v2, v1, v3}, Lcom/android/music/IMediaPlaybackService;->open([JI)V

    iget-object v2, p0, Lcom/car/speech/LocalMusic$1;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v2}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/car/speech/LocalMusic$1;->this$0:Lcom/car/speech/LocalMusic;

    iget v3, v2, Lcom/car/speech/LocalMusic;->mFileDownloadIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/car/speech/LocalMusic;->mFileDownloadIndex:I

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/car/speech/LocalMusic$1;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v2}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/speech/LocalMusic$1;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v2}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v1, v3}, Lcom/android/music/IMediaPlaybackService;->enqueue([JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
