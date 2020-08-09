.class public Lcom/ximalaya/ting/android/opensdk/model/track/HistoryModel;
.super Ljava/lang/Object;


# instance fields
.field public isRadio:Z

.field private radio:Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

.field private track:Lcom/ximalaya/ting/android/opensdk/model/track/Track;

.field private updateAt:J


# direct methods
.method public constructor <init>(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/HistoryModel;->radio:Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getUpdateAt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/HistoryModel;->updateAt:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/HistoryModel;->isRadio:Z

    return-void
.end method

.method public constructor <init>(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/HistoryModel;->track:Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getUpdatedAt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/HistoryModel;->updateAt:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/HistoryModel;->isRadio:Z

    return-void
.end method


# virtual methods
.method public getRadio()Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/HistoryModel;->radio:Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    return-object v0
.end method

.method public getTrack()Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/HistoryModel;->track:Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    return-object v0
.end method

.method public getUpdateAt()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/HistoryModel;->updateAt:J

    return-wide v0
.end method
