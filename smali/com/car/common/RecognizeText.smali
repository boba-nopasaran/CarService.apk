.class Lcom/car/common/RecognizeText;
.super Ljava/lang/Object;
.source "VoiceRecognizerImpl.java"


# instance fields
.field isLast:Z

.field text:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/car/common/RecognizeText;->isLast:Z

    iput-object p2, p0, Lcom/car/common/RecognizeText;->text:Ljava/lang/String;

    return-void
.end method
