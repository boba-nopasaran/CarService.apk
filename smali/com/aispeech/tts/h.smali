.class public final Lcom/aispeech/tts/h;
.super Lcom/aispeech/tts/f;
.source "SourceFile"


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aispeech/tts/f;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/aispeech/tts/h;->a:[B

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    iput-object p1, p0, Lcom/aispeech/tts/h;->a:[B

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/tts/h;->a:[B

    return-object v0
.end method
