.class public Lcom/car/httpserver/NanoHTTPD$CookieHandler;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CookieHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final cookies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/httpserver/NanoHTTPD$Cookie;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/car/httpserver/NanoHTTPD;


# direct methods
.method public constructor <init>(Lcom/car/httpserver/NanoHTTPD;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD$CookieHandler;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/car/httpserver/NanoHTTPD$CookieHandler;->cookies:Ljava/util/HashMap;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/car/httpserver/NanoHTTPD$CookieHandler;->queue:Ljava/util/ArrayList;

    const-string v7, "cookie"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/car/httpserver/NanoHTTPD$CookieHandler;->cookies:Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v8, v1, v8

    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2

    const-string v0, "-delete-"

    const/16 v1, -0x1e

    invoke-virtual {p0, p1, v0, v1}, Lcom/car/httpserver/NanoHTTPD$CookieHandler;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$CookieHandler;->cookies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$CookieHandler;->cookies:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public set(Lcom/car/httpserver/NanoHTTPD$Cookie;)V
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$CookieHandler;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$CookieHandler;->queue:Ljava/util/ArrayList;

    new-instance v1, Lcom/car/httpserver/NanoHTTPD$Cookie;

    invoke-static {p3}, Lcom/car/httpserver/NanoHTTPD$Cookie;->getHTTPTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/car/httpserver/NanoHTTPD$Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unloadQueue(Lcom/car/httpserver/NanoHTTPD$Response;)V
    .locals 4

    iget-object v2, p0, Lcom/car/httpserver/NanoHTTPD$CookieHandler;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/httpserver/NanoHTTPD$Cookie;

    const-string v2, "Set-Cookie"

    invoke-virtual {v0}, Lcom/car/httpserver/NanoHTTPD$Cookie;->getHTTPHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/car/httpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
