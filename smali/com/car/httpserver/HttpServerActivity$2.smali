.class Lcom/car/httpserver/HttpServerActivity$2;
.super Ljava/lang/Thread;
.source "HttpServerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/httpserver/HttpServerActivity;->updateIOSQRcodeImage()V
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

    iput-object p1, p0, Lcom/car/httpserver/HttpServerActivity$2;->this$0:Lcom/car/httpserver/HttpServerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x96

    const-string v1, "https://geo.itunes.apple.com/cn/app/che-che-zhu-shou/id1038385960?mt=8"

    invoke-static {v1, v2, v2}, Lcom/car/httpserver/QRBitmapGenerator;->createQREncodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/car/httpserver/HttpServerActivity$2;->this$0:Lcom/car/httpserver/HttpServerActivity;

    invoke-static {v1}, Lcom/car/httpserver/HttpServerActivity;->access$100(Lcom/car/httpserver/HttpServerActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/car/httpserver/HttpServerActivity$2$1;

    invoke-direct {v2, p0}, Lcom/car/httpserver/HttpServerActivity$2$1;-><init>(Lcom/car/httpserver/HttpServerActivity$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
