.class public final enum Lcom/aispeech/speech/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/speech/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aispeech/speech/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/aispeech/speech/b$b;

.field public static final enum b:Lcom/aispeech/speech/b$b;

.field public static final enum c:Lcom/aispeech/speech/b$b;

.field public static final enum d:Lcom/aispeech/speech/b$b;

.field public static final enum e:Lcom/aispeech/speech/b$b;

.field public static final enum f:Lcom/aispeech/speech/b$b;

.field public static final enum g:Lcom/aispeech/speech/b$b;

.field public static final enum h:Lcom/aispeech/speech/b$b;

.field public static final enum i:Lcom/aispeech/speech/b$b;

.field public static final enum j:Lcom/aispeech/speech/b$b;

.field public static final enum k:Lcom/aispeech/speech/b$b;

.field public static final enum l:Lcom/aispeech/speech/b$b;

.field public static final enum m:Lcom/aispeech/speech/b$b;

.field public static final enum n:Lcom/aispeech/speech/b$b;

.field public static final enum o:Lcom/aispeech/speech/b$b;

.field public static final enum p:Lcom/aispeech/speech/b$b;

.field public static final enum q:Lcom/aispeech/speech/b$b;

.field public static final enum r:Lcom/aispeech/speech/b$b;

.field public static final enum s:Lcom/aispeech/speech/b$b;

.field public static final enum t:Lcom/aispeech/speech/b$b;

.field public static final enum u:Lcom/aispeech/speech/b$b;

.field private static final synthetic x:[Lcom/aispeech/speech/b$b;


# instance fields
.field private v:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->a:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_START"

    invoke-direct {v0, v1, v5, v6, v5}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->b:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_CANCEL"

    invoke-direct {v0, v1, v6, v7, v5}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->c:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_STOP"

    invoke-direct {v0, v1, v7, v8, v5}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->d:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_RELEASE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->e:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_RECORDER_STOPPED"

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->f:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_RECORDER_RELEASED"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->g:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_VAD_START"

    const/4 v2, 0x7

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->h:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_VAD_END"

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->i:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_VOLUME_CHANGED"

    const/16 v2, 0x9

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->j:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_ERROR"

    const/16 v2, 0xa

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->k:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_AIENGINE_RESULT"

    const/16 v2, 0xb

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->l:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_RECORDER_START"

    const/16 v2, 0xc

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->m:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_RECORDER_RECEIVE_DATA"

    const/16 v2, 0xd

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->n:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_WAKEUP_RESULT"

    const/16 v2, 0xe

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->o:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_WAKEUP_VAD_START"

    const/16 v2, 0xf

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->p:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_WAKEUP_VAD_END"

    const/16 v2, 0x10

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->q:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_WAKEUP_REC_VAD_START"

    const/16 v2, 0x11

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->r:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_WAKEUP_REC_VAD_END"

    const/16 v2, 0x12

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->s:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_WAKEUP_REC_RESULT"

    const/16 v2, 0x13

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->t:Lcom/aispeech/speech/b$b;

    new-instance v0, Lcom/aispeech/speech/b$b;

    const-string v1, "MSG_SET_NETWORK"

    const/16 v2, 0x14

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aispeech/speech/b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/aispeech/speech/b$b;->u:Lcom/aispeech/speech/b$b;

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/aispeech/speech/b$b;

    const/4 v1, 0x0

    sget-object v2, Lcom/aispeech/speech/b$b;->a:Lcom/aispeech/speech/b$b;

    aput-object v2, v0, v1

    sget-object v1, Lcom/aispeech/speech/b$b;->b:Lcom/aispeech/speech/b$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aispeech/speech/b$b;->c:Lcom/aispeech/speech/b$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aispeech/speech/b$b;->d:Lcom/aispeech/speech/b$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/aispeech/speech/b$b;->e:Lcom/aispeech/speech/b$b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/aispeech/speech/b$b;->f:Lcom/aispeech/speech/b$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/aispeech/speech/b$b;->g:Lcom/aispeech/speech/b$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/aispeech/speech/b$b;->h:Lcom/aispeech/speech/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/aispeech/speech/b$b;->i:Lcom/aispeech/speech/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/aispeech/speech/b$b;->j:Lcom/aispeech/speech/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/aispeech/speech/b$b;->k:Lcom/aispeech/speech/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/aispeech/speech/b$b;->l:Lcom/aispeech/speech/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/aispeech/speech/b$b;->m:Lcom/aispeech/speech/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/aispeech/speech/b$b;->n:Lcom/aispeech/speech/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/aispeech/speech/b$b;->o:Lcom/aispeech/speech/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/aispeech/speech/b$b;->p:Lcom/aispeech/speech/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/aispeech/speech/b$b;->q:Lcom/aispeech/speech/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/aispeech/speech/b$b;->r:Lcom/aispeech/speech/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/aispeech/speech/b$b;->s:Lcom/aispeech/speech/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/aispeech/speech/b$b;->t:Lcom/aispeech/speech/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/aispeech/speech/b$b;->u:Lcom/aispeech/speech/b$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aispeech/speech/b$b;->x:[Lcom/aispeech/speech/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/aispeech/speech/b$b;->v:I

    iput p4, p0, Lcom/aispeech/speech/b$b;->w:I

    return-void
.end method

.method static synthetic a(Lcom/aispeech/speech/b$b;)I
    .locals 1

    iget v0, p0, Lcom/aispeech/speech/b$b;->v:I

    return v0
.end method

.method public static a(I)Lcom/aispeech/speech/b$b;
    .locals 5

    invoke-static {}, Lcom/aispeech/speech/b$b;->values()[Lcom/aispeech/speech/b$b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/aispeech/speech/b$b;->v:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/aispeech/speech/b$b;
    .locals 1

    const-class v0, Lcom/aispeech/speech/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aispeech/speech/b$b;

    return-object v0
.end method

.method public static values()[Lcom/aispeech/speech/b$b;
    .locals 1

    sget-object v0, Lcom/aispeech/speech/b$b;->x:[Lcom/aispeech/speech/b$b;

    invoke-virtual {v0}, [Lcom/aispeech/speech/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aispeech/speech/b$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/aispeech/speech/b$b;->v:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/aispeech/speech/b$b;->w:I

    return v0
.end method
