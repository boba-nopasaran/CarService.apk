.class public final enum Lcom/kaolafm/sdk/client/PlayState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kaolafm/sdk/client/PlayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaolafm/sdk/client/PlayState;

.field public static final enum PAUSED:Lcom/kaolafm/sdk/client/PlayState;

.field public static final enum PLAYING:Lcom/kaolafm/sdk/client/PlayState;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/kaolafm/sdk/client/PlayState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaolafm/sdk/client/PlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaolafm/sdk/client/PlayState;->PLAYING:Lcom/kaolafm/sdk/client/PlayState;

    new-instance v0, Lcom/kaolafm/sdk/client/PlayState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v3, v2}, Lcom/kaolafm/sdk/client/PlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaolafm/sdk/client/PlayState;->PAUSED:Lcom/kaolafm/sdk/client/PlayState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kaolafm/sdk/client/PlayState;

    sget-object v1, Lcom/kaolafm/sdk/client/PlayState;->PLAYING:Lcom/kaolafm/sdk/client/PlayState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaolafm/sdk/client/PlayState;->PAUSED:Lcom/kaolafm/sdk/client/PlayState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kaolafm/sdk/client/PlayState;->$VALUES:[Lcom/kaolafm/sdk/client/PlayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/kaolafm/sdk/client/PlayState;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaolafm/sdk/client/PlayState;
    .locals 1

    const-class v0, Lcom/kaolafm/sdk/client/PlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/PlayState;

    return-object v0
.end method

.method public static values()[Lcom/kaolafm/sdk/client/PlayState;
    .locals 1

    sget-object v0, Lcom/kaolafm/sdk/client/PlayState;->$VALUES:[Lcom/kaolafm/sdk/client/PlayState;

    invoke-virtual {v0}, [Lcom/kaolafm/sdk/client/PlayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaolafm/sdk/client/PlayState;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/kaolafm/sdk/client/PlayState;->code:I

    return v0
.end method
