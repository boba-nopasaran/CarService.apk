.class Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;
.super Ljava/lang/Object;
.source "ThumbnailCacheManager.java"

# interfaces
.implements Lcom/car/common/util/WorkReq;
.implements Lcom/car/common/util/Match4Req;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/common/ThumbnailCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDecodeReq"
.end annotation


# static fields
.field private static final DEFAULT_THUMBNAIL_HEIGHT:I = 0x60

.field private static final DEFAULT_THUMBNAIL_WIDTH:I = 0x60


# instance fields
.field private mKey:Ljava/lang/String;

.field private mType:I

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/car/common/ThumbnailCacheManager;


# direct methods
.method constructor <init>(Lcom/car/common/ThumbnailCacheManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->this$0:Lcom/car/common/ThumbnailCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mKey:Ljava/lang/String;

    iput p4, p0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mType:I

    return-void
.end method

.method static synthetic access$100(Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;)I
    .locals 1

    iget v0, p0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mType:I

    return v0
.end method

.method private downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 12

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    const/16 v11, 0xc8

    if-eq v9, v11, :cond_3

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    move v9, v10

    :goto_1
    return v9

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const/16 v11, 0x2000

    invoke-direct {v4, v9, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x2000

    invoke-direct {v6, p2, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    const/4 v9, -0x1

    if-eq v1, v9, :cond_7

    invoke-virtual {v6, v1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v3, v4

    move-object v5, v6

    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    if-eqz v5, :cond_5

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_4
    move v9, v10

    goto :goto_1

    :cond_7
    const/4 v9, 0x1

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    if-eqz v6, :cond_9

    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_a
    :goto_5
    move-object v3, v4

    move-object v5, v6

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    if-eqz v5, :cond_c

    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :cond_c
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_d
    :goto_7
    throw v9

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v9

    move-object v3, v4

    goto :goto_6

    :catchall_2
    move-exception v9

    move-object v3, v4

    move-object v5, v6

    goto :goto_6

    :catch_5
    move-exception v2

    goto :goto_3

    :catch_6
    move-exception v2

    move-object v3, v4

    goto :goto_3
.end method

.method private getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v3, 0x0

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v2, v7, p2

    div-int v1, v4, p3

    const/4 v0, 0x1

    if-ge v2, v1, :cond_2

    move v0, v2

    :goto_0
    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v8, 0x2

    invoke-static {v3, p2, p3, v8}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v3, :cond_1

    if-eq v3, v6, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    :cond_1
    return-object v6

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private getImageThumbnail([BII)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x0

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v8, p1

    invoke-static {p1, v9, v8, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v2, v7, p2

    div-int v1, v4, p3

    const/4 v0, 0x1

    if-ge v2, v1, :cond_2

    move v0, v2

    :goto_0
    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v8, p1

    invoke-static {p1, v9, v8, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v8, 0x2

    invoke-static {v3, p2, p3, v8}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v3, :cond_1

    if-eq v3, v6, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    :cond_1
    return-object v6

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private getVideoThumbnail(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, p4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, p2, p3, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method doDecodeBitmap()Landroid/graphics/Bitmap;
    .locals 28

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->this$0:Lcom/car/common/ThumbnailCacheManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mKey:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/car/common/ThumbnailCacheManager;->access$500(Lcom/car/common/ThumbnailCacheManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->this$0:Lcom/car/common/ThumbnailCacheManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/common/ThumbnailCacheManager;->access$600(Lcom/car/common/ThumbnailCacheManager;)Llibcore/io/DiskLruCache;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Llibcore/io/DiskLruCache;->get(Ljava/lang/String;)Llibcore/io/DiskLruCache$Snapshot;

    move-result-object v21

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->this$0:Lcom/car/common/ThumbnailCacheManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/common/ThumbnailCacheManager;->access$600(Lcom/car/common/ThumbnailCacheManager;)Llibcore/io/DiskLruCache;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Llibcore/io/DiskLruCache;->edit(Ljava/lang/String;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v10

    if-eqz v10, :cond_0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Llibcore/io/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-virtual {v10}, Llibcore/io/DiskLruCache$Editor;->commit()V

    :goto_0
    const/4 v10, 0x0

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->this$0:Lcom/car/common/ThumbnailCacheManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/common/ThumbnailCacheManager;->access$600(Lcom/car/common/ThumbnailCacheManager;)Llibcore/io/DiskLruCache;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Llibcore/io/DiskLruCache;->flush()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->this$0:Lcom/car/common/ThumbnailCacheManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/common/ThumbnailCacheManager;->access$600(Lcom/car/common/ThumbnailCacheManager;)Llibcore/io/DiskLruCache;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Llibcore/io/DiskLruCache;->get(Ljava/lang/String;)Llibcore/io/DiskLruCache$Snapshot;

    move-result-object v21

    :cond_1
    if-eqz v21, :cond_2

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Llibcore/io/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Ljava/io/FileInputStream;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    :cond_2
    const/4 v7, 0x0

    if-eqz v13, :cond_3

    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_3
    if-eqz v7, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->this$0:Lcom/car/common/ThumbnailCacheManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/common/ThumbnailCacheManager;->access$700(Lcom/car/common/ThumbnailCacheManager;)Landroid/util/LruCache;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mKey:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-nez v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->this$0:Lcom/car/common/ThumbnailCacheManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/common/ThumbnailCacheManager;->access$700(Lcom/car/common/ThumbnailCacheManager;)Landroid/util/LruCache;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mKey:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    if-nez v13, :cond_5

    if-eqz v14, :cond_5

    :try_start_1
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_3
    if-eqz v10, :cond_6

    :try_start_2
    invoke-virtual {v10}, Llibcore/io/DiskLruCache$Editor;->abort()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_4
    return-object v7

    :cond_7
    :try_start_3
    invoke-virtual {v10}, Llibcore/io/DiskLruCache$Editor;->abort()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v13, :cond_8

    if-eqz v14, :cond_8

    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_8
    :goto_5
    if-eqz v10, :cond_9

    :try_start_6
    invoke-virtual {v10}, Llibcore/io/DiskLruCache$Editor;->abort()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_9
    :goto_6
    const/4 v7, 0x0

    goto :goto_4

    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mType:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/16 v24, 0x60

    const/16 v25, 0x60

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v8, v1, v2}, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->getImageThumbnail([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->this$0:Lcom/car/common/ThumbnailCacheManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/common/ThumbnailCacheManager;->access$600(Lcom/car/common/ThumbnailCacheManager;)Llibcore/io/DiskLruCache;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Llibcore/io/DiskLruCache;->edit(Ljava/lang/String;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v10

    if-eqz v10, :cond_b

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Llibcore/io/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v20

    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v25, 0x50

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-virtual {v10}, Llibcore/io/DiskLruCache$Editor;->commit()V

    :goto_7
    const/4 v10, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v24

    if-nez v13, :cond_c

    if-eqz v14, :cond_c

    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_c
    :goto_8
    if-eqz v10, :cond_d

    :try_start_9
    invoke-virtual {v10}, Llibcore/io/DiskLruCache$Editor;->abort()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :cond_d
    :goto_9
    throw v24

    :cond_e
    :try_start_a
    invoke-virtual {v10}, Llibcore/io/DiskLruCache$Editor;->abort()V

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mType:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->this$0:Lcom/car/common/ThumbnailCacheManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/common/ThumbnailCacheManager;->access$600(Lcom/car/common/ThumbnailCacheManager;)Llibcore/io/DiskLruCache;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Llibcore/io/DiskLruCache;->edit(Ljava/lang/String;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v10

    if-eqz v10, :cond_0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Llibcore/io/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v20

    const/4 v7, 0x0

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v24

    if-eqz v24, :cond_14

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    move-object v5, v15

    array-length v0, v5

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_a
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_11

    aget-object v11, v5, v16

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/car/common/util/FileMediaType;->getMediaType(Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x60

    const/16 v26, 0x60

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_10
    :goto_b
    if-eqz v7, :cond_13

    :cond_11
    :goto_c
    if-eqz v7, :cond_16

    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v25, 0x50

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v10}, Llibcore/io/DiskLruCache$Editor;->commit()V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v7, 0x0

    :goto_d
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_12
    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x60

    const/16 v26, 0x60

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->getVideoThumbnail(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_b

    :cond_13
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/common/util/FileMediaType;->getMediaType(Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x60

    const/16 v26, 0x60

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_c

    :cond_15
    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x60

    const/16 v26, 0x60

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->getVideoThumbnail(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_c

    :cond_16
    invoke-virtual {v10}, Llibcore/io/DiskLruCache$Editor;->abort()V

    goto :goto_d

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->this$0:Lcom/car/common/ThumbnailCacheManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/common/ThumbnailCacheManager;->access$600(Lcom/car/common/ThumbnailCacheManager;)Llibcore/io/DiskLruCache;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Llibcore/io/DiskLruCache;->remove(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->this$0:Lcom/car/common/ThumbnailCacheManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/common/ThumbnailCacheManager;->access$600(Lcom/car/common/ThumbnailCacheManager;)Llibcore/io/DiskLruCache;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Llibcore/io/DiskLruCache;->flush()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :catch_3
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :catch_4
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :catch_5
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    :catch_6
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9
.end method

.method public execute()V
    .locals 4

    invoke-virtual {p0}, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->doDecodeBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->this$0:Lcom/car/common/ThumbnailCacheManager;

    invoke-static {v1}, Lcom/car/common/ThumbnailCacheManager;->access$000(Lcom/car/common/ThumbnailCacheManager;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->this$0:Lcom/car/common/ThumbnailCacheManager;

    invoke-static {v1}, Lcom/car/common/ThumbnailCacheManager;->access$400(Lcom/car/common/ThumbnailCacheManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq$1;

    invoke-direct {v3, p0, v0}, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq$1;-><init>(Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public matchs(Lcom/car/common/util/WorkReq;)Z
    .locals 3

    instance-of v1, p1, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;

    iget-object v1, p0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mKey:Ljava/lang/String;

    iget-object v2, v0, Lcom/car/common/ThumbnailCacheManager$BitmapDecodeReq;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
