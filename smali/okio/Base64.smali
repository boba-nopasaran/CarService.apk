.class final Lokio/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final MAP:[B

.field private static final URL_MAP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x40

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lokio/Base64;->MAP:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lokio/Base64;->URL_MAP:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 18

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    :goto_0
    if-lez v6, :cond_0

    add-int/lit8 v13, v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v13, 0x3d

    if-eq v3, v13, :cond_1

    const/16 v13, 0xa

    if-eq v3, v13, :cond_1

    const/16 v13, 0xd

    if-eq v3, v13, :cond_1

    const/16 v13, 0x20

    if-eq v3, v13, :cond_1

    const/16 v13, 0x9

    if-eq v3, v13, :cond_1

    :cond_0
    int-to-long v14, v6

    const-wide/16 v16, 0x6

    mul-long v14, v14, v16

    const-wide/16 v16, 0x8

    div-long v14, v14, v16

    long-to-int v13, v14

    new-array v7, v13, [B

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move v9, v8

    :goto_1
    if-ge v10, v6, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v13, 0x41

    if-lt v3, v13, :cond_2

    const/16 v13, 0x5a

    if-gt v3, v13, :cond_2

    add-int/lit8 v2, v3, -0x41

    :goto_2
    shl-int/lit8 v13, v12, 0x6

    int-to-byte v14, v2

    or-int v12, v13, v14

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v13, v4, 0x4

    if-nez v13, :cond_f

    add-int/lit8 v8, v9, 0x1

    shr-int/lit8 v13, v12, 0x10

    int-to-byte v13, v13

    aput-byte v13, v7, v9

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v13, v12, 0x8

    int-to-byte v13, v13

    aput-byte v13, v7, v8

    add-int/lit8 v8, v9, 0x1

    int-to-byte v13, v12

    aput-byte v13, v7, v9

    :goto_3
    add-int/lit8 v10, v10, 0x1

    move v9, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_2
    const/16 v13, 0x61

    if-lt v3, v13, :cond_3

    const/16 v13, 0x7a

    if-gt v3, v13, :cond_3

    add-int/lit8 v2, v3, -0x47

    goto :goto_2

    :cond_3
    const/16 v13, 0x30

    if-lt v3, v13, :cond_4

    const/16 v13, 0x39

    if-gt v3, v13, :cond_4

    add-int/lit8 v2, v3, 0x4

    goto :goto_2

    :cond_4
    const/16 v13, 0x2b

    if-eq v3, v13, :cond_5

    const/16 v13, 0x2d

    if-ne v3, v13, :cond_6

    :cond_5
    const/16 v2, 0x3e

    goto :goto_2

    :cond_6
    const/16 v13, 0x2f

    if-eq v3, v13, :cond_7

    const/16 v13, 0x5f

    if-ne v3, v13, :cond_8

    :cond_7
    const/16 v2, 0x3f

    goto :goto_2

    :cond_8
    const/16 v13, 0xa

    if-eq v3, v13, :cond_f

    const/16 v13, 0xd

    if-eq v3, v13, :cond_f

    const/16 v13, 0x20

    if-eq v3, v13, :cond_f

    const/16 v13, 0x9

    if-ne v3, v13, :cond_9

    move v8, v9

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    move v8, v9

    :cond_a
    :goto_4
    return-object v7

    :cond_b
    rem-int/lit8 v5, v4, 0x4

    const/4 v13, 0x1

    if-ne v5, v13, :cond_c

    const/4 v7, 0x0

    move v8, v9

    goto :goto_4

    :cond_c
    const/4 v13, 0x2

    if-ne v5, v13, :cond_d

    shl-int/lit8 v12, v12, 0xc

    add-int/lit8 v8, v9, 0x1

    shr-int/lit8 v13, v12, 0x10

    int-to-byte v13, v13

    aput-byte v13, v7, v9

    :goto_5
    array-length v13, v7

    if-eq v8, v13, :cond_a

    new-array v11, v8, [B

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v7, v13, v11, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v11

    goto :goto_4

    :cond_d
    const/4 v13, 0x3

    if-ne v5, v13, :cond_e

    shl-int/lit8 v12, v12, 0x6

    add-int/lit8 v8, v9, 0x1

    shr-int/lit8 v13, v12, 0x10

    int-to-byte v13, v13

    aput-byte v13, v7, v9

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v13, v12, 0x8

    int-to-byte v13, v13

    aput-byte v13, v7, v8

    :cond_e
    move v8, v9

    goto :goto_5

    :cond_f
    move v8, v9

    goto :goto_3
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1

    sget-object v0, Lokio/Base64;->MAP:[B

    invoke-static {p0, v0}, Lokio/Base64;->encode([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encode([B[B)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x3d

    array-length v7, p0

    add-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v5, v7, 0x4

    new-array v6, v5, [B

    const/4 v3, 0x0

    array-length v7, p0

    array-length v8, p0

    rem-int/lit8 v8, v8, 0x3

    sub-int v1, v7, v8

    const/4 v2, 0x0

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v3, v4, 0x1

    aget-byte v7, p0, v2

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x2

    aget-byte v7, p1, v7

    aput-byte v7, v6, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v7, p0, v2

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v2, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    aget-byte v7, p1, v7

    aput-byte v7, v6, v3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v2, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    aget-byte v7, p1, v7

    aput-byte v7, v6, v4

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, p1, v7

    aput-byte v7, v6, v3

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_0
    array-length v7, p0

    rem-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_0

    :goto_1
    move v3, v4

    :goto_2
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v8, "US-ASCII"

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :pswitch_0
    add-int/lit8 v3, v4, 0x1

    aget-byte v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x2

    aget-byte v7, p1, v7

    aput-byte v7, v6, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v7, p0, v1

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    aget-byte v7, p1, v7

    aput-byte v7, v6, v3

    add-int/lit8 v3, v4, 0x1

    aput-byte v9, v6, v4

    add-int/lit8 v4, v3, 0x1

    aput-byte v9, v6, v3

    move v3, v4

    goto :goto_2

    :pswitch_1
    add-int/lit8 v3, v4, 0x1

    aget-byte v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x2

    aget-byte v7, p1, v7

    aput-byte v7, v6, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v7, p0, v1

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    aget-byte v7, p1, v7

    aput-byte v7, v6, v3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x2

    aget-byte v7, p1, v7

    aput-byte v7, v6, v4

    add-int/lit8 v4, v3, 0x1

    aput-byte v9, v6, v3

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static encodeUrl([B)Ljava/lang/String;
    .locals 1

    sget-object v0, Lokio/Base64;->URL_MAP:[B

    invoke-static {p0, v0}, Lokio/Base64;->encode([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
