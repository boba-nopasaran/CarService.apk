.class public final enum Lcom/aispeech/tts/e$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/tts/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aispeech/tts/e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/aispeech/tts/e$b;

.field public static final enum b:Lcom/aispeech/tts/e$b;

.field public static final enum c:Lcom/aispeech/tts/e$b;

.field public static final enum d:Lcom/aispeech/tts/e$b;

.field public static final enum e:Lcom/aispeech/tts/e$b;

.field public static final enum f:Lcom/aispeech/tts/e$b;

.field public static final enum g:Lcom/aispeech/tts/e$b;

.field private static final synthetic i:[Lcom/aispeech/tts/e$b;


# instance fields
.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/aispeech/tts/e$b;

    const-string v1, "MSG_INIT"

    invoke-direct {v0, v1, v4, v4}, Lcom/aispeech/tts/e$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$b;->a:Lcom/aispeech/tts/e$b;

    new-instance v0, Lcom/aispeech/tts/e$b;

    const-string v1, "MSG_SPEAK_READY"

    invoke-direct {v0, v1, v5, v5}, Lcom/aispeech/tts/e$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$b;->b:Lcom/aispeech/tts/e$b;

    new-instance v0, Lcom/aispeech/tts/e$b;

    const-string v1, "MSG_COMPLETED"

    invoke-direct {v0, v1, v6, v6}, Lcom/aispeech/tts/e$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$b;->c:Lcom/aispeech/tts/e$b;

    new-instance v0, Lcom/aispeech/tts/e$b;

    const-string v1, "MSG_ERROR"

    invoke-direct {v0, v1, v7, v7}, Lcom/aispeech/tts/e$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$b;->d:Lcom/aispeech/tts/e$b;

    new-instance v0, Lcom/aispeech/tts/e$b;

    const-string v1, "MSG_BUFFER_PROGRESS"

    invoke-direct {v0, v1, v8, v8}, Lcom/aispeech/tts/e$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$b;->e:Lcom/aispeech/tts/e$b;

    new-instance v0, Lcom/aispeech/tts/e$b;

    const-string v1, "MSG_SPEAK_PROGRESS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/aispeech/tts/e$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$b;->f:Lcom/aispeech/tts/e$b;

    new-instance v0, Lcom/aispeech/tts/e$b;

    const-string v1, "MSG_STOPPED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/aispeech/tts/e$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$b;->g:Lcom/aispeech/tts/e$b;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/aispeech/tts/e$b;

    sget-object v1, Lcom/aispeech/tts/e$b;->a:Lcom/aispeech/tts/e$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aispeech/tts/e$b;->b:Lcom/aispeech/tts/e$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aispeech/tts/e$b;->c:Lcom/aispeech/tts/e$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aispeech/tts/e$b;->d:Lcom/aispeech/tts/e$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/aispeech/tts/e$b;->e:Lcom/aispeech/tts/e$b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/aispeech/tts/e$b;->f:Lcom/aispeech/tts/e$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/aispeech/tts/e$b;->g:Lcom/aispeech/tts/e$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aispeech/tts/e$b;->i:[Lcom/aispeech/tts/e$b;

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

    iput p3, p0, Lcom/aispeech/tts/e$b;->h:I

    return-void
.end method

.method public static a(I)Lcom/aispeech/tts/e$b;
    .locals 5

    invoke-static {}, Lcom/aispeech/tts/e$b;->values()[Lcom/aispeech/tts/e$b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/aispeech/tts/e$b;->h:I

    if-ne p0, v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aispeech/tts/e$b;
    .locals 1

    const-class v0, Lcom/aispeech/tts/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aispeech/tts/e$b;

    return-object v0
.end method

.method public static values()[Lcom/aispeech/tts/e$b;
    .locals 1

    sget-object v0, Lcom/aispeech/tts/e$b;->i:[Lcom/aispeech/tts/e$b;

    invoke-virtual {v0}, [Lcom/aispeech/tts/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aispeech/tts/e$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/aispeech/tts/e$b;->h:I

    return v0
.end method
