.class public Lcom/aispeech/export/engines/AILocalTTSEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/export/engines/AILocalTTSEngine$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field b:Ljava/lang/String;

.field c:Lcom/aispeech/export/listeners/AITTSListener;

.field d:Z

.field private e:Lcom/aispeech/tts/e;

.field private f:Lcom/aispeech/tts/d;

.field private g:Lcom/aispeech/tts/g;

.field private h:Lcom/aispeech/a;

.field private i:Lcom/aispeech/b/g;

.field private j:Lcom/aispeech/c/n;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Map;
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

.field private p:Z

.field private q:I

.field private r:Lorg/apache/commons/collections4/map/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/LRUMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/aispeech/export/engines/AILocalTTSEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->o:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->p:Z

    iput-boolean v2, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->d:Z

    new-instance v0, Lcom/aispeech/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/aispeech/a;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    const-string v1, "AILocalTTSEngine"

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->n(Ljava/lang/String;)V

    new-instance v0, Lcom/aispeech/b/g;

    invoke-direct {v0}, Lcom/aispeech/b/g;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->i:Lcom/aispeech/b/g;

    new-instance v0, Lcom/aispeech/c/n;

    invoke-direct {v0}, Lcom/aispeech/c/n;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->a:Ljava/lang/String;

    const-string v2, "read from sharedPerference"

    invoke-static {v0, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->s:Landroid/content/SharedPreferences;

    const-string v2, "lrc_map"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/LRUMap;

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->r:Lorg/apache/commons/collections4/map/LRUMap;

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->r:Lorg/apache/commons/collections4/map/LRUMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->r:Lorg/apache/commons/collections4/map/LRUMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/LRUMap;->maxSize()I

    move-result v0

    iget v2, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->q:I
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    if-gt v0, v2, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    :cond_0
    :goto_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    invoke-virtual {v3}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ttsCache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_1

    aget-object v1, v2, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->a:Ljava/lang/String;

    const-string v1, "not found in sp, create new lrc cache"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/commons/collections4/map/LRUMap;

    iget v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->q:I

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(I)V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->r:Lorg/apache/commons/collections4/map/LRUMap;

    goto :goto_0
.end method

.method static synthetic a(Lcom/aispeech/export/engines/AILocalTTSEngine;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v1}, Lcom/aispeech/c/n;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v1}, Lcom/aispeech/c/n;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v1}, Lcom/aispeech/c/n;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v1}, Lcom/aispeech/c/n;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->r:Lorg/apache/commons/collections4/map/LRUMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->r:Lorg/apache/commons/collections4/map/LRUMap;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    sget-object v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete invalid cache file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, ""

    invoke-static {v1, v0}, Lcom/aispeech/common/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    invoke-virtual {v3}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ttsCache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aispeech/export/engines/AILocalTTSEngine;->setSavePath(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->r:Lorg/apache/commons/collections4/map/LRUMap;

    invoke-virtual {v2, v1, v0}, Lorg/apache/commons/collections4/map/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v1}, Lcom/aispeech/c/n;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/c/n;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->e:Lcom/aispeech/tts/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->e:Lcom/aispeech/tts/e;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/k;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->d:Z

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static createInstance()Lcom/aispeech/export/engines/AILocalTTSEngine;
    .locals 1

    new-instance v0, Lcom/aispeech/export/engines/AILocalTTSEngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AILocalTTSEngine;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/aispeech/export/engines/AILocalTTSEngine;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/aispeech/export/engines/AILocalTTSEngine;

    invoke-direct {v0}, Lcom/aispeech/export/engines/AILocalTTSEngine;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->e:Lcom/aispeech/tts/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->e:Lcom/aispeech/tts/e;

    invoke-virtual {v0}, Lcom/aispeech/tts/e;->d()V

    :cond_0
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    invoke-interface {v0}, Lcom/aispeech/tts/d;->e()V

    :cond_1
    iget-boolean v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->p:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->a:Ljava/lang/String;

    const-string v1, "write lru map to sp"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->r:Lorg/apache/commons/collections4/map/LRUMap;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "lrc_map"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->n:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->n:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->o:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    if-eqz v0, :cond_5

    iput-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    :cond_5
    iput-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->k:Ljava/lang/String;

    iput-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->l:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/aispeech/export/listeners/AITTSListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->n:Ljava/util/List;

    iput-object p2, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->c:Lcom/aispeech/export/listeners/AITTSListener;

    new-instance v2, Lcom/aispeech/export/engines/AILocalTTSEngine$a;

    invoke-direct {v2, p0, v6}, Lcom/aispeech/export/engines/AILocalTTSEngine$a;-><init>(Lcom/aispeech/export/engines/AILocalTTSEngine;B)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    invoke-virtual {v0, p3}, Lcom/aispeech/a;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    invoke-virtual {v0, p4}, Lcom/aispeech/a;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/aispeech/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    invoke-virtual {v0}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->i:Lcom/aispeech/b/g;

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->k:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->k:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->k:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v0}, Lcom/aispeech/b/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->i:Lcom/aispeech/b/g;

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->l:Ljava/lang/String;

    if-nez v3, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/aispeech/b/g;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->n:Ljava/util/List;

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/aispeech/a;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->o:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->a(Ljava/util/Map;)V

    :goto_2
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->i:Lcom/aispeech/b/g;

    invoke-virtual {v0, v1}, Lcom/aispeech/a;->a(Lcom/aispeech/b/c;)V

    new-instance v0, Lcom/aispeech/tts/e;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    invoke-direct {v0, v2, v1}, Lcom/aispeech/tts/e;-><init>(Lcom/aispeech/tts/j;Lcom/aispeech/a;)V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->e:Lcom/aispeech/tts/e;

    const-string v0, "lruCache"

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->s:Landroid/content/SharedPreferences;

    iget v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->q:I

    if-gtz v0, :cond_0

    iput-boolean v6, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->p:Z

    :cond_0
    iget-boolean v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->p:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/aispeech/tts/b;

    invoke-direct {v0}, Lcom/aispeech/tts/b;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    new-instance v0, Lcom/aispeech/tts/g;

    invoke-direct {v0}, Lcom/aispeech/tts/g;-><init>()V

    iput-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->g:Lcom/aispeech/tts/g;

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    const/4 v1, 0x1

    sget-object v3, Lcom/aispeech/AISampleRate;->SAMPLE_RATE_16K:Lcom/aispeech/AISampleRate;

    invoke-virtual {v3}, Lcom/aispeech/AISampleRate;->getValue()I

    move-result v3

    invoke-interface {v0, p1, v1, v3}, Lcom/aispeech/tts/d;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->g:Lcom/aispeech/tts/g;

    invoke-interface {v0, v1}, Lcom/aispeech/tts/d;->a(Lcom/aispeech/tts/g;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    invoke-interface {v0, v2}, Lcom/aispeech/tts/d;->a(Lcom/aispeech/a/c;)V

    invoke-direct {p0}, Lcom/aispeech/export/engines/AILocalTTSEngine;->a()V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Model file :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found !!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->n:Ljava/util/List;

    iget-object v4, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->k:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->k:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->l:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->l:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->l:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    sget-object v3, Lcom/aispeech/export/engines/AILocalTTSEngine;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dict db :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found !!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->n:Ljava/util/List;

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->l:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/aispeech/common/Util;->getResourceDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->i:Lcom/aispeech/b/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    invoke-virtual {v3}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/b/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->i:Lcom/aispeech/b/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    invoke-virtual {v3}, Lcom/aispeech/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aispeech/b/g;->c(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->e:Lcom/aispeech/tts/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->e:Lcom/aispeech/tts/e;

    invoke-virtual {v0}, Lcom/aispeech/tts/e;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    invoke-interface {v0}, Lcom/aispeech/tts/d;->d()V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->e:Lcom/aispeech/tts/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->e:Lcom/aispeech/tts/e;

    invoke-virtual {v0}, Lcom/aispeech/tts/e;->b()V

    :cond_0
    iget-boolean v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    invoke-interface {v0}, Lcom/aispeech/tts/d;->c()V

    :cond_1
    return-void
.end method

.method public setDBable(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->m:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDictDbName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->l:Ljava/lang/String;

    return-void
.end method

.method public setDictDbName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDictDbName : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDictDbPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->l:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->i:Lcom/aispeech/b/g;

    const-string v1, "cn.sent.syn"

    invoke-virtual {v0, v1}, Lcom/aispeech/b/g;->b(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/n;->d(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->i:Lcom/aispeech/b/g;

    const-string v1, "cn.sent.syn"

    invoke-virtual {v0, v1}, Lcom/aispeech/b/g;->b(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->i:Lcom/aispeech/b/g;

    const-string v1, "en.syn"

    invoke-virtual {v0, v1}, Lcom/aispeech/b/g;->b(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLeftMargin(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/n;->b(I)V

    return-void
.end method

.method public setLuaResName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setModelPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->k:Ljava/lang/String;

    return-void
.end method

.method public setRealBack(Z)V
    .locals 0

    return-void
.end method

.method public setResStoragePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    invoke-virtual {v0, p1}, Lcom/aispeech/a;->o(Ljava/lang/String;)V

    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->k:Ljava/lang/String;

    return-void
.end method

.method public setResource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setResource : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRightMargin(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/n;->c(I)V

    return-void
.end method

.method public setSampleRate(Lcom/aispeech/AISampleRate;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/n;->a(Lcom/aispeech/AISampleRate;)V

    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/n;->o(Ljava/lang/String;)V

    return-void
.end method

.method public setSpeechRate(F)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/n;->a(F)V

    return-void
.end method

.method public setSpeechVolume(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/n;->a(I)V

    return-void
.end method

.method public setStreamType(I)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/n;->j(I)V

    return-void
.end method

.method public setUseCahce(ZI)V
    .locals 4

    iput-boolean p1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->p:Z

    iput p2, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->q:I

    invoke-static {}, Lcom/aispeech/common/Util;->getAvailableExternalMemorySize()J

    move-result-wide v0

    const-wide/32 v2, 0x9c400

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->q:I

    if-le v1, v0, :cond_0

    iput v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->q:I

    :cond_0
    sget-object v1, Lcom/aispeech/export/engines/AILocalTTSEngine;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current available size is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , set: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseIndividualThread(Z)V
    .locals 0

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/n;->s(Ljava/lang/String;)V

    return-void
.end method

.method public setupVolume(FF)V
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    invoke-interface {v0, p1, p2}, Lcom/aispeech/tts/d;->a(FF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->e:Lcom/aispeech/tts/e;

    invoke-virtual {v0, p1, p2}, Lcom/aispeech/tts/e;->a(FF)V

    goto :goto_0
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "speak refText : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v0, p1}, Lcom/aispeech/c/n;->e(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v3}, Lcom/aispeech/c/n;->g()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v3}, Lcom/aispeech/c/n;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v3}, Lcom/aispeech/c/n;->h()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->r:Lorg/apache/commons/collections4/map/LRUMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->r:Lorg/apache/commons/collections4/map/LRUMap;

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/map/LRUMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->r:Lorg/apache/commons/collections4/map/LRUMap;

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/map/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x2c

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v1}, Lcom/aispeech/c/n;->x()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/aispeech/tts/d;->a(I)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->g:Lcom/aispeech/tts/g;

    invoke-virtual {v0}, Lcom/aispeech/tts/g;->b()V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->g:Lcom/aispeech/tts/g;

    new-instance v1, Lcom/aispeech/tts/i;

    invoke-direct {v1, p1, v4}, Lcom/aispeech/tts/i;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/aispeech/tts/g;->a(Lcom/aispeech/tts/f;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->g:Lcom/aispeech/tts/g;

    new-instance v1, Lcom/aispeech/tts/i;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/aispeech/tts/i;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/aispeech/tts/g;->a(Lcom/aispeech/tts/f;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/aispeech/tts/d;->a(Z)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    invoke-interface {v0}, Lcom/aispeech/tts/d;->a()J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->d:Z

    sget-object v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "use cache file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->r:Lorg/apache/commons/collections4/map/LRUMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/LRUMap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cache is full , cache size is :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->r:Lorg/apache/commons/collections4/map/LRUMap;

    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/LRUMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cache max size is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->r:Lorg/apache/commons/collections4/map/LRUMap;

    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/LRUMap;->maxSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->r:Lorg/apache/commons/collections4/map/LRUMap;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->r:Lorg/apache/commons/collections4/map/LRUMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/LRUMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/LRUMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    sget-object v0, Lcom/aispeech/export/engines/AILocalTTSEngine;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "delete cache file: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, ""

    invoke-static {v3, v0}, Lcom/aispeech/common/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->h:Lcom/aispeech/a;

    invoke-virtual {v2}, Lcom/aispeech/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ttsCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aispeech/export/engines/AILocalTTSEngine;->setSavePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->r:Lorg/apache/commons/collections4/map/LRUMap;

    invoke-virtual {v1, v3, v0}, Lorg/apache/commons/collections4/map/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->e:Lcom/aispeech/tts/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->e:Lcom/aispeech/tts/e;

    iget-object v1, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->j:Lcom/aispeech/c/n;

    invoke-virtual {v0, v1}, Lcom/aispeech/tts/e;->a(Lcom/aispeech/tts/k;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->d:Z

    :cond_3
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v0, v2

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->e:Lcom/aispeech/tts/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->e:Lcom/aispeech/tts/e;

    invoke-virtual {v0}, Lcom/aispeech/tts/e;->c()V

    :cond_0
    iget-boolean v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/export/engines/AILocalTTSEngine;->f:Lcom/aispeech/tts/d;

    invoke-interface {v0}, Lcom/aispeech/tts/d;->b()V

    :cond_1
    return-void
.end method
