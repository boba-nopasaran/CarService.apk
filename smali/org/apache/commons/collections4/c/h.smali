.class public final Lorg/apache/commons/collections4/c/h;
.super Lorg/apache/commons/collections4/c/b;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/j;
.implements Lorg/apache/commons/collections4/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/c/b",
        "<TK;TV;>;",
        "Lorg/apache/commons/collections4/j",
        "<TK;TV;>;",
        "Lorg/apache/commons/collections4/o",
        "<TK;>;"
    }
.end annotation


# static fields
.field private static a:Lorg/apache/commons/collections4/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/collections4/c/h;

    invoke-direct {v0}, Lorg/apache/commons/collections4/c/h;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/c/h;->a:Lorg/apache/commons/collections4/j;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/collections4/c/b;-><init>()V

    return-void
.end method

.method public static a()Lorg/apache/commons/collections4/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/j",
            "<TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/collections4/c/h;->a:Lorg/apache/commons/collections4/j;

    return-object v0
.end method
