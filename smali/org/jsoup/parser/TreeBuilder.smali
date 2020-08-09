.class abstract Lorg/jsoup/parser/TreeBuilder;
.super Ljava/lang/Object;
.source "TreeBuilder.java"


# instance fields
.field protected baseUri:Ljava/lang/String;

.field protected currentToken:Lorg/jsoup/parser/Token;

.field protected doc:Lorg/jsoup/nodes/Document;

.field private end:Lorg/jsoup/parser/Token$EndTag;

.field protected errors:Lorg/jsoup/parser/ParseErrorList;

.field reader:Lorg/jsoup/parser/CharacterReader;

.field protected stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation
.end field

.field private start:Lorg/jsoup/parser/Token$StartTag;

.field tokeniser:Lorg/jsoup/parser/Tokeniser;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$StartTag;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->start:Lorg/jsoup/parser/Token$StartTag;

    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$EndTag;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->end:Lorg/jsoup/parser/Token$EndTag;

    return-void
.end method


# virtual methods
.method protected currentElement()Lorg/jsoup/nodes/Element;
    .locals 3

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected initialiseParse(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)V
    .locals 2

    const-string v0, "String input must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BaseURI must not be null"

    invoke-static {p2, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-direct {v0, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    new-instance v0, Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    iput-object p3, p0, Lorg/jsoup/parser/TreeBuilder;->errors:Lorg/jsoup/parser/ParseErrorList;

    new-instance v0, Lorg/jsoup/parser/Tokeniser;

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v0, v1, p3}, Lorg/jsoup/parser/Tokeniser;-><init>(Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/ParseErrorList;)V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    return-void
.end method

.method parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jsoup/parser/TreeBuilder;->parse(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method parse(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Lorg/jsoup/nodes/Document;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)V

    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->runParser()V

    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    return-object v0
.end method

.method protected abstract process(Lorg/jsoup/parser/Token;)Z
.end method

.method protected processEndTag(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->end:Lorg/jsoup/parser/Token$EndTag;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$EndTag;-><init>()V

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$EndTag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->end:Lorg/jsoup/parser/Token$EndTag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$EndTag;->reset()Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v0

    goto :goto_0
.end method

.method protected processStartTag(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->start:Lorg/jsoup/parser/Token$StartTag;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$StartTag;-><init>()V

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$StartTag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->start:Lorg/jsoup/parser/Token$StartTag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$StartTag;->reset()Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v0

    goto :goto_0
.end method

.method public processStartTag(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->start:Lorg/jsoup/parser/Token$StartTag;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$StartTag;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/Token$StartTag;->nameAttr(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Lorg/jsoup/parser/Token$StartTag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->start:Lorg/jsoup/parser/Token$StartTag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$StartTag;->reset()Lorg/jsoup/parser/Token$Tag;

    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->start:Lorg/jsoup/parser/Token$StartTag;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/Token$StartTag;->nameAttr(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Lorg/jsoup/parser/Token$StartTag;

    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->start:Lorg/jsoup/parser/Token$StartTag;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v0

    goto :goto_0
.end method

.method protected runParser()V
    .locals 3

    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v1}, Lorg/jsoup/parser/Tokeniser;->read()Lorg/jsoup/parser/Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    invoke-virtual {v0}, Lorg/jsoup/parser/Token;->reset()Lorg/jsoup/parser/Token;

    iget-object v1, v0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v2, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    if-ne v1, v2, :cond_0

    return-void
.end method
