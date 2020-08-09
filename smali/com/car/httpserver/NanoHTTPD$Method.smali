.class public final enum Lcom/car/httpserver/NanoHTTPD$Method;
.super Ljava/lang/Enum;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/car/httpserver/NanoHTTPD$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/car/httpserver/NanoHTTPD$Method;

.field public static final enum DELETE:Lcom/car/httpserver/NanoHTTPD$Method;

.field public static final enum GET:Lcom/car/httpserver/NanoHTTPD$Method;

.field public static final enum HEAD:Lcom/car/httpserver/NanoHTTPD$Method;

.field public static final enum OPTIONS:Lcom/car/httpserver/NanoHTTPD$Method;

.field public static final enum POST:Lcom/car/httpserver/NanoHTTPD$Method;

.field public static final enum PUT:Lcom/car/httpserver/NanoHTTPD$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/car/httpserver/NanoHTTPD$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/car/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/httpserver/NanoHTTPD$Method;->GET:Lcom/car/httpserver/NanoHTTPD$Method;

    new-instance v0, Lcom/car/httpserver/NanoHTTPD$Method;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/car/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/httpserver/NanoHTTPD$Method;->PUT:Lcom/car/httpserver/NanoHTTPD$Method;

    new-instance v0, Lcom/car/httpserver/NanoHTTPD$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v5}, Lcom/car/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/httpserver/NanoHTTPD$Method;->POST:Lcom/car/httpserver/NanoHTTPD$Method;

    new-instance v0, Lcom/car/httpserver/NanoHTTPD$Method;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v6}, Lcom/car/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/httpserver/NanoHTTPD$Method;->DELETE:Lcom/car/httpserver/NanoHTTPD$Method;

    new-instance v0, Lcom/car/httpserver/NanoHTTPD$Method;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v7}, Lcom/car/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/httpserver/NanoHTTPD$Method;->HEAD:Lcom/car/httpserver/NanoHTTPD$Method;

    new-instance v0, Lcom/car/httpserver/NanoHTTPD$Method;

    const-string v1, "OPTIONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/car/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/httpserver/NanoHTTPD$Method;->OPTIONS:Lcom/car/httpserver/NanoHTTPD$Method;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/car/httpserver/NanoHTTPD$Method;

    sget-object v1, Lcom/car/httpserver/NanoHTTPD$Method;->GET:Lcom/car/httpserver/NanoHTTPD$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/car/httpserver/NanoHTTPD$Method;->PUT:Lcom/car/httpserver/NanoHTTPD$Method;

    aput-object v1, v0, v4

    sget-object v1, Lcom/car/httpserver/NanoHTTPD$Method;->POST:Lcom/car/httpserver/NanoHTTPD$Method;

    aput-object v1, v0, v5

    sget-object v1, Lcom/car/httpserver/NanoHTTPD$Method;->DELETE:Lcom/car/httpserver/NanoHTTPD$Method;

    aput-object v1, v0, v6

    sget-object v1, Lcom/car/httpserver/NanoHTTPD$Method;->HEAD:Lcom/car/httpserver/NanoHTTPD$Method;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/car/httpserver/NanoHTTPD$Method;->OPTIONS:Lcom/car/httpserver/NanoHTTPD$Method;

    aput-object v2, v0, v1

    sput-object v0, Lcom/car/httpserver/NanoHTTPD$Method;->$VALUES:[Lcom/car/httpserver/NanoHTTPD$Method;

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

.method static lookup(Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Method;
    .locals 5

    invoke-static {}, Lcom/car/httpserver/NanoHTTPD$Method;->values()[Lcom/car/httpserver/NanoHTTPD$Method;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/car/httpserver/NanoHTTPD$Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Method;
    .locals 1

    const-class v0, Lcom/car/httpserver/NanoHTTPD$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/car/httpserver/NanoHTTPD$Method;

    return-object v0
.end method

.method public static values()[Lcom/car/httpserver/NanoHTTPD$Method;
    .locals 1

    sget-object v0, Lcom/car/httpserver/NanoHTTPD$Method;->$VALUES:[Lcom/car/httpserver/NanoHTTPD$Method;

    invoke-virtual {v0}, [Lcom/car/httpserver/NanoHTTPD$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/car/httpserver/NanoHTTPD$Method;

    return-object v0
.end method
