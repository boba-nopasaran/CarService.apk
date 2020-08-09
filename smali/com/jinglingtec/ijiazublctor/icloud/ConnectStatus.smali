.class public Lcom/jinglingtec/ijiazublctor/icloud/ConnectStatus;
.super Ljava/lang/Object;
.source "ConnectStatus.java"


# instance fields
.field public AID:Ljava/lang/String;

.field public AddTime:J

.field public BatteryLevel:I

.field public ConnectTime:J

.field public DeviceID:Ljava/lang/String;

.field public DisconnectTime:J

.field public MobileID:Ljava/lang/String;

.field public Network:Ljava/lang/String;

.field public VersionCode:I

.field public VersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/icloud/ConnectStatus;->DeviceID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/icloud/ConnectStatus;->AID:Ljava/lang/String;

    iput-wide v2, p0, Lcom/jinglingtec/ijiazublctor/icloud/ConnectStatus;->ConnectTime:J

    iput-wide v2, p0, Lcom/jinglingtec/ijiazublctor/icloud/ConnectStatus;->DisconnectTime:J

    iput v1, p0, Lcom/jinglingtec/ijiazublctor/icloud/ConnectStatus;->BatteryLevel:I

    iput v1, p0, Lcom/jinglingtec/ijiazublctor/icloud/ConnectStatus;->VersionCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/icloud/ConnectStatus;->VersionName:Ljava/lang/String;

    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/icloud/ConnectStatus;->Network:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/icloud/ConnectStatus;->MobileID:Ljava/lang/String;

    iput-wide v2, p0, Lcom/jinglingtec/ijiazublctor/icloud/ConnectStatus;->AddTime:J

    return-void
.end method
