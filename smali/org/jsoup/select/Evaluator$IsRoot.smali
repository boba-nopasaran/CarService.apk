.class public final Lorg/jsoup/select/Evaluator$IsRoot;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsRoot"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v2, p1, Lorg/jsoup/nodes/Document;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->child(I)Lorg/jsoup/nodes/Element;

    move-result-object v0

    :goto_0
    if-ne p2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":root"

    return-object v0
.end method
