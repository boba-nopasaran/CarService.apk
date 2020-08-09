.class public Lcom/car/common/voice/VoiceHelp$MyHelp;
.super Ljava/lang/Object;
.source "VoiceHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/common/voice/VoiceHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyHelp"
.end annotation


# instance fields
.field public category:Ljava/lang/String;

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/car/common/voice/VoiceHelp$MyHelp;->category:Ljava/lang/String;

    iput-object p2, p0, Lcom/car/common/voice/VoiceHelp$MyHelp;->prompt:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/common/voice/VoiceHelp$MyHelp;->items:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addItems(Ljava/lang/String;)V
    .locals 5

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/car/common/voice/VoiceHelp$MyHelp;->prompt:Ljava/lang/String;

    if-eqz v4, :cond_0

    const/16 v4, 0x7b

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/16 v4, 0x7d

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/car/common/voice/VoiceHelp$MyHelp;->prompt:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v4, p0, Lcom/car/common/voice/VoiceHelp$MyHelp;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
