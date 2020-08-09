.class public final Lorg/apache/commons/collections4/c/e;
.super Lorg/apache/commons/collections4/c/a;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/c/a",
        "<TE;>;",
        "Lorg/apache/commons/collections4/o",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static a:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/collections4/c/e;

    invoke-direct {v0}, Lorg/apache/commons/collections4/c/e;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/c/e;->a:Ljava/util/Iterator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/collections4/c/a;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/collections4/c/e;->a:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic hasNext()Z
    .locals 1

    invoke-super {p0}, Lorg/apache/commons/collections4/c/a;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/apache/commons/collections4/c/a;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/collections4/c/a;->remove()V

    return-void
.end method
