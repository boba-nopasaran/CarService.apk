.class public Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;
.super Ljava/lang/Object;
.source "SdkUtil.java"


# static fields
.field private static final FOLDER_PATH:Ljava/lang/String; = "/sdcard/.ijiazu"

.field private static final PATH:Ljava/lang/String; = "ijiazu_sdk/ijiazu_resources.png"

.field private static final TAG:Ljava/lang/String; = "[yyn]SdkUtil"

.field private static final UP_DOWN_LENGTH:J = 0x87a6L

.field private static final UP_DOWN_PATH:Ljava/lang/String; = "ijiazu_keysound_updown.mp3"

.field private static appContext:Landroid/content/Context;

.field private static appId:Ljava/lang/String;

.field private static appKey:Ljava/lang/String;

.field private static init:Z

.field private static soundPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->soundPath:Ljava/lang/String;

    sput-object v0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->appContext:Landroid/content/Context;

    const-string v0, ""

    sput-object v0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->appId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->appKey:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->init:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static Bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .locals 2

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static Bytes2Drawable([B)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {p0}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->Bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->soundPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->soundPath:Ljava/lang/String;

    return-object p0
.end method

.method protected static bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method protected static extractDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v2, Landroid/util/TypedValue;->density:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v1, p1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method protected static extractDrawableFromColor(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method protected static extractMenuDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v10, v9, Landroid/util/TypedValue;->density:I

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "ijiazu_sdk/ijiazu_resources.png"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v7, v6

    :goto_0
    if-eqz v3, :cond_1

    :try_start_1
    const-string v10, "[yyn]SdkUtil"

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->read()I

    move-result v0

    const/4 v10, -0x1

    if-eq v0, v10, :cond_0

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v6, v7

    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-object v1

    :cond_0
    :try_start_2
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v9, v6, p1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :goto_4
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    move-object v7, v6

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v6, v7

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_2
    move-object v6, v7

    goto :goto_4
.end method

.method protected static extractResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/4 v8, 0x0

    new-instance v5, Ljava/io/File;

    const-string v9, "/sdcard/.ijiazu"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "ijiazu_sdk/ijiazu_resources.png"

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    new-instance v6, Ljava/util/zip/ZipInputStream;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_4

    const-string v9, "[yyn]SdkUtil"

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-le v9, v10, :cond_1

    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/sdcard/.ijiazu"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/32 v12, 0x87a6

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_2
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->read()I

    move-result v0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_3

    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-object v8

    :cond_3
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method protected static extractView(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, p2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected static getAppContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method protected static getAppId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->appId:Ljava/lang/String;

    return-object v0
.end method

.method protected static getAppKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method protected static getSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v1, v4, [I

    const v2, 0x101009c

    aput v2, v1, v3

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v4, [I

    const v2, 0x101009e

    aput v2, v1, v3

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v3, [I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->init:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->init:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->appContext:Landroid/content/Context;

    new-instance v0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil$1;

    invoke-direct {v0, p0}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected static isAppInit()Z
    .locals 1

    sget-object v0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->appKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static isEmptyString(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static playKeySound(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil$2;

    invoke-direct {v0}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil$2;-><init>()V

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/ThreadUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->appId:Ljava/lang/String;

    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->appKey:Ljava/lang/String;

    return-void
.end method

.method protected static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static viewCheck(Landroid/content/Context;Landroid/view/View;)Z
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "[yyn]SdkUtil"

    const-string v1, "[ijiazu_debug_sdk]viewCheck null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u8d44\u6e90\u52a0\u8f7d\u5931\u8d25"

    invoke-static {p0, v0}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->toast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
