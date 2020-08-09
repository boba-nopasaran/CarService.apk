.class public Lcom/iflytek/cata/CataSession;
.super Ljava/lang/Object;
.source "CataSession.java"

# interfaces
.implements Lcom/iflytek/cata/ICataService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cata/CataSession$CataSearchInstIm;,
        Lcom/iflytek/cata/CataSession$CataIndexInstIm;
    }
.end annotation


# static fields
.field public static final ISS_CATA_LANG_CANTONESE:I = 0x3

.field public static final ISS_CATA_LANG_ENGLISH:I = 0x2

.field public static final ISS_CATA_LANG_MANDARIN:I = 0x1

.field public static final ONLY_RAW:I = 0x0

.field public static final RAW_AND_PINYIN:I = 0x1

.field public static final RAW_AND_PINYIN_AND_TJIU:I = 0x4

.field public static final RAW_AND_TJIU:I = 0x3

.field public static final TAG:I = 0x2

.field private static instance:Lcom/iflytek/cata/CataSession; = null

.field private static mIndexInstCnt:I = 0x0

.field private static mInitListener:Lcom/iflytek/cata/ICataInitListener; = null

.field private static mResDir:Ljava/lang/String; = null

.field private static mSearchInstCnt:I = 0x0

.field private static final tag:Ljava/lang/String; = "CataSolution"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/cata/CataSession;->mIndexInstCnt:I

    sput v0, Lcom/iflytek/cata/CataSession;->mSearchInstCnt:I

    sput-object v1, Lcom/iflytek/cata/CataSession;->instance:Lcom/iflytek/cata/CataSession;

    sput-object v1, Lcom/iflytek/cata/CataSession;->mInitListener:Lcom/iflytek/cata/ICataInitListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/iflytek/cata/ICataInitListener;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cata/CataSession;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/iflytek/cata/CataSession;->mContext:Landroid/content/Context;

    sput-object p2, Lcom/iflytek/cata/CataSession;->mInitListener:Lcom/iflytek/cata/ICataInitListener;

    sput-object p3, Lcom/iflytek/cata/CataSession;->mResDir:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/cata/CataSession;->initService(Z)V

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/iflytek/cata/CataSession;->mIndexInstCnt:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    sget v0, Lcom/iflytek/cata/CataSession;->mIndexInstCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/iflytek/cata/CataSession;->mIndexInstCnt:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iflytek/cata/CataSession;->mResDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/iflytek/cata/CataSession;->mSearchInstCnt:I

    return v0
.end method

.method static synthetic access$208()I
    .locals 2

    sget v0, Lcom/iflytek/cata/CataSession;->mSearchInstCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/iflytek/cata/CataSession;->mSearchInstCnt:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/iflytek/cata/ICataInitListener;Ljava/lang/String;)Lcom/iflytek/cata/CataSession;
    .locals 2

    sget-object v0, Lcom/iflytek/cata/CataSession;->instance:Lcom/iflytek/cata/CataSession;

    if-nez v0, :cond_1

    const-class v1, Lcom/iflytek/cata/CataSession;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/cata/CataSession;->instance:Lcom/iflytek/cata/CataSession;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/cata/CataSession;

    invoke-direct {v0, p0, p1, p2}, Lcom/iflytek/cata/CataSession;-><init>(Landroid/content/Context;Lcom/iflytek/cata/ICataInitListener;Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/cata/CataSession;->instance:Lcom/iflytek/cata/CataSession;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/iflytek/cata/CataSession;->instance:Lcom/iflytek/cata/CataSession;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public createCataIndexInst()Lcom/iflytek/cata/CataIndexInst;
    .locals 1

    new-instance v0, Lcom/iflytek/cata/CataSession$CataIndexInstIm;

    invoke-direct {v0, p0}, Lcom/iflytek/cata/CataSession$CataIndexInstIm;-><init>(Lcom/iflytek/cata/CataSession;)V

    return-object v0
.end method

.method public createCataSearchInst()Lcom/iflytek/cata/CataSearchInst;
    .locals 1

    new-instance v0, Lcom/iflytek/cata/CataSession$CataSearchInstIm;

    invoke-direct {v0, p0}, Lcom/iflytek/cata/CataSession$CataSearchInstIm;-><init>(Lcom/iflytek/cata/CataSession;)V

    return-object v0
.end method

.method public declared-synchronized initService(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/iflytek/cata/CataSession;->mInitListener:Lcom/iflytek/cata/ICataInitListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/cata/CataSession;->mInitListener:Lcom/iflytek/cata/ICataInitListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/iflytek/cata/ICataInitListener;->onCataInited(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
