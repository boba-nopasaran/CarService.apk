.class public Lcom/car/httpserver/NanoHTTPD$Cookie;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cookie"
.end annotation


# instance fields
.field private final e:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x1e

    invoke-direct {p0, p1, p2, v0}, Lcom/car/httpserver/NanoHTTPD$Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD$Cookie;->n:Ljava/lang/String;

    iput-object p2, p0, Lcom/car/httpserver/NanoHTTPD$Cookie;->v:Ljava/lang/String;

    invoke-static {p3}, Lcom/car/httpserver/NanoHTTPD$Cookie;->getHTTPTime(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/httpserver/NanoHTTPD$Cookie;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD$Cookie;->n:Ljava/lang/String;

    iput-object p2, p0, Lcom/car/httpserver/NanoHTTPD$Cookie;->v:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/httpserver/NanoHTTPD$Cookie;->e:Ljava/lang/String;

    return-void
.end method

.method public static getHTTPTime(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getHTTPHeader()Ljava/lang/String;
    .locals 4

    const-string v0, "%s=%s; expires=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/car/httpserver/NanoHTTPD$Cookie;->n:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/car/httpserver/NanoHTTPD$Cookie;->v:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/car/httpserver/NanoHTTPD$Cookie;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
