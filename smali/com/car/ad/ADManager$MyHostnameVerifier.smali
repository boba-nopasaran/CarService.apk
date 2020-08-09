.class Lcom/car/ad/ADManager$MyHostnameVerifier;
.super Ljava/lang/Object;
.source "ADManager.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/ad/ADManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHostnameVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/ad/ADManager;


# direct methods
.method private constructor <init>(Lcom/car/ad/ADManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/ad/ADManager$MyHostnameVerifier;->this$0:Lcom/car/ad/ADManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/ad/ADManager;Lcom/car/ad/ADManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/ad/ADManager$MyHostnameVerifier;-><init>(Lcom/car/ad/ADManager;)V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
