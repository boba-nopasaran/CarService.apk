.class Lcom/car/httpserver/MyHttpRequestHandler$1;
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

.field final synthetic val$isFromWeiXin:Z


# direct methods
.method constructor <init>(Lcom/car/httpserver/MyHttpRequestHandler;Z)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/MyHttpRequestHandler$1;->this$0:Lcom/car/httpserver/MyHttpRequestHandler;

    iput-boolean p2, p0, Lcom/car/httpserver/MyHttpRequestHandler$1;->val$isFromWeiXin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v6, 0x7f09000f

    const v5, 0x7f09000e

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/car/httpserver/MyHttpRequestHandler$1;->val$isFromWeiXin:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<html><style type=\"text/css\">.box {margin-left: auto;margin-right: auto;width: 800px; padding: 5px; background-color: #d6d6d6; color:white;font-weight:bold;}.btnclass {background-color:#77d42a;color:#ffffff;font-family:Arial;font-size:65px;font-weight:normal;padding:17px 28px;text-decoration:none;}form {border:7px solid lightgrey; padding: 2px; background-color: silver;text-align:center;}h1 {padding:2px; color:white; font-weight:bold; font-family:Arial; font-size:60px; text-align:center;}</style><head><title>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/httpserver/MyHttpRequestHandler$1;->this$0:Lcom/car/httpserver/MyHttpRequestHandler;

    invoke-static {v4}, Lcom/car/httpserver/MyHttpRequestHandler;->access$000(Lcom/car/httpserver/MyHttpRequestHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</title></head>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<body>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br><br><br><br><br><br><br><br><br><br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<div class=\"box\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<h1>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/httpserver/MyHttpRequestHandler$1;->this$0:Lcom/car/httpserver/MyHttpRequestHandler;

    invoke-static {v4}, Lcom/car/httpserver/MyHttpRequestHandler;->access$000(Lcom/car/httpserver/MyHttpRequestHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/httpserver/MyHttpRequestHandler$1;->this$0:Lcom/car/httpserver/MyHttpRequestHandler;

    invoke-static {v4}, Lcom/car/httpserver/MyHttpRequestHandler;->access$000(Lcom/car/httpserver/MyHttpRequestHandler;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090011

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</h1>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<p style=\"text-align:center;\"><input class=\"btnclass\" type=\"button\" value=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/httpserver/MyHttpRequestHandler$1;->this$0:Lcom/car/httpserver/MyHttpRequestHandler;

    invoke-static {v4}, Lcom/car/httpserver/MyHttpRequestHandler;->access$000(Lcom/car/httpserver/MyHttpRequestHandler;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090010

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" onClick=\"window.location.href=\'/CarAssist.apk\'\"/></p><br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</div>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</body>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</html>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<html><style type=\"text/css\">.box {margin-left: auto;margin-right: auto;width: 800px; padding: 5px; background-color: #d6d6d6; color:white;font-weight:bold;}.btnclass {background-color:#77d42a;color:#ffffff;font-family:Arial;font-size:65px;font-weight:normal;padding:17px 28px;text-decoration:none;}form {border:7px solid lightgrey; padding: 2px; background-color: silver;text-align:center;}h1 {padding:2px; color:white; font-weight:bold; font-family:Arial; font-size:60px; text-align:center;}</style><head><title>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/httpserver/MyHttpRequestHandler$1;->this$0:Lcom/car/httpserver/MyHttpRequestHandler;

    invoke-static {v4}, Lcom/car/httpserver/MyHttpRequestHandler;->access$000(Lcom/car/httpserver/MyHttpRequestHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</title></head>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<body>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br><br><br><br><br><br><br><br><br><br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<div class=\"box\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<h1>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/httpserver/MyHttpRequestHandler$1;->this$0:Lcom/car/httpserver/MyHttpRequestHandler;

    invoke-static {v4}, Lcom/car/httpserver/MyHttpRequestHandler;->access$000(Lcom/car/httpserver/MyHttpRequestHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</h1>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
