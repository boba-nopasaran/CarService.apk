.class public Lcom/amap/api/col/dt;
.super Ljava/lang/Object;
.source "ResourcesUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/dt$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/res/AssetManager;

.field private static b:Landroid/content/res/Resources;

.field private static c:Landroid/content/res/Resources;

.field private static d:Z

.field private static e:Landroid/content/Context;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Landroid/content/res/Resources$Theme;

.field private static o:Landroid/content/res/Resources$Theme;

.field private static p:Ljava/lang/reflect/Field;

.field private static q:Ljava/lang/reflect/Field;

.field private static r:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-object v2, Lcom/amap/api/col/dt;->a:Landroid/content/res/AssetManager;

    sput-object v2, Lcom/amap/api/col/dt;->b:Landroid/content/res/Resources;

    sput-object v2, Lcom/amap/api/col/dt;->c:Landroid/content/res/Resources;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/col/dt;->d:Z

    const-string v0, "autonavi_Resource"

    sput-object v0, Lcom/amap/api/col/dt;->f:Ljava/lang/String;

    const-string v0, "1_1_0"

    sput-object v0, Lcom/amap/api/col/dt;->g:Ljava/lang/String;

    const-string v0, ".png"

    sput-object v0, Lcom/amap/api/col/dt;->h:Ljava/lang/String;

    const-string v0, ".jar"

    sput-object v0, Lcom/amap/api/col/dt;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amap/api/col/dt;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amap/api/col/dt;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amap/api/col/dt;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/dt;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amap/api/col/dt;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amap/api/col/dt;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amap/api/col/dt;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/dt;->k:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/amap/api/col/dt;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amap/api/col/dt;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amap/api/col/dt;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/dt;->m:Ljava/lang/String;

    sput-object v2, Lcom/amap/api/col/dt;->n:Landroid/content/res/Resources$Theme;

    sput-object v2, Lcom/amap/api/col/dt;->o:Landroid/content/res/Resources$Theme;

    sput-object v2, Lcom/amap/api/col/dt;->p:Ljava/lang/reflect/Field;

    sput-object v2, Lcom/amap/api/col/dt;->q:Ljava/lang/reflect/Field;

    sput-object v2, Lcom/amap/api/col/dt;->r:Landroid/app/Activity;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    :try_start_0
    const-string v1, ".R."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "$"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "ResourcesUtil"

    const-string v3, "getInnerRIdValue(String rStrnig)"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lcom/amap/api/col/dt;->b:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    sget-object v0, Lcom/amap/api/col/dt;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amap/api/col/dt;->b:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    new-instance v2, Landroid/content/res/Resources;

    invoke-direct {v2, p1, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v2
.end method

.method public static a(Landroid/app/Activity;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    sget-boolean v0, Lcom/amap/api/col/dt;->d:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/dt;->a(Landroid/app/Activity;)Z

    move-result v3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-static {p0}, Lcom/amap/api/col/dt;->b(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v3, "ResourcesUtil"

    const-string v4, "selfInflate(Activity activity, int resource, ViewGroup root)"

    invoke-static {v1, v3, v4}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amap/api/col/dt;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "ResourcesUtil"

    const-string v4, "loadAnimation(Context context, int id)"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v3, "ResourcesUtil"

    const-string v4, "loadAnimation(Context context, int id)"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/amap/api/col/dt;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, p0, p3}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v1

    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-static {p0, p1, v0, p3}, Lcom/amap/api/col/dt;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    return-object v1

    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_5
    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, p0, p3}, Landroid/view/animation/AlphaAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    :cond_6
    const-string v1, "scale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, p0, p3}, Landroid/view/animation/ScaleAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    :cond_7
    const-string v1, "rotate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Landroid/view/animation/RotateAnimation;

    invoke-direct {v1, p0, p3}, Landroid/view/animation/RotateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    :cond_8
    const-string v1, "translate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, p0, p3}, Landroid/view/animation/TranslateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown animation name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/io/InputStream;)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/amap/api/col/dt;->l:Ljava/lang/String;

    sget-object v2, Lcom/amap/api/col/dt;->j:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/amap/api/col/dt;->c:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/amap/api/col/dt;->p:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amap/api/col/dt;->h()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/dt;->p:Ljava/lang/reflect/Field;

    :cond_1
    sget-object v0, Lcom/amap/api/col/dt;->q:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/amap/api/col/dt;->i()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/dt;->q:Ljava/lang/reflect/Field;

    :cond_2
    sget-object v0, Lcom/amap/api/col/dt;->n:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/amap/api/col/dt;->g()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/dt;->n:Landroid/content/res/Resources$Theme;

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    sget-object v0, Lcom/amap/api/col/dt;->q:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    sput-object v0, Lcom/amap/api/col/dt;->c:Landroid/content/res/Resources;

    sget-object v0, Lcom/amap/api/col/dt;->p:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources$Theme;

    sput-object v0, Lcom/amap/api/col/dt;->o:Landroid/content/res/Resources$Theme;

    sget-object v0, Lcom/amap/api/col/dt;->q:Ljava/lang/reflect/Field;

    sget-object v3, Lcom/amap/api/col/dt;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/amap/api/col/dt;->p:Ljava/lang/reflect/Field;

    sget-object v2, Lcom/amap/api/col/dt;->n:Landroid/content/res/Resources$Theme;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "ResourcesUtil"

    const-string v3, "switchToJarResourcesAndTheme(Activity activity)"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    sput-object p0, Lcom/amap/api/col/dt;->e:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amap/api/col/dt;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/ds;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amap/api/col/dt;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amap/api/col/dt;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/amap/api/col/dt;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amap/api/col/dt;->m:Ljava/lang/String;

    sget-boolean v1, Lcom/amap/api/col/dt;->d:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/amap/api/col/dt;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/amap/api/col/dt;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/amap/api/col/dt;->b(Ljava/lang/String;)Landroid/content/res/AssetManager;

    move-result-object v1

    sput-object v1, Lcom/amap/api/col/dt;->a:Landroid/content/res/AssetManager;

    sget-object v1, Lcom/amap/api/col/dt;->a:Landroid/content/res/AssetManager;

    invoke-static {p0, v1}, Lcom/amap/api/col/dt;->a(Landroid/content/Context;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/amap/api/col/dt;->b:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Landroid/content/res/AssetManager;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "android.content.res.AssetManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "addAssetPath"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    const-string v2, "ResourcesUtil"

    const-string v3, "getAssetManager(String apkPath)"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static b()V
    .locals 0

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/amap/api/col/dt;->c:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/amap/api/col/dt;->q:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/amap/api/col/dt;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/amap/api/col/dt;->p:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/amap/api/col/dt;->o:Landroid/content/res/Resources$Theme;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sput-object v3, Lcom/amap/api/col/dt;->c:Landroid/content/res/Resources;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "ResourcesUtil"

    const-string v2, "switchToOldResourceAndTheme(Activity activity)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sput-object v3, Lcom/amap/api/col/dt;->c:Landroid/content/res/Resources;

    throw v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/amap/api/col/dt;->c(Landroid/content/Context;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v4, Lcom/amap/api/col/dt;->k:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lcom/amap/api/col/dt;->b(Ljava/io/InputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/amap/api/col/dt;->f()V

    invoke-static {v1}, Lcom/amap/api/col/dt;->a(Ljava/io/InputStream;)Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "ResourcesUtil"

    const-string v3, "copyResourceJarToAppFilesDir(Context ctx)"

    :goto_1
    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "ResourcesUtil"

    const-string v5, "copyResourceJarToAppFilesDir(Context ctx)"

    invoke-static {v0, v4, v5}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v0, 0x0

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "ResourcesUtil"

    const-string v3, "copyResourceJarToAppFilesDir(Context ctx)"

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "ResourcesUtil"

    const-string v3, "copyResourceJarToAppFilesDir(Context ctx)"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "ResourcesUtil"

    const-string v3, "copyResourceJarToAppFilesDir(Context ctx)"

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method private static b(Ljava/io/InputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/amap/api/col/dt;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-long v0, v1

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amap/api/col/dt;->g:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/dt;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amap/api/col/dt;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amap/api/col/dt;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/dt;->m:Ljava/lang/String;

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amap/api/col/dt;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amap/api/col/dt;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static f()V
    .locals 4

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/amap/api/col/dt;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/col/dt$a;

    invoke-direct {v1}, Lcom/amap/api/col/dt$a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v0, v1

    if-lez v0, :cond_1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static g()Landroid/content/res/Resources$Theme;
    .locals 3

    sget-object v0, Lcom/amap/api/col/dt;->n:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_2

    sget-object v0, Lcom/amap/api/col/dt;->a:Landroid/content/res/AssetManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/amap/api/col/dt;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/col/dt;->b(Ljava/lang/String;)Landroid/content/res/AssetManager;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/dt;->a:Landroid/content/res/AssetManager;

    :cond_0
    sget-object v0, Lcom/amap/api/col/dt;->b:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    sget-object v0, Lcom/amap/api/col/dt;->r:Landroid/app/Activity;

    sget-object v1, Lcom/amap/api/col/dt;->a:Landroid/content/res/AssetManager;

    invoke-static {v0, v1}, Lcom/amap/api/col/dt;->a(Landroid/content/Context;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/dt;->b:Landroid/content/res/Resources;

    :cond_1
    sget-object v0, Lcom/amap/api/col/dt;->b:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/dt;->n:Landroid/content/res/Resources$Theme;

    const-string v0, "com.android.internal.R.style.Theme"

    invoke-static {v0}, Lcom/amap/api/col/dt;->a(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/amap/api/col/dt;->n:Landroid/content/res/Resources$Theme;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2
    sget-object v0, Lcom/amap/api/col/dt;->n:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method private static h()Ljava/lang/reflect/Field;
    .locals 3

    :try_start_0
    const-string v0, "android.view.ContextThemeWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTheme"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/dt;->p:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/amap/api/col/dt;->p:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/amap/api/col/dt;->p:Ljava/lang/reflect/Field;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ResourcesUtil"

    const-string v2, "getActivityThemeField()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static i()Ljava/lang/reflect/Field;
    .locals 3

    :try_start_0
    const-string v0, "android.app.ContextImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mResources"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/dt;->q:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/amap/api/col/dt;->q:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/amap/api/col/dt;->q:Ljava/lang/reflect/Field;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ResourcesUtil"

    const-string v2, "getContextResourcesField()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
