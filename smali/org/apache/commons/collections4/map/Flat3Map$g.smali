.class final Lorg/apache/commons/collections4/map/Flat3Map$g;
.super Lorg/apache/commons/collections4/map/Flat3Map$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/Flat3Map$a",
        "<TK;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/Flat3Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/Flat3Map",
            "<TK;*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/Flat3Map$a;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$g;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
