.class public final Lorg/apache/commons/collections4/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections4/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lorg/apache/commons/collections4/q",
        "<TI;TO;>;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/collections4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/d",
            "<+TO;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/d",
            "<+TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections4/b/b;->a:Lorg/apache/commons/collections4/d;

    return-void
.end method

.method public static a(Lorg/apache/commons/collections4/d;)Lorg/apache/commons/collections4/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/d",
            "<+TO;>;)",
            "Lorg/apache/commons/collections4/q",
            "<TI;TO;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/b/b;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/b/b;-><init>(Lorg/apache/commons/collections4/d;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/b/b;->a:Lorg/apache/commons/collections4/d;

    invoke-interface {v0}, Lorg/apache/commons/collections4/d;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
