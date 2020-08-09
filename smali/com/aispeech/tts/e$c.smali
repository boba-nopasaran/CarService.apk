.class public final enum Lcom/aispeech/tts/e$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/tts/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aispeech/tts/e$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/aispeech/tts/e$c;

.field public static final enum b:Lcom/aispeech/tts/e$c;

.field public static final enum c:Lcom/aispeech/tts/e$c;

.field public static final enum d:Lcom/aispeech/tts/e$c;

.field public static final enum e:Lcom/aispeech/tts/e$c;

.field public static final enum f:Lcom/aispeech/tts/e$c;

.field public static final enum g:Lcom/aispeech/tts/e$c;

.field public static final enum h:Lcom/aispeech/tts/e$c;

.field public static final enum i:Lcom/aispeech/tts/e$c;

.field public static final enum j:Lcom/aispeech/tts/e$c;

.field public static final enum k:Lcom/aispeech/tts/e$c;

.field private static final synthetic m:[Lcom/aispeech/tts/e$c;


# instance fields
.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/aispeech/tts/e$c;

    const-string v1, "MSG_NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/aispeech/tts/e$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$c;->a:Lcom/aispeech/tts/e$c;

    new-instance v0, Lcom/aispeech/tts/e$c;

    const-string v1, "MSG_START"

    invoke-direct {v0, v1, v4, v5}, Lcom/aispeech/tts/e$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$c;->b:Lcom/aispeech/tts/e$c;

    new-instance v0, Lcom/aispeech/tts/e$c;

    const-string v1, "MSG_STOP"

    invoke-direct {v0, v1, v5, v6}, Lcom/aispeech/tts/e$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$c;->c:Lcom/aispeech/tts/e$c;

    new-instance v0, Lcom/aispeech/tts/e$c;

    const-string v1, "MSG_PAUSE"

    invoke-direct {v0, v1, v6, v7}, Lcom/aispeech/tts/e$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$c;->d:Lcom/aispeech/tts/e$c;

    new-instance v0, Lcom/aispeech/tts/e$c;

    const-string v1, "MSG_RESUME"

    invoke-direct {v0, v1, v7, v8}, Lcom/aispeech/tts/e$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$c;->e:Lcom/aispeech/tts/e$c;

    new-instance v0, Lcom/aispeech/tts/e$c;

    const-string v1, "MSG_RELEASE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/aispeech/tts/e$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$c;->f:Lcom/aispeech/tts/e$c;

    new-instance v0, Lcom/aispeech/tts/e$c;

    const-string v1, "MSG_ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/aispeech/tts/e$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$c;->g:Lcom/aispeech/tts/e$c;

    new-instance v0, Lcom/aispeech/tts/e$c;

    const-string v1, "MSG_FEED_DATA_BY_CHUNK"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/aispeech/tts/e$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$c;->h:Lcom/aispeech/tts/e$c;

    new-instance v0, Lcom/aispeech/tts/e$c;

    const-string v1, "MSG_FEED_DATA_BY_STREAM"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/aispeech/tts/e$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$c;->i:Lcom/aispeech/tts/e$c;

    new-instance v0, Lcom/aispeech/tts/e$c;

    const-string v1, "MSG_COMPLETED"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/aispeech/tts/e$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$c;->j:Lcom/aispeech/tts/e$c;

    new-instance v0, Lcom/aispeech/tts/e$c;

    const-string v1, "MSG_SETUP_VOLUME"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/aispeech/tts/e$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/tts/e$c;->k:Lcom/aispeech/tts/e$c;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/aispeech/tts/e$c;

    const/4 v1, 0x0

    sget-object v2, Lcom/aispeech/tts/e$c;->a:Lcom/aispeech/tts/e$c;

    aput-object v2, v0, v1

    sget-object v1, Lcom/aispeech/tts/e$c;->b:Lcom/aispeech/tts/e$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aispeech/tts/e$c;->c:Lcom/aispeech/tts/e$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aispeech/tts/e$c;->d:Lcom/aispeech/tts/e$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aispeech/tts/e$c;->e:Lcom/aispeech/tts/e$c;

    aput-object v1, v0, v7

    sget-object v1, Lcom/aispeech/tts/e$c;->f:Lcom/aispeech/tts/e$c;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/aispeech/tts/e$c;->g:Lcom/aispeech/tts/e$c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/aispeech/tts/e$c;->h:Lcom/aispeech/tts/e$c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/aispeech/tts/e$c;->i:Lcom/aispeech/tts/e$c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/aispeech/tts/e$c;->j:Lcom/aispeech/tts/e$c;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/aispeech/tts/e$c;->k:Lcom/aispeech/tts/e$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aispeech/tts/e$c;->m:[Lcom/aispeech/tts/e$c;

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

    iput p3, p0, Lcom/aispeech/tts/e$c;->l:I

    return-void
.end method

.method public static a(I)Lcom/aispeech/tts/e$c;
    .locals 5

    invoke-static {}, Lcom/aispeech/tts/e$c;->values()[Lcom/aispeech/tts/e$c;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/aispeech/tts/e$c;->l:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/aispeech/tts/e$c;
    .locals 1

    const-class v0, Lcom/aispeech/tts/e$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aispeech/tts/e$c;

    return-object v0
.end method

.method public static values()[Lcom/aispeech/tts/e$c;
    .locals 1

    sget-object v0, Lcom/aispeech/tts/e$c;->m:[Lcom/aispeech/tts/e$c;

    invoke-virtual {v0}, [Lcom/aispeech/tts/e$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aispeech/tts/e$c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/aispeech/tts/e$c;->l:I

    return v0
.end method
