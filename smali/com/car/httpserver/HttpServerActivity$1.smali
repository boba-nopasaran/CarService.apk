.class Lcom/car/httpserver/HttpServerActivity$1;
.super Ljava/lang/Thread;
.source "HttpServerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/httpserver/HttpServerActivity;->updateAndroidQRcodeImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/httpserver/HttpServerActivity;


# direct methods
.method constructor <init>(Lcom/car/httpserver/HttpServerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/HttpServerActivity$1;->this$0:Lcom/car/httpserver/HttpServerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x96

    const-string v0, "http://web.carassist.cn/download.html"

    iget-object v1, p0, Lcom/car/httpserver/HttpServerActivity$1;->this$0:Lcom/car/httpserver/HttpServerActivity;

    invoke-static {v0, v2, v2}, Lcom/car/httpserver/QRBitmapGenerator;->createQREncodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/car/httpserver/HttpServerActivity;->mAndroidBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/car/httpserver/HttpServerActivity$1;->this$0:Lcom/car/httpserver/HttpServerActivity;

    invoke-static {v1}, Lcom/car/httpserver/HttpServerActivity;->access$100(Lcom/car/httpserver/HttpServerActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/car/httpserver/HttpServerActivity$1$1;

    invoke-direct {v2, p0}, Lcom/car/httpserver/HttpServerActivity$1$1;-><init>(Lcom/car/httpserver/HttpServerActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
