.class Lcom/car/speech/LocalMusic$DownLoadTask;
.super Ljava/lang/Object;
.source "LocalMusic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/speech/LocalMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownLoadTask"
.end annotation


# instance fields
.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/speech/LocalMusic$DownLoadItem;",
            ">;"
        }
    .end annotation
.end field

.field mStop:Z

.field final synthetic this$0:Lcom/car/speech/LocalMusic;


# direct methods
.method constructor <init>(Lcom/car/speech/LocalMusic;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/speech/LocalMusic$DownLoadItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/car/speech/LocalMusic$DownLoadTask;->this$0:Lcom/car/speech/LocalMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/car/speech/LocalMusic$DownLoadTask;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/car/speech/LocalMusic$DownLoadTask;->this$0:Lcom/car/speech/LocalMusic;

    iput v10, v7, Lcom/car/speech/LocalMusic;->mFileDownloadIndex:I

    const-string v1, ""

    iput-boolean v10, p0, Lcom/car/speech/LocalMusic$DownLoadTask;->mStop:Z

    iget-object v7, p0, Lcom/car/speech/LocalMusic$DownLoadTask;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/car/speech/LocalMusic$DownLoadItem;

    iget-boolean v7, p0, Lcom/car/speech/LocalMusic$DownLoadTask;->mStop:Z

    if-eqz v7, :cond_3

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    const-string v7, "\t"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v7, v4

    if-lez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4e0b\u8f7d"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u5171"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u9996\u6b4c"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u5931\u8d25"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CarSvc_Music"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v7

    invoke-virtual {v7, v6, v10}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    :cond_2
    return-void

    :cond_3
    iget-object v7, p0, Lcom/car/speech/LocalMusic$DownLoadTask;->this$0:Lcom/car/speech/LocalMusic;

    iget-object v8, v3, Lcom/car/speech/LocalMusic$DownLoadItem;->url:Ljava/lang/String;

    iget-object v9, v3, Lcom/car/speech/LocalMusic$DownLoadItem;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/car/speech/LocalMusic;->saveFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v7, "CarSvc_Music"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Download finished, path="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/car/speech/LocalMusic$DownLoadTask;->this$0:Lcom/car/speech/LocalMusic;

    iget-object v7, v7, Lcom/car/speech/LocalMusic;->mMediaScannerService:Landroid/media/IMediaScannerService;

    if-eqz v7, :cond_0

    :try_start_0
    iget-object v7, p0, Lcom/car/speech/LocalMusic$DownLoadTask;->this$0:Lcom/car/speech/LocalMusic;

    iget-object v8, v7, Lcom/car/speech/LocalMusic;->mMediaScannerService:Landroid/media/IMediaScannerService;

    const-string v9, "audio/*"

    iget-boolean v7, p0, Lcom/car/speech/LocalMusic$DownLoadTask;->mStop:Z

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v8, v5, v9, v7}, Landroid/media/IMediaScannerService;->requestScanFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/IMediaScannerListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/car/speech/LocalMusic$DownLoadTask;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v7}, Lcom/car/speech/LocalMusic;->access$500(Lcom/car/speech/LocalMusic;)Landroid/media/IMediaScannerListener$Stub;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_1

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/car/speech/LocalMusic$DownLoadItem;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/speech/LocalMusic$DownLoadTask;->mStop:Z

    return-void
.end method
