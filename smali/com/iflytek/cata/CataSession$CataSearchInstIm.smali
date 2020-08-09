.class Lcom/iflytek/cata/CataSession$CataSearchInstIm;
.super Ljava/lang/Object;
.source "CataSession.java"

# interfaces
.implements Lcom/iflytek/cata/CataSearchInst;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cata/CataSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CataSearchInstIm"
.end annotation


# instance fields
.field private cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

.field private tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/iflytek/cata/CataSession;


# direct methods
.method public constructor <init>(Lcom/iflytek/cata/CataSession;)V
    .locals 2

    iput-object p1, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->this$0:Lcom/iflytek/cata/CataSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CataSearchInst_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/cata/CataSession;->access$200()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->tag:Ljava/lang/String;

    invoke-static {}, Lcom/iflytek/cata/CataSession;->access$208()I

    new-instance v0, Lcom/iflytek/cata/CataNativeHandle;

    invoke-direct {v0}, Lcom/iflytek/cata/CataNativeHandle;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Lcom/iflytek/cata/ICataListener;)I
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    invoke-virtual {v0}, Lcom/iflytek/cata/CataNativeHandle;->reSet()V

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    invoke-static {}, Lcom/iflytek/cata/CataSession;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/iflytek/cata/libisscata;->SearchCreate(Lcom/iflytek/cata/CataNativeHandle;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cata/ICataListener;)V

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "libisscata.SearchCreate(mResDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/iflytek/cata/CataSession;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resNames="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    iget v2, v2, Lcom/iflytek/cata/CataNativeHandle;->err_ret:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    iget v0, v0, Lcom/iflytek/cata/CataNativeHandle;->err_ret:I

    return v0
.end method

.method public createEx(Ljava/lang/String;ILcom/iflytek/cata/ICataListener;)I
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    invoke-virtual {v0}, Lcom/iflytek/cata/CataNativeHandle;->reSet()V

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    invoke-static {}, Lcom/iflytek/cata/CataSession;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/iflytek/cata/libisscata;->SearchCreateEx(Lcom/iflytek/cata/CataNativeHandle;Ljava/lang/String;Ljava/lang/String;ILcom/iflytek/cata/ICataListener;)V

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "libisscata.SearchCreate(mResDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/iflytek/cata/CataSession;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resNames="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "langType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    iget v2, v2, Lcom/iflytek/cata/CataNativeHandle;->err_ret:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    iget v0, v0, Lcom/iflytek/cata/CataNativeHandle;->err_ret:I

    return v0
.end method

.method public destroy()I
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    invoke-static {v0}, Lcom/iflytek/cata/libisscata;->SearchDestroy(Lcom/iflytek/cata/CataNativeHandle;)V

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "libisscata.SearchDestroy ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    iget v2, v2, Lcom/iflytek/cata/CataNativeHandle;->err_ret:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    iget v0, v0, Lcom/iflytek/cata/CataNativeHandle;->err_ret:I

    return v0
.end method

.method public searchAsync(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    invoke-static {v0, p1}, Lcom/iflytek/cata/libisscata;->SearchAsync(Lcom/iflytek/cata/CataNativeHandle;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "libisscata.SearchAsync("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    iget v2, v2, Lcom/iflytek/cata/CataNativeHandle;->err_ret:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    iget v0, v0, Lcom/iflytek/cata/CataNativeHandle;->err_ret:I

    return v0
.end method

.method public searchSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling libisscata.SearchSync("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    invoke-static {v0, p1}, Lcom/iflytek/cata/libisscata;->SearchSync(Lcom/iflytek/cata/CataNativeHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setParam(II)I
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    invoke-static {v0, p1, p2}, Lcom/iflytek/cata/libisscata;->SetParam(Lcom/iflytek/cata/CataNativeHandle;II)V

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "libisscata.setParam ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    iget v2, v2, Lcom/iflytek/cata/CataNativeHandle;->err_ret:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;->cataNativeHandle:Lcom/iflytek/cata/CataNativeHandle;

    iget v0, v0, Lcom/iflytek/cata/CataNativeHandle;->err_ret:I

    return v0
.end method
