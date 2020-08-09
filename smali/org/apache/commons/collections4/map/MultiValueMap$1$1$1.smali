.class final Lorg/apache/commons/collections4/map/MultiValueMap$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/MultiValueMap$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Object;

.field private synthetic b:Lorg/apache/commons/collections4/map/MultiValueMap$1$1;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/MultiValueMap$1$1;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1$1$1;->b:Lorg/apache/commons/collections4/map/MultiValueMap$1$1;

    iput-object p2, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1$1$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1$1$1;->b:Lorg/apache/commons/collections4/map/MultiValueMap$1$1;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/MultiValueMap$1$1;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1$1$1;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
