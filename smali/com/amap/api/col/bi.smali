.class public final enum Lcom/amap/api/col/bi;
.super Ljava/lang/Enum;
.source "StyleElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/api/col/bi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amap/api/col/bi;

.field public static final enum b:Lcom/amap/api/col/bi;

.field public static final enum c:Lcom/amap/api/col/bi;

.field public static final enum d:Lcom/amap/api/col/bi;

.field private static final synthetic g:[Lcom/amap/api/col/bi;


# instance fields
.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/amap/api/col/bi;

    const-string v1, "STYLE_ELEMENT_LABELFILL"

    const-string v2, "labels.text.fill"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/amap/api/col/bi;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bi;->a:Lcom/amap/api/col/bi;

    new-instance v0, Lcom/amap/api/col/bi;

    const-string v1, "STYLE_ELEMENT_LABELSTROKE"

    const-string v2, "labels.text.stroke"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/amap/api/col/bi;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bi;->b:Lcom/amap/api/col/bi;

    new-instance v0, Lcom/amap/api/col/bi;

    const-string v1, "STYLE_ELEMENT_GEOMETRYSTROKE"

    const-string v2, "geometry.stroke"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/amap/api/col/bi;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/bi;

    new-instance v0, Lcom/amap/api/col/bi;

    const-string v1, "STYLE_ELEMENT_GEOMETRYFILL"

    const-string v2, "geometry.fill"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/amap/api/col/bi;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/bi;->d:Lcom/amap/api/col/bi;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amap/api/col/bi;

    sget-object v1, Lcom/amap/api/col/bi;->a:Lcom/amap/api/col/bi;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amap/api/col/bi;->b:Lcom/amap/api/col/bi;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/bi;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amap/api/col/bi;->d:Lcom/amap/api/col/bi;

    aput-object v1, v0, v6

    sput-object v0, Lcom/amap/api/col/bi;->g:[Lcom/amap/api/col/bi;

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

    iput-object p3, p0, Lcom/amap/api/col/bi;->e:Ljava/lang/String;

    iput p4, p0, Lcom/amap/api/col/bi;->f:I

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5

    invoke-static {}, Lcom/amap/api/col/bi;->values()[Lcom/amap/api/col/bi;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/amap/api/col/bi;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, v3, Lcom/amap/api/col/bi;->f:I

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/col/bi;
    .locals 1

    const-class v0, Lcom/amap/api/col/bi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bi;

    return-object v0
.end method

.method public static values()[Lcom/amap/api/col/bi;
    .locals 1

    sget-object v0, Lcom/amap/api/col/bi;->g:[Lcom/amap/api/col/bi;

    invoke-virtual {v0}, [Lcom/amap/api/col/bi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/col/bi;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/bi;->e:Ljava/lang/String;

    return-object v0
.end method
