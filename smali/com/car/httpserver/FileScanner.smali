.class public Lcom/car/httpserver/FileScanner;
.super Ljava/lang/Object;
.source "FileScanner.java"


# static fields
.field public static final SORY_BY_NAME:I = 0x1

.field public static final SORY_BY_SIZE_DOWN:I = 0x5

.field public static final SORY_BY_SIZE_UP:I = 0x4

.field public static final SORY_BY_TIME_DOWN:I = 0x3

.field public static final SORY_BY_TIME_UP:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CarSvc_FileScanner"


# instance fields
.field mFileComByName:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/car/httpserver/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFileComBySizeDown:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/car/httpserver/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFileComBySizeUp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/car/httpserver/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFileComByTimeDown:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/car/httpserver/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFileComByTimeUp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/car/httpserver/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/car/httpserver/FileScanner$1;

    invoke-direct {v0, p0}, Lcom/car/httpserver/FileScanner$1;-><init>(Lcom/car/httpserver/FileScanner;)V

    iput-object v0, p0, Lcom/car/httpserver/FileScanner;->mFileComByName:Ljava/util/Comparator;

    new-instance v0, Lcom/car/httpserver/FileScanner$2;

    invoke-direct {v0, p0}, Lcom/car/httpserver/FileScanner$2;-><init>(Lcom/car/httpserver/FileScanner;)V

    iput-object v0, p0, Lcom/car/httpserver/FileScanner;->mFileComBySizeUp:Ljava/util/Comparator;

    new-instance v0, Lcom/car/httpserver/FileScanner$3;

    invoke-direct {v0, p0}, Lcom/car/httpserver/FileScanner$3;-><init>(Lcom/car/httpserver/FileScanner;)V

    iput-object v0, p0, Lcom/car/httpserver/FileScanner;->mFileComBySizeDown:Ljava/util/Comparator;

    new-instance v0, Lcom/car/httpserver/FileScanner$4;

    invoke-direct {v0, p0}, Lcom/car/httpserver/FileScanner$4;-><init>(Lcom/car/httpserver/FileScanner;)V

    iput-object v0, p0, Lcom/car/httpserver/FileScanner;->mFileComByTimeUp:Ljava/util/Comparator;

    new-instance v0, Lcom/car/httpserver/FileScanner$5;

    invoke-direct {v0, p0}, Lcom/car/httpserver/FileScanner$5;-><init>(Lcom/car/httpserver/FileScanner;)V

    iput-object v0, p0, Lcom/car/httpserver/FileScanner;->mFileComByTimeDown:Ljava/util/Comparator;

    return-void
.end method

.method public static fileSizeMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const-wide/16 v12, 0x400

    const/high16 v11, 0x4e800000

    const/high16 v10, 0x49800000    # 1048576.0f

    const/high16 v9, 0x44800000    # 1024.0f

    const/4 v8, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v6, 0x40000000

    cmp-long v5, v2, v6

    if-ltz v5, :cond_1

    long-to-float v5, v2

    div-float/2addr v5, v11

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v7, v2

    div-float/2addr v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-wide/32 v6, 0x100000

    cmp-long v5, v2, v6

    if-ltz v5, :cond_2

    long-to-float v5, v2

    div-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v7, v2

    div-float/2addr v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    cmp-long v5, v2, v12

    if-ltz v5, :cond_3

    long-to-float v5, v2

    div-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v7, v2

    div-float/2addr v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "KB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    cmp-long v5, v2, v12

    if-gez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "B"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getDirSortComp(I)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Comparator",
            "<",
            "Lcom/car/httpserver/FileInfo;",
            ">;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/car/httpserver/FileScanner;->mFileComByName:Ljava/util/Comparator;

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/car/httpserver/FileScanner;->mFileComByName:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/car/httpserver/FileScanner;->mFileComByTimeDown:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/car/httpserver/FileScanner;->mFileComByTimeUp:Ljava/util/Comparator;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getFileSortComp(I)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Comparator",
            "<",
            "Lcom/car/httpserver/FileInfo;",
            ">;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/car/httpserver/FileScanner;->mFileComByName:Ljava/util/Comparator;

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/car/httpserver/FileScanner;->mFileComByName:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/car/httpserver/FileScanner;->mFileComBySizeDown:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/car/httpserver/FileScanner;->mFileComBySizeUp:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/car/httpserver/FileScanner;->mFileComByTimeDown:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/car/httpserver/FileScanner;->mFileComByTimeUp:Ljava/util/Comparator;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static readJSONArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/httpserver/FileInfo;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v2, Lcom/car/httpserver/FileInfo;

    invoke-direct {v2}, Lcom/car/httpserver/FileInfo;-><init>()V

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/car/httpserver/FileInfo;->name:Ljava/lang/String;

    const-string v5, "path"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/car/httpserver/FileInfo;->path:Ljava/lang/String;

    const-string v5, "size"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/car/httpserver/FileInfo;->lsize:J

    const-string v5, "dir"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v2, Lcom/car/httpserver/FileInfo;->isDirectory:Z

    const-string v5, "time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/car/httpserver/FileInfo;->modifytime:J

    const-string v5, "sub"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/car/httpserver/FileInfo;->sub:I

    iget-object v5, v2, Lcom/car/httpserver/FileInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/car/common/util/FileMediaType;->getMediaType(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/car/httpserver/FileInfo;->fileType:I

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "CarSvc_FileScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSONException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v4
.end method


# virtual methods
.method public startScanner(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/httpserver/FileInfo;",
            ">;"
        }
    .end annotation

    const/4 v13, 0x0

    const/4 v12, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v8, 0x1

    move-object v4, p1

    if-eqz v8, :cond_4

    const/4 v7, 0x0

    :goto_1
    array-length v10, v5

    if-ge v7, v10, :cond_3

    aget-object v0, v5, v7

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v2, Lcom/car/httpserver/FileInfo;

    invoke-direct {v2, v9, v12}, Lcom/car/httpserver/FileInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/car/httpserver/FileInfo;->modifytime:J

    iput-boolean v12, v2, Lcom/car/httpserver/FileInfo;->isDirectory:Z

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v10, v10

    iput v10, v2, Lcom/car/httpserver/FileInfo;->sub:I

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v12}, Lcom/car/httpserver/FileScanner;->getDirSortComp(I)Ljava/util/Comparator;

    move-result-object v10

    invoke-static {v6, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    const-string v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/car/httpserver/FileInfo;

    iput-object v4, v10, Lcom/car/httpserver/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/car/httpserver/FileInfo;

    const-string v11, ""

    iput-object v11, v10, Lcom/car/httpserver/FileInfo;->size:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v7, 0x0

    :goto_3
    array-length v10, v5

    if-ge v7, v10, :cond_8

    aget-object v0, v5, v7

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    new-instance v2, Lcom/car/httpserver/FileInfo;

    invoke-direct {v2, v9, v13}, Lcom/car/httpserver/FileInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/car/httpserver/FileScanner;->fileSizeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/car/httpserver/FileInfo;->size:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/car/httpserver/FileInfo;->lsize:J

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/car/httpserver/FileInfo;->modifytime:J

    iput-boolean v13, v2, Lcom/car/httpserver/FileInfo;->isDirectory:Z

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/car/httpserver/FileInfo;->path:Ljava/lang/String;

    iput v13, v2, Lcom/car/httpserver/FileInfo;->sub:I

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    invoke-direct {p0, v12}, Lcom/car/httpserver/FileScanner;->getFileSortComp(I)Ljava/util/Comparator;

    move-result-object v10

    invoke-static {v3, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-ge v7, v10, :cond_9

    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/car/httpserver/FileInfo;

    iput-object v4, v10, Lcom/car/httpserver/FileInfo;->path:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method
