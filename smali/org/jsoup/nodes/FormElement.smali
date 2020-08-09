.class public Lorg/jsoup/nodes/FormElement;
.super Lorg/jsoup/nodes/Element;
.source "FormElement.java"


# instance fields
.field private final elements:Lorg/jsoup/select/Elements;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/FormElement;->elements:Lorg/jsoup/select/Elements;

    return-void
.end method


# virtual methods
.method public addElement(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/FormElement;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/FormElement;->elements:Lorg/jsoup/select/Elements;

    invoke-virtual {v0, p1}, Lorg/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public elements()Lorg/jsoup/select/Elements;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/FormElement;->elements:Lorg/jsoup/select/Elements;

    return-object v0
.end method

.method public formData()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/Connection$KeyVal;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lorg/jsoup/nodes/FormElement;->elements:Lorg/jsoup/select/Elements;

    invoke-virtual {v8}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v9

    invoke-virtual {v9}, Lorg/jsoup/parser/Tag;->isFormSubmittable()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "disabled"

    invoke-virtual {v1, v9}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "name"

    invoke-virtual {v1, v9}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "type"

    invoke-virtual {v1, v9}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "select"

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "option[selected]"

    invoke-virtual {v1, v9}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    if-nez v5, :cond_0

    const-string v9, "option"

    invoke-virtual {v1, v9}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v9

    invoke-virtual {v9}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v9, "checkbox"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "radio"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_3
    const-string v9, "checked"

    invoke-virtual {v1, v9}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-static {v2, v7}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const-string v7, "on"

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method public submit()Lorg/jsoup/Connection;
    .locals 4

    const-string v2, "action"

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/FormElement;->hasAttr(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "action"

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/FormElement;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "Could not determine a form action URL for submit. Ensure you set a base URI when parsing."

    invoke-static {v0, v2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "method"

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/FormElement;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lorg/jsoup/Connection$Method;->POST:Lorg/jsoup/Connection$Method;

    :goto_1
    invoke-static {v0}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jsoup/nodes/FormElement;->formData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jsoup/Connection;->data(Ljava/util/Collection;)Lorg/jsoup/Connection;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/jsoup/Connection;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/FormElement;->baseUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    goto :goto_1
.end method
