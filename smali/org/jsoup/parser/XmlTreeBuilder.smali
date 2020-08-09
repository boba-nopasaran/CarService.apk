.class public Lorg/jsoup/parser/XmlTreeBuilder;
.super Lorg/jsoup/parser/TreeBuilder;
.source "XmlTreeBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/parser/TreeBuilder;-><init>()V

    return-void
.end method

.method private insertNode(Lorg/jsoup/nodes/Node;)V
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/parser/XmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method private popStackToClose(Lorg/jsoup/parser/Token$EndTag;)V
    .locals 5

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v4, p0, Lorg/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v4, p0, Lorg/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v2

    :cond_0
    if-nez v1, :cond_3

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_1
    if-ltz v3, :cond_1

    iget-object v4, p0, Lorg/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    iget-object v4, p0, Lorg/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eq v2, v1, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected initialiseParse(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)V

    iget-object v0, p0, Lorg/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jsoup/parser/XmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/jsoup/parser/XmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    sget-object v1, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax(Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Lorg/jsoup/nodes/Document$OutputSettings;

    return-void
.end method

.method insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;
    .locals 4

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v1

    new-instance v0, Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/jsoup/parser/XmlTreeBuilder;->baseUri:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    invoke-direct {p0, v0}, Lorg/jsoup/parser/XmlTreeBuilder;->insertNode(Lorg/jsoup/nodes/Node;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->isSelfClosing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/jsoup/parser/XmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v2}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->isKnownTag()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->setSelfClosing()Lorg/jsoup/parser/Tag;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method insert(Lorg/jsoup/parser/Token$Character;)V
    .locals 3

    new-instance v0, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/parser/XmlTreeBuilder;->baseUri:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jsoup/parser/XmlTreeBuilder;->insertNode(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method insert(Lorg/jsoup/parser/Token$Comment;)V
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Lorg/jsoup/nodes/Comment;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Comment;->getData()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jsoup/parser/XmlTreeBuilder;->baseUri:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lorg/jsoup/nodes/Comment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    iget-boolean v4, p1, Lorg/jsoup/parser/Token$Comment;->bogus:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    const-string v4, "!"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "?"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/jsoup/nodes/XmlDeclaration;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Comment;->baseUri()Ljava/lang/String;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {v3, v2, v4, v5}, Lorg/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    invoke-direct {p0, v3}, Lorg/jsoup/parser/XmlTreeBuilder;->insertNode(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method insert(Lorg/jsoup/parser/Token$Doctype;)V
    .locals 5

    new-instance v0, Lorg/jsoup/nodes/DocumentType;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Doctype;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Doctype;->getPublicIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Doctype;->getSystemIdentifier()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jsoup/parser/XmlTreeBuilder;->baseUri:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jsoup/nodes/DocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jsoup/parser/XmlTreeBuilder;->insertNode(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method parseFragment(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/ParseErrorList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/parser/XmlTreeBuilder;->initialiseParse(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)V

    invoke-virtual {p0}, Lorg/jsoup/parser/XmlTreeBuilder;->runParser()V

    iget-object v0, p0, Lorg/jsoup/parser/XmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->childNodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected process(Lorg/jsoup/parser/Token;)Z
    .locals 2

    sget-object v0, Lorg/jsoup/parser/XmlTreeBuilder$1;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    iget-object v1, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/XmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/XmlTreeBuilder;->popStackToClose(Lorg/jsoup/parser/Token$EndTag;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/XmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/XmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asDoctype()Lorg/jsoup/parser/Token$Doctype;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/XmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Doctype;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic processStartTag(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/jsoup/parser/TreeBuilder;->processStartTag(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Z

    move-result v0

    return v0
.end method
