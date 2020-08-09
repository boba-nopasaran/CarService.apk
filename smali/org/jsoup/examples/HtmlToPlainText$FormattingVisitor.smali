.class Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;
.super Ljava/lang/Object;
.source "HtmlToPlainText.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/examples/HtmlToPlainText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormattingVisitor"
.end annotation


# static fields
.field private static final maxWidth:I = 0x50


# instance fields
.field private accum:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lorg/jsoup/examples/HtmlToPlainText;

.field private width:I


# direct methods
.method private constructor <init>(Lorg/jsoup/examples/HtmlToPlainText;)V
    .locals 1

    iput-object p1, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->this$0:Lorg/jsoup/examples/HtmlToPlainText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/examples/HtmlToPlainText;Lorg/jsoup/examples/HtmlToPlainText$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;-><init>(Lorg/jsoup/examples/HtmlToPlainText;)V

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 10

    const/16 v9, 0x50

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "\n"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput v5, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    :cond_0
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, " "

    aput-object v8, v7, v5

    const-string v8, "\n"

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    add-int/2addr v6, v7

    if-le v6, v9, :cond_6

    const-string v6, "\\s+"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_1

    aget-object v2, v3, v0

    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_4

    move v1, v4

    :goto_2
    if-nez v1, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    add-int/2addr v6, v7

    if-le v6, v9, :cond_5

    iget-object v6, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    iput v6, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    goto :goto_0
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 4

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {p1}, Lorg/jsoup/nodes/TextNode;->text()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "li"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\n * "

    invoke-direct {p0, v1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "dt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "  "

    invoke-direct {p0, v1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "p"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "h1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "h2"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "h3"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "h4"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "h5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "tr"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\n"

    invoke-direct {p0, v1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "br"

    aput-object v2, v1, v4

    const-string v2, "dd"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "dt"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "p"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "h1"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "h2"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "h3"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "h4"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "h5"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\n"

    invoke-direct {p0, v1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " <%s>"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "href"

    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
