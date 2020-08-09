.class public Lcom/aispeech/aios/bean/MusicInfo;
.super Ljava/lang/Object;
.source "MusicInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/aios/bean/MusicInfo$SongInfo;
    }
.end annotation


# instance fields
.field private songInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/bean/MusicInfo$SongInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSongInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/bean/MusicInfo$SongInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aispeech/aios/bean/MusicInfo;->songInfos:Ljava/util/List;

    return-object v0
.end method

.method public setSongInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/bean/MusicInfo$SongInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/aispeech/aios/bean/MusicInfo;->songInfos:Ljava/util/List;

    return-void
.end method
