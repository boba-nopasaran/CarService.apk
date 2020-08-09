.class public final enum Lcom/kaolafm/sdk/client/SoundQuality;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kaolafm/sdk/client/SoundQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaolafm/sdk/client/SoundQuality;

.field public static final enum HIGH:Lcom/kaolafm/sdk/client/SoundQuality;

.field public static final enum LOW:Lcom/kaolafm/sdk/client/SoundQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/kaolafm/sdk/client/SoundQuality;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/kaolafm/sdk/client/SoundQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaolafm/sdk/client/SoundQuality;->LOW:Lcom/kaolafm/sdk/client/SoundQuality;

    new-instance v0, Lcom/kaolafm/sdk/client/SoundQuality;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v3}, Lcom/kaolafm/sdk/client/SoundQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaolafm/sdk/client/SoundQuality;->HIGH:Lcom/kaolafm/sdk/client/SoundQuality;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kaolafm/sdk/client/SoundQuality;

    sget-object v1, Lcom/kaolafm/sdk/client/SoundQuality;->LOW:Lcom/kaolafm/sdk/client/SoundQuality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaolafm/sdk/client/SoundQuality;->HIGH:Lcom/kaolafm/sdk/client/SoundQuality;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kaolafm/sdk/client/SoundQuality;->$VALUES:[Lcom/kaolafm/sdk/client/SoundQuality;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kaolafm/sdk/client/SoundQuality;
    .locals 1

    const-class v0, Lcom/kaolafm/sdk/client/SoundQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/SoundQuality;

    return-object v0
.end method

.method public static values()[Lcom/kaolafm/sdk/client/SoundQuality;
    .locals 1

    sget-object v0, Lcom/kaolafm/sdk/client/SoundQuality;->$VALUES:[Lcom/kaolafm/sdk/client/SoundQuality;

    invoke-virtual {v0}, [Lcom/kaolafm/sdk/client/SoundQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaolafm/sdk/client/SoundQuality;

    return-object v0
.end method
