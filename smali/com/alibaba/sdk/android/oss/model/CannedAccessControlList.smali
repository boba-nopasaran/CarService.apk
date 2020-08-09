.class public final enum Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;
.super Ljava/lang/Enum;
.source "CannedAccessControlList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

.field public static final enum Private:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

.field public static final enum PublicRead:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

.field public static final enum PublicReadWrite:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;


# instance fields
.field private ACLString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    const-string v1, "Private"

    const-string v2, "private"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->Private:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    const-string v1, "PublicRead"

    const-string v2, "public-read"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->PublicRead:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    const-string v1, "PublicReadWrite"

    const-string v2, "public-read-write"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->PublicReadWrite:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    sget-object v1, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->Private:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->PublicRead:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->PublicReadWrite:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->$VALUES:[Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->ACLString:Ljava/lang/String;

    return-void
.end method

.method public static parseACL(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->values()[Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v0

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->$VALUES:[Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->ACLString:Ljava/lang/String;

    return-object v0
.end method
