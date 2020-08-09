.class public final enum Lcom/amap/api/col/bu$a;
.super Ljava/lang/Enum;
.source "IResourceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/bu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/api/col/bu$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amap/api/col/bu$a;

.field public static final enum b:Lcom/amap/api/col/bu$a;

.field public static final enum c:Lcom/amap/api/col/bu$a;

.field private static final synthetic d:[Lcom/amap/api/col/bu$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/amap/api/col/bu$a;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/bu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bu$a;->a:Lcom/amap/api/col/bu$a;

    new-instance v0, Lcom/amap/api/col/bu$a;

    const-string v1, "marker_default"

    invoke-direct {v0, v1, v3}, Lcom/amap/api/col/bu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bu$a;->b:Lcom/amap/api/col/bu$a;

    new-instance v0, Lcom/amap/api/col/bu$a;

    const-string v1, "marker_gps_no_sharing"

    invoke-direct {v0, v1, v4}, Lcom/amap/api/col/bu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bu$a;->c:Lcom/amap/api/col/bu$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amap/api/col/bu$a;

    sget-object v1, Lcom/amap/api/col/bu$a;->a:Lcom/amap/api/col/bu$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amap/api/col/bu$a;->b:Lcom/amap/api/col/bu$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amap/api/col/bu$a;->c:Lcom/amap/api/col/bu$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amap/api/col/bu$a;->d:[Lcom/amap/api/col/bu$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/col/bu$a;
    .locals 1

    const-class v0, Lcom/amap/api/col/bu$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bu$a;

    return-object v0
.end method

.method public static values()[Lcom/amap/api/col/bu$a;
    .locals 1

    sget-object v0, Lcom/amap/api/col/bu$a;->d:[Lcom/amap/api/col/bu$a;

    invoke-virtual {v0}, [Lcom/amap/api/col/bu$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/col/bu$a;

    return-object v0
.end method
