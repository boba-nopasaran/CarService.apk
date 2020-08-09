.class public Lcom/aispeech/aios/aimedia/bean/ConfBean;
.super Ljava/lang/Object;


# instance fields
.field public fmIndex:I

.field public fmPackage:Ljava/lang/String;

.field public musicIndex:I

.field public musicPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/bean/ConfBean;->musicPackage:Ljava/lang/String;

    iput v1, p0, Lcom/aispeech/aios/aimedia/bean/ConfBean;->musicIndex:I

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/aios/aimedia/bean/ConfBean;->fmPackage:Ljava/lang/String;

    iput v1, p0, Lcom/aispeech/aios/aimedia/bean/ConfBean;->fmIndex:I

    return-void
.end method


# virtual methods
.method public getFmIndex()I
    .locals 1

    iget v0, p0, Lcom/aispeech/aios/aimedia/bean/ConfBean;->fmIndex:I

    return v0
.end method

.method public getFmPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/bean/ConfBean;->fmPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicIndex()I
    .locals 1

    iget v0, p0, Lcom/aispeech/aios/aimedia/bean/ConfBean;->musicIndex:I

    return v0
.end method

.method public getMusicPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/bean/ConfBean;->musicPackage:Ljava/lang/String;

    return-object v0
.end method

.method public setFmIndex(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/aios/aimedia/bean/ConfBean;->fmIndex:I

    return-void
.end method

.method public setFmPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/bean/ConfBean;->fmPackage:Ljava/lang/String;

    return-void
.end method

.method public setMusicIndex(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/aios/aimedia/bean/ConfBean;->musicIndex:I

    return-void
.end method

.method public setMusicPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/bean/ConfBean;->musicPackage:Ljava/lang/String;

    return-void
.end method
