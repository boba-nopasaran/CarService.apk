.class public Lcom/car/utils/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"


# static fields
.field private static final SOUNDS:[I

.field public static final Sound_Ding:I = 0x5

.field public static final Sound_SpeechCancel:I = 0x3

.field public static final Sound_SpeechEnd:I = 0x1

.field public static final Sound_SpeechError:I = 0x2

.field public static final Sound_SpeechStart:I = 0x0

.field public static final Sound_SpeechSucess:I = 0x4

.field private static sInstance:Lcom/car/utils/SoundPlayer;


# instance fields
.field mContext:Landroid/content/Context;

.field private mSoundID:[I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/car/utils/SoundPlayer;->SOUNDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f050003
        0x7f050005
        0x7f050002
        0x7f050001
        0x7f050004
        0x7f050000
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/car/utils/SoundPlayer;->SOUNDS:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/car/utils/SoundPlayer;->mSoundID:[I

    iput-object p1, p0, Lcom/car/utils/SoundPlayer;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/car/utils/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/car/utils/SoundPlayer;->SOUNDS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/car/utils/SoundPlayer;->mSoundID:[I

    iget-object v2, p0, Lcom/car/utils/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    sget-object v3, Lcom/car/utils/SoundPlayer;->SOUNDS:[I

    aget v3, v3, v0

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static create(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/car/utils/SoundPlayer;

    invoke-direct {v0, p0}, Lcom/car/utils/SoundPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/car/utils/SoundPlayer;->sInstance:Lcom/car/utils/SoundPlayer;

    return-void
.end method

.method public static destory()V
    .locals 1

    sget-object v0, Lcom/car/utils/SoundPlayer;->sInstance:Lcom/car/utils/SoundPlayer;

    invoke-direct {v0}, Lcom/car/utils/SoundPlayer;->destorySoundPlayer()V

    return-void
.end method

.method private destorySoundPlayer()V
    .locals 1

    iget-object v0, p0, Lcom/car/utils/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method private play(I)Z
    .locals 7

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/car/utils/SoundPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/CarUtil;->isInCommunication(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/car/utils/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/car/utils/SoundPlayer;->mSoundID:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static playSound(I)Z
    .locals 1

    sget-object v0, Lcom/car/utils/SoundPlayer;->sInstance:Lcom/car/utils/SoundPlayer;

    invoke-direct {v0, p0}, Lcom/car/utils/SoundPlayer;->play(I)Z

    move-result v0

    return v0
.end method
