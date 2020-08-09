.class Lcom/kaolafm/sdk/client/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kaolafm/sdk/client/i$a;


# instance fields
.field final synthetic a:Lcom/kaolafm/sdk/client/SearchData;

.field final synthetic b:Lcom/kaolafm/sdk/client/i;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/i;Lcom/kaolafm/sdk/client/SearchData;)V
    .locals 0

    iput-object p1, p0, Lcom/kaolafm/sdk/client/o;->b:Lcom/kaolafm/sdk/client/i;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/o;->a:Lcom/kaolafm/sdk/client/SearchData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/kaolafm/sdk/client/o;->a:Lcom/kaolafm/sdk/client/SearchData;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/o;->b:Lcom/kaolafm/sdk/client/i;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/i;->e(Lcom/kaolafm/sdk/client/i;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.edog.car"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0x4f4d

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/kaolafm/sdk/client/o;->b:Lcom/kaolafm/sdk/client/i;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/i;->d(Lcom/kaolafm/sdk/client/i;)Lcom/kaolafm/sdk/client/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kaolafm/sdk/client/o;->a:Lcom/kaolafm/sdk/client/SearchData;

    invoke-interface {v0, v1}, Lcom/kaolafm/sdk/client/c;->a(Lcom/kaolafm/sdk/client/SearchData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/kaolafm/sdk/client/Music;

    invoke-direct {v0}, Lcom/kaolafm/sdk/client/Music;-><init>()V

    iget-object v1, p0, Lcom/kaolafm/sdk/client/o;->a:Lcom/kaolafm/sdk/client/SearchData;

    invoke-virtual {v1}, Lcom/kaolafm/sdk/client/SearchData;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kaolafm/sdk/client/Music;->a:J

    iget-object v1, p0, Lcom/kaolafm/sdk/client/o;->a:Lcom/kaolafm/sdk/client/SearchData;

    invoke-virtual {v1}, Lcom/kaolafm/sdk/client/SearchData;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kaolafm/sdk/client/Music;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/o;->a:Lcom/kaolafm/sdk/client/SearchData;

    invoke-virtual {v1}, Lcom/kaolafm/sdk/client/SearchData;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kaolafm/sdk/client/Music;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/o;->b:Lcom/kaolafm/sdk/client/i;

    invoke-static {v1}, Lcom/kaolafm/sdk/client/i;->d(Lcom/kaolafm/sdk/client/i;)Lcom/kaolafm/sdk/client/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/kaolafm/sdk/client/c;->a(Lcom/kaolafm/sdk/client/Music;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
