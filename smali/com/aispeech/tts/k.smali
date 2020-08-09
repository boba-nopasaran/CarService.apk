.class public abstract Lcom/aispeech/tts/k;
.super Lcom/aispeech/speech/d;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/speech/d;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/aispeech/tts/k;->c:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aispeech/tts/k;->a(Z)V

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/aispeech/speech/d;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Z
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/tts/k;->c:I

    return-void
.end method

.method public final x()I
    .locals 1

    iget v0, p0, Lcom/aispeech/tts/k;->c:I

    return v0
.end method
