.class public final enum Lcom/kaolafm/sdk/client/Scenes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kaolafm/sdk/client/Scenes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaolafm/sdk/client/Scenes;

.field public static final enum ALL:Lcom/kaolafm/sdk/client/Scenes;

.field public static final enum MUSIC:Lcom/kaolafm/sdk/client/Scenes;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/kaolafm/sdk/client/Scenes;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v3, v2}, Lcom/kaolafm/sdk/client/Scenes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaolafm/sdk/client/Scenes;->MUSIC:Lcom/kaolafm/sdk/client/Scenes;

    new-instance v0, Lcom/kaolafm/sdk/client/Scenes;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2, v4}, Lcom/kaolafm/sdk/client/Scenes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaolafm/sdk/client/Scenes;->ALL:Lcom/kaolafm/sdk/client/Scenes;

    new-array v0, v4, [Lcom/kaolafm/sdk/client/Scenes;

    sget-object v1, Lcom/kaolafm/sdk/client/Scenes;->MUSIC:Lcom/kaolafm/sdk/client/Scenes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaolafm/sdk/client/Scenes;->ALL:Lcom/kaolafm/sdk/client/Scenes;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kaolafm/sdk/client/Scenes;->$VALUES:[Lcom/kaolafm/sdk/client/Scenes;

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

    iput p3, p0, Lcom/kaolafm/sdk/client/Scenes;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaolafm/sdk/client/Scenes;
    .locals 1

    const-class v0, Lcom/kaolafm/sdk/client/Scenes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/Scenes;

    return-object v0
.end method

.method public static values()[Lcom/kaolafm/sdk/client/Scenes;
    .locals 1

    sget-object v0, Lcom/kaolafm/sdk/client/Scenes;->$VALUES:[Lcom/kaolafm/sdk/client/Scenes;

    invoke-virtual {v0}, [Lcom/kaolafm/sdk/client/Scenes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaolafm/sdk/client/Scenes;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/kaolafm/sdk/client/Scenes;->value:I

    return v0
.end method
