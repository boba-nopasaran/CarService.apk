.class public abstract Lokhttp3/internal/tls/TrustRootIndex;
.super Ljava/lang/Object;
.source "TrustRootIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;,
        Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "findTrustAnchorByIssuerAndSignature"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/security/cert/X509Certificate;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v2, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;

    invoke-direct {v2, p0, v1}, Lokhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-interface {p0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/internal/tls/TrustRootIndex;->get([Ljava/security/cert/X509Certificate;)Lokhttp3/internal/tls/TrustRootIndex;

    move-result-object v2

    goto :goto_0
.end method

.method public static varargs get([Ljava/security/cert/X509Certificate;)Lokhttp3/internal/tls/TrustRootIndex;
    .locals 1

    new-instance v0, Lokhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;

    invoke-direct {v0, p0}, Lokhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method


# virtual methods
.method public abstract findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
.end method
