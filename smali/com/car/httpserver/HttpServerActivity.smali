.class public Lcom/car/httpserver/HttpServerActivity;
.super Landroid/app/Activity;
.source "HttpServerActivity.java"


# static fields
.field private static final APPLE_URL:Ljava/lang/String; = "https://geo.itunes.apple.com/cn/app/che-che-zhu-shou/id1038385960?mt=8"


# instance fields
.field mAndroidBitmap:Landroid/graphics/Bitmap;

.field private mAndroidImageView:Landroid/widget/ImageView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIOSImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/httpserver/HttpServerActivity;->mAndroidBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/car/httpserver/HttpServerActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/httpserver/HttpServerActivity$3;

    invoke-direct {v0, p0}, Lcom/car/httpserver/HttpServerActivity$3;-><init>(Lcom/car/httpserver/HttpServerActivity;)V

    iput-object v0, p0, Lcom/car/httpserver/HttpServerActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/car/httpserver/HttpServerActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/HttpServerActivity;->mAndroidImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/httpserver/HttpServerActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/HttpServerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/httpserver/HttpServerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/httpserver/HttpServerActivity;->updateAndroidQRcodeImage()V

    return-void
.end method

.method private getAvailableIp(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/car/httpserver/Util;->getLocalInet4AddrAndInterface()[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    aget-object v3, v2, v4

    if-eqz v3, :cond_0

    aget-object v0, v2, v4

    check-cast v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private updateAndroidQRcodeImage()V
    .locals 2

    invoke-direct {p0, p0}, Lcom/car/httpserver/HttpServerActivity;->getAvailableIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/car/httpserver/HttpServerActivity$1;

    invoke-direct {v1, p0}, Lcom/car/httpserver/HttpServerActivity$1;-><init>(Lcom/car/httpserver/HttpServerActivity;)V

    invoke-virtual {v1}, Lcom/car/httpserver/HttpServerActivity$1;->start()V

    return-void
.end method

.method private updateIOSQRcodeImage()V
    .locals 1

    new-instance v0, Lcom/car/httpserver/HttpServerActivity$2;

    invoke-direct {v0, p0}, Lcom/car/httpserver/HttpServerActivity$2;-><init>(Lcom/car/httpserver/HttpServerActivity;)V

    invoke-virtual {v0}, Lcom/car/httpserver/HttpServerActivity$2;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/car/httpserver/HttpServerActivity;->setContentView(I)V

    const v1, 0x7f0b0004

    invoke-virtual {p0, v1}, Lcom/car/httpserver/HttpServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/car/httpserver/HttpServerActivity;->mAndroidImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/httpserver/HttpServerActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/car/httpserver/HttpServerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/car/httpserver/HttpServerActivity;->mAndroidBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/car/httpserver/HttpServerActivity;->updateAndroidQRcodeImage()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/car/httpserver/HttpServerActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/car/httpserver/HttpServerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/car/httpserver/HttpServerActivity;->mAndroidBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/httpserver/HttpServerActivity;->mAndroidBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/httpserver/HttpServerActivity;->mAndroidBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
