.class public Lcom/aispeech/aios/aimedia/config/MediaConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/aios/aimedia/config/MediaConfig$PlayMode;,
        Lcom/aispeech/aios/aimedia/config/MediaConfig$FMIndex;,
        Lcom/aispeech/aios/aimedia/config/MediaConfig$MusicIndex;,
        Lcom/aispeech/aios/aimedia/config/MediaConfig$FMPackge;,
        Lcom/aispeech/aios/aimedia/config/MediaConfig$MusicPackge;
    }
.end annotation


# static fields
.field public static fmPackges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static musicPackges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aispeech/aios/aimedia/config/MediaConfig$1;

    invoke-direct {v0}, Lcom/aispeech/aios/aimedia/config/MediaConfig$1;-><init>()V

    sput-object v0, Lcom/aispeech/aios/aimedia/config/MediaConfig;->musicPackges:Ljava/util/ArrayList;

    new-instance v0, Lcom/aispeech/aios/aimedia/config/MediaConfig$2;

    invoke-direct {v0}, Lcom/aispeech/aios/aimedia/config/MediaConfig$2;-><init>()V

    sput-object v0, Lcom/aispeech/aios/aimedia/config/MediaConfig;->fmPackges:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFMIndexFromPackages(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "com.ximalaya.ting.android.car"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "com.hongfans.rearview"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "com.edog.car"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getMusicIndexFromPackages(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "cn.kuwo.kwmusiccar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "com.hongfans.rearview"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
