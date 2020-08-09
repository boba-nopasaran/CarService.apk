.class public Lcom/aispeech/aios/common/config/PkgName$MusicPkgName;
.super Ljava/lang/Object;
.source "PkgName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/common/config/PkgName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicPkgName"
.end annotation


# static fields
.field public static FM_LOCAL:Ljava/lang/String; = null

.field public static final MUSIC_AIOS:Ljava/lang/String; = "com.aispeech.aios.music"

.field public static final MUSIC_KUWO:Ljava/lang/String; = "cn.kuwo.kwmusiccar"

.field public static MUSIC_LOCAL:Ljava/lang/String; = null

.field public static final MUSIC_TING:Ljava/lang/String; = "com.ximalaya.ting.android.car"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/aispeech/aios/common/config/PkgName$MusicPkgName;->MUSIC_LOCAL:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/aispeech/aios/common/config/PkgName$MusicPkgName;->FM_LOCAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
