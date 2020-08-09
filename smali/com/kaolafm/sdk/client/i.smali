.class public Lcom/kaolafm/sdk/client/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaolafm/sdk/client/i$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "extra_is_autoplay"

.field public static final b:Ljava/lang/String; = "extra_playlist"

.field public static final c:Ljava/lang/String; = "extra_music"

.field public static final d:Ljava/lang/String; = "extra_keyword"

.field public static final e:Ljava/lang/String; = "com.edog.car.start.page"

.field public static final f:Ljava/lang/String; = "com.kaolafm.sdk.client"

.field public static final g:Ljava/lang/String; = "com.edog.action.music.play"

.field public static final h:Ljava/lang/String; = "com.edog.action.music.pause"

.field public static final i:Ljava/lang/String; = "com.edog.action.music.pre"

.field public static final j:Ljava/lang/String; = "com.edog.action.music.next"

.field public static final k:Ljava/lang/String; = "com.edog.action.app.launch"

.field public static final l:Ljava/lang/String; = "com.edog.action.app.exit"

.field public static final m:Ljava/lang/String; = "com.edog.action.app.search"

.field public static final n:Ljava/lang/String; = "auto"

.field public static final o:Ljava/lang/String; = "phone"

.field private static final p:Ljava/lang/String; = "com.edog.car"

.field private static final q:Ljava/lang/String; = "com.itings.myradio"

.field private static r:Lcom/kaolafm/sdk/client/i;


# instance fields
.field private s:Landroid/content/Context;

.field private t:Ljava/lang/String;

.field private u:Lcom/kaolafm/sdk/client/c;

.field private v:Landroid/content/ServiceConnection;

.field private w:Ljava/lang/String;

.field private x:Lcom/kaolafm/sdk/client/h;

.field private y:Lcom/kaolafm/sdk/client/ai;

.field private z:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/i;

    invoke-direct {v0}, Lcom/kaolafm/sdk/client/i;-><init>()V

    sput-object v0, Lcom/kaolafm/sdk/client/i;->r:Lcom/kaolafm/sdk/client/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kaolafm/sdk/client/x;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/x;-><init>(Lcom/kaolafm/sdk/client/i;)V

    iput-object v0, p0, Lcom/kaolafm/sdk/client/i;->z:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/c;)Lcom/kaolafm/sdk/client/c;
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/i;->u:Lcom/kaolafm/sdk/client/c;

    return-object p1
.end method

.method public static a()Lcom/kaolafm/sdk/client/i;
    .locals 1

    sget-object v0, Lcom/kaolafm/sdk/client/i;->r:Lcom/kaolafm/sdk/client/i;

    return-object v0
.end method

.method private a(ILjava/lang/String;IILcom/kaolafm/sdk/client/an;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.edog.car"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0x4f4d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->u:Lcom/kaolafm/sdk/client/c;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/kaolafm/sdk/client/c;->a(ILjava/lang/String;IILcom/kaolafm/sdk/client/g;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->u:Lcom/kaolafm/sdk/client/c;

    new-instance v1, Lcom/kaolafm/sdk/client/l;

    invoke-direct {v1, p0, p5}, Lcom/kaolafm/sdk/client/l;-><init>(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/an;)V

    invoke-interface {v0, p2, v1}, Lcom/kaolafm/sdk/client/c;->a(Ljava/lang/String;Lcom/kaolafm/sdk/client/f;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/kaolafm/sdk/client/i$a;)V
    .locals 1

    iput-object p1, p0, Lcom/kaolafm/sdk/client/i;->s:Landroid/content/Context;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/i;->t:Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.itings.myradio"

    iput-object v0, p0, Lcom/kaolafm/sdk/client/i;->w:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/kaolafm/sdk/client/j;

    invoke-direct {v0, p0, p3}, Lcom/kaolafm/sdk/client/j;-><init>(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/i$a;)V

    iput-object v0, p0, Lcom/kaolafm/sdk/client/i;->v:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Lcom/kaolafm/sdk/client/i;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "com.edog.car"

    iput-object v0, p0, Lcom/kaolafm/sdk/client/i;->w:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/kaolafm/sdk/client/i$a;)V
    .locals 3

    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->u:Lcom/kaolafm/sdk/client/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->s:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->s:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/i;->t:Ljava/lang/String;

    new-instance v2, Lcom/kaolafm/sdk/client/w;

    invoke-direct {v2, p0, p1}, Lcom/kaolafm/sdk/client/w;-><init>(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/i$a;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/kaolafm/sdk/client/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/kaolafm/sdk/client/i$a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/kaolafm/sdk/client/i$a;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kaolafm/sdk/client/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/i;->r()V

    return-void
.end method

.method static synthetic a(Lcom/kaolafm/sdk/client/i;ILjava/lang/String;IILcom/kaolafm/sdk/client/an;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/kaolafm/sdk/client/i;->a(ILjava/lang/String;IILcom/kaolafm/sdk/client/an;)V

    return-void
.end method

.method static synthetic b(Lcom/kaolafm/sdk/client/i;)Lcom/kaolafm/sdk/client/h;
    .locals 1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->x:Lcom/kaolafm/sdk/client/h;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kaolafm.sdk.client"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kaolafm/sdk/client/i;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/i;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/kaolafm/sdk/client/i;->v:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method static synthetic c(Lcom/kaolafm/sdk/client/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/i;->s()V

    return-void
.end method

.method static synthetic d(Lcom/kaolafm/sdk/client/i;)Lcom/kaolafm/sdk/client/c;
    .locals 1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->u:Lcom/kaolafm/sdk/client/c;

    return-object v0
.end method

.method static synthetic e(Lcom/kaolafm/sdk/client/i;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->s:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/kaolafm/sdk/client/i;)Lcom/kaolafm/sdk/client/ai;
    .locals 1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->y:Lcom/kaolafm/sdk/client/ai;

    return-object v0
.end method

.method static synthetic g(Lcom/kaolafm/sdk/client/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/i;->q()V

    return-void
.end method

.method private q()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->v:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->s:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/i;->v:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/kaolafm/sdk/client/i;->v:Landroid/content/ServiceConnection;

    iput-object v2, p0, Lcom/kaolafm/sdk/client/i;->u:Lcom/kaolafm/sdk/client/c;

    :cond_0
    return-void
.end method

.method private r()V
    .locals 4

    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->s:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->s:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/i;->z:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.kaolafm.auto.home.appExit.action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->s:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->s:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/i;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kaolafm/sdk/client/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public a(Lcom/kaolafm/sdk/client/Music;)V
    .locals 1
    .param p1    # Lcom/kaolafm/sdk/client/Music;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/kaolafm/sdk/client/m;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/m;-><init>(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/Music;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public a(Lcom/kaolafm/sdk/client/Radio;)V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/v;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/v;-><init>(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/Radio;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public a(Lcom/kaolafm/sdk/client/SearchData;)V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/o;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/o;-><init>(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/SearchData;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public a(Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;IILcom/kaolafm/sdk/client/an;)V
    .locals 7

    new-instance v0, Lcom/kaolafm/sdk/client/k;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kaolafm/sdk/client/k;-><init>(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;IILcom/kaolafm/sdk/client/an;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public a(Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;Lcom/kaolafm/sdk/client/an;)V
    .locals 6

    const/4 v3, 0x1

    const/16 v4, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;IILcom/kaolafm/sdk/client/an;)V

    return-void
.end method

.method public a(Lcom/kaolafm/sdk/client/ah;)V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/ab;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/ab;-><init>(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/ah;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public a(Lcom/kaolafm/sdk/client/ai;)V
    .locals 1

    iput-object p1, p0, Lcom/kaolafm/sdk/client/i;->y:Lcom/kaolafm/sdk/client/ai;

    new-instance v0, Lcom/kaolafm/sdk/client/ad;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/ad;-><init>(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/ai;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public a(Lcom/kaolafm/sdk/client/ak;)V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/t;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/t;-><init>(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/ak;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public a(Lcom/kaolafm/sdk/client/h;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/i;->x:Lcom/kaolafm/sdk/client/h;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kaolafm/sdk/client/i;->a(Ljava/lang/String;Lcom/kaolafm/sdk/client/am;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/kaolafm/sdk/client/ah;)V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/kaolafm/sdk/client/p;-><init>(Lcom/kaolafm/sdk/client/i;Ljava/lang/String;Lcom/kaolafm/sdk/client/ah;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/kaolafm/sdk/client/am;)V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/ae;

    invoke-direct {v0, p0, p1, p2}, Lcom/kaolafm/sdk/client/ae;-><init>(Lcom/kaolafm/sdk/client/i;Ljava/lang/String;Lcom/kaolafm/sdk/client/am;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/kaolafm/sdk/client/an;)V
    .locals 6

    const/4 v3, 0x0

    sget-object v1, Lcom/kaolafm/sdk/client/SearchType;->ALL:Lcom/kaolafm/sdk/client/SearchType;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;IILcom/kaolafm/sdk/client/an;)V

    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kaolafm/sdk/client/Music;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/kaolafm/sdk/client/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/kaolafm/sdk/client/n;-><init>(Lcom/kaolafm/sdk/client/i;Ljava/util/List;I)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/u;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/u;-><init>(Lcom/kaolafm/sdk/client/i;Z)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/y;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/y;-><init>(Lcom/kaolafm/sdk/client/i;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public b(Lcom/kaolafm/sdk/client/ah;)V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/ac;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/ac;-><init>(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/ah;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public c()V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/z;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/z;-><init>(Lcom/kaolafm/sdk/client/i;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public d()V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/aa;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/aa;-><init>(Lcom/kaolafm/sdk/client/i;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public e()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->u:Lcom/kaolafm/sdk/client/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->u:Lcom/kaolafm/sdk/client/c;

    invoke-interface {v0}, Lcom/kaolafm/sdk/client/c;->n()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/ah;)V

    return-void
.end method

.method public g()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->u:Lcom/kaolafm/sdk/client/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->u:Lcom/kaolafm/sdk/client/c;

    invoke-interface {v0}, Lcom/kaolafm/sdk/client/c;->m()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/i;->b(Lcom/kaolafm/sdk/client/ah;)V

    return-void
.end method

.method public i()Lcom/kaolafm/sdk/client/PlayState;
    .locals 2

    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->u:Lcom/kaolafm/sdk/client/c;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/i;->u:Lcom/kaolafm/sdk/client/c;

    invoke-interface {v0}, Lcom/kaolafm/sdk/client/c;->f()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sget-object v1, Lcom/kaolafm/sdk/client/PlayState;->PLAYING:Lcom/kaolafm/sdk/client/PlayState;

    invoke-virtual {v1}, Lcom/kaolafm/sdk/client/PlayState;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/kaolafm/sdk/client/PlayState;->PLAYING:Lcom/kaolafm/sdk/client/PlayState;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v0, Lcom/kaolafm/sdk/client/PlayState;->PAUSED:Lcom/kaolafm/sdk/client/PlayState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/kaolafm/sdk/client/PlayState;->PAUSED:Lcom/kaolafm/sdk/client/PlayState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/kaolafm/sdk/client/PlayState;->PAUSED:Lcom/kaolafm/sdk/client/PlayState;

    goto :goto_0
.end method

.method public j()J
    .locals 3

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/kaolafm/sdk/client/i;->u:Lcom/kaolafm/sdk/client/c;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/kaolafm/sdk/client/i;->u:Lcom/kaolafm/sdk/client/c;

    invoke-interface {v2}, Lcom/kaolafm/sdk/client/c;->g()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public k()Lcom/kaolafm/sdk/client/Music;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kaolafm/sdk/client/i;->u:Lcom/kaolafm/sdk/client/c;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/kaolafm/sdk/client/i;->u:Lcom/kaolafm/sdk/client/c;

    invoke-interface {v1}, Lcom/kaolafm/sdk/client/c;->h()Lcom/kaolafm/sdk/client/Music;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public l()V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/q;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/q;-><init>(Lcom/kaolafm/sdk/client/i;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public m()V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/r;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/r;-><init>(Lcom/kaolafm/sdk/client/i;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public n()V
    .locals 1

    new-instance v0, Lcom/kaolafm/sdk/client/s;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/s;-><init>(Lcom/kaolafm/sdk/client/i;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/i$a;)V

    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/i;->a(Lcom/kaolafm/sdk/client/Radio;)V

    return-void
.end method

.method public p()V
    .locals 0

    invoke-direct {p0}, Lcom/kaolafm/sdk/client/i;->q()V

    return-void
.end method
