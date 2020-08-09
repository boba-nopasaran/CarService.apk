.class public Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;
.super Ljava/lang/Object;


# instance fields
.field private albums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/Album;",
            ">;"
        }
    .end annotation
.end field

.field private categoryId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_id"
    .end annotation
.end field

.field private tagName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag_name"
    .end annotation
.end field

.field private totalCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_count"
    .end annotation
.end field

.field private totalPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_page"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbums()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/Album;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->albums:Ljava/util/List;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->categoryId:I

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->totalCount:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->totalPage:I

    return v0
.end method

.method public setAlbums(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/Album;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->albums:Ljava/util/List;

    return-void
.end method

.method public setCategoryId(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->categoryId:I

    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->tagName:Ljava/lang/String;

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->totalCount:I

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->totalPage:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchAlbumList [totalPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->totalPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->albums:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
