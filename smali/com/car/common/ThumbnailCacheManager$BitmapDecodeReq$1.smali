.class Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq$1;
.super Ljava/lang/Object;
.source "ThumbnailCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq$1;->this$1:Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;

    iput-object p2, p0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq$1;->this$1:Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;

    iget-object v2, v2, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->this$0:Lcom/car/common/ThumbnailCacheManager;

    invoke-static {v2}, Lcom/car/common/ThumbnailCacheManager;->access$000(Lcom/car/common/ThumbnailCacheManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/common/ThumbnailCacheManager$ThumbnailCacheListener;

    iget-object v2, p0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq$1;->this$1:Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;

    invoke-static {v2}, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->access$100(Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq$1;->this$1:Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;

    invoke-static {v3}, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->access$200(Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq$1;->this$1:Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;

    invoke-static {v4}, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->access$300(Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;)I

    move-result v4

    iget-object v5, p0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/car/common/ThumbnailCacheManager$ThumbnailCacheListener;->onThumbnailCacheDone(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    return-void
.end method
