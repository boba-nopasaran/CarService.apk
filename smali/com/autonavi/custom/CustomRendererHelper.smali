.class public Lcom/autonavi/custom/CustomRendererHelper;
.super Ljava/lang/Object;
.source "CustomRendererHelper.java"

# interfaces
.implements Lcom/autonavi/custom/IUnityCallback;


# static fields
.field static instance:Lcom/autonavi/custom/CustomRendererHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/autonavi/custom/CustomRendererHelper;
    .locals 2

    sget-object v0, Lcom/autonavi/custom/CustomRendererHelper;->instance:Lcom/autonavi/custom/CustomRendererHelper;

    if-nez v0, :cond_1

    const-class v1, Lcom/autonavi/custom/CustomRendererHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/custom/CustomRendererHelper;->instance:Lcom/autonavi/custom/CustomRendererHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/custom/CustomRendererHelper;

    invoke-direct {v0}, Lcom/autonavi/custom/CustomRendererHelper;-><init>()V

    sput-object v0, Lcom/autonavi/custom/CustomRendererHelper;->instance:Lcom/autonavi/custom/CustomRendererHelper;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/autonavi/custom/CustomRendererHelper;->instance:Lcom/autonavi/custom/CustomRendererHelper;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public UnityRenderEvent(I)V
    .locals 1

    invoke-static {}, Lcom/amap/api/maps/UnityGLRenderer;->getInstance()Lcom/amap/api/maps/UnityGLRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/UnityGLRenderer;->renderAMap()V

    return-void
.end method

.method public UnitySetGraphicsDevice(I)V
    .locals 1

    invoke-static {}, Lcom/amap/api/maps/UnityGLRenderer;->getInstance()Lcom/amap/api/maps/UnityGLRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/UnityGLRenderer;->initAMap()V

    return-void
.end method
