.class public abstract Lcom/aispeech/aios/aimedia/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x3


# instance fields
.field protected b:I

.field protected c:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/aispeech/aios/aimedia/a/a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/a/a;->c:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method protected d()V
    .locals 2

    iget v0, p0, Lcom/aispeech/aios/aimedia/a/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aispeech/aios/aimedia/a/a;->b:I

    iget v0, p0, Lcom/aispeech/aios/aimedia/a/a;->b:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a;->c:Lcom/aispeech/aios/aimedia/listenner/SearchListnner;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method protected e()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/aispeech/aios/aimedia/a/a;->b:I

    return-void
.end method
