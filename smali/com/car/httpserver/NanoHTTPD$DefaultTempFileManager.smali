.class public Lcom/car/httpserver/NanoHTTPD$DefaultTempFileManager;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lcom/car/httpserver/NanoHTTPD$TempFileManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTempFileManager"
.end annotation


# instance fields
.field private final tempFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/httpserver/NanoHTTPD$TempFile;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpdir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/httpserver/NanoHTTPD$DefaultTempFileManager;->tmpdir:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/httpserver/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    iget-object v3, p0, Lcom/car/httpserver/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/httpserver/NanoHTTPD$TempFile;

    :try_start_0
    invoke-interface {v0}, Lcom/car/httpserver/NanoHTTPD$TempFile;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "CarSvc_NanoHTTPD"

    const-string v4, "could not delete file "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/car/httpserver/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    return-void
.end method

.method public createTempFile()Lcom/car/httpserver/NanoHTTPD$TempFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/car/httpserver/NanoHTTPD$DefaultTempFile;

    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD$DefaultTempFileManager;->tmpdir:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/car/httpserver/NanoHTTPD$DefaultTempFile;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
