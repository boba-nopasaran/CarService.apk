.class final Lorg/apache/commons/collections4/map/Flat3Map$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/j;
.implements Lorg/apache/commons/collections4/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/j",
        "<TK;TV;>;",
        "Lorg/apache/commons/collections4/o",
        "<TK;>;"
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

.field private c:Z


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/Flat3Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/Flat3Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->b:I

    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->c:Z

    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->a:Lorg/apache/commons/collections4/map/Flat3Map;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->a:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$100(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->a:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$200(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->a:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$300(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->a:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$400(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->a:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$500(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->a:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$600(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->b:I

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->a:Lorg/apache/commons/collections4/map/Flat3Map;

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

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$e;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->c:Z

    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->b:I

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/Flat3Map$e;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->a:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/Flat3Map$e;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/Flat3Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->c:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$e;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Iterator["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/Flat3Map$e;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$e;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Iterator[]"

    goto :goto_0
.end method
