.class Lcom/car/systemfunc/SystemEventHandler$PackageDeleteObserverAdapter;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "SystemEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/SystemEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageDeleteObserverAdapter"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/car/systemfunc/SystemEventHandler$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
