.class public final enum Lcom/amap/api/col/bk;
.super Ljava/lang/Enum;
.source "StyleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/api/col/bk;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amap/api/col/bk;

.field public static final enum b:Lcom/amap/api/col/bk;

.field public static final enum c:Lcom/amap/api/col/bk;

.field public static final enum d:Lcom/amap/api/col/bk;

.field public static final enum e:Lcom/amap/api/col/bk;

.field public static final enum f:Lcom/amap/api/col/bk;

.field public static final enum g:Lcom/amap/api/col/bk;

.field public static final enum h:Lcom/amap/api/col/bk;

.field public static final enum i:Lcom/amap/api/col/bk;

.field public static final enum j:Lcom/amap/api/col/bk;

.field public static final enum k:Lcom/amap/api/col/bk;

.field public static final enum l:Lcom/amap/api/col/bk;

.field public static final enum m:Lcom/amap/api/col/bk;

.field private static final synthetic p:[Lcom/amap/api/col/bk;


# instance fields
.field private n:Ljava/lang/String;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/amap/api/col/bk;

    const-string v1, "TYPE_LAND"

    const-string v2, "land"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/amap/api/col/bk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bk;->a:Lcom/amap/api/col/bk;

    new-instance v0, Lcom/amap/api/col/bk;

    const-string v1, "TYPE_WATER"

    const-string v2, "water"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/amap/api/col/bk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bk;->b:Lcom/amap/api/col/bk;

    new-instance v0, Lcom/amap/api/col/bk;

    const-string v1, "TYPE_GREEN"

    const-string v2, "green"

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/amap/api/col/bk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bk;->c:Lcom/amap/api/col/bk;

    new-instance v0, Lcom/amap/api/col/bk;

    const-string v1, "TYPE_BUILDING"

    const-string v2, "building"

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/amap/api/col/bk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bk;->d:Lcom/amap/api/col/bk;

    new-instance v0, Lcom/amap/api/col/bk;

    const-string v1, "TYPE_HIGHWAY"

    const-string v2, "highway"

    invoke-direct {v0, v1, v9, v2, v9}, Lcom/amap/api/col/bk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bk;->e:Lcom/amap/api/col/bk;

    new-instance v0, Lcom/amap/api/col/bk;

    const-string v1, "TYPE_ARTERIAL"

    const/4 v2, 0x5

    const-string v3, "arterial"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/col/bk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bk;->f:Lcom/amap/api/col/bk;

    new-instance v0, Lcom/amap/api/col/bk;

    const-string v1, "TYPE_LOCAL"

    const/4 v2, 0x6

    const-string v3, "local"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/col/bk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bk;->g:Lcom/amap/api/col/bk;

    new-instance v0, Lcom/amap/api/col/bk;

    const-string v1, "TYPE_RAILWAY"

    const/4 v2, 0x7

    const-string v3, "railway"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/col/bk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bk;->h:Lcom/amap/api/col/bk;

    new-instance v0, Lcom/amap/api/col/bk;

    const-string v1, "TYPE_SUBWAY"

    const/16 v2, 0x8

    const-string v3, "subway"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/col/bk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bk;->i:Lcom/amap/api/col/bk;

    new-instance v0, Lcom/amap/api/col/bk;

    const-string v1, "TYPE_BOUNDARY"

    const/16 v2, 0x9

    const-string v3, "boundary"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/col/bk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bk;->j:Lcom/amap/api/col/bk;

    new-instance v0, Lcom/amap/api/col/bk;

    const-string v1, "TYPE_POILABEL"

    const/16 v2, 0xa

    const-string v3, "poilabel"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/col/bk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bk;->k:Lcom/amap/api/col/bk;

    new-instance v0, Lcom/amap/api/col/bk;

    const-string v1, "TYPE_DISTRICTLABLE"

    const/16 v2, 0xb

    const-string v3, "districtlable"

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/col/bk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bk;->l:Lcom/amap/api/col/bk;

    new-instance v0, Lcom/amap/api/col/bk;

    const-string v1, "TYPE_WATERLINE"

    const/16 v2, 0xc

    const-string v3, "waterline"

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/col/bk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bk;->m:Lcom/amap/api/col/bk;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/amap/api/col/bk;

    sget-object v1, Lcom/amap/api/col/bk;->a:Lcom/amap/api/col/bk;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amap/api/col/bk;->b:Lcom/amap/api/col/bk;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amap/api/col/bk;->c:Lcom/amap/api/col/bk;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amap/api/col/bk;->d:Lcom/amap/api/col/bk;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amap/api/col/bk;->e:Lcom/amap/api/col/bk;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/amap/api/col/bk;->f:Lcom/amap/api/col/bk;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amap/api/col/bk;->g:Lcom/amap/api/col/bk;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amap/api/col/bk;->h:Lcom/amap/api/col/bk;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amap/api/col/bk;->i:Lcom/amap/api/col/bk;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/amap/api/col/bk;->j:Lcom/amap/api/col/bk;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/amap/api/col/bk;->k:Lcom/amap/api/col/bk;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/amap/api/col/bk;->l:Lcom/amap/api/col/bk;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/amap/api/col/bk;->m:Lcom/amap/api/col/bk;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/api/col/bk;->p:[Lcom/amap/api/col/bk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amap/api/col/bk;->n:Ljava/lang/String;

    iput p4, p0, Lcom/amap/api/col/bk;->o:I

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5

    invoke-static {}, Lcom/amap/api/col/bk;->values()[Lcom/amap/api/col/bk;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/amap/api/col/bk;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, v3, Lcom/amap/api/col/bk;->o:I

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/col/bk;
    .locals 1

    const-class v0, Lcom/amap/api/col/bk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bk;

    return-object v0
.end method

.method public static values()[Lcom/amap/api/col/bk;
    .locals 1

    sget-object v0, Lcom/amap/api/col/bk;->p:[Lcom/amap/api/col/bk;

    invoke-virtual {v0}, [Lcom/amap/api/col/bk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/col/bk;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/bk;->n:Ljava/lang/String;

    return-object v0
.end method
