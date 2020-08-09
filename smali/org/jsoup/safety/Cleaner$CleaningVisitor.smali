.class final Lorg/jsoup/safety/Cleaner$CleaningVisitor;
.super Ljava/lang/Object;
.source "Cleaner.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/safety/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CleaningVisitor"
.end annotation


# instance fields
.field private destination:Lorg/jsoup/nodes/Element;

.field private numDiscarded:I

.field private final root:Lorg/jsoup/nodes/Element;

.field final synthetic this$0:Lorg/jsoup/safety/Cleaner;


# direct methods
.method private constructor <init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 1

    iput-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    iput-object p2, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->root:Lorg/jsoup/nodes/Element;

    iput-object p3, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;Lorg/jsoup/safety/Cleaner$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/safety/Cleaner$CleaningVisitor;-><init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    return-void
.end method

.method static synthetic access$300(Lorg/jsoup/safety/Cleaner$CleaningVisitor;)I
    .locals 1

    iget v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    return v0
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 9

    instance-of v7, p1, Lorg/jsoup/nodes/Element;

    if-eqz v7, :cond_2

    move-object v5, p1

    check-cast v5, Lorg/jsoup/nodes/Element;

    iget-object v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    invoke-static {v7}, Lorg/jsoup/safety/Cleaner;->access$000(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Whitelist;

    move-result-object v7

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jsoup/safety/Whitelist;->isSafeTag(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    invoke-static {v7, v5}, Lorg/jsoup/safety/Cleaner;->access$100(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;)Lorg/jsoup/safety/Cleaner$ElementMeta;

    move-result-object v3

    iget-object v0, v3, Lorg/jsoup/safety/Cleaner$ElementMeta;->el:Lorg/jsoup/nodes/Element;

    iget-object v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    invoke-virtual {v7, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    iget v8, v3, Lorg/jsoup/safety/Cleaner$ElementMeta;->numAttribsDiscarded:I

    add-int/2addr v7, v8

    iput v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    iput-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->root:Lorg/jsoup/nodes/Element;

    if-eq p1, v7, :cond_0

    iget v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    goto :goto_0

    :cond_2
    instance-of v7, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz v7, :cond_3

    move-object v6, p1

    check-cast v6, Lorg/jsoup/nodes/TextNode;

    new-instance v2, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v6}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    invoke-virtual {v7, v2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_3
    instance-of v7, p1, Lorg/jsoup/nodes/DataNode;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    invoke-static {v7}, Lorg/jsoup/safety/Cleaner;->access$000(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Whitelist;

    move-result-object v7

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jsoup/safety/Whitelist;->isSafeTag(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v4, p1

    check-cast v4, Lorg/jsoup/nodes/DataNode;

    new-instance v1, Lorg/jsoup/nodes/DataNode;

    invoke-virtual {v4}, Lorg/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lorg/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    invoke-virtual {v7, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_4
    iget v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    goto :goto_0
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 2

    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    invoke-static {v0}, Lorg/jsoup/safety/Cleaner;->access$000(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Whitelist;->isSafeTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    :cond_0
    return-void
.end method
