.class final Lcom/car/httpserver/CarHttpServer$1;
.super Ljava/util/HashMap;
.source "CarHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/CarHttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "css"

    const-string v1, "text/css"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "htm"

    const-string v1, "text/html"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "html"

    const-string v1, "text/html"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "xml"

    const-string v1, "text/xml"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "java"

    const-string v1, "text/x-java-source, text/java"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "md"

    const-string v1, "text/plain"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "txt"

    const-string v1, "text/plain"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "asc"

    const-string v1, "text/plain"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gif"

    const-string v1, "image/gif"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "jpg"

    const-string v1, "image/jpeg"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "jpeg"

    const-string v1, "image/jpeg"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "png"

    const-string v1, "image/png"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mp3"

    const-string v1, "audio/mpeg"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "m3u"

    const-string v1, "audio/mpeg-url"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mp4"

    const-string v1, "video/mp4"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ogv"

    const-string v1, "video/ogg"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ts"

    const-string v1, "video/ts"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "flv"

    const-string v1, "video/x-flv"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mov"

    const-string v1, "video/quicktime"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "swf"

    const-string v1, "application/x-shockwave-flash"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "js"

    const-string v1, "application/javascript"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pdf"

    const-string v1, "application/pdf"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "doc"

    const-string v1, "application/msword"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ogg"

    const-string v1, "application/x-ogg"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "zip"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "exe"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "class"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lcom/car/httpserver/CarHttpServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
