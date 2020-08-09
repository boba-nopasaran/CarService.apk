.class final Lokhttp3/internal/framed/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# static fields
.field private static final SETTINGS_HEADER_TABLE_SIZE:I = 0x1000

.field private static final SETTINGS_HEADER_TABLE_SIZE_LIMIT:I = 0x4000


# instance fields
.field dynamicTable:[Lokhttp3/internal/framed/Header;

.field dynamicTableByteCount:I

.field private emitDynamicTableSizeUpdate:Z

.field headerCount:I

.field headerTableSizeSetting:I

.field maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final out:Lokio/Buffer;

.field private smallestHeaderTableSizeSetting:I


# direct methods
.method constructor <init>(ILokio/Buffer;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    const/16 v0, 0x8

    new-array v0, v0, [Lokhttp3/internal/framed/Header;

    iput-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    iput v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    iput v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    iput p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerTableSizeSetting:I

    iput p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    iput-object p2, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    return-void
.end method

.method constructor <init>(Lokio/Buffer;)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, v0, p1}, Lokhttp3/internal/framed/Hpack$Writer;-><init>(ILokio/Buffer;)V

    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 2

    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lokhttp3/internal/framed/Hpack$Writer;->clearDynamicTable()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/Hpack$Writer;->evictToRecoverBytes(I)I

    goto :goto_0
.end method

.method private clearDynamicTable()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    iput v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    iput v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    return-void
.end method

.method private evictToRecoverBytes(I)I
    .locals 7

    const/4 v0, 0x0

    if-lez p1, :cond_1

    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    iget v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lokhttp3/internal/framed/Header;->hpackSize:I

    sub-int/2addr p1, v2

    iget v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    iget-object v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lokhttp3/internal/framed/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    iget v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    iget v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    iget v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v0

    iget v6, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    iget v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    :cond_1
    return v0
.end method

.method private insertIntoDynamicTable(Lokhttp3/internal/framed/Header;)V
    .locals 8

    iget v1, p1, Lokhttp3/internal/framed/Header;->hpackSize:I

    iget v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-le v1, v4, :cond_0

    invoke-direct {p0}, Lokhttp3/internal/framed/Hpack$Writer;->clearDynamicTable()V

    :goto_0
    return-void

    :cond_0
    iget v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v4, v1

    iget v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int v0, v4, v5

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/Hpack$Writer;->evictToRecoverBytes(I)I

    iget v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v5, v5

    if-le v4, v5, :cond_1

    iget-object v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v2, v4, [Lokhttp3/internal/framed/Header;

    iget-object v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    const/4 v5, 0x0

    iget-object v6, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v6, v6

    iget-object v7, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v7, v7

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    iput-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    :cond_1
    iget v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    iget-object v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    aput-object p1, v4, v3

    iget v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    iget v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    goto :goto_0
.end method


# virtual methods
.method setHeaderTableSizeSetting(I)V
    .locals 2

    iput p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerTableSizeSetting:I

    const/16 v1, 0x4000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ne v1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    invoke-direct {p0}, Lokhttp3/internal/framed/Hpack$Writer;->adjustDynamicTableByteCount()V

    goto :goto_0
.end method

.method writeByteString(Lokio/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v11, 0x20

    const/16 v9, 0x1f

    const/4 v10, 0x0

    iget-boolean v7, p0, Lokhttp3/internal/framed/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    if-eqz v7, :cond_1

    iget v7, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    iget v8, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ge v7, v8, :cond_0

    iget v7, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-virtual {p0, v7, v9, v11}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    :cond_0
    iput-boolean v10, p0, Lokhttp3/internal/framed/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    const v7, 0x7fffffff

    iput v7, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    iget v7, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    invoke-virtual {p0, v7, v9, v11}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    :cond_1
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/framed/Header;

    iget-object v7, v1, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v7}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v3

    iget-object v6, v1, Lokhttp3/internal/framed/Header;->value:Lokio/ByteString;

    invoke-static {}, Lokhttp3/internal/framed/Hpack;->access$200()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0xf

    invoke-virtual {p0, v7, v8, v10}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    invoke-virtual {p0, v6}, Lokhttp3/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    invoke-static {v7, v1}, Lokhttp3/internal/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    iget v7, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    sub-int v7, v0, v7

    invoke-static {}, Lokhttp3/internal/framed/Hpack;->access$000()[Lokhttp3/internal/framed/Header;

    move-result-object v8

    array-length v8, v8

    add-int/2addr v7, v8

    const/16 v8, 0x7f

    const/16 v9, 0x80

    invoke-virtual {p0, v7, v8, v9}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    const/16 v8, 0x40

    invoke-virtual {v7, v8}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    invoke-virtual {p0, v3}, Lokhttp3/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    invoke-virtual {p0, v6}, Lokhttp3/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    invoke-direct {p0, v1}, Lokhttp3/internal/framed/Hpack$Writer;->insertIntoDynamicTable(Lokhttp3/internal/framed/Header;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method writeInt(III)V
    .locals 3

    if-ge p1, p2, :cond_0

    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int v2, p3, p1

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int v2, p3, p2

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    sub-int/2addr p1, p2

    :goto_1
    const/16 v1, 0x80

    if-lt p1, v1, :cond_1

    and-int/lit8 v0, p1, 0x7f

    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int/lit16 v2, v0, 0x80

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v1, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0
.end method
