.class Lcom/car/httpserver/HttpServerActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "HttpServerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/HttpServerActivity;
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

    iput-object p1, p0, Lcom/car/httpserver/HttpServerActivity$3;->this$0:Lcom/car/httpserver/HttpServerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/car/httpserver/HttpServerActivity$3;->this$0:Lcom/car/httpserver/HttpServerActivity;

    invoke-static {v1}, Lcom/car/httpserver/HttpServerActivity;->access$200(Lcom/car/httpserver/HttpServerActivity;)V

    :cond_1
    return-void
.end method
