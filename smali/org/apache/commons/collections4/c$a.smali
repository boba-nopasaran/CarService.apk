.class Lorg/apache/commons/collections4/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TO;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TO;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TO;>;",
            "Ljava/lang/Iterable",
            "<+TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/commons/collections4/c;->a(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/c$a;->a:Ljava/util/Map;

    invoke-static {p2}, Lorg/apache/commons/collections4/c;->a(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/c$a;->b:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<*",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/c$a;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/c$a;->a(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/c$a;->b:Ljava/util/Map;

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/c$a;->a(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    return v0
.end method
