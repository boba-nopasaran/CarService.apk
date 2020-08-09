.class public Lcom/car/jiazu/KeysClass;
.super Ljava/lang/Object;
.source "KeysClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/jiazu/KeysClass$Keys;,
        Lcom/car/jiazu/KeysClass$KeyVal;
    }
.end annotation


# static fields
.field public static final KEY_CODES_BREAK:I = 0x42

.field public static final KEY_CODES_CALL:I = 0x43

.field public static final KEY_CODES_DOWN:I = 0x44

.field public static final KEY_CODES_LEFT:I = 0x4c

.field public static final KEY_CODES_NULL:I = 0x0

.field public static final KEY_CODES_RIGHT:I = 0x52

.field public static final KEY_CODES_TEST:I = 0xfe

.field public static final KEY_CODES_UP:I = 0x55

.field public static final KEY_CODES_VOICE:I = 0x56

.field public static final KEY_DATA_SCRAMBLER:I = 0x5b

.field public static final KEY_HW_CODE_CENTRE:I = 0x43

.field public static final KEY_HW_CODE_DOWN:I = 0x4c

.field public static final KEY_HW_CODE_LEFT:I = 0x42

.field public static final KEY_HW_CODE_RIGHT:I = 0x56

.field public static final KEY_HW_CODE_UP:I = 0x52

.field public static final KEY_HW_N_ROTATE:I = 0x55

.field public static final KEY_HW_ROTATE:I = 0x24


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DeCrypt(Ljava/lang/String;[B)Lcom/car/jiazu/KeysClass$Keys;
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x6

    new-array v1, v3, [B

    new-instance v0, Lcom/car/jiazu/KeysClass$Keys;

    invoke-direct {v0}, Lcom/car/jiazu/KeysClass$Keys;-><init>()V

    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/car/jiazu/KeysClass$Keys;->version:I

    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x11

    if-ne v3, v4, :cond_0

    const-string v3, "my_bt"

    const-string v4, "\u7248\u672c: v1.1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/car/jiazu/HexClass;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    aget-byte v3, v1, v10

    const/4 v4, 0x5

    aget-byte v4, v1, v4

    xor-int/2addr v3, v4

    and-int/lit16 v2, v3, 0xff

    const-string v3, "my_bt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u68c0\u9a8c\u7801  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aget-byte v3, p1, v6

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_2

    const-string v3, "my_bt"

    const-string v4, "\u7248\u672c\u6821\u9a8c\u901a\u8fc7"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    iget v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    aget-byte v4, v1, v6

    const/high16 v5, 0x1000000

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    iget v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    aget-byte v4, v1, v8

    const/high16 v5, 0x10000

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    iget v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    aget-byte v4, v1, v7

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v3, v4

    iput v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    iget v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    aget-byte v4, v1, v9

    add-int/2addr v3, v4

    iput v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    iget v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    and-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    iput v6, v0, Lcom/car/jiazu/KeysClass$Keys;->order:I

    iget v3, v0, Lcom/car/jiazu/KeysClass$Keys;->order:I

    aget-byte v4, v1, v10

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v3, v4

    iput v3, v0, Lcom/car/jiazu/KeysClass$Keys;->order:I

    iget v3, v0, Lcom/car/jiazu/KeysClass$Keys;->order:I

    const/4 v4, 0x5

    aget-byte v4, v1, v4

    add-int/2addr v3, v4

    iput v3, v0, Lcom/car/jiazu/KeysClass$Keys;->order:I

    iget v3, v0, Lcom/car/jiazu/KeysClass$Keys;->order:I

    const v4, 0xffff

    and-int/2addr v3, v4

    iput v3, v0, Lcom/car/jiazu/KeysClass$Keys;->order:I

    iget-object v3, v0, Lcom/car/jiazu/KeysClass$Keys;->keyVals:Ljava/util/List;

    new-instance v4, Lcom/car/jiazu/KeysClass$KeyVal;

    aget-byte v5, p1, v8

    xor-int/2addr v5, v2

    xor-int/lit8 v5, v5, 0x5b

    and-int/lit16 v5, v5, 0xff

    invoke-direct {v4, v6, v5}, Lcom/car/jiazu/KeysClass$KeyVal;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x12

    if-eq v3, v4, :cond_1

    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x13

    if-ne v3, v4, :cond_2

    :cond_1
    const-string v3, "my_bt"

    const-string v4, "\u7248\u672c: >= v1.2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/car/jiazu/HexClass;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    aget-byte v3, p1, v10

    aget-byte v4, p1, v9

    xor-int/2addr v3, v4

    and-int/lit16 v2, v3, 0xff

    const-string v3, "my_bt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u68c0\u9a8c\u7801  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aget-byte v3, p1, v6

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_2

    const-string v3, "my_bt"

    const-string v4, "\u7248\u672c\u6821\u9a8c\u901a\u8fc7"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    iget v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    aget-byte v4, v1, v6

    const/high16 v5, 0x1000000

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    iget v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    aget-byte v4, v1, v8

    const/high16 v5, 0x10000

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    iget v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    aget-byte v4, v1, v7

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v3, v4

    iput v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    iget v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    aget-byte v4, v1, v9

    add-int/2addr v3, v4

    iput v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    iget v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    and-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    const-string v3, "my_bt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/car/jiazu/KeysClass$Keys;->deviceid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v0, Lcom/car/jiazu/KeysClass$Keys;->order:I

    iget v3, v0, Lcom/car/jiazu/KeysClass$Keys;->order:I

    aget-byte v4, p1, v9

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v3, v4

    iput v3, v0, Lcom/car/jiazu/KeysClass$Keys;->order:I

    iget v3, v0, Lcom/car/jiazu/KeysClass$Keys;->order:I

    aget-byte v4, p1, v10

    add-int/2addr v3, v4

    iput v3, v0, Lcom/car/jiazu/KeysClass$Keys;->order:I

    iget v3, v0, Lcom/car/jiazu/KeysClass$Keys;->order:I

    const v4, 0xffff

    and-int/2addr v3, v4

    iput v3, v0, Lcom/car/jiazu/KeysClass$Keys;->order:I

    const-string v3, "my_bt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "order "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/car/jiazu/KeysClass$Keys;->order:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/car/jiazu/KeysClass$Keys;->keyVals:Ljava/util/List;

    new-instance v4, Lcom/car/jiazu/KeysClass$KeyVal;

    aget-byte v5, p1, v8

    xor-int/2addr v5, v2

    xor-int/lit8 v5, v5, 0x5b

    and-int/lit16 v5, v5, 0xff

    invoke-direct {v4, v6, v5}, Lcom/car/jiazu/KeysClass$KeyVal;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "my_bt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyVal "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v0, Lcom/car/jiazu/KeysClass$Keys;->keyVals:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/car/jiazu/KeysClass$KeyVal;

    iget v3, v3, Lcom/car/jiazu/KeysClass$KeyVal;->val:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static DeCrypt([BI)Lcom/car/jiazu/KeysClass$Keys;
    .locals 8

    const/4 v4, 0x6

    new-array v3, v4, [B

    new-instance v2, Lcom/car/jiazu/KeysClass$Keys;

    invoke-direct {v2}, Lcom/car/jiazu/KeysClass$Keys;-><init>()V

    iput p1, v2, Lcom/car/jiazu/KeysClass$Keys;->version:I

    const/16 v4, 0x13

    if-lt p1, v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    iget-object v4, v2, Lcom/car/jiazu/KeysClass$Keys;->keyVals:Ljava/util/List;

    new-instance v5, Lcom/car/jiazu/KeysClass$KeyVal;

    add-int/lit8 v1, v0, 0x1

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v6, v6, 0x4

    aget-byte v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v5, v6, v7}, Lcom/car/jiazu/KeysClass$KeyVal;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public static ScanRecordToKeys(Ljava/lang/String;[B)Lcom/car/jiazu/KeysClass$Keys;
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_3

    aget-byte v5, p1, v0

    if-nez v5, :cond_1

    const-string v5, "my_bt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data[index]==0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xff

    if-ne v5, v6, :cond_2

    const/4 v2, 0x0

    aget-byte v3, p1, v0

    const/4 v5, 0x3

    if-le v3, v5, :cond_0

    new-array v1, v3, [B

    add-int/lit8 v5, v0, 0x2

    const/4 v6, 0x0

    invoke-static {p1, v5, v1, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {p0, v1}, Lcom/car/jiazu/KeysClass;->DeCrypt(Ljava/lang/String;[B)Lcom/car/jiazu/KeysClass$Keys;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v5, "my_bt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index next  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "my_bt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type =="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aget-byte v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v5

    goto :goto_0

    :cond_3
    const-string v5, "my_bt"

    const-string v6, "while end"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
