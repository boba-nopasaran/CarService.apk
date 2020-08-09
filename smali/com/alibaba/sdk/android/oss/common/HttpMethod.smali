.class public final enum Lcom/alibaba/sdk/android/oss/common/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/sdk/android/oss/common/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sdk/android/oss/common/HttpMethod;

.field public static final enum DELETE:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

.field public static final enum GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

.field public static final enum HEAD:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

.field public static final enum OPTIONS:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

.field public static final enum POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

.field public static final enum PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/sdk/android/oss/common/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->DELETE:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/sdk/android/oss/common/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/sdk/android/oss/common/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->HEAD:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/sdk/android/oss/common/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/sdk/android/oss/common/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    const-string v1, "OPTIONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/common/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->OPTIONS:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->DELETE:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->HEAD:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->OPTIONS:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->$VALUES:[Lcom/alibaba/sdk/android/oss/common/HttpMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/common/HttpMethod;
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/sdk/android/oss/common/HttpMethod;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->$VALUES:[Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/oss/common/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    return-object v0
.end method
