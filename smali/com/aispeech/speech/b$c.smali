.class public final enum Lcom/aispeech/speech/b$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/speech/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aispeech/speech/b$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/aispeech/speech/b$c;

.field public static final enum b:Lcom/aispeech/speech/b$c;

.field public static final enum c:Lcom/aispeech/speech/b$c;

.field public static final enum d:Lcom/aispeech/speech/b$c;

.field public static final enum e:Lcom/aispeech/speech/b$c;

.field private static enum f:Lcom/aispeech/speech/b$c;

.field private static final synthetic g:[Lcom/aispeech/speech/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/aispeech/speech/b$c;

    const-string v1, "STATE_IDLE"

    invoke-direct {v0, v1, v3}, Lcom/aispeech/speech/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aispeech/speech/b$c;->a:Lcom/aispeech/speech/b$c;

    new-instance v0, Lcom/aispeech/speech/b$c;

    const-string v1, "STATE_NEWED"

    invoke-direct {v0, v1, v4}, Lcom/aispeech/speech/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aispeech/speech/b$c;->b:Lcom/aispeech/speech/b$c;

    new-instance v0, Lcom/aispeech/speech/b$c;

    const-string v1, "STATE_RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/aispeech/speech/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    new-instance v0, Lcom/aispeech/speech/b$c;

    const-string v1, "STATE_STOPPED"

    invoke-direct {v0, v1, v6}, Lcom/aispeech/speech/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aispeech/speech/b$c;->d:Lcom/aispeech/speech/b$c;

    new-instance v0, Lcom/aispeech/speech/b$c;

    const-string v1, "STATE_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/aispeech/speech/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aispeech/speech/b$c;->f:Lcom/aispeech/speech/b$c;

    new-instance v0, Lcom/aispeech/speech/b$c;

    const-string v1, "STATE_CANCELED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/aispeech/speech/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aispeech/speech/b$c;->e:Lcom/aispeech/speech/b$c;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/aispeech/speech/b$c;

    sget-object v1, Lcom/aispeech/speech/b$c;->a:Lcom/aispeech/speech/b$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aispeech/speech/b$c;->b:Lcom/aispeech/speech/b$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aispeech/speech/b$c;->c:Lcom/aispeech/speech/b$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aispeech/speech/b$c;->d:Lcom/aispeech/speech/b$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aispeech/speech/b$c;->f:Lcom/aispeech/speech/b$c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/aispeech/speech/b$c;->e:Lcom/aispeech/speech/b$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aispeech/speech/b$c;->g:[Lcom/aispeech/speech/b$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aispeech/speech/b$c;
    .locals 1

    const-class v0, Lcom/aispeech/speech/b$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aispeech/speech/b$c;

    return-object v0
.end method

.method public static values()[Lcom/aispeech/speech/b$c;
    .locals 1

    sget-object v0, Lcom/aispeech/speech/b$c;->g:[Lcom/aispeech/speech/b$c;

    invoke-virtual {v0}, [Lcom/aispeech/speech/b$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aispeech/speech/b$c;

    return-object v0
.end method
