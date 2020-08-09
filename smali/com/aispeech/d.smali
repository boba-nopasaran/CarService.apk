.class public final Lcom/aispeech/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:I

.field public static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/aispeech/d;->a:Z

    sput-boolean v0, Lcom/aispeech/d;->b:Z

    sget-boolean v1, Lcom/aispeech/common/AIConstant;->NEW_ECHO_ENABLE:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    sput v0, Lcom/aispeech/d;->c:I

    sget-boolean v0, Lcom/aispeech/common/AIConstant;->NEW_ECHO_ENABLE:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    :goto_0
    sput v0, Lcom/aispeech/d;->d:I

    return-void

    :cond_1
    const/16 v0, 0x10

    goto :goto_0
.end method
