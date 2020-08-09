.class public Lorg/jsoup/examples/HtmlToPlainText;
.super Ljava/lang/Object;
.source "HtmlToPlainText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;
    }
.end annotation


# static fields
.field private static final timeout:I = 0x1388

.field private static final userAgent:Ljava/lang/String; = "Mozilla/5.0 (jsoup)"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    array-length v7, p0

    if-eq v7, v9, :cond_0

    array-length v7, p0

    if-ne v7, v11, :cond_1

    :cond_0
    move v7, v9

    :goto_0
    const-string v10, "usage: java -cp jsoup.jar org.jsoup.examples.HtmlToPlainText url [selector]"

    invoke-static {v7, v10}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    aget-object v6, p0, v8

    array-length v7, p0

    if-ne v7, v11, :cond_2

    aget-object v5, p0, v9

    :goto_1
    invoke-static {v6}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v7

    const-string v8, "Mozilla/5.0 (jsoup)"

    invoke-interface {v7, v8}, Lorg/jsoup/Connection;->userAgent(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v7

    const/16 v8, 0x1388

    invoke-interface {v7, v8}, Lorg/jsoup/Connection;->timeout(I)Lorg/jsoup/Connection;

    move-result-object v7

    invoke-interface {v7}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object v0

    new-instance v3, Lorg/jsoup/examples/HtmlToPlainText;

    invoke-direct {v3}, Lorg/jsoup/examples/HtmlToPlainText;-><init>()V

    if-eqz v5, :cond_3

    invoke-virtual {v0, v5}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v3, v1}, Lorg/jsoup/examples/HtmlToPlainText;->getPlainText(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move v7, v8

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v0}, Lorg/jsoup/examples/HtmlToPlainText;->getPlainText(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getPlainText(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;-><init>(Lorg/jsoup/examples/HtmlToPlainText;Lorg/jsoup/examples/HtmlToPlainText$1;)V

    new-instance v1, Lorg/jsoup/select/NodeTraversor;

    invoke-direct {v1, v0}, Lorg/jsoup/select/NodeTraversor;-><init>(Lorg/jsoup/select/NodeVisitor;)V

    invoke-virtual {v1, p1}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/nodes/Node;)V

    invoke-virtual {v0}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
