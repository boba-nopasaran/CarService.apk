.class public Lcom/car/httpserver/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field public duration:I

.field public fileType:I

.field public height:I

.field public isDirectory:Z

.field public lsize:J

.field public modifytime:J

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public sduration:Ljava/lang/String;

.field public selected:Z

.field public size:Ljava/lang/String;

.field public sub:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/car/httpserver/FileInfo;->fileType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/car/httpserver/FileInfo;->lsize:J

    iput v2, p0, Lcom/car/httpserver/FileInfo;->sub:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/car/httpserver/FileInfo;->fileType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/car/httpserver/FileInfo;->lsize:J

    iput v2, p0, Lcom/car/httpserver/FileInfo;->sub:I

    iput-object p1, p0, Lcom/car/httpserver/FileInfo;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/car/httpserver/FileInfo;->isDirectory:Z

    iput-boolean v2, p0, Lcom/car/httpserver/FileInfo;->selected:Z

    return-void
.end method


# virtual methods
.method public getFullPath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/car/httpserver/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/car/httpserver/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/car/httpserver/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/car/httpserver/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/car/httpserver/FileInfo;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
