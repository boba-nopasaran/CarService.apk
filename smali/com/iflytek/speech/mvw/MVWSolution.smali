.class public Lcom/iflytek/speech/mvw/MVWSolution;
.super Ljava/lang/Object;
.source "MVWSolution.java"

# interfaces
.implements Lcom/iflytek/speech/mvw/IMVWService;


# static fields
.field private static ID:Ljava/lang/String; = null

.field private static instance:Lcom/iflytek/speech/mvw/MVWSolution; = null

.field private static final tag:Ljava/lang/String; = "MVWSolution"


# instance fields
.field private final mNativeHandle:Lcom/iflytek/speech/NativeHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/speech/mvw/MVWSolution;->ID:Ljava/lang/String;

    sput-object v0, Lcom/iflytek/speech/mvw/MVWSolution;->instance:Lcom/iflytek/speech/mvw/MVWSolution;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/speech/NativeHandle;

    invoke-direct {v0}, Lcom/iflytek/speech/NativeHandle;-><init>()V

    iput-object v0, p0, Lcom/iflytek/speech/mvw/MVWSolution;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    const-string v0, "MVWSolution"

    const-string v1, "new MVWSolution"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/iflytek/speech/mvw/MVWSolution;
    .locals 2

    const-string v0, "MVWSolution"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/iflytek/speech/mvw/MVWSolution;->instance:Lcom/iflytek/speech/mvw/MVWSolution;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/speech/mvw/MVWSolution;

    invoke-direct {v0}, Lcom/iflytek/speech/mvw/MVWSolution;-><init>()V

    sput-object v0, Lcom/iflytek/speech/mvw/MVWSolution;->instance:Lcom/iflytek/speech/mvw/MVWSolution;

    :cond_0
    sget-object v0, Lcom/iflytek/speech/mvw/MVWSolution;->instance:Lcom/iflytek/speech/mvw/MVWSolution;

    return-object v0
.end method

.method public static isCouldAppendAudioData()Z
    .locals 3

    const-string v1, "MVWSolution"

    const-string v2, "isCouldAppendAudioData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iflytek/speech/libissmvw;->isCouldAppendAudioData()Z

    move-result v0

    return v0
.end method

.method public static setMvwLanguage(I)I
    .locals 3

    const-string v1, "MVWSolution"

    const-string v2, "setMvwLanguage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/iflytek/speech/libissmvw;->setMvwLanguage(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addStartMvwScene(I)I
    .locals 4

    const-string v1, "MVWSolution"

    const-string v2, "add StartMvw scene"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/speech/mvw/MVWSolution;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v1, p1}, Lcom/iflytek/speech/libissmvw;->addstartscene(Lcom/iflytek/speech/NativeHandle;I)I

    move-result v0

    const-string v1, "MVWSolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speechjni MVW -> start return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public appendAudioData([BI)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/speech/mvw/MVWSolution;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v0, p1, p2}, Lcom/iflytek/speech/libissmvw;->appendAudioData(Lcom/iflytek/speech/NativeHandle;[BI)I

    move-result v0

    return v0
.end method

.method public initMvw(Ljava/lang/String;Lcom/iflytek/speech/mvw/IMVWListener;)I
    .locals 4

    const-string v1, "MVWSolution"

    const-string v2, "init Mvw"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v1, "/$"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Lcom/iflytek/speech/mvw/MVWSolution;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v1, p1, p2}, Lcom/iflytek/speech/libissmvw;->create(Lcom/iflytek/speech/NativeHandle;Ljava/lang/String;Lcom/iflytek/speech/mvw/IMVWListener;)I

    move-result v0

    const-string v1, "MVWSolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create libissmvw return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public releaseMvw()I
    .locals 3

    const-string v1, "MVWSolution"

    const-string v2, "release mvw"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/speech/mvw/MVWSolution;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v1}, Lcom/iflytek/speech/libissmvw;->destroy(Lcom/iflytek/speech/NativeHandle;)I

    move-result v0

    return v0
.end method

.method public setMvwDefaultKeyWords(I)I
    .locals 3

    const-string v1, "MVWSolution"

    const-string v2, "setMvwKeyWords"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/speech/mvw/MVWSolution;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v1, p1}, Lcom/iflytek/speech/libissmvw;->setMvwDefaultKeyWords(Lcom/iflytek/speech/NativeHandle;I)I

    move-result v0

    return v0
.end method

.method public setMvwKeyWords(ILjava/lang/String;)I
    .locals 3

    const-string v1, "MVWSolution"

    const-string v2, "setMvwKeyWords"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/speech/mvw/MVWSolution;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v1, p1, p2}, Lcom/iflytek/speech/libissmvw;->setMvwKeyWords(Lcom/iflytek/speech/NativeHandle;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string v0, "MVWSolution"

    const-string v1, "setParam"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/speech/mvw/MVWSolution;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v0, p1, p2}, Lcom/iflytek/speech/libissmvw;->setParam(Lcom/iflytek/speech/NativeHandle;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setThreshold(III)I
    .locals 2

    const-string v0, "MVWSolution"

    const-string v1, "setThreshold"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/speech/mvw/MVWSolution;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v0, p1, p2, p3}, Lcom/iflytek/speech/libissmvw;->setThreshold(Lcom/iflytek/speech/NativeHandle;III)I

    move-result v0

    return v0
.end method

.method public startMvw(I)I
    .locals 4

    const-string v1, "MVWSolution"

    const-string v2, "StartMvw"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/speech/mvw/MVWSolution;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v1}, Lcom/iflytek/speech/libissmvw;->stop(Lcom/iflytek/speech/NativeHandle;)I

    iget-object v1, p0, Lcom/iflytek/speech/mvw/MVWSolution;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v1, p1}, Lcom/iflytek/speech/libissmvw;->start(Lcom/iflytek/speech/NativeHandle;I)I

    move-result v0

    const-string v1, "MVWSolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speechjni MVW -> start return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public stopMvw()I
    .locals 3

    const-string v1, "MVWSolution"

    const-string v2, "sessionStop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/speech/mvw/MVWSolution;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v1}, Lcom/iflytek/speech/libissmvw;->stop(Lcom/iflytek/speech/NativeHandle;)I

    move-result v0

    return v0
.end method

.method public stopMvwScene(I)I
    .locals 3

    const-string v1, "MVWSolution"

    const-string v2, "sessionStop scene"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/speech/mvw/MVWSolution;->mNativeHandle:Lcom/iflytek/speech/NativeHandle;

    invoke-static {v1, p1}, Lcom/iflytek/speech/libissmvw;->stopscene(Lcom/iflytek/speech/NativeHandle;I)I

    move-result v0

    return v0
.end method
