.class public Lcom/aispeech/aios/BusClient$Multipart;
.super Ljava/lang/Object;
.source "BusClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/BusClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Multipart"
.end annotation


# instance fields
.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aispeech/aios/BusClient$Multipart;->parts:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1400(Lcom/aispeech/aios/BusClient$Multipart;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$Multipart;->parts:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/aispeech/aios/BusClient$Multipart;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aispeech/aios/BusClient$Multipart;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$Multipart;->parts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;
    .locals 5

    array-length v3, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    iget-object v4, p0, Lcom/aispeech/aios/BusClient$Multipart;->parts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public varargs a([[B)Lcom/aispeech/aios/BusClient$Multipart;
    .locals 5

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$Multipart;->parts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public get(I)[B
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$Multipart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/BusClient$Multipart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$Multipart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$Multipart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$Multipart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toArray(II)[[B
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$Multipart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [[B

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    return-object v0
.end method
