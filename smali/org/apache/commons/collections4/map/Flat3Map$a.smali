.class abstract Lorg/apache/commons/collections4/map/Flat3Map$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/collections4/map/Flat3Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/Flat3Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lorg/apache/commons/collections4/map/Flat3Map$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/Flat3Map$d",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/Flat3Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/Flat3Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$a;->c:Lorg/apache/commons/collections4/map/Flat3Map$d;

    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map$a;->a:Lorg/apache/commons/collections4/map/Flat3Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$a;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$d;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$a;->a:Lorg/apache/commons/collections4/map/Flat3Map;

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map$a;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map$a;->b:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/map/Flat3Map$d;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;I)V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$a;->c:Lorg/apache/commons/collections4/map/Flat3Map$d;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$a;->c:Lorg/apache/commons/collections4/map/Flat3Map$d;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$a;->b:I

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$a;->a:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$000(Lorg/apache/commons/collections4/map/Flat3Map;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$a;->c:Lorg/apache/commons/collections4/map/Flat3Map$d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$a;->c:Lorg/apache/commons/collections4/map/Flat3Map$d;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/Flat3Map$d;->a()V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$a;->a:Lorg/apache/commons/collections4/map/Flat3Map;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$a;->c:Lorg/apache/commons/collections4/map/Flat3Map$d;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/Flat3Map$d;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/Flat3Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$a;->c:Lorg/apache/commons/collections4/map/Flat3Map$d;

    return-void
.end method
