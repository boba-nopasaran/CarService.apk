.class public final Lcom/hongfans/carmedia/processes/models/Statm;
.super Lcom/hongfans/carmedia/processes/models/ProcFile;
.source "Statm.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hongfans/carmedia/processes/models/Statm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final fields:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hongfans/carmedia/processes/models/Statm$1;

    invoke-direct {v0}, Lcom/hongfans/carmedia/processes/models/Statm$1;-><init>()V

    sput-object v0, Lcom/hongfans/carmedia/processes/models/Statm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/hongfans/carmedia/processes/models/ProcFile;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/carmedia/processes/models/Statm;->fields:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/hongfans/carmedia/processes/models/Statm$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hongfans/carmedia/processes/models/Statm;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hongfans/carmedia/processes/models/ProcFile;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hongfans/carmedia/processes/models/Statm;->content:Ljava/lang/String;

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/carmedia/processes/models/Statm;->fields:[Ljava/lang/String;

    return-void
.end method

.method public static get(I)Lcom/hongfans/carmedia/processes/models/Statm;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/hongfans/carmedia/processes/models/Statm;

    const-string v1, "/proc/%d/statm"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hongfans/carmedia/processes/models/Statm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getResidentSetSize()J
    .locals 4

    iget-object v0, p0, Lcom/hongfans/carmedia/processes/models/Statm;->fields:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getSize()J
    .locals 4

    iget-object v0, p0, Lcom/hongfans/carmedia/processes/models/Statm;->fields:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/hongfans/carmedia/processes/models/ProcFile;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/hongfans/carmedia/processes/models/Statm;->fields:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
