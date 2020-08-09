.class public final Lorg/apache/commons/collections4/b/a;
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


# static fields
.field private static a:Lorg/apache/commons/collections4/q;


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/collections4/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/b/a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/commons/collections4/b/a;->a:Lorg/apache/commons/collections4/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections4/b/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/Object;)Lorg/apache/commons/collections4/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(TO;)",
            "Lorg/apache/commons/collections4/q",
            "<TI;TO;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/commons/collections4/b/a;->a:Lorg/apache/commons/collections4/q;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/b/a;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/b/a;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/b/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/apache/commons/collections4/b/a;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/apache/commons/collections4/b/a;

    iget-object v2, p1, Lorg/apache/commons/collections4/b/a;->b:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/commons/collections4/b/a;->b:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_3

    iget-object v3, p0, Lorg/apache/commons/collections4/b/a;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    const-string v0, "ConstantTransformer"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/apache/commons/collections4/b/a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections4/b/a;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method
