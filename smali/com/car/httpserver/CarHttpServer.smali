.class public Lcom/car/httpserver/CarHttpServer;
.super Lcom/car/httpserver/NanoHTTPD;
.source "CarHttpServer.java"


# static fields
.field private static final DEFAULT_THUMBNAIL_HEIGHT:I = 0x60

.field private static final DEFAULT_THUMBNAIL_WIDTH:I = 0x90

.field public static final MIME_DEFAULT_BINARY:Ljava/lang/String; = "application/octet-stream"

.field private static final MIME_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CarSvc_CarHttpServer"


# instance fields
.field private mCameraManager:Lcom/car/common/CameraServiceImpl;

.field private mContext:Landroid/content/Context;

.field private mFileScanner:Lcom/car/httpserver/FileScanner;

.field private final mWebAdmin:Lcom/car/httpserver/WebAdmin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/car/httpserver/CarHttpServer$1;

    invoke-direct {v0}, Lcom/car/httpserver/CarHttpServer$1;-><init>()V

    sput-object v0, Lcom/car/httpserver/CarHttpServer;->MIME_TYPES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/car/httpserver/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/httpserver/CarHttpServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    iput-object p1, p0, Lcom/car/httpserver/CarHttpServer;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/car/httpserver/FileScanner;

    invoke-direct {v0}, Lcom/car/httpserver/FileScanner;-><init>()V

    iput-object v0, p0, Lcom/car/httpserver/CarHttpServer;->mFileScanner:Lcom/car/httpserver/FileScanner;

    new-instance v0, Lcom/car/httpserver/WebAdmin;

    invoke-direct {v0, p1, p0}, Lcom/car/httpserver/WebAdmin;-><init>(Landroid/content/Context;Lcom/car/httpserver/CarHttpServer;)V

    iput-object v0, p0, Lcom/car/httpserver/CarHttpServer;->mWebAdmin:Lcom/car/httpserver/WebAdmin;

    return-void
.end method

.method private getFileThumbnail(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p2, p3}, Lcom/car/httpserver/CarHttpServer;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ".ts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/car/httpserver/CarHttpServer;->getVideoThumbnail(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
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

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    :cond_1
    return-object v6

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    sget-object v2, Lcom/car/httpserver/CarHttpServer;->MIME_TYPES:Ljava/util/Map;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "application/octet-stream"

    :cond_1
    return-object v1
.end method

.method private getPropertyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v8, "CarDvr.Status.*"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CarDvr.Status.Device"

    invoke-direct {p0, v9}, Lcom/car/httpserver/CarHttpServer;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "CarDvr.Status.Serialno"

    invoke-direct {p0, v9}, Lcom/car/httpserver/CarHttpServer;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "CarDvr.Status.Ability"

    invoke-direct {p0, v9}, Lcom/car/httpserver/CarHttpServer;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_0
    const-string v8, "Setting.Status.*"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting.Status.Volume"

    invoke-direct {p0, v9}, Lcom/car/httpserver/CarHttpServer;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Setting.Status.Brightness"

    invoke-direct {p0, v9}, Lcom/car/httpserver/CarHttpServer;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Setting.Status.Wake.Up"

    invoke-direct {p0, v9}, Lcom/car/httpserver/CarHttpServer;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Setting.Status.Voice.Prompt"

    invoke-direct {p0, v9}, Lcom/car/httpserver/CarHttpServer;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    const-string v8, "CarDvr.Status.Device"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "CarDvr.Status.Device=CarDvr\n"

    goto :goto_0

    :cond_2
    const-string v8, "CarDvr.Status.Serialno"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CarDvr.Status.Serialno="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_3
    const-string v8, "CarDvr.Status.Ability"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "CarDvr.Status.Ability= volume,brightness\n"

    goto :goto_0

    :cond_4
    const-string v8, "CarDvr.Status.Ability= volume,brightness,,voice\n"

    goto :goto_0

    :cond_5
    const-string v8, "Setting.Status.Volume"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/car/httpserver/CarHttpServer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/car/httpserver/Util;->getVoumleMin(Landroid/content/Context;)I

    move-result v3

    iget-object v8, p0, Lcom/car/httpserver/CarHttpServer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/car/httpserver/Util;->getVoumleMax(Landroid/content/Context;)I

    move-result v2

    iget-object v8, p0, Lcom/car/httpserver/CarHttpServer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/car/httpserver/Util;->getVoumleCurrent(Landroid/content/Context;)I

    move-result v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting.Status.Volume=min:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",max:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",current:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_6
    const-string v8, "Setting.Status.Brightness"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/car/httpserver/CarHttpServer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/car/httpserver/Util;->getBrightnessMin(Landroid/content/Context;)I

    move-result v3

    iget-object v8, p0, Lcom/car/httpserver/CarHttpServer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/car/httpserver/Util;->getBrightnessMax(Landroid/content/Context;)I

    move-result v2

    iget-object v8, p0, Lcom/car/httpserver/CarHttpServer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/car/httpserver/Util;->getBrightnessCurrent(Landroid/content/Context;)I

    move-result v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting.Status.Brightness=min:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",max:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",current:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_7
    const-string v8, "Camera.Recording.Status"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/car/httpserver/CarHttpServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/car/httpserver/CarHttpServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v8}, Lcom/car/common/CameraServiceImpl;->isRecording()Z

    move-result v5

    :cond_8
    if-eqz v5, :cond_9

    const-string v8, "Camera.Recording.Status=true\n"

    goto/16 :goto_0

    :cond_9
    const-string v8, "Camera.Recording.Status=false\n"

    goto/16 :goto_0

    :cond_a
    const-string v8, "Setting.Status.Wake.Up"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/car/httpserver/CarHttpServer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/car/httpserver/Util;->getWakeupSensity(Landroid/content/Context;)I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting.Status.Wake.Up="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_b
    const-string v8, "Setting.Status.Voice.Prompt"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/car/httpserver/CarHttpServer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/car/httpserver/Util;->getTTSMute(Landroid/content/Context;)I

    move-result v8

    if-eqz v8, :cond_c

    const/4 v1, 0x1

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting.Status.Voice.Prompt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    goto :goto_1

    :cond_d
    const-string v8, "Dvr.Sdcard.Status.Mount"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-static {}, Lcom/car/httpserver/Util;->isDVRSDcardmount()Z

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dvr.Sdcard.Status.Mount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_e
    const-string v8, "Carcontrol.Status.Version"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/car/httpserver/CarHttpServer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/car/httpserver/Util;->getCarControlVersion(Landroid/content/Context;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Carcontrol.Status.Version="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
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

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    :cond_0
    return-object v1
.end method

.method private handleDeleteAction(Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/car/httpserver/NanoHTTPD$Response;"
        }
    .end annotation

    const-string v3, "path"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "value"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/car/httpserver/Config;->VIDEO_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/car/httpserver/Util;->delFile(Ljava/io/File;)Z

    move-result v2

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    const-string v3, "0\nOK\n"

    invoke-virtual {p0, v3}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    invoke-static {v0}, Lcom/car/httpserver/Util;->delDir(Ljava/io/File;)Z

    move-result v2

    goto :goto_0

    :cond_2
    const-string v3, "0\nFAIL\n"

    invoke-virtual {p0, v3}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v3

    goto :goto_1
.end method

.method private handleDirAction(Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/car/httpserver/NanoHTTPD$Response;"
        }
    .end annotation

    const-string v5, "CarSvc_CarHttpServer"

    const-string v6, "handleDirAction"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "<List>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "path"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "value"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "CarSvc_CarHttpServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/car/httpserver/CarHttpServer;->mFileScanner:Lcom/car/httpserver/FileScanner;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/car/httpserver/Config;->VIDEO_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/car/httpserver/FileScanner;->startScanner(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v5, "CarSvc_CarHttpServer"

    const-string v6, "==================="

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "CarSvc_CarHttpServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "list size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/httpserver/FileInfo;

    const-string v5, "CarSvc_CarHttpServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/car/httpserver/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v5, "CarSvc_CarHttpServer"

    const-string v6, "==================="

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/httpserver/FileInfo;

    const-string v5, "  <file>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "    <name>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v1, Lcom/car/httpserver/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "</name>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "    <path>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v1, Lcom/car/httpserver/FileInfo;->path:Ljava/lang/String;

    sget-object v6, Lcom/car/httpserver/Config;->VIDEO_PATH:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "</path>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "    <size>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v6, v1, Lcom/car/httpserver/FileInfo;->lsize:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v5, "</size>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "    <dir>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v5, v1, Lcom/car/httpserver/FileInfo;->isDirectory:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v5, "</dir>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "    <time>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v6, v1, Lcom/car/httpserver/FileInfo;->modifytime:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v5, "</time>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "    <sub>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, v1, Lcom/car/httpserver/FileInfo;->sub:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, "</sub>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "  </file>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v5, "</List>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v5

    return-object v5
.end method

.method private handleDownLoadAction(Ljava/util/Map;Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/car/httpserver/NanoHTTPD$Response;"
        }
    .end annotation

    const-string v4, "path"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "value"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v4, "/sdcard"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/car/httpserver/CarHttpServer;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2, v0, v3}, Lcom/car/httpserver/CarHttpServer;->serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/car/httpserver/Config;->VIDEO_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/car/httpserver/NanoHTTPD$Response$Status;->NOT_FOUND:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v5, "text/plain"

    const-string v6, ""

    invoke-virtual {p0, v4, v5, v6}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v2

    goto :goto_1
.end method

.method private handleGetAction(Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/car/httpserver/NanoHTTPD$Response;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "0\nOK\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/car/httpserver/CarHttpServer;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v3

    return-object v3
.end method

.method private handleNaviAction(Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/car/httpserver/NanoHTTPD$Response;"
        }
    .end annotation

    :try_start_0
    const-string v1, "latitude"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v7, "value"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v1, "longitude"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v7, "value"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x0

    const-string v1, "name"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v7, "value"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/car/httpserver/CarHttpServer;->mContext:Landroid/content/Context;

    invoke-static/range {v1 .. v6}, Lcom/car/voice/cmd/Navi;->startNavi(Landroid/content/Context;DDLjava/lang/String;)V

    const-string v1, "0\nOK\n"

    invoke-virtual {p0, v1}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_CarHttpServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "0\nFAIL\n"

    invoke-virtual {p0, v1}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v1

    goto :goto_0
.end method

.method private handleSetAction(Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/car/httpserver/NanoHTTPD$Response;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Lcom/car/httpserver/CarHttpServer;->setPropertyValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v4

    return-object v4
.end method

.method private handleThumbnailAction(Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/car/httpserver/NanoHTTPD$Response;"
        }
    .end annotation

    const-string v4, "path"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "value"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const/16 v27, 0x90

    const/16 v17, 0x60

    new-instance v15, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/car/httpserver/Config;->VIDEO_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v12, 0x0

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    move-object/from16 v10, v16

    array-length v0, v10

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    aget-object v14, v10, v18

    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    const/16 v4, 0x2f

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x2e

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string v4, "CarSvc_CarHttpServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "CarSvc_CarHttpServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v25, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/car/common/CarPath;->getThumbnailPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/car/httpserver/CarHttpServer;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/car/httpserver/CarHttpServer;->serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v23

    :goto_1
    return-object v23

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/car/httpserver/CarHttpServer;->getFileThumbnail(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v12

    if-eqz v12, :cond_2

    :cond_1
    :goto_2
    if-eqz v12, :cond_5

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x50

    invoke-virtual {v12, v4, v5, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v12, 0x0

    const/16 v22, 0x0

    sget-object v5, Lcom/car/httpserver/NanoHTTPD$Response$Status;->OK:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v6, "image/jpeg"

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v4, v13

    int-to-long v8, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v22

    const-string v4, "Content-Length"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v13

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/car/httpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Accept-Ranges"

    const-string v5, "bytes"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/car/httpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v23, v22

    goto :goto_1

    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    const/16 v4, 0x2f

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x2e

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string v4, "CarSvc_CarHttpServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "CarSvc_CarHttpServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v25, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/car/common/CarPath;->getThumbnailPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/car/httpserver/CarHttpServer;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/car/httpserver/CarHttpServer;->serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v23

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-direct {v0, v15, v1, v2}, Lcom/car/httpserver/CarHttpServer;->getFileThumbnail(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v12

    goto/16 :goto_2

    :cond_5
    sget-object v4, Lcom/car/httpserver/NanoHTTPD$Response$Status;->NOT_FOUND:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v5, "text/plain"

    const-string v6, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v23

    goto/16 :goto_1
.end method

.method private handleUpgradeAction(Ljava/util/Map;Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/car/httpserver/NanoHTTPD$Response;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    const-string v3, "/system/backup/CarAssist/CarAssist.apk"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/car/httpserver/CarHttpServer;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2, v0, v2}, Lcom/car/httpserver/CarHttpServer;->serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v3, Lcom/car/httpserver/NanoHTTPD$Response$Status;->NOT_FOUND:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v4, "text/plain"

    const-string v5, ""

    invoke-virtual {p0, v3, v4, v5}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v1

    goto :goto_0
.end method

.method private newFixedFileResponse(Ljava/io/File;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    sget-object v1, Lcom/car/httpserver/NanoHTTPD$Response$Status;->OK:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    int-to-long v4, v0

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v6

    const-string v0, "Accept-Ranges"

    const-string v1, "bytes"

    invoke-virtual {v6, v0, v1}, Lcom/car/httpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private setPropertyValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v1, "Setting.Status.Volume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "value"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "CarSvc_CarHttpServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/httpserver/CarHttpServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/car/httpserver/Util;->setVoumle(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    const-string v1, "0\nOK\n"

    :goto_1
    return-object v1

    :cond_1
    const-string v1, "Setting.Status.Brightness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "value"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "CarSvc_CarHttpServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/httpserver/CarHttpServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/car/httpserver/Util;->setBrightness(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const-string v1, "Camera.Recording.Start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/car/httpserver/CarHttpServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/car/httpserver/CarHttpServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v1}, Lcom/car/common/CameraServiceImpl;->startRecording()V

    goto :goto_0

    :cond_3
    const-string v1, "0\nFAIL\n"

    goto :goto_1

    :cond_4
    const-string v1, "Camera.Recording.Stop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/car/httpserver/CarHttpServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/car/httpserver/CarHttpServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v1}, Lcom/car/common/CameraServiceImpl;->stopRecording()V

    goto :goto_0

    :cond_5
    const-string v1, "0\nFAIL\n"

    goto :goto_1

    :cond_6
    const-string v1, "Camera.Take.Photo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/car/httpserver/CarHttpServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/car/httpserver/CarHttpServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v1, v2}, Lcom/car/common/CameraServiceImpl;->takeFrontPicture(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/car/httpserver/CarHttpServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v1, v2}, Lcom/car/common/CameraServiceImpl;->takeBackPicture(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v1, "0\nFAIL\n"

    goto :goto_1

    :cond_8
    const-string v1, "Setting.Status.Wake.Up"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "value"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/car/httpserver/CarHttpServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/car/httpserver/Util;->setWakeupSensity(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "Setting.Status.Voice.Prompt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "value"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/car/httpserver/CarHttpServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/car/httpserver/Util;->setTTSMute(Landroid/content/Context;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected getForbiddenResponse(Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 4

    sget-object v0, Lcom/car/httpserver/NanoHTTPD$Response$Status;->FORBIDDEN:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v1, "text/plain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FORBIDDEN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method public serve(Lcom/car/httpserver/NanoHTTPD$IHTTPSession;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 17

    invoke-interface/range {p1 .. p1}, Lcom/car/httpserver/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/car/httpserver/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lcom/car/httpserver/NanoHTTPD$IHTTPSession;->getQueryParameterString()Ljava/lang/String;

    move-result-object v9

    const-string v14, "CarSvc_CarHttpServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/car/httpserver/NanoHTTPD$IHTTPSession;->getMethod()Lcom/car/httpserver/NanoHTTPD$Method;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "CarSvc_CarHttpServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "qpr =  \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v15, "CarSvc_CarHttpServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  HDR: \'"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "\' = \'"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "\'"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, ""

    const/4 v5, 0x0

    const/4 v13, 0x0

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz v9, :cond_4

    new-instance v11, Ljava/util/StringTokenizer;

    const-string v14, "&"

    invoke-direct {v11, v9, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x3d

    invoke-virtual {v7, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_1

    const/4 v14, 0x0

    invoke-virtual {v7, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/car/httpserver/CarHttpServer;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/car/httpserver/CarHttpServer;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :goto_2
    const-string v14, "action"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object v1, v13

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    invoke-virtual {v7, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/car/httpserver/CarHttpServer;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v13, ""

    goto :goto_2

    :cond_2
    const-string v14, "property"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v6, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string v14, "/webadmin"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/CarHttpServer;->mWebAdmin:Lcom/car/httpserver/WebAdmin;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6}, Lcom/car/httpserver/WebAdmin;->handleWebAdmin(Lcom/car/httpserver/NanoHTTPD$IHTTPSession;Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    :goto_3
    return-object v14

    :catch_0
    move-exception v3

    const-string v14, "CarSvc_CarHttpServer"

    const-string v15, "handleWebAdmin Error"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<h1>Error:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</h1>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v14

    goto :goto_3

    :cond_5
    const-string v14, "get"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/car/httpserver/CarHttpServer;->handleGetAction(Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v14

    goto :goto_3

    :cond_6
    const-string v14, "set"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/car/httpserver/CarHttpServer;->handleSetAction(Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v14

    goto :goto_3

    :cond_7
    const-string v14, "dir"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/car/httpserver/CarHttpServer;->handleDirAction(Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v14

    goto :goto_3

    :cond_8
    const-string v14, "download"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/car/httpserver/CarHttpServer;->handleDownLoadAction(Ljava/util/Map;Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v14

    goto :goto_3

    :cond_9
    const-string v14, "delete"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/car/httpserver/CarHttpServer;->handleDeleteAction(Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v14

    goto :goto_3

    :cond_a
    const-string v14, "upgrade"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/car/httpserver/CarHttpServer;->handleUpgradeAction(Ljava/util/Map;Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v14

    goto/16 :goto_3

    :cond_b
    const-string v14, "navi"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/car/httpserver/CarHttpServer;->handleNaviAction(Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v14

    goto/16 :goto_3

    :cond_c
    const-string v14, "thumbnail"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/car/httpserver/CarHttpServer;->handleThumbnailAction(Ljava/util/Map;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v14

    goto/16 :goto_3

    :cond_d
    const-string v14, "0\nFAIL\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v14

    goto/16 :goto_3
.end method

.method serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Lcom/car/httpserver/NanoHTTPD$Response;"
        }
    .end annotation

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->lastModified()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v24, 0x0

    const-wide/16 v10, -0x1

    const-string v4, "range"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    if-eqz v21, :cond_0

    const-string v4, "bytes="

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "bytes="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    const/16 v4, 0x2d

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    if-lez v20, :cond_0

    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    add-int/lit8 v4, v20, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v10

    :cond_0
    :goto_0
    :try_start_2
    const-string v4, "if-range"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const/16 v16, 0x1

    :goto_1
    const-string v4, "if-none-match"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    if-eqz v17, :cond_4

    const-string v4, "*"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    const/4 v13, 0x1

    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v14

    if-eqz v16, :cond_8

    if-eqz v21, :cond_8

    const-wide/16 v4, 0x0

    cmp-long v4, v24, v4

    if-ltz v4, :cond_8

    cmp-long v4, v24, v14

    if-gez v4, :cond_8

    if-eqz v13, :cond_5

    sget-object v4, Lcom/car/httpserver/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1, v5}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v22

    const-string v4, "ETag"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v12}, Lcom/car/httpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v22

    :cond_3
    const/16 v16, 0x0

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-gez v4, :cond_6

    const-wide/16 v4, 0x1

    sub-long v10, v14, v4

    :cond_6
    sub-long v4, v10, v24

    const-wide/16 v26, 0x1

    add-long v8, v4, v26

    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-gez v4, :cond_7

    const-wide/16 v8, 0x0

    :cond_7
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    sget-object v5, Lcom/car/httpserver/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    move-object/from16 v4, p0

    move-object/from16 v6, p4

    invoke-virtual/range {v4 .. v9}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v22

    const-string v4, "Accept-Ranges"

    const-string v5, "bytes"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/car/httpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Length"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/car/httpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Range"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/car/httpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ETag"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v12}, Lcom/car/httpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v19

    const-string v4, "Reading file failed."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/car/httpserver/CarHttpServer;->getForbiddenResponse(Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v22

    goto/16 :goto_3

    :cond_8
    if-eqz v16, :cond_9

    if-eqz v21, :cond_9

    cmp-long v4, v24, v14

    if-ltz v4, :cond_9

    :try_start_3
    sget-object v4, Lcom/car/httpserver/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v5, "text/plain"

    const-string v6, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v22

    const-string v4, "Content-Range"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes */"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/car/httpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ETag"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v12}, Lcom/car/httpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    if-nez v21, :cond_a

    if-eqz v13, :cond_a

    sget-object v4, Lcom/car/httpserver/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1, v5}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v22

    const-string v4, "ETag"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v12}, Lcom/car/httpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    if-nez v16, :cond_b

    if-eqz v13, :cond_b

    sget-object v4, Lcom/car/httpserver/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1, v5}, Lcom/car/httpserver/CarHttpServer;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v22

    const-string v4, "ETag"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v12}, Lcom/car/httpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/car/httpserver/CarHttpServer;->newFixedFileResponse(Ljava/io/File;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v22

    const-string v4, "Content-Length"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/car/httpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ETag"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v12}, Lcom/car/httpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method public setCameraManagerService(Lcom/car/common/CameraServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/CarHttpServer;->mCameraManager:Lcom/car/common/CameraServiceImpl;

    return-void
.end method
