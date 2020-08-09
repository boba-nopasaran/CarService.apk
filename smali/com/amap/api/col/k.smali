.class public Lcom/amap/api/col/k;
.super Ljava/lang/Object;
.source "DTInfo.java"


# annotations
.annotation runtime Lcom/amap/api/col/fd;
    a = "update_item"
.end annotation


# instance fields
.field protected a:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/col/fe;
        a = "title"
        b = 0x6
    .end annotation
.end field

.field protected b:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/col/fe;
        a = "url"
        b = 0x6
    .end annotation
.end field

.field protected c:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/col/fe;
        a = "mAdcode"
        b = 0x6
    .end annotation
.end field

.field protected d:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/col/fe;
        a = "fileName"
        b = 0x6
    .end annotation
.end field

.field protected e:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/col/fe;
        a = "version"
        b = 0x6
    .end annotation
.end field

.field protected f:J
    .annotation runtime Lcom/amap/api/col/fe;
        a = "lLocalLength"
        b = 0x5
    .end annotation
.end field

.field protected g:J
    .annotation runtime Lcom/amap/api/col/fe;
        a = "lRemoteLength"
        b = 0x5
    .end annotation
.end field

.field protected h:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/col/fe;
        a = "localPath"
        b = 0x6
    .end annotation
.end field

.field protected i:I
    .annotation runtime Lcom/amap/api/col/fe;
        a = "isProvince"
        b = 0x2
    .end annotation
.end field

.field protected j:I
    .annotation runtime Lcom/amap/api/col/fe;
        a = "mCompleteCode"
        b = 0x2
    .end annotation
.end field

.field protected k:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/col/fe;
        a = "mCityCode"
        b = 0x6
    .end annotation
.end field

.field public l:I
    .annotation runtime Lcom/amap/api/col/fe;
        a = "mState"
        b = 0x2
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/col/fe;
        a = "mPinyin"
        b = 0x6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/k;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/k;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/k;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/k;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/k;->e:Ljava/lang/String;

    iput-wide v2, p0, Lcom/amap/api/col/k;->f:J

    iput-wide v2, p0, Lcom/amap/api/col/k;->g:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/k;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/k;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/k;->m:Ljava/lang/String;

    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAdcode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPinyin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/k;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/k;->k:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/k;->j:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/k;->m:Ljava/lang/String;

    return-object v0
.end method
