.class public final enum Lcom/aispeech/speech/a$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/speech/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aispeech/speech/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/aispeech/speech/a$c;

.field public static final enum b:Lcom/aispeech/speech/a$c;

.field public static final enum c:Lcom/aispeech/speech/a$c;

.field public static final enum d:Lcom/aispeech/speech/a$c;

.field public static final enum e:Lcom/aispeech/speech/a$c;

.field private static enum f:Lcom/aispeech/speech/a$c;

.field private static final synthetic g:[Lcom/aispeech/speech/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/aispeech/speech/a$c;

    const-string v1, "STATE_IDLE"

    invoke-direct {v0, v1, v3}, Lcom/aispeech/speech/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aispeech/speech/a$c;->a:Lcom/aispeech/speech/a$c;

    new-instance v0, Lcom/aispeech/speech/a$c;

    const-string v1, "STATE_NEWED"

    invoke-direct {v0, v1, v4}, Lcom/aispeech/speech/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aispeech/speech/a$c;->b:Lcom/aispeech/speech/a$c;

    new-instance v0, Lcom/aispeech/speech/a$c;

    const-string v1, "STATE_RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/aispeech/speech/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    new-instance v0, Lcom/aispeech/speech/a$c;

    const-string v1, "STATE_STOPPED"

    invoke-direct {v0, v1, v6}, Lcom/aispeech/speech/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aispeech/speech/a$c;->d:Lcom/aispeech/speech/a$c;

    new-instance v0, Lcom/aispeech/speech/a$c;

    const-string v1, "STATE_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/aispeech/speech/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aispeech/speech/a$c;->f:Lcom/aispeech/speech/a$c;

    new-instance v0, Lcom/aispeech/speech/a$c;

    const-string v1, "STATE_CANCELED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/aispeech/speech/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aispeech/speech/a$c;->e:Lcom/aispeech/speech/a$c;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/aispeech/speech/a$c;

    sget-object v1, Lcom/aispeech/speech/a$c;->a:Lcom/aispeech/speech/a$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aispeech/speech/a$c;->b:Lcom/aispeech/speech/a$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aispeech/speech/a$c;->c:Lcom/aispeech/speech/a$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aispeech/speech/a$c;->d:Lcom/aispeech/speech/a$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aispeech/speech/a$c;->f:Lcom/aispeech/speech/a$c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/aispeech/speech/a$c;->e:Lcom/aispeech/speech/a$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aispeech/speech/a$c;->g:[Lcom/aispeech/speech/a$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/aispeech/speech/a$c;
    .locals 1

    const-class v0, Lcom/aispeech/speech/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aispeech/speech/a$c;

    return-object v0
.end method

.method public static values()[Lcom/aispeech/speech/a$c;
    .locals 1

    sget-object v0, Lcom/aispeech/speech/a$c;->g:[Lcom/aispeech/speech/a$c;

    invoke-virtual {v0}, [Lcom/aispeech/speech/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aispeech/speech/a$c;

    return-object v0
.end method
