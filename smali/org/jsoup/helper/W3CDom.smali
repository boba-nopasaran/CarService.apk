.class public Lorg/jsoup/helper/W3CDom;
.super Ljava/lang/Object;
.source "W3CDom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/W3CDom$W3CBuilder;
    }
.end annotation


# instance fields
.field protected factory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/W3CDom;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method


# virtual methods
.method public asString(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 7

    :try_start_0
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, v5}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public convert(Lorg/jsoup/nodes/Document;Lorg/w3c/dom/Document;)V
    .locals 3

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->location()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/helper/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->location()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/w3c/dom/Document;->setDocumentURI(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/jsoup/nodes/Document;->child(I)Lorg/jsoup/nodes/Element;

    move-result-object v0

    new-instance v1, Lorg/jsoup/select/NodeTraversor;

    new-instance v2, Lorg/jsoup/helper/W3CDom$W3CBuilder;

    invoke-direct {v2, p0, p2}, Lorg/jsoup/helper/W3CDom$W3CBuilder;-><init>(Lorg/jsoup/helper/W3CDom;Lorg/w3c/dom/Document;)V

    invoke-direct {v1, v2}, Lorg/jsoup/select/NodeTraversor;-><init>(Lorg/jsoup/select/NodeVisitor;)V

    invoke-virtual {v1, v0}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method public fromJsoup(Lorg/jsoup/nodes/Document;)Lorg/w3c/dom/Document;
    .locals 4

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    :try_start_0
    iget-object v3, p0, Lorg/jsoup/helper/W3CDom;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/jsoup/helper/W3CDom;->convert(Lorg/jsoup/nodes/Document;Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
