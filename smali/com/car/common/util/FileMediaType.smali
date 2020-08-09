.class public final Lcom/car/common/util/FileMediaType;
.super Ljava/lang/Object;
.source "FileMediaType.java"


# static fields
.field public static final ALL_TYPES:I = 0xffff

.field public static final APK_TYPE:I = 0x8

.field public static final AUDIO_TYPE:I = 0x4

.field public static final EXCEL_TYPE:I = 0x80

.field public static final HTML_TYPE:I = 0x400

.field public static final IMAGE_TYPE:I = 0x1

.field public static final LOCK_TYPE:I = 0x1000

.field public static final PDF_TYPE:I = 0x200

.field public static final PPT_TYPE:I = 0x100

.field public static final SH_TYPE:I = 0x20

.field public static final SWF_TYPE:I = 0x800

.field public static final TEXT_TYPE:I = 0x10

.field public static final UNKNOWN_TYPE:I = 0x0

.field public static final VIDEO_TYPE:I = 0x2

.field public static final WORD_TYPE:I = 0x40

.field static final sExtMap:Lcom/car/common/util/IntHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/car/common/util/IntHashMap;

    const/16 v1, 0xd8

    invoke-direct {v0, v1}, Lcom/car/common/util/IntHashMap;-><init>(I)V

    sput-object v0, Lcom/car/common/util/FileMediaType;->sExtMap:Lcom/car/common/util/IntHashMap;

    sget-object v0, Lcom/car/common/util/FileMediaType;->sExtMap:Lcom/car/common/util/IntHashMap;

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->initExtMap(Lcom/car/common/util/IntHashMap;)V

    const-string v0, "FileMediaType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Map cap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/car/common/util/FileMediaType;->sExtMap:Lcom/car/common/util/IntHashMap;

    invoke-virtual {v2}, Lcom/car/common/util/IntHashMap;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/car/common/util/FileMediaType;->sExtMap:Lcom/car/common/util/IntHashMap;

    invoke-virtual {v2}, Lcom/car/common/util/IntHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",collision="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/car/common/util/FileMediaType;->sExtMap:Lcom/car/common/util/IntHashMap;

    invoke-virtual {v2}, Lcom/car/common/util/IntHashMap;->collision()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final fourcc(Ljava/lang/String;)I
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-gt v5, v6, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v0, v5

    or-int/lit8 v5, v0, 0x20

    shl-int/2addr v5, v4

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Ext should less than 4"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    return v3
.end method

.method public static getMediaType(Ljava/lang/String;)I
    .locals 9

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    add-int/lit8 v3, v4, -0x1

    :goto_0
    if-lez v3, :cond_2

    const/4 v8, 0x5

    if-ge v1, v8, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v0, v8

    const/16 v8, 0x2e

    if-eq v0, v8, :cond_0

    or-int/lit8 v8, v0, 0x20

    shl-int/2addr v8, v5

    add-int/2addr v2, v8

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v8, Lcom/car/common/util/FileMediaType;->sExtMap:Lcom/car/common/util/IntHashMap;

    invoke-virtual {v8, v2}, Lcom/car/common/util/IntHashMap;->get(I)I

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    return v6

    :cond_1
    move v6, v7

    goto :goto_1

    :cond_2
    move v6, v7

    goto :goto_1
.end method

.method public static getOpenMIMEType(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "audio/*"

    goto :goto_0

    :sswitch_1
    const-string v0, "video/*"

    goto :goto_0

    :sswitch_2
    const-string v0, "image/*"

    goto :goto_0

    :sswitch_3
    const-string v0, "application/vnd.android.package-archive"

    goto :goto_0

    :sswitch_4
    const-string v0, "sh/*"

    goto :goto_0

    :sswitch_5
    const-string v0, "application/msword"

    goto :goto_0

    :sswitch_6
    const-string v0, "application/vnd.ms-excel"

    goto :goto_0

    :sswitch_7
    const-string v0, "application/mspowerpoint"

    goto :goto_0

    :sswitch_8
    const-string v0, "application/pdf"

    goto :goto_0

    :sswitch_9
    const-string v0, "text/plain"

    goto :goto_0

    :sswitch_a
    const-string v0, "text/html*"

    goto :goto_0

    :sswitch_b
    const-string v0, "swf/*"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_9
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
        0x100 -> :sswitch_7
        0x200 -> :sswitch_8
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
    .end sparse-switch
.end method

.method static initExtMap(Lcom/car/common/util/IntHashMap;)V
    .locals 6

    const/16 v5, 0x40

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x2

    const-string v0, "jpeg"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "jpg"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "png"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "gif"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "bmp"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "tif"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "tiff"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "m4a"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "mp3"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "mid"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "xmf"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "ogg"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "wav"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "ape"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "mp2"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "wma"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "aac"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "amr"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "flac"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "ac3"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "m4r"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "mmf"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "f4v"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "ts"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "rm"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "3gp"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "mp4"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "avi"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "mpg"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "mkv"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "flv"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "mov"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "wmv"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "mpeg"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "rmvb"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "asf"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "3g2"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "apk"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "ppt"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "pot"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "pps"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "pptx"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "doc"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v5}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "dot"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v5}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "rtf"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v5}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "odt"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v5}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "docx"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v5}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "xls"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "xlt"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "xlsx"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "pdf"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x200

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "txt"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "rc"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "prop"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "lrc"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "log"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "sh"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "wmsh"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "htm"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x400

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "html"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x400

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "xml"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x400

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    const-string v0, "swf"

    invoke-static {v0}, Lcom/car/common/util/FileMediaType;->fourcc(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x800

    invoke-virtual {p0, v0, v1}, Lcom/car/common/util/IntHashMap;->put(II)I

    return-void
.end method
