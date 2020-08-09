.class interface abstract Lcom/car/ad/ADDownloadTask$ADDownloadListener;
.super Ljava/lang/Object;
.source "ADDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/ad/ADDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ADDownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadEnd(Lcom/car/ad/ADDownloadTask;Z)V
.end method

.method public abstract onDownloadProgress(Lcom/car/ad/ADDownloadTask;I)V
.end method

.method public abstract onDownloadStart(Lcom/car/ad/ADDownloadTask;)V
.end method
