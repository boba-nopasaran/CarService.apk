.class public Lcom/hongfans/carmedia/processes/models/AndroidProcess;
.super Ljava/lang/Object;
.source "AndroidProcess.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hongfans/carmedia/processes/models/AndroidProcess;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final name:Ljava/lang/String;

.field public final pid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hongfans/carmedia/processes/models/AndroidProcess$1;

    invoke-direct {v0}, Lcom/hongfans/carmedia/processes/models/AndroidProcess$1;-><init>()V

    sput-object v0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->pid:I

    invoke-static {p1}, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->getProcessName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->name:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->pid:I

    return-void
.end method

.method static getProcessName(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/proc/%d/cmdline"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hongfans/carmedia/processes/models/ProcFile;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/hongfans/carmedia/processes/models/Stat;->get(I)Lcom/hongfans/carmedia/processes/models/Stat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hongfans/carmedia/processes/models/Stat;->getComm()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public attr_current()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "attr/current"

    invoke-virtual {p0, v0}, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cgroup()Lcom/hongfans/carmedia/processes/models/Cgroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->pid:I

    invoke-static {v0}, Lcom/hongfans/carmedia/processes/models/Cgroup;->get(I)Lcom/hongfans/carmedia/processes/models/Cgroup;

    move-result-object v0

    return-object v0
.end method

.method public cmdline()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "cmdline"

    invoke-virtual {p0, v0}, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public oom_adj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "oom_adj"

    invoke-virtual {p0, v0}, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public oom_score()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "oom_score"

    invoke-virtual {p0, v0}, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public oom_score_adj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "oom_score_adj"

    invoke-virtual {p0, v0}, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public read(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "/proc/%d/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hongfans/carmedia/processes/models/ProcFile;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stat()Lcom/hongfans/carmedia/processes/models/Stat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->pid:I

    invoke-static {v0}, Lcom/hongfans/carmedia/processes/models/Stat;->get(I)Lcom/hongfans/carmedia/processes/models/Stat;

    move-result-object v0

    return-object v0
.end method

.method public statm()Lcom/hongfans/carmedia/processes/models/Statm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->pid:I

    invoke-static {v0}, Lcom/hongfans/carmedia/processes/models/Statm;->get(I)Lcom/hongfans/carmedia/processes/models/Statm;

    move-result-object v0

    return-object v0
.end method

.method public status()Lcom/hongfans/carmedia/processes/models/Status;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->pid:I

    invoke-static {v0}, Lcom/hongfans/carmedia/processes/models/Status;->get(I)Lcom/hongfans/carmedia/processes/models/Status;

    move-result-object v0

    return-object v0
.end method

.method public wchan()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "wchan"

    invoke-virtual {p0, v0}, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/hongfans/carmedia/processes/models/AndroidProcess;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
