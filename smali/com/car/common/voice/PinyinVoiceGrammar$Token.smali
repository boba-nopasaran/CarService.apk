.class public final Lcom/car/common/voice/PinyinVoiceGrammar$Token;
.super Ljava/lang/Object;
.source "PinyinVoiceGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/common/voice/PinyinVoiceGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation


# instance fields
.field public hasInput:Z

.field public input:Ljava/lang/String;

.field public keyWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public subWord:Ljava/lang/String;

.field public words:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->subWord:Ljava/lang/String;

    iput-object v0, p0, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->input:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->hasInput:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->keyWords:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/common/voice/PinyinVoiceGrammar$Token;->words:Ljava/util/ArrayList;

    return-void
.end method
