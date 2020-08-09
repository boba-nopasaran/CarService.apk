.class public final Lcom/maploc/p;
.super Ljava/lang/Object;
.source "CgiManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/maploc/o;",
            ">;"
        }
    .end annotation
.end field

.field static d:J

.field static e:Landroid/telephony/CellLocation;

.field private static k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/maploc/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field c:Landroid/telephony/TelephonyManager;

.field f:Ljava/lang/String;

.field g:Z

.field h:Ljava/lang/StringBuilder;

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private l:I

.field private m:Lcom/maploc/n;

.field private n:Ljava/lang/Object;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/maploc/p;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/maploc/p;->k:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/maploc/p;->d:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/maploc/p;->a:I

    iput-object v1, p0, Lcom/maploc/p;->j:Ljava/lang/String;

    const/16 v0, -0x71

    iput v0, p0, Lcom/maploc/p;->l:I

    iput-object v1, p0, Lcom/maploc/p;->c:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/maploc/p;->m:Lcom/maploc/n;

    iput v2, p0, Lcom/maploc/p;->o:I

    iput-object v1, p0, Lcom/maploc/p;->f:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/maploc/p;->g:Z

    iput-object v1, p0, Lcom/maploc/p;->h:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/maploc/p;->i:Landroid/content/Context;

    iget-object v0, p0, Lcom/maploc/p;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/maploc/p;->i:Landroid/content/Context;

    const-string v1, "phone"

    invoke-static {v0, v1}, Lcom/maploc/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/maploc/p;->c:Landroid/telephony/TelephonyManager;

    :cond_0
    invoke-direct {p0}, Lcom/maploc/p;->i()V

    new-instance v0, Lcom/maploc/n;

    invoke-direct {v0}, Lcom/maploc/n;-><init>()V

    iput-object v0, p0, Lcom/maploc/p;->m:Lcom/maploc/n;

    return-void
.end method

.method private varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/maploc/w;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/telephony/CellLocation;

    :goto_1
    invoke-direct {p0, v0}, Lcom/maploc/p;->a(Landroid/telephony/CellLocation;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v6

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v3, Lcom/maploc/p;->k:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/maploc/p;->m:Lcom/maploc/n;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_3
    const/4 v0, 0x0

    move v2, v0

    move-object v1, v6

    :goto_1
    if-ge v2, v5, :cond_a

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v7

    instance-of v8, v0, Landroid/telephony/CellInfoCdma;

    if-eqz v8, :cond_6

    check-cast v0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v8

    invoke-static {v8}, Lcom/maploc/p;->a(Landroid/telephony/CellIdentityCdma;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0, v7}, Lcom/maploc/p;->a(Landroid/telephony/CellInfoCdma;Z)Lcom/maploc/o;

    move-result-object v1

    const-wide/32 v8, 0xffff

    invoke-virtual {v4, v1}, Lcom/maploc/n;->a(Lcom/maploc/o;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v0, v8

    int-to-short v0, v0

    iput-short v0, v1, Lcom/maploc/o;->l:S

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_6
    instance-of v8, v0, Landroid/telephony/CellInfoGsm;

    if-eqz v8, :cond_7

    check-cast v0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v8

    invoke-static {v8}, Lcom/maploc/p;->a(Landroid/telephony/CellIdentityGsm;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v0, v7}, Lcom/maploc/p;->a(Landroid/telephony/CellInfoGsm;Z)Lcom/maploc/o;

    move-result-object v1

    const-wide/32 v8, 0xffff

    invoke-virtual {v4, v1}, Lcom/maploc/n;->a(Lcom/maploc/o;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v0, v8

    int-to-short v0, v0

    iput-short v0, v1, Lcom/maploc/o;->l:S

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    instance-of v8, v0, Landroid/telephony/CellInfoWcdma;

    if-eqz v8, :cond_8

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v8

    invoke-static {v8}, Lcom/maploc/p;->a(Landroid/telephony/CellIdentityWcdma;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v0, v7}, Lcom/maploc/p;->a(Landroid/telephony/CellInfoWcdma;Z)Lcom/maploc/o;

    move-result-object v1

    const-wide/32 v8, 0xffff

    invoke-virtual {v4, v1}, Lcom/maploc/n;->a(Lcom/maploc/o;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v0, v8

    int-to-short v0, v0

    iput-short v0, v1, Lcom/maploc/o;->l:S

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    instance-of v8, v0, Landroid/telephony/CellInfoLte;

    if-eqz v8, :cond_d

    check-cast v0, Landroid/telephony/CellInfoLte;

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v8

    invoke-static {v8}, Lcom/maploc/p;->a(Landroid/telephony/CellIdentityLte;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v0, v7}, Lcom/maploc/p;->a(Landroid/telephony/CellInfoLte;Z)Lcom/maploc/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const-wide/32 v8, 0xffff

    :try_start_1
    invoke-virtual {v4, v0}, Lcom/maploc/n;->a(Lcom/maploc/o;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v1, v8

    int-to-short v1, v1

    iput-short v1, v0, Lcom/maploc/o;->l:S

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object v1, v0

    goto/16 :goto_2

    :cond_9
    move-object v1, v6

    :cond_a
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget v0, p0, Lcom/maploc/p;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/maploc/p;->a:I

    invoke-virtual {v4, v3}, Lcom/maploc/n;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/maploc/o;

    if-eqz v5, :cond_b

    iget v0, v5, Lcom/maploc/o;->k:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iget v1, v5, Lcom/maploc/o;->i:I

    iget v2, v5, Lcom/maploc/o;->e:I

    iget v3, v5, Lcom/maploc/o;->f:I

    iget v4, v5, Lcom/maploc/o;->g:I

    iget v5, v5, Lcom/maploc/o;->h:I

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    move-object v1, v0

    move-object v0, v6

    :goto_4
    if-eqz v1, :cond_1

    move-object v0, v1

    goto/16 :goto_0

    :cond_b
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iget v2, v1, Lcom/maploc/o;->c:I

    iget v1, v1, Lcom/maploc/o;->d:I

    invoke-virtual {v0, v2, v1}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    move-object v1, v6

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v1, v0

    goto/16 :goto_2

    :cond_c
    move-object v1, v6

    move-object v0, v6

    goto :goto_4

    :cond_d
    move-object v0, v1

    goto :goto_3
.end method

.method private static a(IZIIIII)Lcom/maploc/o;
    .locals 1

    new-instance v0, Lcom/maploc/o;

    invoke-direct {v0, p0, p1}, Lcom/maploc/o;-><init>(IZ)V

    iput p2, v0, Lcom/maploc/o;->a:I

    iput p3, v0, Lcom/maploc/o;->b:I

    iput p4, v0, Lcom/maploc/o;->c:I

    iput p5, v0, Lcom/maploc/o;->d:I

    iput p6, v0, Lcom/maploc/o;->j:I

    return-object v0
.end method

.method private a(Landroid/telephony/CellInfoCdma;Z)Lcom/maploc/o;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v7

    iget-object v0, p0, Lcom/maploc/p;->c:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/maploc/y;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v1, 0x1

    :try_start_1
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v6

    move v1, p2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/maploc/p;->a(IZIIIII)Lcom/maploc/o;

    move-result-object v0

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->g:I

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->h:I

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->i:I

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->e:I

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->f:I

    return-object v0

    :catch_0
    move-exception v0

    move v2, v4

    :goto_1
    move v3, v4

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(Landroid/telephony/CellInfoGsm;Z)Lcom/maploc/o;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v4

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v5

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v6

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/maploc/p;->a(IZIIIII)Lcom/maploc/o;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/telephony/CellInfoLte;Z)Lcom/maploc/o;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    const/4 v0, 0x3

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v4

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v5

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v6

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/maploc/p;->a(IZIIIII)Lcom/maploc/o;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/telephony/CellInfoWcdma;Z)Lcom/maploc/o;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v1

    const/4 v0, 0x4

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v4

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v5

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v6

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/maploc/p;->a(IZIIIII)Lcom/maploc/o;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lcom/maploc/o;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/maploc/o;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/maploc/o;-><init>(IZ)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->a:I

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->b:I

    const-string v1, "getLac"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/maploc/w;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->c:I

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->d:I

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v1

    invoke-static {v1}, Lcom/maploc/y;->a(I)I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "getGsm"

    invoke-static {v0, v1, v2}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/maploc/o;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/maploc/p;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/telephony/CellLocation;[Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/maploc/p;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/maploc/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Lcom/maploc/p;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/maploc/p;->a:I

    sget-object v0, Lcom/maploc/p;->b:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/maploc/p;->c(Landroid/telephony/CellLocation;[Ljava/lang/String;)Lcom/maploc/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/maploc/p;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/maploc/p;->a(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, p2}, Lcom/maploc/p;->a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lcom/maploc/o;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v2, Lcom/maploc/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/maploc/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0xf

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(II)Z
    .locals 3

    const v2, 0xffff

    const/4 v1, -0x1

    const/4 v0, 0x1

    if-eq p0, v1, :cond_0

    if-eqz p0, :cond_0

    if-gt p0, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    const v1, 0xfffffff

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private static a(Landroid/telephony/CellIdentityCdma;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/telephony/CellIdentityGsm;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v1

    invoke-static {v1}, Lcom/maploc/p;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v1

    invoke-static {v1}, Lcom/maploc/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/telephony/CellIdentityLte;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v1

    invoke-static {v1}, Lcom/maploc/p;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v1

    invoke-static {v1}, Lcom/maploc/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/telephony/CellIdentityWcdma;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v1

    invoke-static {v1}, Lcom/maploc/p;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v1

    invoke-static {v1}, Lcom/maploc/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/telephony/CellLocation;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/maploc/p;->i:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/maploc/p;->b(Landroid/telephony/CellLocation;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iput v1, p0, Lcom/maploc/p;->a:I

    :cond_2
    move v1, v0

    goto :goto_0

    :pswitch_0
    :try_start_0
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/maploc/p;->a(II)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "CgiManager"

    const-string v4, "cgiUseful Cgi.iGsmT"

    invoke-static {v2, v3, v4}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    :try_start_1
    const-string v2, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/maploc/w;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/maploc/w;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    const-string v2, "getBaseStationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/maploc/w;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-gez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "CgiManager"

    const-string v4, "cgiUseful Cgi.iCdmaT"

    invoke-static {v2, v3, v4}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/telephony/CellLocation;)I
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/maploc/p;->g:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v1, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "getCellLocT"

    invoke-static {v1, v2, v3}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/maploc/o;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/maploc/p;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Landroid/telephony/CellLocation;[Ljava/lang/String;)V
    .locals 5

    const v4, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/maploc/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/maploc/y;->c()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/maploc/p;->n:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mGsmCellLoc"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/maploc/p;->a(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v0, p2}, Lcom/maploc/p;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    :cond_3
    :try_start_2
    invoke-direct {p0, p1}, Lcom/maploc/p;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/maploc/p;->a:I

    new-instance v0, Lcom/maploc/o;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/maploc/o;-><init>(IZ)V

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->a:I

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->b:I

    const-string v1, "getSystemId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/maploc/w;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->g:I

    const-string v1, "getNetworkId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/maploc/w;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->h:I

    const-string v1, "getBaseStationId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/maploc/w;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->i:I

    iget v1, p0, Lcom/maploc/p;->l:I

    iput v1, v0, Lcom/maploc/o;->j:I

    const-string v1, "getBaseStationLatitude"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/maploc/w;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->e:I

    const-string v1, "getBaseStationLongitude"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/maploc/w;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->f:I

    iget v1, v0, Lcom/maploc/o;->e:I

    if-ltz v1, :cond_4

    iget v1, v0, Lcom/maploc/o;->f:I

    if-ltz v1, :cond_4

    iget v1, v0, Lcom/maploc/o;->e:I

    if-eq v1, v4, :cond_4

    iget v1, v0, Lcom/maploc/o;->f:I

    if-eq v1, v4, :cond_4

    iget v1, v0, Lcom/maploc/o;->e:I

    iget v2, v0, Lcom/maploc/o;->f:I

    if-ne v1, v2, :cond_5

    iget v1, v0, Lcom/maploc/o;->e:I

    if-lez v1, :cond_5

    :cond_4
    const/4 v1, 0x0

    iput v1, v0, Lcom/maploc/o;->e:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/maploc/o;->f:I

    :cond_5
    sget-object v1, Lcom/maploc/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/maploc/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "hdlCdmaLocChange"

    invoke-static {v0, v1, v2}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :cond_6
    move v0, v2

    goto/16 :goto_1
.end method

.method private static b(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const v0, 0xffff

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Landroid/telephony/CellLocation;[Ljava/lang/String;)Lcom/maploc/o;
    .locals 3

    const/4 v2, 0x1

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v0, Lcom/maploc/o;

    invoke-direct {v0, v2, v2}, Lcom/maploc/o;-><init>(IZ)V

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->a:I

    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->b:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->c:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, v0, Lcom/maploc/o;->d:I

    iget v1, p0, Lcom/maploc/p;->l:I

    iput v1, v0, Lcom/maploc/o;->j:I

    return-object v0
.end method

.method private static c(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const v0, 0xffff

    if-eq p0, v0, :cond_0

    const v0, 0xfffffff

    if-lt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/maploc/p;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/maploc/p;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    iget-object v1, p0, Lcom/maploc/p;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/maploc/p;->b(Landroid/telephony/CellLocation;)I

    move-result v0

    iput v0, p0, Lcom/maploc/p;->a:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/maploc/p;->s()I

    move-result v0

    iput v0, p0, Lcom/maploc/p;->o:I

    iget v0, p0, Lcom/maploc/p;->o:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/maploc/p;->i:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-static {v0, v1}, Lcom/maploc/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/maploc/p;->n:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maploc/p;->f:Ljava/lang/String;

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/maploc/p;->f:Ljava/lang/String;

    const-string v1, "CgiManager"

    const-string v2, "CgiManager"

    invoke-static {v0, v1, v2}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/maploc/p;->a:I

    goto :goto_1

    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/maploc/p;->i:Landroid/content/Context;

    const-string v1, "phone_msim"

    invoke-static {v0, v1}, Lcom/maploc/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/maploc/p;->n:Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/maploc/p;->i:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-static {v0, v1}, Lcom/maploc/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/maploc/p;->n:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private j()Landroid/telephony/CellLocation;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/maploc/p;->c:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/maploc/p;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/maploc/p;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/maploc/p;->a(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    sput-object v0, Lcom/maploc/p;->e:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maploc/p;->f:Ljava/lang/String;

    :cond_0
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v1, p0, Lcom/maploc/p;->f:Ljava/lang/String;

    const-string v2, "CgiManager"

    const-string v3, "getCellLocation"

    invoke-static {v0, v2, v3}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private k()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/maploc/p;->g:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/maploc/y;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/maploc/p;->d:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private l()V
    .locals 0

    invoke-direct {p0}, Lcom/maploc/p;->r()V

    return-void
.end method

.method private m()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/maploc/p;->a:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/maploc/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/maploc/p;->a:I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/maploc/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/maploc/p;->a:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private n()V
    .locals 3

    iget-boolean v0, p0, Lcom/maploc/p;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/maploc/p;->c:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/maploc/p;->o()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maploc/p;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/maploc/p;->p()Landroid/telephony/CellLocation;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/maploc/p;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-object v0, Lcom/maploc/p;->e:Landroid/telephony/CellLocation;

    :cond_1
    sget-object v0, Lcom/maploc/p;->e:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/maploc/p;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/maploc/p;->c:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/maploc/y;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/maploc/p;->e:Landroid/telephony/CellLocation;

    iget-object v2, p0, Lcom/maploc/p;->i:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/maploc/p;->b(Landroid/telephony/CellLocation;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/maploc/p;->c:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/maploc/p;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maploc/p;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/maploc/p;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/maploc/p;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/maploc/p;->a:I

    :cond_3
    return-void

    :pswitch_0
    sget-object v1, Lcom/maploc/p;->e:Landroid/telephony/CellLocation;

    invoke-direct {p0, v1, v0}, Lcom/maploc/p;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/maploc/p;->e:Landroid/telephony/CellLocation;

    invoke-direct {p0, v1, v0}, Lcom/maploc/p;->b(Landroid/telephony/CellLocation;[Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private o()Landroid/telephony/CellLocation;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/maploc/p;->c:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/maploc/p;->j()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/maploc/p;->a(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/maploc/y;->c()I

    move-result v1

    const/16 v3, 0x12

    if-lt v1, v3, :cond_3

    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/maploc/p;->a(Ljava/util/List;)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_3
    :goto_1
    if-nez v0, :cond_0

    const-string v0, "getCellLocationExt"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-direct {p0, v2, v0, v1}, Lcom/maploc/p;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getCellLocationGemini"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-direct {p0, v2, v0, v1}, Lcom/maploc/p;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/maploc/p;->f:Ljava/lang/String;

    goto :goto_1
.end method

.method private p()Landroid/telephony/CellLocation;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/maploc/p;->n:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/maploc/p;->q()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getCellLocation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2, v3}, Lcom/maploc/p;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/maploc/p;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "getCellLocationGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/maploc/p;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "getAllCellInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/maploc/p;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "getSim2Cgi"

    invoke-static {v1, v2, v3}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private q()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget v0, p0, Lcom/maploc/p;->o:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    return-object v1

    :pswitch_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    goto :goto_0

    :pswitch_1
    const-string v0, "android.telephony.TelephonyManager2"

    goto :goto_0

    :pswitch_2
    const-string v0, "android.telephony.TelephonyManager"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CgiManager"

    const-string v3, "getSim2TmClass"

    invoke-static {v0, v2, v3}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private r()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maploc/p;->f:Ljava/lang/String;

    sput-object v0, Lcom/maploc/p;->e:Landroid/telephony/CellLocation;

    const/4 v0, 0x0

    iput v0, p0, Lcom/maploc/p;->a:I

    sget-object v0, Lcom/maploc/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private s()I
    .locals 1

    :try_start_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    iput v0, p0, Lcom/maploc/p;->o:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget v0, p0, Lcom/maploc/p;->o:I

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "android.telephony.TelephonyManager2"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x2

    iput v0, p0, Lcom/maploc/p;->o:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    iget v0, p0, Lcom/maploc/p;->o:I

    return v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lcom/maploc/p;->a:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/maploc/p;->a:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final e()Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/maploc/p;->c:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public final f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/maploc/p;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/maploc/y;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/maploc/p;->g:Z

    invoke-direct {p0}, Lcom/maploc/p;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/maploc/p;->n()V

    invoke-static {}, Lcom/maploc/y;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/maploc/p;->d:J

    :cond_0
    iget-boolean v0, p0, Lcom/maploc/p;->g:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/maploc/p;->l()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/maploc/p;->m()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maploc/p;->f:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "refresh"

    invoke-static {v0, v1, v2}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/maploc/p;->m:Lcom/maploc/n;

    invoke-virtual {v0}, Lcom/maploc/n;->a()V

    const/16 v0, -0x71

    iput v0, p0, Lcom/maploc/p;->l:I

    iput-object v1, p0, Lcom/maploc/p;->c:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/maploc/p;->n:Ljava/lang/Object;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/maploc/p;->j:Ljava/lang/String;

    return-object v0
.end method
