.class public Lcom/car/httpserver/NanoHTTPD$DefaultTempFile;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lcom/car/httpserver/NanoHTTPD$TempFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTempFile"
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field private final fstream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NanoHTTPD-"

    const-string v1, ""

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/car/httpserver/NanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/car/httpserver/NanoHTTPD$DefaultTempFile;->fstream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$DefaultTempFile;->fstream:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "could not delete temporary file"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$DefaultTempFile;->fstream:Ljava/io/OutputStream;

    return-object v0
.end method
