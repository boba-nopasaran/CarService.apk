.class public Lcom/amap/api/col/du;
.super Ljava/lang/Object;
.source "StrategyConvert.java"


# direct methods
.method public static a(ZZZZ)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    const-string v1, "1"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_3

    const-string v1, "1"

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_4
    return v0

    :cond_0
    const-string v1, "0"

    goto :goto_0

    :cond_1
    const-string v1, "0"

    goto :goto_1

    :cond_2
    const-string v1, "0"

    goto :goto_2

    :cond_3
    const-string v1, "0"

    goto :goto_3

    :sswitch_0
    const/16 v0, 0xa

    goto :goto_4

    :sswitch_1
    const/16 v0, 0xc

    goto :goto_4

    :sswitch_2
    const/16 v0, 0xe

    goto :goto_4

    :sswitch_3
    const/16 v0, 0xd

    goto :goto_4

    :sswitch_4
    const/16 v0, 0x13

    goto :goto_4

    :sswitch_5
    const/16 v0, 0x11

    goto :goto_4

    :sswitch_6
    const/16 v0, 0xf

    goto :goto_4

    :sswitch_7
    const/16 v0, 0x14

    goto :goto_4

    :sswitch_8
    const/16 v0, 0x10

    goto :goto_4

    :sswitch_9
    const/16 v0, 0x12

    goto :goto_4

    :sswitch_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u9ad8\u901f\u4f18\u5148\u4e0e\u4e0d\u8d70\u9ad8\u901f\u4e0d\u80fd\u540c\u65f6\u4e3atrue"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :sswitch_b
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u9ad8\u901f\u4f18\u5148\u4e0e\u907f\u514d\u6536\u8d39\u4e0d\u80fd\u540c\u65f6\u4e3atrue"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_4
        0xa -> :sswitch_2
        0xb -> :sswitch_b
        0x64 -> :sswitch_3
        0x65 -> :sswitch_a
        0x6e -> :sswitch_8
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_7
        0x3f2 -> :sswitch_5
        0x44c -> :sswitch_6
        0x456 -> :sswitch_9
    .end sparse-switch
.end method

.method public static a(I)[I
    .locals 6

    const/4 v1, 0x4

    const v5, 0x861078

    const v4, 0x41028

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    aput v2, v0, v2

    aput v4, v0, v3

    goto :goto_0

    :pswitch_1
    aput v3, v0, v2

    const v1, 0xc1028

    aput v1, v0, v3

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    aput v1, v0, v2

    aput v4, v0, v3

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x5

    aput v1, v0, v2

    aput v4, v0, v3

    goto :goto_0

    :pswitch_4
    aput v1, v0, v2

    aput v4, v0, v3

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x9

    aput v1, v0, v2

    aput v4, v0, v3

    goto :goto_0

    :pswitch_6
    aput v2, v0, v2

    const v1, 0x241028

    aput v1, v0, v3

    goto :goto_0

    :pswitch_7
    aput v3, v0, v2

    const v1, 0x241028

    aput v1, v0, v3

    goto :goto_0

    :pswitch_8
    const/16 v1, 0xc

    aput v1, v0, v2

    aput v4, v0, v3

    goto :goto_0

    :pswitch_9
    const/16 v1, 0xc

    aput v1, v0, v2

    const v1, 0x241028

    aput v1, v0, v3

    goto :goto_0

    :pswitch_a
    const/16 v1, 0xd

    aput v1, v0, v2

    aput v5, v0, v3

    goto :goto_0

    :pswitch_b
    const/16 v1, 0x9

    aput v1, v0, v2

    aput v5, v0, v3

    goto :goto_0

    :pswitch_c
    aput v1, v0, v2

    aput v5, v0, v3

    goto :goto_0

    :pswitch_d
    aput v2, v0, v2

    const v1, 0xa61078

    aput v1, v0, v3

    goto :goto_0

    :pswitch_e
    aput v3, v0, v2

    aput v5, v0, v3

    goto :goto_0

    :pswitch_f
    aput v1, v0, v2

    const v1, 0xa61078

    aput v1, v0, v3

    goto :goto_0

    :pswitch_10
    aput v3, v0, v2

    const v1, 0xa61078

    aput v1, v0, v3

    goto :goto_0

    :pswitch_11
    const/16 v1, 0xc

    aput v1, v0, v2

    aput v5, v0, v3

    goto :goto_0

    :pswitch_12
    const/16 v1, 0xc

    aput v1, v0, v2

    const v1, 0xa61078

    aput v1, v0, v3

    goto/16 :goto_0

    :pswitch_13
    aput v2, v0, v2

    const v1, 0x86107a

    aput v1, v0, v3

    goto/16 :goto_0

    :pswitch_14
    aput v1, v0, v2

    const v1, 0x86107a

    aput v1, v0, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
