.class public final Lcom/alibaba/sdk/android/oss/common/OSSConstants;
.super Ljava/lang/Object;
.source "OSSConstants.java"


# static fields
.field public static final DEFAULT_BASE_THREAD_POOL_SIZE:I = 0x5

.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "utf-8"

.field public static final DEFAULT_CNAME_EXCLUDE_LIST:[Ljava/lang/String;

.field public static final DEFAULT_EXTEND_THREAD_POOL_SIZE:I = 0x3

.field public static final DEFAULT_FILE_SIZE_LIMIT:J = 0x140000000L

.field public static final DEFAULT_OBJECT_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final DEFAULT_OSS_ENDPOINT:Ljava/lang/String; = "http://oss-cn-hangzhou.aliyuncs.com"

.field public static final DEFAULT_RETRY_COUNT:I = 0x2

.field public static final DEFAULT_STREAM_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_XML_ENCODING:Ljava/lang/String; = "utf-8"

.field public static final KB:I = 0x400

.field public static final MIN_PART_SIZE_LIMIT:J = 0x19000L

.field public static final OBJECT_NAME_MAX_LENGTH:I = 0x400

.field public static final RESOURCE_NAME_COMMON:Ljava/lang/String; = "common"

.field public static final RESOURCE_NAME_OSS:Ljava/lang/String; = "oss"

.field public static final SDK_VERSION:Ljava/lang/String; = "2.4.4"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "aliyuncs.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "aliyun-inc.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "aliyun.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSConstants;->DEFAULT_CNAME_EXCLUDE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
