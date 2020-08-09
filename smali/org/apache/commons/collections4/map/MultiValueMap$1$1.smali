.class final Lorg/apache/commons/collections4/map/MultiValueMap$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/map/MultiValueMap$1;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/q",
        "<TV;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/apache/commons/collections4/map/MultiValueMap$1$1$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap$1$1$1;-><init>(Lorg/apache/commons/collections4/map/MultiValueMap$1$1;Ljava/lang/Object;)V

    return-object v0
.end method
