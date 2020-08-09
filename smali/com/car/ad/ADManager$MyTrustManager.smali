.class Lcom/car/ad/ADManager$MyTrustManager;
.super Ljava/lang/Object;
.source "ADManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/ad/ADManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTrustManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/ad/ADManager;


# direct methods
.method private constructor <init>(Lcom/car/ad/ADManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/ad/ADManager$MyTrustManager;->this$0:Lcom/car/ad/ADManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/ad/ADManager;Lcom/car/ad/ADManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/ad/ADManager$MyTrustManager;-><init>(Lcom/car/ad/ADManager;)V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
