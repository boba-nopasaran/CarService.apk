.class public Lcom/car/httpserver/CarAssistWeb;
.super Lcom/car/httpserver/NanoHTTPD;
.source "CarAssistWeb.java"


# instance fields
.field final FINAL_URL:Ljava/lang/String;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/car/httpserver/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    const-string v0, "http://www.carassist.cn"

    iput-object v0, p0, Lcom/car/httpserver/CarAssistWeb;->FINAL_URL:Ljava/lang/String;

    iput-object p1, p0, Lcom/car/httpserver/CarAssistWeb;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public serve(Lcom/car/httpserver/NanoHTTPD$IHTTPSession;)Lcom/car/httpserver/NanoHTTPD$Response;
    .locals 3

    sget-object v0, Lcom/car/httpserver/NanoHTTPD$Response$Status;->REDIRECT:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v1, "text/html"

    const-string v2, "<html><body> <script type=\"text/javascript\"> window.location.href = \"http://www.carassist.cn\"</script> </body></html>"

    invoke-virtual {p0, v0, v1, v2}, Lcom/car/httpserver/CarAssistWeb;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method
