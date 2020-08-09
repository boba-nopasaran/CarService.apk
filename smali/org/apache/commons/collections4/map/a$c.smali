.class final Lorg/apache/commons/collections4/map/a$c;
.super Lorg/apache/commons/collections4/d/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/d/c",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/collections4/map/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/a",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections4/map/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/a",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/d/c;-><init>(Ljava/util/Map$Entry;)V

    iput-object p2, p0, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a;

    return-void
.end method


# virtual methods
.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/a;->checkSetValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/a$c;->a()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
