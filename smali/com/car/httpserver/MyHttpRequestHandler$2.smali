.class Lcom/car/httpserver/MyHttpRequestHandler$2;
.super Ljava/lang/Object;
.source "MyHttpRequestHandler.java"

# interfaces
.implements Lorg/apache/http/entity/ContentProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/httpserver/MyHttpRequestHandler;->getEntityFromUri(Ljava/lang/String;Lorg/apache/http/HttpResponse;Z)Lorg/apache/http/HttpEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/httpserver/MyHttpRequestHandler;


# direct methods
.method constructor <init>(Lcom/car/httpserver/MyHttpRequestHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/MyHttpRequestHandler$2;->this$0:Lcom/car/httpserver/MyHttpRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "<html><head><title>ERROR : NOT FOUND</title></head><body><center><h1>FILE NOT FOUND !</h1></center></p></body></html>"

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method
