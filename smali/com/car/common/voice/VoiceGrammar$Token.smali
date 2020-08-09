.class public final Lcom/car/common/voice/VoiceGrammar$Token;
.super Ljava/lang/Object;
.source "VoiceGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/common/voice/VoiceGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field placehold:Z

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/car/common/voice/VoiceGrammar$Token;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/car/common/voice/VoiceGrammar$Token;->placehold:Z

    return-void
.end method
