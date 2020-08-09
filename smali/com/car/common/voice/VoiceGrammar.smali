.class public Lcom/car/common/voice/VoiceGrammar;
.super Ljava/lang/Object;
.source "VoiceGrammar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/common/voice/VoiceGrammar$Grammar;,
        Lcom/car/common/voice/VoiceGrammar$Token;
    }
.end annotation


# static fields
.field private static final SystemGrammarFile:Ljava/lang/String; = "/system/etc/VoiceGrammar.conf"

.field private static final TAG:Ljava/lang/String; = "CarSvc_VoiceGrammar"

.field private static final mGrammarList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/common/voice/VoiceGrammar$Grammar;",
            ">;"
        }
    .end annotation
.end field

.field public static sMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/car/common/voice/VoiceHelp$MyHelp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/car/common/voice/VoiceGrammar;->sMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/car/common/voice/VoiceGrammar;->mGrammarList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createGrammar(Ljava/lang/String;)Lcom/car/common/voice/VoiceGrammar$Grammar;
    .locals 10

    const/4 v9, 0x0

    new-instance v0, Lcom/car/common/voice/VoiceGrammar$Grammar;

    invoke-direct {v0}, Lcom/car/common/voice/VoiceGrammar$Grammar;-><init>()V

    const/16 v6, 0x3a

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/car/common/voice/VoiceGrammar$Grammar;->action:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    const/16 v6, 0x7b

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/car/common/voice/VoiceGrammar$Grammar;->tokens:Ljava/util/ArrayList;

    new-instance v7, Lcom/car/common/voice/VoiceGrammar$Token;

    invoke-direct {v7, v5, v9}, Lcom/car/common/voice/VoiceGrammar$Token;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Lcom/car/common/voice/VoiceGrammar$Grammar;->tokens:Ljava/util/ArrayList;

    new-instance v7, Lcom/car/common/voice/VoiceGrammar$Token;

    invoke-direct {v7, v5, v9}, Lcom/car/common/voice/VoiceGrammar$Token;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v2, 0x1

    const/16 v6, 0x7d

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/car/common/voice/VoiceGrammar$Grammar;->tokens:Ljava/util/ArrayList;

    new-instance v7, Lcom/car/common/voice/VoiceGrammar$Token;

    const/4 v8, 0x1

    invoke-direct {v7, v5, v8}, Lcom/car/common/voice/VoiceGrammar$Token;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v3, 0x1

    goto :goto_0
.end method

.method private static findMatchGrammar(Ljava/lang/String;)Lcom/car/common/voice/VoiceGrammar$Grammar;
    .locals 11

    sget-object v9, Lcom/car/common/voice/VoiceGrammar;->mGrammarList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/common/voice/VoiceGrammar$Grammar;

    iget-object v9, v1, Lcom/car/common/voice/VoiceGrammar$Grammar;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v9, v1, Lcom/car/common/voice/VoiceGrammar$Grammar;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/common/voice/VoiceGrammar$Token;

    iget-boolean v9, v8, Lcom/car/common/voice/VoiceGrammar$Token;->placehold:Z

    if-nez v9, :cond_5

    if-nez v6, :cond_3

    iget-object v9, v8, Lcom/car/common/voice/VoiceGrammar$Token;->name:Ljava/lang/String;

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v4, 0x0

    :cond_1
    :goto_1
    if-eqz v4, :cond_0

    :goto_2
    return-object v1

    :cond_2
    iget-object v9, v8, Lcom/car/common/voice/VoiceGrammar$Token;->name:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, v8, Lcom/car/common/voice/VoiceGrammar$Token;->name:Ljava/lang/String;

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v7, v9

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v9, v8, Lcom/car/common/voice/VoiceGrammar$Token;->name:Ljava/lang/String;

    invoke-virtual {p0, v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/car/common/voice/VoiceGrammar$Token;->value:Ljava/lang/String;

    const/4 v6, 0x0

    add-int/lit8 v7, v5, 0x1

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_6

    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    add-int/lit8 v9, v0, -0x1

    if-ne v2, v9, :cond_7

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/car/common/voice/VoiceGrammar$Token;->value:Ljava/lang/String;

    goto :goto_1

    :cond_7
    move-object v6, v8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private static loadGrammarFile(Ljava/io/InputStreamReader;)V
    .locals 14

    const/4 v12, 0x2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v9, 0x0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v12, :cond_5

    :cond_1
    const-string v10, "##"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v12, :cond_0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    array-length v10, v5

    if-ne v10, v12, :cond_4

    new-instance v8, Lcom/car/common/voice/VoiceHelp$MyHelp;

    const/4 v10, 0x1

    aget-object v10, v5, v10

    const/4 v11, 0x0

    invoke-direct {v8, v10, v11}, Lcom/car/common/voice/VoiceHelp$MyHelp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v8, :cond_0

    sget-object v10, Lcom/car/common/voice/VoiceGrammar;->sMap:Ljava/util/HashMap;

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v1

    :goto_2
    :try_start_2
    const-string v10, "CarSvc_VoiceGrammar"

    const-string v11, "loadGrammarFile error"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    const-string v10, "CarSvc_VoiceGrammar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GrammarList size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/car/common/voice/VoiceGrammar;->mGrammarList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    :cond_4
    :try_start_4
    array-length v10, v5

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    new-instance v8, Lcom/car/common/voice/VoiceHelp$MyHelp;

    const/4 v10, 0x1

    aget-object v10, v5, v10

    const/4 v11, 0x2

    aget-object v11, v5, v11

    invoke-direct {v8, v10, v11}, Lcom/car/common/voice/VoiceHelp$MyHelp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v10, v7

    if-ne v10, v12, :cond_8

    sget-object v10, Lcom/car/common/voice/VoiceGrammar;->sMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Lcom/car/common/voice/VoiceGrammar;->sMap:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/common/voice/VoiceHelp$MyHelp;

    if-eqz v8, :cond_6

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v8, v10}, Lcom/car/common/voice/VoiceHelp$MyHelp;->addItems(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v10

    move-object v0, v1

    :goto_6
    if-eqz v0, :cond_7

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_7
    const-string v11, "CarSvc_VoiceGrammar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "GrammarList size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/car/common/voice/VoiceGrammar;->mGrammarList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v10

    :cond_8
    :try_start_6
    invoke-static {v9}, Lcom/car/common/voice/VoiceGrammar;->createGrammar(Ljava/lang/String;)Lcom/car/common/voice/VoiceGrammar$Grammar;

    move-result-object v3

    sget-object v10, Lcom/car/common/voice/VoiceGrammar;->mGrammarList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_9
    if-eqz v1, :cond_a

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_a
    :goto_8
    const-string v10, "CarSvc_VoiceGrammar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GrammarList size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/car/common/voice/VoiceGrammar;->mGrammarList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_4

    :catch_1
    move-exception v10

    goto :goto_8

    :catch_2
    move-exception v10

    goto/16 :goto_3

    :catch_3
    move-exception v11

    goto :goto_7

    :catchall_1
    move-exception v10

    goto :goto_6

    :catch_4
    move-exception v2

    goto/16 :goto_2
.end method

.method public static loadGrammer(Landroid/content/Context;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    const-string v8, "/system/etc/VoiceGrammar.conf"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v3, v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/car/common/voice/VoiceGrammar;->loadGrammarFile(Ljava/io/InputStreamReader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    const/4 v4, 0x0

    :try_start_3
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "VoiceGrammar.conf"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v5}, Lcom/car/common/voice/VoiceGrammar;->loadGrammarFile(Ljava/io/InputStreamReader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_1

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v7

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    :try_start_6
    const-string v7, "CarSvc_VoiceGrammar"

    const-string v8, "loadGrammarFile error"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    :catch_2
    move-exception v7

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_2
    :goto_4
    throw v7

    :catch_3
    move-exception v0

    :goto_5
    :try_start_9
    const-string v7, "CarSvc_VoiceGrammar"

    const-string v8, "loadGrammarFile error"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v4, :cond_1

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_1

    :catch_4
    move-exception v7

    goto :goto_1

    :catchall_1
    move-exception v7

    :goto_6
    if-eqz v4, :cond_3

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_3
    :goto_7
    throw v7

    :catch_5
    move-exception v8

    goto :goto_4

    :catch_6
    move-exception v7

    goto :goto_1

    :catch_7
    move-exception v8

    goto :goto_7

    :catchall_2
    move-exception v7

    move-object v4, v5

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v4, v5

    goto :goto_5

    :catchall_3
    move-exception v7

    move-object v1, v2

    goto :goto_3

    :catch_9
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_0
.end method

.method public static parseSpeech(Ljava/lang/String;)Lcom/car/common/voice/VoiceGrammar$Grammar;
    .locals 1

    invoke-static {p0}, Lcom/car/common/voice/VoiceGrammar;->findMatchGrammar(Ljava/lang/String;)Lcom/car/common/voice/VoiceGrammar$Grammar;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    return-object v0
.end method
