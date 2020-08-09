.class Lcom/aispeech/aios/BusClient$Log;
.super Ljava/lang/Object;
.source "BusClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/BusClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Log"
.end annotation


# static fields
.field private static androidLogd:Ljava/lang/reflect/Method;

.field private static androidLoge:Ljava/lang/reflect/Method;

.field private static androidLogi:Ljava/lang/reflect/Method;

.field private static androidLogv:Ljava/lang/reflect/Method;

.field private static androidLogw:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v1, 0x0

    sput-object v1, Lcom/aispeech/aios/BusClient$Log;->androidLogv:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/aispeech/aios/BusClient$Log;->androidLogd:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/aispeech/aios/BusClient$Log;->androidLogi:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/aispeech/aios/BusClient$Log;->androidLogw:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/aispeech/aios/BusClient$Log;->androidLoge:Ljava/lang/reflect/Method;

    :try_start_0
    const-string v1, "android.util.Log"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "v"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/aispeech/aios/BusClient$Log;->androidLogv:Ljava/lang/reflect/Method;

    const-string v1, "d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/aispeech/aios/BusClient$Log;->androidLogd:Ljava/lang/reflect/Method;

    const-string v1, "i"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/aispeech/aios/BusClient$Log;->androidLogi:Ljava/lang/reflect/Method;

    const-string v1, "w"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/aispeech/aios/BusClient$Log;->androidLogw:Ljava/lang/reflect/Method;

    const-string v1, "e"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/aispeech/aios/BusClient$Log;->androidLoge:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/aispeech/aios/BusClient$Log;->androidLogd:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1}, Lcom/aispeech/aios/BusClient$Log;->print(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/aispeech/aios/BusClient$Log;->androidLoge:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1}, Lcom/aispeech/aios/BusClient$Log;->print(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/aispeech/aios/BusClient$Log;->androidLogi:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1}, Lcom/aispeech/aios/BusClient$Log;->print(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static print(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    :try_start_0
    sget v0, Lcom/aispeech/aios/BusClient;->DEFAULT_LOGLEVEL:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v4, v4

    const v5, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/aispeech/aios/BusClient$Log;->androidLogv:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1}, Lcom/aispeech/aios/BusClient$Log;->print(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/aispeech/aios/BusClient$Log;->androidLogw:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1}, Lcom/aispeech/aios/BusClient$Log;->print(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
