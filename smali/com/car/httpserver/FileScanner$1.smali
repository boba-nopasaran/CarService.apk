.class Lcom/car/httpserver/FileScanner$1;
.super Ljava/lang/Object;
.source "FileScanner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/FileScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/car/httpserver/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/httpserver/FileScanner;


# direct methods
.method constructor <init>(Lcom/car/httpserver/FileScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/FileScanner$1;->this$0:Lcom/car/httpserver/FileScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/car/httpserver/FileInfo;Lcom/car/httpserver/FileInfo;)I
    .locals 2

    iget-object v0, p1, Lcom/car/httpserver/FileInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/car/httpserver/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/car/httpserver/FileInfo;

    check-cast p2, Lcom/car/httpserver/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/car/httpserver/FileScanner$1;->compare(Lcom/car/httpserver/FileInfo;Lcom/car/httpserver/FileInfo;)I

    move-result v0

    return v0
.end method
