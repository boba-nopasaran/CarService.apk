.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$7;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 5

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_0
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_2
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 39

    sget-object v36, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v37

    aget v36, v36, v37

    packed-switch v36, :pswitch_data_0

    :cond_0
    :goto_0
    const/16 v36, 0x1

    :goto_1
    return v36

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v36

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$400()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v36, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v36

    if-eqz v36, :cond_2

    invoke-static {v8}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v36

    if-eqz v36, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v36, 0x0

    goto :goto_1

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lorg/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v23

    const-string v36, "a"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_4

    const-string v36, "a"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v36

    if-eqz v36, :cond_3

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const-string v36, "a"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    const-string v36, "a"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v27

    if-eqz v27, :cond_3

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$500()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_5

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$600()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_7

    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_6

    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_6
    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_7
    const-string v36, "span"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_8

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_8
    const-string v36, "li"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_d

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v36

    add-int/lit8 v19, v36, -0x1

    :goto_2
    if-lez v19, :cond_9

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jsoup/nodes/Element;

    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    const-string v37, "li"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_b

    const-string v36, "li"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_9
    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_a

    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_a
    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v36

    if-eqz v36, :cond_c

    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$700()[Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_9

    :cond_c
    add-int/lit8 v19, v19, -0x1

    goto :goto_2

    :cond_d
    const-string v36, "html"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_f

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v36

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/jsoup/nodes/Element;

    invoke-virtual/range {v34 .. v34}, Lorg/jsoup/parser/Token$StartTag;->getAttributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_e
    :goto_3
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_0

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v6}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_e

    invoke-virtual/range {v18 .. v18}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    goto :goto_3

    :cond_f
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$800()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_10

    sget-object v36, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v36

    goto/16 :goto_1

    :cond_10
    const-string v36, "body"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_14

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_11

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v36

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_12

    const/16 v36, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lorg/jsoup/nodes/Element;

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    const-string v37, "body"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_12

    :cond_11
    const/16 v36, 0x0

    goto/16 :goto_1

    :cond_12
    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    const/16 v36, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Element;

    invoke-virtual/range {v34 .. v34}, Lorg/jsoup/parser/Token$StartTag;->getAttributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_13
    :goto_4
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_0

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v6}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_13

    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    goto :goto_4

    :cond_14
    const-string v36, "frameset"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1a

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_15

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v36

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_16

    const/16 v36, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lorg/jsoup/nodes/Element;

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    const-string v37, "body"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_16

    :cond_15
    const/16 v36, 0x0

    goto/16 :goto_1

    :cond_16
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v36

    if-nez v36, :cond_17

    const/16 v36, 0x0

    goto/16 :goto_1

    :cond_17
    const/16 v36, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/jsoup/nodes/Element;

    invoke-virtual/range {v29 .. v29}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v36

    if-eqz v36, :cond_18

    invoke-virtual/range {v29 .. v29}, Lorg/jsoup/nodes/Element;->remove()V

    :cond_18
    :goto_5
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_19

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_19
    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    sget-object v36, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_1a
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$900()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1d

    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1b

    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$900()[Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1c

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    :cond_1c
    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_1d
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1000()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1f

    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1e

    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_1e
    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    :cond_1f
    const-string v36, "form"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_22

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v36

    if-eqz v36, :cond_20

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v36, 0x0

    goto/16 :goto_1

    :cond_20
    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_21

    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_21
    const/16 v36, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertForm(Lorg/jsoup/parser/Token$StartTag;Z)Lorg/jsoup/nodes/FormElement;

    goto/16 :goto_0

    :cond_22
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1100()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_27

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v36

    add-int/lit8 v19, v36, -0x1

    :goto_6
    if-lez v19, :cond_23

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jsoup/nodes/Element;

    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1100()[Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_25

    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_23
    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_24

    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_24
    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_25
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v36

    if-eqz v36, :cond_26

    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$700()[Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_23

    :cond_26
    add-int/lit8 v19, v19, -0x1

    goto :goto_6

    :cond_27
    const-string v36, "plaintext"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_29

    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_28

    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_28
    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    move-object/from16 v36, v0

    sget-object v37, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual/range {v36 .. v37}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto/16 :goto_0

    :cond_29
    const-string v36, "button"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_2b

    const-string v36, "button"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_2a

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const-string v36, "button"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    goto/16 :goto_0

    :cond_2a
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    :cond_2b
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1200()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_2c

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_0

    :cond_2c
    const-string v36, "nobr"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_2e

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    const-string v36, "nobr"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_2d

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const-string v36, "nobr"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    :cond_2d
    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_0

    :cond_2e
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1300()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_2f

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    :cond_2f
    const-string v36, "table"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_31

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/nodes/Document;->quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v36

    sget-object v37, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_30

    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_30

    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_30
    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    sget-object v36, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_31
    const-string v36, "input"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_32

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v13

    const-string v36, "type"

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v37, "hidden"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_0

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    :cond_32
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1400()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_33

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_33
    const-string v36, "hr"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_35

    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_34

    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_34
    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    :cond_35
    const-string v36, "image"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_37

    const-string v36, "svg"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v36

    if-nez v36, :cond_36

    const-string v36, "img"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Token$StartTag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v36

    goto/16 :goto_1

    :cond_36
    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_37
    const-string v36, "isindex"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3d

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v36

    if-eqz v36, :cond_38

    const/16 v36, 0x0

    goto/16 :goto_1

    :cond_38
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    const-string v36, "form"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    move-object/from16 v36, v0

    const-string v37, "action"

    invoke-virtual/range {v36 .. v37}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_39

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v15

    const-string v36, "action"

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    move-object/from16 v37, v0

    const-string v38, "action"

    invoke-virtual/range {v37 .. v38}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v15, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :cond_39
    const-string v36, "hr"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    const-string v36, "label"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    move-object/from16 v36, v0

    const-string v37, "prompt"

    invoke-virtual/range {v36 .. v37}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_3b

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    move-object/from16 v36, v0

    const-string v37, "prompt"

    invoke-virtual/range {v36 .. v37}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    :goto_7
    new-instance v36, Lorg/jsoup/parser/Token$Character;

    invoke-direct/range {v36 .. v36}, Lorg/jsoup/parser/Token$Character;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lorg/jsoup/parser/Token$Character;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    new-instance v20, Lorg/jsoup/nodes/Attributes;

    invoke-direct/range {v20 .. v20}, Lorg/jsoup/nodes/Attributes;-><init>()V

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_3a
    :goto_8
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_3c

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v5}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v37

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1500()[Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_3a

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    goto :goto_8

    :cond_3b
    const-string v26, "This is a searchable index. Enter search keywords: "

    goto :goto_7

    :cond_3c
    const-string v36, "name"

    const-string v37, "isindex"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v36, "input"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Z

    const-string v36, "label"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    const-string v36, "hr"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    const-string v36, "form"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_3d
    const-string v36, "textarea"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3e

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    move-object/from16 v36, v0

    sget-object v37, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual/range {v36 .. v37}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    sget-object v36, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_3e
    const-string v36, "xmp"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_40

    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_3f

    const-string v36, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_3f
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_0

    :cond_40
    const-string v36, "iframe"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_41

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_0

    :cond_41
    const-string v36, "noembed"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_42

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_0

    :cond_42
    const-string v36, "select"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_45

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->state()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v35

    sget-object v36, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual/range {v35 .. v36}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_43

    sget-object v36, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual/range {v35 .. v36}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_43

    sget-object v36, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual/range {v35 .. v36}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_43

    sget-object v36, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual/range {v35 .. v36}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_43

    sget-object v36, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual/range {v35 .. v36}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_44

    :cond_43
    sget-object v36, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_44
    sget-object v36, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_45
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1600()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_47

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    const-string v37, "option"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_46

    const-string v36, "option"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_46
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_47
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1700()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_49

    const-string v36, "ruby"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    const-string v37, "ruby"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_48

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const-string v36, "ruby"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToBefore(Ljava/lang/String;)V

    :cond_48
    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_49
    const-string v36, "math"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_4a

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    goto/16 :goto_0

    :cond_4a
    const-string v36, "svg"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_4b

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    goto/16 :goto_0

    :cond_4b
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1800()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_4c

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v36, 0x0

    goto/16 :goto_1

    :cond_4c
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v14

    invoke-virtual {v14}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1900()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_5f

    const/16 v19, 0x0

    :goto_9
    const/16 v36, 0x8

    move/from16 v0, v19

    move/from16 v1, v36

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v16

    if-nez v16, :cond_4d

    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v36

    goto/16 :goto_1

    :cond_4d
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v36

    if-nez v36, :cond_4e

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    const/16 v36, 0x1

    goto/16 :goto_1

    :cond_4e
    invoke-virtual/range {v16 .. v16}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_4f

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v36, 0x0

    goto/16 :goto_1

    :cond_4f
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_50

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_50
    const/16 v17, 0x0

    const/4 v11, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v33

    const/16 v31, 0x0

    :goto_a
    move/from16 v0, v31

    move/from16 v1, v33

    if-ge v0, v1, :cond_53

    const/16 v36, 0x40

    move/from16 v0, v31

    move/from16 v1, v36

    if-ge v0, v1, :cond_53

    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jsoup/nodes/Element;

    move-object/from16 v0, v16

    if-ne v13, v0, :cond_52

    add-int/lit8 v36, v31, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jsoup/nodes/Element;

    const/16 v30, 0x1

    :cond_51
    add-int/lit8 v31, v31, 0x1

    goto :goto_a

    :cond_52
    if-eqz v30, :cond_51

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v36

    if-eqz v36, :cond_51

    move-object/from16 v17, v13

    :cond_53
    if-nez v17, :cond_54

    invoke-virtual/range {v16 .. v16}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    const/16 v36, 0x1

    goto/16 :goto_1

    :cond_54
    move-object/from16 v24, v17

    move-object/from16 v22, v17

    const/16 v21, 0x0

    :goto_b
    const/16 v36, 0x3

    move/from16 v0, v21

    move/from16 v1, v36

    if-ge v0, v1, :cond_57

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v36

    if-eqz v36, :cond_55

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v24

    :cond_55
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->isInActiveFormattingElements(Lorg/jsoup/nodes/Element;)Z

    move-result v36

    if-nez v36, :cond_56

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    :goto_c
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    :cond_56
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_59

    :cond_57
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$2000()[Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_5c

    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v36

    if-eqz v36, :cond_58

    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Element;->remove()V

    :cond_58
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertInFosterParent(Lorg/jsoup/nodes/Node;)V

    :goto_d
    new-instance v4, Lorg/jsoup/nodes/Element;

    invoke-virtual/range {v16 .. v16}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v36

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-direct {v4, v0, v1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v36

    invoke-virtual/range {v16 .. v16}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    invoke-virtual/range {v17 .. v17}, Lorg/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object v36

    invoke-virtual/range {v17 .. v17}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v37

    move/from16 v0, v37

    new-array v0, v0, [Lorg/jsoup/nodes/Node;

    move-object/from16 v37, v0

    invoke-interface/range {v36 .. v37}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lorg/jsoup/nodes/Node;

    array-length v0, v10

    move/from16 v37, v0

    const/16 v36, 0x0

    :goto_e
    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_5e

    aget-object v9, v10, v36

    invoke-virtual {v4, v9}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    add-int/lit8 v36, v36, 0x1

    goto :goto_e

    :cond_59
    new-instance v28, Lorg/jsoup/nodes/Element;

    invoke-virtual/range {v24 .. v24}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v36

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceActiveFormattingElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceOnStack(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    move-object/from16 v24, v28

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5a

    :cond_5a
    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v36

    if-eqz v36, :cond_5b

    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Element;->remove()V

    :cond_5b
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-object/from16 v22, v24

    goto/16 :goto_c

    :cond_5c
    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v36

    if-eqz v36, :cond_5d

    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Element;->remove()V

    :cond_5d
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_d

    :cond_5e
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertOnStackAfter(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_9

    :cond_5f
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$2100()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_62

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_60

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v36, 0x0

    goto/16 :goto_1

    :cond_60
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_61

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_61
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_62
    const-string v36, "span"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_63

    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v36

    goto/16 :goto_1

    :cond_63
    const-string v36, "li"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_66

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inListItemScope(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_64

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v36, 0x0

    goto/16 :goto_1

    :cond_64
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_65

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_65
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_66
    const-string v36, "body"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_68

    const-string v36, "body"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_67

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v36, 0x0

    goto/16 :goto_1

    :cond_67
    sget-object v36, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_68
    const-string v36, "html"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_69

    const-string v36, "body"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v36

    goto/16 :goto_1

    :cond_69
    const-string v36, "form"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_6d

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v12

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lorg/jsoup/nodes/FormElement;)V

    if-eqz v12, :cond_6a

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_6b

    :cond_6a
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v36, 0x0

    goto/16 :goto_1

    :cond_6b
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_6c

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_6c
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    goto/16 :goto_0

    :cond_6d
    const-string v36, "p"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_70

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_6e

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v36

    goto/16 :goto_1

    :cond_6e
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_6f

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_6f
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_70
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1100()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_73

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_71

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v36, 0x0

    goto/16 :goto_1

    :cond_71
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_72

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_72
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_73
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$900()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_76

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$900()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope([Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_74

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v36, 0x0

    goto/16 :goto_1

    :cond_74
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_75

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_75
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$900()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_76
    const-string v36, "sarcasm"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_77

    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v36

    goto/16 :goto_1

    :cond_77
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1300()[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_7a

    const-string v36, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_78

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v36, 0x0

    goto/16 :goto_1

    :cond_78
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_79

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_79
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    goto/16 :goto_0

    :cond_7a
    const-string v36, "br"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_7b

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const-string v36, "br"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    const/16 v36, 0x0

    goto/16 :goto_1

    :cond_7b
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v36

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
