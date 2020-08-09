.class public abstract Lorg/apache/commons/collections4/f/b;
.super Lorg/apache/commons/collections4/a/a;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/a/a",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x40edf809f6364252L


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/collections4/a/a;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/a/a;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/f/b;->decorated()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/commons/collections4/a/a;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
