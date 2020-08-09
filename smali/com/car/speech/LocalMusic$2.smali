.class Lcom/car/speech/LocalMusic$2;
.super Landroid/media/IMediaScannerListener$Stub;
.source "LocalMusic.java"


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

    iput-object p1, p0, Lcom/car/speech/LocalMusic$2;->this$0:Lcom/car/speech/LocalMusic;

    invoke-direct {p0}, Landroid/media/IMediaScannerListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    iget-object v1, p0, Lcom/car/speech/LocalMusic$2;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v1}, Lcom/car/speech/LocalMusic;->access$100(Lcom/car/speech/LocalMusic;)Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
