.class public Lcom/amap/api/col/dn;
.super Ljava/lang/Object;
.source "RestFront.java"


# direct methods
.method public static a(Ljava/lang/String;Lcom/amap/api/col/gn;)I
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/amap/api/col/gn;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/col/gn;->a:[B

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "\"status\":\"0\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ATest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9519\u8bef\u7801:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/amap/api/col/dn;->a(Ljava/lang/String;)Lcom/amap/api/col/do;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/dn;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/col/do;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/col/do;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x12

    const/16 v1, 0x11

    const/16 v2, 0x13

    invoke-virtual {p2}, Lcom/amap/api/col/do;->a()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/amap/api/col/ds;->a()Lcom/amap/api/col/eo;

    move-result-object v3

    invoke-virtual {p2}, Lcom/amap/api/col/do;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/amap/api/col/do;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, p0, v4, p1, v5}, Lcom/amap/api/col/ew;->a(Lcom/amap/api/col/eo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/col/do;->b()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v0, v2

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x16

    goto :goto_0

    :sswitch_3
    move v0, v1

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x17

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x18

    goto :goto_0

    :sswitch_6
    move v0, v1

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x19

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x1a

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_1
        0x2713 -> :sswitch_3
        0x2714 -> :sswitch_4
        0x2718 -> :sswitch_2
        0x2719 -> :sswitch_5
        0x2720 -> :sswitch_6
        0x4e20 -> :sswitch_0
        0x4e21 -> :sswitch_0
        0x5140 -> :sswitch_7
        0x5143 -> :sswitch_8
    .end sparse-switch
.end method

.method private static a(Ljava/lang/String;)Lcom/amap/api/col/do;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/col/do;

    invoke-direct {v0}, Lcom/amap/api/col/do;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "info"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "infocode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/col/do;->a(I)V

    invoke-virtual {v0, v3}, Lcom/amap/api/col/do;->a(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/do;->b(I)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 4

    const-string v1, ""

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/amap/api/col/ds;->a()Lcom/amap/api/col/eo;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, p0, v0, v3, v1}, Lcom/amap/api/col/ew;->a(Lcom/amap/api/col/eo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_1
    const-string v1, "5011"

    const-string v0, "\u8d77\u70b9\u9519\u8bef"

    goto :goto_0

    :pswitch_2
    const-string v1, "5012"

    const-string v0, "\u7ec8\u70b9\u9519\u8bef"

    goto :goto_0

    :pswitch_3
    const-string v1, "5013"

    const-string v0, "\u9014\u7ecf\u70b9\u9519\u8bef"

    goto :goto_0

    :pswitch_4
    const-string v1, "5021"

    const-string v0, "\u8d77\u70b9\u627e\u4e0d\u5230\u9053\u8def"

    goto :goto_0

    :pswitch_5
    const-string v1, "5022"

    const-string v0, "\u7ec8\u70b9\u627e\u4e0d\u5230\u9053\u8def"

    goto :goto_0

    :pswitch_6
    const-string v1, "5023"

    const-string v0, "\u9014\u7ecf\u70b9\u627e\u4e0d\u5230\u9053\u8def"

    goto :goto_0

    :pswitch_7
    const-string v1, "5031"

    const-string v0, "\u8bf7\u6c42\u534f\u8bae\u975e\u6cd5"

    goto :goto_0

    :pswitch_8
    const-string v1, "5041"

    const-string v0, "\u7b97\u8def\u670d\u52a1\u7aef\u7f16\u7801\u5931\u8d25"

    goto :goto_0

    :pswitch_9
    const-string v1, "5042"

    const-string v0, "\u7b97\u8def\u5931\u8d25\u672a\u77e5\u9519\u8bef"

    goto :goto_0

    :pswitch_a
    const-string v1, "5051"

    const-string v0, "\u8def\u5f84\u8ddd\u79bb\u592a\u957f"

    goto :goto_0

    :pswitch_b
    const-string v1, "5052"

    const-string v0, "\u8def\u5f84\u6570\u636e\u7f3a\u4e4f\u9884\u89c8\u6570\u636e"

    goto :goto_0

    :pswitch_c
    const-string v1, "5053"

    const-string v0, "Buf\u6570\u636e\u683c\u5f0f\u9519\u8bef"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_3
    .end packed-switch
.end method
