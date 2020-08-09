.class public Lorg/jsoup/safety/Cleaner;
.super Ljava/lang/Object;
.source "Cleaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/safety/Cleaner$ElementMeta;,
        Lorg/jsoup/safety/Cleaner$CleaningVisitor;
    }
.end annotation


# instance fields
.field private whitelist:Lorg/jsoup/safety/Whitelist;


# direct methods
.method public constructor <init>(Lorg/jsoup/safety/Whitelist;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/jsoup/safety/Cleaner;->whitelist:Lorg/jsoup/safety/Whitelist;

    return-void
.end method

.method static synthetic access$000(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Whitelist;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/safety/Cleaner;->whitelist:Lorg/jsoup/safety/Whitelist;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;)Lorg/jsoup/safety/Cleaner$ElementMeta;
    .locals 1

    invoke-direct {p0, p1}, Lorg/jsoup/safety/Cleaner;->createSafeElement(Lorg/jsoup/nodes/Element;)Lorg/jsoup/safety/Cleaner$ElementMeta;

    move-result-object v0

    return-object v0
.end method

.method private copySafeNodes(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
    .locals 3

    new-instance v0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lorg/jsoup/safety/Cleaner$CleaningVisitor;-><init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;Lorg/jsoup/safety/Cleaner$1;)V

    new-instance v1, Lorg/jsoup/select/NodeTraversor;

    invoke-direct {v1, v0}, Lorg/jsoup/select/NodeTraversor;-><init>(Lorg/jsoup/select/NodeVisitor;)V

    invoke-virtual {v1, p1}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/nodes/Node;)V

    invoke-static {v0}, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->access$300(Lorg/jsoup/safety/Cleaner$CleaningVisitor;)I

    move-result v2

    return v2
.end method

.method private createSafeElement(Lorg/jsoup/nodes/Element;)Lorg/jsoup/safety/Cleaner$ElementMeta;
    .locals 9

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v1}, Lorg/jsoup/nodes/Attributes;-><init>()V

    new-instance v0, Lorg/jsoup/nodes/Element;

    invoke-static {v6}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v7

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8, v1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Attribute;

    iget-object v8, p0, Lorg/jsoup/safety/Cleaner;->whitelist:Lorg/jsoup/safety/Whitelist;

    invoke-virtual {v8, v6, p1, v4}, Lorg/jsoup/safety/Whitelist;->isSafeAttribute(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lorg/jsoup/safety/Cleaner;->whitelist:Lorg/jsoup/safety/Whitelist;

    invoke-virtual {v7, v6}, Lorg/jsoup/safety/Whitelist;->getEnforcedAttributes(Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    new-instance v7, Lorg/jsoup/safety/Cleaner$ElementMeta;

    invoke-direct {v7, v0, v3}, Lorg/jsoup/safety/Cleaner$ElementMeta;-><init>(Lorg/jsoup/nodes/Element;I)V

    return-object v7
.end method


# virtual methods
.method public clean(Lorg/jsoup/nodes/Document;)Lorg/jsoup/nodes/Document;
    .locals 3

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/jsoup/safety/Cleaner;->copySafeNodes(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I

    :cond_0
    return-object v0
.end method

.method public isValid(Lorg/jsoup/nodes/Document;)Z
    .locals 4

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->baseUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/jsoup/safety/Cleaner;->copySafeNodes(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
