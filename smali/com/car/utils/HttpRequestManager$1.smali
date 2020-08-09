.class Lcom/car/utils/HttpRequestManager$1;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/utils/HttpRequestManager;->requestHttp(Ljava/lang/String;Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/utils/HttpRequestManager;

.field final synthetic val$listener:Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/utils/HttpRequestManager;Ljava/lang/String;Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/car/utils/HttpRequestManager$1;->this$0:Lcom/car/utils/HttpRequestManager;

    iput-object p2, p0, Lcom/car/utils/HttpRequestManager$1;->val$str:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/utils/HttpRequestManager$1;->val$listener:Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/car/utils/HttpRequestManager$1;->val$str:Ljava/lang/String;

    invoke-static {v1}, Lcom/car/utils/HttpRequestManager;->requestHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/car/utils/HttpRequestManager$1;->val$listener:Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;

    invoke-interface {v1, v0}, Lcom/car/utils/HttpRequestManager$OnHttpResponseListener;->onHttpResponse(Ljava/lang/String;)V

    return-void
.end method
