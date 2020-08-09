.class public final enum Lcom/aispeech/speech/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/speech/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aispeech/speech/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/aispeech/speech/b$a;

.field public static final enum b:Lcom/aispeech/speech/b$a;

.field public static final enum c:Lcom/aispeech/speech/b$a;

.field public static final enum d:Lcom/aispeech/speech/b$a;

.field public static final enum e:Lcom/aispeech/speech/b$a;

.field public static final enum f:Lcom/aispeech/speech/b$a;

.field public static final enum g:Lcom/aispeech/speech/b$a;

.field public static final enum h:Lcom/aispeech/speech/b$a;

.field public static final enum i:Lcom/aispeech/speech/b$a;

.field public static final enum j:Lcom/aispeech/speech/b$a;

.field public static final enum k:Lcom/aispeech/speech/b$a;

.field public static final enum l:Lcom/aispeech/speech/b$a;

.field private static final synthetic n:[Lcom/aispeech/speech/b$a;


# instance fields
.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/aispeech/speech/b$a;

    const-string v1, "MSG_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/aispeech/speech/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/speech/b$a;->a:Lcom/aispeech/speech/b$a;

    new-instance v0, Lcom/aispeech/speech/b$a;

    const-string v1, "MSG_BEGINNING_OF_SPEECH"

    invoke-direct {v0, v1, v4, v5}, Lcom/aispeech/speech/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/speech/b$a;->b:Lcom/aispeech/speech/b$a;

    new-instance v0, Lcom/aispeech/speech/b$a;

    const-string v1, "MSG_END_OF_SPEECH"

    invoke-direct {v0, v1, v5, v6}, Lcom/aispeech/speech/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/speech/b$a;->c:Lcom/aispeech/speech/b$a;

    new-instance v0, Lcom/aispeech/speech/b$a;

    const-string v1, "MSG_BUFFER_RECEIVED"

    invoke-direct {v0, v1, v6, v7}, Lcom/aispeech/speech/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/speech/b$a;->d:Lcom/aispeech/speech/b$a;

    new-instance v0, Lcom/aispeech/speech/b$a;

    const-string v1, "MSG_RECORED_RELEASED"

    invoke-direct {v0, v1, v7, v8}, Lcom/aispeech/speech/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/speech/b$a;->e:Lcom/aispeech/speech/b$a;

    new-instance v0, Lcom/aispeech/speech/b$a;

    const-string v1, "MSG_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/aispeech/speech/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/speech/b$a;->f:Lcom/aispeech/speech/b$a;

    new-instance v0, Lcom/aispeech/speech/b$a;

    const-string v1, "MSG_READY_FOR_SPEECH"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/aispeech/speech/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/speech/b$a;->g:Lcom/aispeech/speech/b$a;

    new-instance v0, Lcom/aispeech/speech/b$a;

    const-string v1, "MSG_RESULTS"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/aispeech/speech/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/speech/b$a;->h:Lcom/aispeech/speech/b$a;

    new-instance v0, Lcom/aispeech/speech/b$a;

    const-string v1, "MSG_RMS_CHANGED"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/aispeech/speech/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/speech/b$a;->i:Lcom/aispeech/speech/b$a;

    new-instance v0, Lcom/aispeech/speech/b$a;

    const-string v1, "MSG_RECORED_STOPPED"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/aispeech/speech/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/speech/b$a;->j:Lcom/aispeech/speech/b$a;

    new-instance v0, Lcom/aispeech/speech/b$a;

    const-string v1, "MSG_WAKEUP_STOPPED"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/aispeech/speech/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/speech/b$a;->k:Lcom/aispeech/speech/b$a;

    new-instance v0, Lcom/aispeech/speech/b$a;

    const-string v1, "MSG_NOT_ONE_SHOT"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/aispeech/speech/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aispeech/speech/b$a;->l:Lcom/aispeech/speech/b$a;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/aispeech/speech/b$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/aispeech/speech/b$a;->a:Lcom/aispeech/speech/b$a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/aispeech/speech/b$a;->b:Lcom/aispeech/speech/b$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aispeech/speech/b$a;->c:Lcom/aispeech/speech/b$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aispeech/speech/b$a;->d:Lcom/aispeech/speech/b$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aispeech/speech/b$a;->e:Lcom/aispeech/speech/b$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/aispeech/speech/b$a;->f:Lcom/aispeech/speech/b$a;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/aispeech/speech/b$a;->g:Lcom/aispeech/speech/b$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/aispeech/speech/b$a;->h:Lcom/aispeech/speech/b$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/aispeech/speech/b$a;->i:Lcom/aispeech/speech/b$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/aispeech/speech/b$a;->j:Lcom/aispeech/speech/b$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/aispeech/speech/b$a;->k:Lcom/aispeech/speech/b$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/aispeech/speech/b$a;->l:Lcom/aispeech/speech/b$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aispeech/speech/b$a;->n:[Lcom/aispeech/speech/b$a;

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

    iput p3, p0, Lcom/aispeech/speech/b$a;->m:I

    return-void
.end method

.method public static a(I)Lcom/aispeech/speech/b$a;
    .locals 5

    invoke-static {}, Lcom/aispeech/speech/b$a;->values()[Lcom/aispeech/speech/b$a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/aispeech/speech/b$a;->m:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/aispeech/speech/b$a;
    .locals 1

    const-class v0, Lcom/aispeech/speech/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aispeech/speech/b$a;

    return-object v0
.end method

.method public static values()[Lcom/aispeech/speech/b$a;
    .locals 1

    sget-object v0, Lcom/aispeech/speech/b$a;->n:[Lcom/aispeech/speech/b$a;

    invoke-virtual {v0}, [Lcom/aispeech/speech/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aispeech/speech/b$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/aispeech/speech/b$a;->m:I

    return v0
.end method
