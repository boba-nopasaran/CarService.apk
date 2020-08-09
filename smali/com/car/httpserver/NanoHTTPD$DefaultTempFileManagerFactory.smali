.class Lcom/car/httpserver/NanoHTTPD$DefaultTempFileManagerFactory;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lcom/car/httpserver/NanoHTTPD$TempFileManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultTempFileManagerFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/httpserver/NanoHTTPD;


# direct methods
.method private constructor <init>(Lcom/car/httpserver/NanoHTTPD;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD$DefaultTempFileManagerFactory;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/httpserver/NanoHTTPD;Lcom/car/httpserver/NanoHTTPD$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/httpserver/NanoHTTPD$DefaultTempFileManagerFactory;-><init>(Lcom/car/httpserver/NanoHTTPD;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/car/httpserver/NanoHTTPD$TempFileManager;
    .locals 1

    new-instance v0, Lcom/car/httpserver/NanoHTTPD$DefaultTempFileManager;

    invoke-direct {v0}, Lcom/car/httpserver/NanoHTTPD$DefaultTempFileManager;-><init>()V

    return-object v0
.end method
