.class public final Lcom/aispeech/tts/i;
.super Lcom/aispeech/tts/f;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aispeech/tts/f;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/aispeech/tts/i;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/aispeech/tts/i;->a:Ljava/io/File;

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/i;->a:Ljava/io/File;

    return-object v0
.end method
