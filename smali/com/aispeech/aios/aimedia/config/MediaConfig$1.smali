.class final Lcom/aispeech/aios/aimedia/config/MediaConfig$1;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "cn.kuwo.kwmusiccar"

    invoke-virtual {p0, v0}, Lcom/aispeech/aios/aimedia/config/MediaConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.hongfans.rearview"

    invoke-virtual {p0, v0}, Lcom/aispeech/aios/aimedia/config/MediaConfig$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
