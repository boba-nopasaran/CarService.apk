.class public Lcom/amap/api/services/a/bb;
.super Ljava/lang/Object;
.source "AuthManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/amap/api/services/a/bb;->a:I

    const-string v0, ""

    sput-object v0, Lcom/amap/api/services/a/bb;->b:Ljava/lang/String;

    const-string v0, "http://apiinit.amap.com/v3/log/init"

    sput-object v0, Lcom/amap/api/services/a/bb;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/services/a/bb;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/amap/api/services/a/az;->a(Ljava/lang/String;)V

    return-void
.end method
