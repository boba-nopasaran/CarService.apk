.class public Lorg/jsoup/Jsoup;
.super Ljava/lang/Object;
.source "Jsoup.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clean(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/safety/Whitelist;)Ljava/lang/String;
    .locals 4

    invoke-static {p0, p1}, Lorg/jsoup/Jsoup;->parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    new-instance v1, Lorg/jsoup/safety/Cleaner;

    invoke-direct {v1, p2}, Lorg/jsoup/safety/Cleaner;-><init>(Lorg/jsoup/safety/Whitelist;)V

    invoke-virtual {v1, v2}, Lorg/jsoup/safety/Cleaner;->clean(Lorg/jsoup/nodes/Document;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static clean(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/safety/Whitelist;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;
    .locals 4

    invoke-static {p0, p1}, Lorg/jsoup/Jsoup;->parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    new-instance v1, Lorg/jsoup/safety/Cleaner;

    invoke-direct {v1, p2}, Lorg/jsoup/safety/Cleaner;-><init>(Lorg/jsoup/safety/Whitelist;)V

    invoke-virtual {v1, v2}, Lorg/jsoup/safety/Cleaner;->clean(Lorg/jsoup/nodes/Document;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/jsoup/nodes/Document;->outputSettings(Lorg/jsoup/nodes/Document$OutputSettings;)Lorg/jsoup/nodes/Document;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static clean(Ljava/lang/String;Lorg/jsoup/safety/Whitelist;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0, p1}, Lorg/jsoup/Jsoup;->clean(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/safety/Whitelist;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static connect(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1

    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static isValid(Ljava/lang/String;Lorg/jsoup/safety/Whitelist;)Z
    .locals 3

    const-string v2, ""

    invoke-static {p0, v2}, Lorg/jsoup/Jsoup;->parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    new-instance v0, Lorg/jsoup/safety/Cleaner;

    invoke-direct {v0, p1}, Lorg/jsoup/safety/Cleaner;-><init>(Lorg/jsoup/safety/Whitelist;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Cleaner;->isValid(Lorg/jsoup/nodes/Document;)Z

    move-result v2

    return v2
.end method

.method public static parse(Ljava/io/File;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/jsoup/helper/DataUtil;->load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/jsoup/helper/DataUtil;->load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/jsoup/helper/DataUtil;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lorg/jsoup/parser/Parser;->parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    invoke-static {p0, p1}, Lorg/jsoup/parser/Parser;->parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 1

    invoke-virtual {p2, p0, p1}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/net/URL;I)Lorg/jsoup/nodes/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection;->connect(Ljava/net/URL;)Lorg/jsoup/Connection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jsoup/Connection;->timeout(I)Lorg/jsoup/Connection;

    invoke-interface {v0}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object v1

    return-object v1
.end method

.method public static parseBodyFragment(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lorg/jsoup/parser/Parser;->parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    invoke-static {p0, p1}, Lorg/jsoup/parser/Parser;->parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method
