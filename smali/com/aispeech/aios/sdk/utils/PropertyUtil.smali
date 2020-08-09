.class public Lcom/aispeech/aios/sdk/utils/PropertyUtil;
.super Ljava/lang/Object;
.source "PropertyUtil.java"


# static fields
.field private static mPropertyUtil:Lcom/aispeech/aios/sdk/utils/PropertyUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDocument(Landroid/content/Context;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getInstance()Lcom/aispeech/aios/sdk/utils/PropertyUtil;
    .locals 2

    const-class v1, Lcom/aispeech/aios/sdk/utils/PropertyUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/sdk/utils/PropertyUtil;->mPropertyUtil:Lcom/aispeech/aios/sdk/utils/PropertyUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/sdk/utils/PropertyUtil;

    invoke-direct {v0}, Lcom/aispeech/aios/sdk/utils/PropertyUtil;-><init>()V

    sput-object v0, Lcom/aispeech/aios/sdk/utils/PropertyUtil;->mPropertyUtil:Lcom/aispeech/aios/sdk/utils/PropertyUtil;

    :cond_0
    sget-object v0, Lcom/aispeech/aios/sdk/utils/PropertyUtil;->mPropertyUtil:Lcom/aispeech/aios/sdk/utils/PropertyUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
