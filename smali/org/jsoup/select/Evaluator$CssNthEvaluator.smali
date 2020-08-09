.class public abstract Lorg/jsoup/select/Evaluator$CssNthEvaluator;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CssNthEvaluator"
.end annotation


# instance fields
.field protected final a:I

.field protected final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    iput p1, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    iput p2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    return-void
.end method


# virtual methods
.method protected abstract calculatePosition(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
.end method

.method protected abstract getPseudoClass()Ljava/lang/String;
.end method

.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v4, v0, Lorg/jsoup/nodes/Document;

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->calculatePosition(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I

    move-result v1

    iget v4, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    if-nez v4, :cond_3

    iget v4, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    if-eq v1, v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_3
    iget v4, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    sub-int v4, v1, v4

    iget v5, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    mul-int/2addr v4, v5

    if-ltz v4, :cond_4

    iget v4, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    sub-int v4, v1, v4

    iget v5, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    rem-int/2addr v4, v5

    if-eqz v4, :cond_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    if-nez v0, :cond_0

    const-string v0, ":%s(%d)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->getPseudoClass()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    if-nez v0, :cond_1

    const-string v0, ":%s(%dn)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->getPseudoClass()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ":%s(%dn%+d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->getPseudoClass()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
