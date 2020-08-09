.class public Lcom/iflytek/speech/sr/SRSolution;
.super Ljava/lang/Object;
.source "SRSolution.java"

# interfaces
.implements Lcom/iflytek/speech/sr/ISRService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/sr/SRSolution$createExsrthread;,
        Lcom/iflytek/speech/sr/SRSolution$createsrthread;,
        Lcom/iflytek/speech/sr/SRSolution$sendCreateMsgThread;
    }
.end annotation


# static fields
.field private static IMEI:Ljava/lang/String; = null

.field private static instance:Lcom/iflytek/speech/sr/SRSolution; = null

.field private static mSerialNumber:Ljava/lang/String; = null

.field private static final tag:Ljava/lang/String; = "SRSolution"


# instance fields
.field private ID:Ljava/lang/String;

.field private ResDir:Ljava/lang/String;

.field private create_done:Z

.field private mSRListener:Lcom/iflytek/speech/sr/ISRListener;

.field private miAcousLang:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/speech/sr/SRSolution;->instance:Lcom/iflytek/speech/sr/SRSolution;

    sput-object v0, Lcom/iflytek/speech/sr/SRSolution;->IMEI:Ljava/lang/String;

    sput-object v0, Lcom/iflytek/speech/sr/SRSolution;->mSerialNumber:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/speech/sr/SRSolution;->mSRListener:Lcom/iflytek/speech/sr/ISRListener;

    iput v1, p0, Lcom/iflytek/speech/sr/SRSolution;->miAcousLang:I

    iput-object v0, p0, Lcom/iflytek/speech/sr/SRSolution;->ResDir:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/iflytek/speech/sr/SRSolution;->create_done:Z

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/speech/sr/SRSolution;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/sr/SRSolution;->IMEI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iflytek/speech/sr/SRSolution;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/sr/SRSolution;->ResDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iflytek/speech/sr/SRSolution;)Lcom/iflytek/speech/sr/ISRListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/sr/SRSolution;->mSRListener:Lcom/iflytek/speech/sr/ISRListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/iflytek/speech/sr/SRSolution;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/speech/sr/SRSolution;->create_done:Z

    return p1
.end method

.method static synthetic access$700(Lcom/iflytek/speech/sr/SRSolution;)I
    .locals 1

    iget v0, p0, Lcom/iflytek/speech/sr/SRSolution;->miAcousLang:I

    return v0
.end method

.method public static getInstance()Lcom/iflytek/speech/sr/SRSolution;
    .locals 1

    sget-object v0, Lcom/iflytek/speech/sr/SRSolution;->instance:Lcom/iflytek/speech/sr/SRSolution;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/iflytek/speech/sr/SRSolution;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "SRSolution"

    const-string v1, "IMEI is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/speech/sr/SRSolution;->instance:Lcom/iflytek/speech/sr/SRSolution;

    if-nez v0, :cond_1

    new-instance v0, Lcom/iflytek/speech/sr/SRSolution;

    invoke-direct {v0}, Lcom/iflytek/speech/sr/SRSolution;-><init>()V

    sput-object v0, Lcom/iflytek/speech/sr/SRSolution;->instance:Lcom/iflytek/speech/sr/SRSolution;

    :cond_1
    sput-object p0, Lcom/iflytek/speech/sr/SRSolution;->IMEI:Ljava/lang/String;

    sget-object v0, Lcom/iflytek/speech/sr/SRSolution;->instance:Lcom/iflytek/speech/sr/SRSolution;

    goto :goto_0
.end method

.method private getSessionId()Ljava/lang/String;
    .locals 10

    const-string v8, "SRSolution"

    const-string v9, "getSessionId"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    invoke-virtual {v6}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "iflytek"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public OnSRMsgProc(JJLjava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/speech/sr/SRSolution;->mSRListener:Lcom/iflytek/speech/sr/ISRListener;

    if-eqz v1, :cond_2

    if-nez p5, :cond_0

    const-string p5, ""

    :cond_0
    const-wide/16 v2, 0x4e23

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1

    const-string v1, "SRSolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", wParam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/iflytek/speech/sr/SRSolution;->mSRListener:Lcom/iflytek/speech/sr/ISRListener;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/iflytek/speech/sr/ISRListener;->onSRMsgProc_(JJLjava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const-string v1, "SRSolution"

    const-string v2, "listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public appendAudioData(Ljava/lang/String;[BI)I
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x4e20

    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p2, p3}, Lcom/iflytek/speech/libisssr;->appendAudioData([BI)I

    move-result v0

    goto :goto_0
.end method

.method public create(Ljava/lang/String;Lcom/iflytek/speech/sr/ISRListener;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const-string v4, "SRSolution"

    const-string v5, "sessionCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v4, "/$"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-boolean v4, p0, Lcom/iflytek/speech/sr/SRSolution;->create_done:Z

    if-eqz v4, :cond_2

    iput-object p2, p0, Lcom/iflytek/speech/sr/SRSolution;->mSRListener:Lcom/iflytek/speech/sr/ISRListener;

    iput-object p1, p0, Lcom/iflytek/speech/sr/SRSolution;->ResDir:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/iflytek/speech/sr/SRSolution;->getSessionId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    :cond_1
    const-string v4, "SRSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Already created, return ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/iflytek/speech/sr/SRSolution$sendCreateMsgThread;

    invoke-direct {v4, p0, v7}, Lcom/iflytek/speech/sr/SRSolution$sendCreateMsgThread;-><init>(Lcom/iflytek/speech/sr/SRSolution;Lcom/iflytek/speech/sr/SRSolution$1;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v4, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    :goto_0
    return-object v4

    :cond_2
    invoke-direct {p0}, Lcom/iflytek/speech/sr/SRSolution;->getSessionId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/speech/sr/SRSolution;->mSRListener:Lcom/iflytek/speech/sr/ISRListener;

    iput-object p1, p0, Lcom/iflytek/speech/sr/SRSolution;->ResDir:Ljava/lang/String;

    sget-object v4, Lcom/iflytek/speech/sr/SRSolution;->IMEI:Ljava/lang/String;

    invoke-static {v4}, Lcom/iflytek/speech/libisssr;->setMachineCode(Ljava/lang/String;)I

    move-result v1

    const-string v4, "SRSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMachineCode return = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    sget-object v4, Lcom/iflytek/speech/sr/SRSolution;->mSerialNumber:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/iflytek/speech/sr/SRSolution;->mSerialNumber:Ljava/lang/String;

    invoke-static {v4}, Lcom/iflytek/speech/libisssr;->setSerialNumber(Ljava/lang/String;)I

    move-result v1

    :cond_3
    const-string v4, "SRSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSerialNumber return = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/iflytek/speech/libisssr;->activate(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v4, Lcom/iflytek/speech/sr/SRSolution;->mSerialNumber:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v4, "SRSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create session activate error,id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/iflytek/speech/libisssr;->getActiveKey(Ljava/lang/String;)I

    move-result v1

    const-string v4, "SRSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getActiveKey return = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/iflytek/speech/libisssr;->activate(Ljava/lang/String;)I

    move-result v0

    :cond_4
    if-eqz v0, :cond_5

    const-string v4, "SRSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create session activate error,id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_5
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/iflytek/speech/sr/SRSolution$createsrthread;

    invoke-direct {v4, p0, v7}, Lcom/iflytek/speech/sr/SRSolution$createsrthread;-><init>(Lcom/iflytek/speech/sr/SRSolution;Lcom/iflytek/speech/sr/SRSolution$1;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-string v4, "SRSolution"

    const-string v5, "sessionCreate success, return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public createEx(ILjava/lang/String;Lcom/iflytek/speech/sr/ISRListener;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const-string v4, "SRSolution"

    const-string v5, "sessionCreateEx"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const-string v4, "/$"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-boolean v4, p0, Lcom/iflytek/speech/sr/SRSolution;->create_done:Z

    if-eqz v4, :cond_2

    iput-object p3, p0, Lcom/iflytek/speech/sr/SRSolution;->mSRListener:Lcom/iflytek/speech/sr/ISRListener;

    iput-object p2, p0, Lcom/iflytek/speech/sr/SRSolution;->ResDir:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/iflytek/speech/sr/SRSolution;->getSessionId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    :cond_1
    const-string v4, "SRSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Already created, return ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/iflytek/speech/sr/SRSolution$sendCreateMsgThread;

    invoke-direct {v4, p0, v7}, Lcom/iflytek/speech/sr/SRSolution$sendCreateMsgThread;-><init>(Lcom/iflytek/speech/sr/SRSolution;Lcom/iflytek/speech/sr/SRSolution$1;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v4, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    :goto_0
    return-object v4

    :cond_2
    invoke-direct {p0}, Lcom/iflytek/speech/sr/SRSolution;->getSessionId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    iput p1, p0, Lcom/iflytek/speech/sr/SRSolution;->miAcousLang:I

    iput-object p3, p0, Lcom/iflytek/speech/sr/SRSolution;->mSRListener:Lcom/iflytek/speech/sr/ISRListener;

    iput-object p2, p0, Lcom/iflytek/speech/sr/SRSolution;->ResDir:Ljava/lang/String;

    sget-object v4, Lcom/iflytek/speech/sr/SRSolution;->IMEI:Ljava/lang/String;

    invoke-static {v4}, Lcom/iflytek/speech/libisssr;->setMachineCode(Ljava/lang/String;)I

    move-result v1

    const-string v4, "SRSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMachineCode return = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    sget-object v4, Lcom/iflytek/speech/sr/SRSolution;->mSerialNumber:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/iflytek/speech/sr/SRSolution;->mSerialNumber:Ljava/lang/String;

    invoke-static {v4}, Lcom/iflytek/speech/libisssr;->setSerialNumber(Ljava/lang/String;)I

    move-result v1

    :cond_3
    invoke-static {p2}, Lcom/iflytek/speech/libisssr;->activate(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v4, Lcom/iflytek/speech/sr/SRSolution;->mSerialNumber:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v4, "SRSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create session activate error,id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/iflytek/speech/libisssr;->getActiveKey(Ljava/lang/String;)I

    move-result v1

    const-string v4, "SRSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getActiveKey return = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/iflytek/speech/libisssr;->activate(Ljava/lang/String;)I

    move-result v0

    :cond_4
    if-eqz v0, :cond_5

    const-string v4, "SRSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create session activate error,id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_5
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/iflytek/speech/sr/SRSolution$createExsrthread;

    invoke-direct {v4, p0, v7}, Lcom/iflytek/speech/sr/SRSolution$createExsrthread;-><init>(Lcom/iflytek/speech/sr/SRSolution;Lcom/iflytek/speech/sr/SRSolution$1;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-string v4, "SRSolution"

    const-string v5, "sessionCreateEx success, return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public destroy(Ljava/lang/String;)I
    .locals 2

    const-string v0, "SRSolution"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x4e20

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/speech/sr/SRSolution;->create_done:Z

    invoke-static {}, Lcom/iflytek/speech/libisssr;->destroy()I

    move-result v0

    goto :goto_0
.end method

.method public endAudioData(Ljava/lang/String;)I
    .locals 2

    const-string v0, "SRSolution"

    const-string v1, "endAudioData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x4e20

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/iflytek/speech/libisssr;->endAudioData()I

    move-result v0

    goto :goto_0
.end method

.method public getActiveKey(Ljava/lang/String;)I
    .locals 3

    const-string v1, "SRSolution"

    const-string v2, "getActiveKey"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v1, "/$"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/iflytek/speech/libisssr;->activate(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-static {p1}, Lcom/iflytek/speech/libisssr;->getActiveKey(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public localNli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "SRSolution"

    const-string v1, "localNli"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2, p3}, Lcom/iflytek/speech/libisssr;->localNli(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public mspSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "SRSolution"

    const-string v1, "mspSearch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2, p3}, Lcom/iflytek/speech/libisssr;->mspSearch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public sessionStart(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 3

    const-string v0, "SRSolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sessionStart, sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " szScene="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " iMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "SRSolution"

    const-string v1, "ISS_ERROR_NO_LICENSE, sid!=ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4e20

    :goto_0
    return v0

    :cond_1
    invoke-static {p2, p3, p4}, Lcom/iflytek/speech/libisssr;->start(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public sessionStop(Ljava/lang/String;)I
    .locals 2

    const-string v0, "SRSolution"

    const-string v1, "SessionStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x4e20

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/iflytek/speech/libisssr;->stop()I

    move-result v0

    goto :goto_0
.end method

.method public setMachineCode(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lcom/iflytek/speech/libisssr;->setMachineCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string v0, "SRSolution"

    const-string v1, "setParam"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x4e20

    :goto_0
    return v0

    :cond_1
    invoke-static {p2, p3}, Lcom/iflytek/speech/libisssr;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setSerialNumber(Ljava/lang/String;)I
    .locals 2

    const-string v0, "SRSolution"

    const-string v1, "setSerialNumber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/iflytek/speech/sr/SRSolution;->mSerialNumber:Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method public uploadDict(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    const-string v0, "SRSolution"

    const-string v1, "uploadDict"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/speech/sr/SRSolution;->ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x4e20

    :goto_0
    return v0

    :cond_1
    invoke-static {p2, p3}, Lcom/iflytek/speech/libisssr;->uploadDict(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method
