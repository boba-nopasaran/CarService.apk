.class public Lcom/amap/api/mapcore/a;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/k;
.implements Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;
.implements Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/a$b;,
        Lcom/amap/api/mapcore/a$c;,
        Lcom/amap/api/mapcore/a$d;,
        Lcom/amap/api/mapcore/a$a;
    }
.end annotation


# static fields
.field private static aw:Z


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

.field private C:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

.field private D:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

.field private E:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

.field private F:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

.field private G:Lcom/amap/api/maps/AMap$OnMapClickListener;

.field private H:Lcom/amap/api/maps/AMap$OnMapTouchListener;

.field private I:Lcom/amap/api/maps/AMap$OnPOIClickListener;

.field private J:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

.field private K:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

.field private L:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

.field private M:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

.field private N:Lcom/amap/api/mapcore/e;

.field private O:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

.field private P:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

.field private Q:Lcom/amap/api/maps/AMap$CancelableCallback;

.field private R:Z

.field private S:Lcom/amap/api/maps/model/AMapGestureListener;

.field private T:Lcom/amap/api/col/be;

.field private U:Lcom/amap/api/mapcore/m;

.field private final V:Lcom/amap/api/mapcore/v;

.field private final W:Lcom/amap/api/mapcore/l;

.field private X:Z

.field private Y:I

.field private Z:Z

.field a:Lcom/amap/api/col/aq;

.field private aA:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore/r;",
            ">;"
        }
    .end annotation
.end field

.field private aB:Landroid/content/Context;

.field private aC:Lcom/autonavi/ae/gmap/GLMapEngine;

.field private aD:Lcom/autonavi/ae/gmap/GLMapRender;

.field private aE:Z

.field private aF:F

.field private aG:F

.field private aH:Z

.field private aI:Z

.field private aJ:Z

.field private aK:Z

.field private aL:I

.field private aM:Ljavax/microedition/khronos/opengles/GL10;

.field private volatile aN:Z

.field private volatile aO:Z

.field private aP:Z

.field private aQ:Z

.field private aR:Z

.field private aS:Ljava/util/concurrent/locks/Lock;

.field private aT:I

.field private aU:Lcom/amap/api/mapcore/a$b;

.field private aV:Lcom/amap/api/mapcore/a$a;

.field private aW:Lcom/amap/api/mapcore/a$a;

.field private aX:Lcom/amap/api/mapcore/a$a;

.field private aY:Lcom/amap/api/mapcore/a$a;

.field private aZ:Lcom/amap/api/mapcore/a$a;

.field private aa:Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

.field private ab:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

.field private ac:Z

.field private ad:Lcom/autonavi/amap/mapcore/MapConfig;

.field private ae:Z

.field private af:Z

.field private ag:I

.field private ah:I

.field private ai:Lcom/amap/api/col/ba;

.field private aj:Lcom/amap/api/maps/LocationSource;

.field private ak:Z

.field private al:Lcom/amap/api/maps/model/Marker;

.field private am:Lcom/amap/api/col/ar;

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Landroid/graphics/Rect;

.field private at:I

.field private au:Lcom/amap/api/maps/model/MyTrafficStyle;

.field private av:Ljava/lang/Thread;

.field private ax:I

.field private final ay:Lcom/amap/api/mapcore/q;

.field private az:I

.field protected b:Z

.field private ba:Lcom/amap/api/mapcore/a$a;

.field private bb:Lcom/amap/api/mapcore/a$a;

.field private bc:Lcom/amap/api/mapcore/a$a;

.field private bd:Lcom/amap/api/mapcore/a$a;

.field private be:Ljava/lang/Runnable;

.field private bf:Lcom/amap/api/mapcore/a$a;

.field private bg:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

.field private bh:Lcom/amap/api/col/g;

.field private bi:[Lcom/autonavi/amap/mapcore/IPoint;

.field c:Lcom/amap/api/col/cm;

.field final d:Lcom/amap/api/mapcore/u;

.field protected final e:Lcom/amap/api/mapcore/p;

.field final f:Lcom/amap/api/mapcore/i;

.field protected g:Lcom/amap/api/col/g;

.field h:Lcom/amap/api/maps/CustomRenderer;

.field i:I

.field final j:Lcom/amap/api/mapcore/h;

.field public k:I

.field public l:I

.field final m:Landroid/os/Handler;

.field n:Landroid/graphics/Point;

.field o:Landroid/graphics/Rect;

.field protected p:Ljava/lang/String;

.field q:[F

.field r:[F

.field s:[F

.field t:[F

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:I

.field private x:I

.field private y:I

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/mapcore/a;->aw:Z

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/l;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/16 v5, 0x10

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/amap/api/mapcore/a;->x:I

    iput v1, p0, Lcom/amap/api/mapcore/a;->y:I

    iput-object v4, p0, Lcom/amap/api/mapcore/a;->z:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/amap/api/mapcore/a;->A:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/amap/api/mapcore/a;->O:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    iput-object v4, p0, Lcom/amap/api/mapcore/a;->P:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    iput-object v4, p0, Lcom/amap/api/mapcore/a;->Q:Lcom/amap/api/maps/AMap$CancelableCallback;

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->R:Z

    iput-object v4, p0, Lcom/amap/api/mapcore/a;->a:Lcom/amap/api/col/aq;

    iput-object v4, p0, Lcom/amap/api/mapcore/a;->T:Lcom/amap/api/col/be;

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->b:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/a;->X:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->Z:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->ac:Z

    new-instance v0, Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-direct {v0, v2}, Lcom/autonavi/amap/mapcore/MapConfig;-><init>(Z)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->ae:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->af:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->ak:Z

    iput-object v4, p0, Lcom/amap/api/mapcore/a;->al:Lcom/amap/api/maps/model/Marker;

    iput-object v4, p0, Lcom/amap/api/mapcore/a;->am:Lcom/amap/api/col/ar;

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->an:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->ao:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->ap:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->aq:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->ar:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->as:Landroid/graphics/Rect;

    iput v2, p0, Lcom/amap/api/mapcore/a;->at:I

    iput-object v4, p0, Lcom/amap/api/mapcore/a;->au:Lcom/amap/api/maps/model/MyTrafficStyle;

    iput v3, p0, Lcom/amap/api/mapcore/a;->ax:I

    iput v1, p0, Lcom/amap/api/mapcore/a;->az:I

    iput v1, p0, Lcom/amap/api/mapcore/a;->i:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->aA:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->aE:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/a;->aF:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/a;->aG:F

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->aH:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/a;->aI:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->aJ:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->aK:Z

    iput v3, p0, Lcom/amap/api/mapcore/a;->aL:I

    iput-object v4, p0, Lcom/amap/api/mapcore/a;->aM:Ljavax/microedition/khronos/opengles/GL10;

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->aN:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->aO:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/a;->aP:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->aQ:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->aR:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->aS:Ljava/util/concurrent/locks/Lock;

    iput v3, p0, Lcom/amap/api/mapcore/a;->aT:I

    new-instance v0, Lcom/amap/api/mapcore/a$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a$1;-><init>(Lcom/amap/api/mapcore/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    new-instance v0, Lcom/amap/api/mapcore/a$11;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a$11;-><init>(Lcom/amap/api/mapcore/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->aV:Lcom/amap/api/mapcore/a$a;

    new-instance v0, Lcom/amap/api/mapcore/a$16;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a$16;-><init>(Lcom/amap/api/mapcore/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->aW:Lcom/amap/api/mapcore/a$a;

    new-instance v0, Lcom/amap/api/mapcore/a$24;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a$24;-><init>(Lcom/amap/api/mapcore/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->aX:Lcom/amap/api/mapcore/a$a;

    new-instance v0, Lcom/amap/api/mapcore/a$33;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a$33;-><init>(Lcom/amap/api/mapcore/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->aY:Lcom/amap/api/mapcore/a$a;

    new-instance v0, Lcom/amap/api/mapcore/a$35;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a$35;-><init>(Lcom/amap/api/mapcore/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->aZ:Lcom/amap/api/mapcore/a$a;

    new-instance v0, Lcom/amap/api/mapcore/a$36;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a$36;-><init>(Lcom/amap/api/mapcore/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->ba:Lcom/amap/api/mapcore/a$a;

    new-instance v0, Lcom/amap/api/mapcore/a$37;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a$37;-><init>(Lcom/amap/api/mapcore/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->bb:Lcom/amap/api/mapcore/a$a;

    new-instance v0, Lcom/amap/api/mapcore/a$38;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a$38;-><init>(Lcom/amap/api/mapcore/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->bc:Lcom/amap/api/mapcore/a$a;

    new-instance v0, Lcom/amap/api/mapcore/a$2;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a$2;-><init>(Lcom/amap/api/mapcore/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->bd:Lcom/amap/api/mapcore/a$a;

    new-instance v0, Lcom/amap/api/mapcore/a$3;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a$3;-><init>(Lcom/amap/api/mapcore/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->be:Ljava/lang/Runnable;

    new-instance v0, Lcom/amap/api/mapcore/a$4;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a$4;-><init>(Lcom/amap/api/mapcore/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->bf:Lcom/amap/api/mapcore/a$a;

    new-instance v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->bg:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->n:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->o:Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/amap/api/mapcore/a;->p:Ljava/lang/String;

    iput-object v4, p0, Lcom/amap/api/mapcore/a;->bh:Lcom/amap/api/col/g;

    new-array v0, v5, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->q:[F

    new-array v0, v5, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->r:[F

    new-array v0, v5, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->s:[F

    iput-object v4, p0, Lcom/amap/api/mapcore/a;->bi:[Lcom/autonavi/amap/mapcore/IPoint;

    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->t:[F

    const-string v0, "precision highp float;\nattribute vec3 aVertex;//\u9876\u70b9\u6570\u7ec4,\u4e09\u7ef4\u5750\u6807\nuniform mat4 aMVPMatrix;//mvp\u77e9\u9635\nvoid main(){\n  gl_Position = aMVPMatrix * vec4(aVertex, 1.0);\n}"

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->u:Ljava/lang/String;

    const-string v0, "//\u6709\u989c\u8272 \u6ca1\u6709\u7eb9\u7406\nprecision highp float;\nvoid main(){\n  gl_FragColor = vec4(1.0,0,0,1.0);\n}"

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->v:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/mapcore/a;->w:I

    iput-object p2, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/AEUtil;->init(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/amap/api/col/ef;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/g;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/bl;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/amap/api/mapcore/h;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/h;-><init>(Lcom/amap/api/mapcore/k;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->j:Lcom/amap/api/mapcore/h;

    new-instance v0, Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/autonavi/ae/gmap/GLMapEngine;-><init>(Landroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    new-instance v0, Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-direct {v0, p0}, Lcom/autonavi/ae/gmap/GLMapRender;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->W:Lcom/amap/api/mapcore/l;

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore/l;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/amap/api/mapcore/a;->k:I

    iget v2, p0, Lcom/amap/api/mapcore/a;->l:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v1, p0, Lcom/amap/api/mapcore/a;->k:I

    iget v2, p0, Lcom/amap/api/mapcore/a;->l:I

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/amap/api/mapcore/a;->a(ILandroid/graphics/Rect;II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/a;->Y:I

    new-instance v0, Lcom/amap/api/mapcore/v;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/v;-><init>(Lcom/amap/api/mapcore/k;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->V:Lcom/amap/api/mapcore/v;

    new-instance v0, Lcom/amap/api/col/cm;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/cm;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/k;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0}, Lcom/amap/api/col/cm;->d()Lcom/amap/api/col/ck;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/a$c;

    invoke-direct {v1, p0, v4}, Lcom/amap/api/mapcore/a$c;-><init>(Lcom/amap/api/mapcore/a;Lcom/amap/api/mapcore/a$1;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ck;->a(Lcom/amap/api/col/ck$a;)V

    new-instance v0, Lcom/amap/api/mapcore/a$b;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a$b;-><init>(Lcom/amap/api/mapcore/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->aU:Lcom/amap/api/mapcore/a$b;

    new-instance v0, Lcom/amap/api/mapcore/i;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/i;-><init>(Lcom/amap/api/mapcore/k;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/i;

    new-instance v0, Lcom/amap/api/mapcore/u;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/u;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/k;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->d:Lcom/amap/api/mapcore/u;

    new-instance v0, Lcom/amap/api/mapcore/p;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/p;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/k;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->e:Lcom/amap/api/mapcore/p;

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapCoreListener(Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->W:Lcom/amap/api/mapcore/l;

    invoke-interface {v0, v3}, Lcom/amap/api/mapcore/l;->setRenderMode(I)V

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->aH:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    sget v1, Lcom/autonavi/ae/gmap/GLMapRender;->RENDER_FPS_NORMAL:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapListener(Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;)V

    new-instance v0, Lcom/amap/api/mapcore/s;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/s;-><init>(Lcom/amap/api/mapcore/k;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->U:Lcom/amap/api/mapcore/m;

    new-instance v0, Lcom/amap/api/mapcore/e;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/e;-><init>(Lcom/amap/api/mapcore/k;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->N:Lcom/amap/api/mapcore/e;

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->a:Lcom/amap/api/col/aq;

    new-instance v0, Lcom/amap/api/col/be;

    invoke-direct {v0, p0, p2}, Lcom/amap/api/col/be;-><init>(Lcom/amap/api/mapcore/k;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->T:Lcom/amap/api/col/be;

    new-instance v0, Lcom/amap/api/mapcore/q;

    invoke-direct {v0}, Lcom/amap/api/mapcore/q;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->ay:Lcom/amap/api/mapcore/q;

    new-instance v0, Lcom/amap/api/mapcore/f;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/f;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/k;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->av:Ljava/lang/Thread;

    new-instance v0, Lcom/amap/api/col/h;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    return-void
.end method

.method private A()V
    .locals 8

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitIPoints()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitIPoints()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitIPoints()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitIPoints()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    aget-object v4, v0, v3

    new-instance v7, Lcom/autonavi/ae/gmap/GLMapState;

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapEnginePtr()J

    move-result-wide v0

    invoke-direct {v7, v3, v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;-><init>(IJ)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v1, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v3, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapHeight()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/amap/api/col/ch;->a(Lcom/autonavi/amap/mapcore/MapConfig;IIIIII)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v7}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->setMinZoomLevel(F)V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitZoomLevel(F)V

    :cond_0
    return-void
.end method

.method private B()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->M:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->B:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->C:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->D:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->E:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->F:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->G:Lcom/amap/api/maps/AMap$OnMapClickListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->H:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->I:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->J:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->K:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->L:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->N:Lcom/amap/api/mapcore/e;

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->O:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->P:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    return-void
.end method

.method private C()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    const-string v1, "amap_sdk_lineTexture.png"

    invoke-static {v0, v1}, Lcom/amap/api/col/ch;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->z:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->A:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    const-string v1, "amap_sdk_lineDashTexture.png"

    invoke-static {v0, v1}, Lcom/amap/api/col/ch;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->A:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->z:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/ch;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/a;->x:I

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->A:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/col/ch;->a(Landroid/graphics/Bitmap;Z)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/a;->y:I

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/a;I)I
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/a;->aL:I

    return p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/a;Lcom/amap/api/maps/AMap$CancelableCallback;)Lcom/amap/api/maps/AMap$CancelableCallback;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->Q:Lcom/amap/api/maps/AMap$CancelableCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/a;Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->P:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/a;Lcom/amap/api/maps/AMap$onMapPrintScreenListener;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->O:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/a;III)Lcom/amap/api/maps/model/Poi;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/mapcore/a;->b(III)Lcom/amap/api/maps/model/Poi;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/a;Lcom/autonavi/ae/gmap/GLMapEngine;)Lcom/autonavi/ae/gmap/GLMapEngine;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    return-object p1
.end method

.method private a(ILjavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/a;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    iget v1, p0, Lcom/amap/api/mapcore/a;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->isInMapAction(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aJ:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    sget v1, Lcom/autonavi/ae/gmap/GLMapRender;->RENDER_FPS_GESTURE_ACTION:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->isInMapAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    sget v1, Lcom/autonavi/ae/gmap/GLMapRender;->RENDER_FPS_ANIMATION:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aH:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    sget v1, Lcom/autonavi/ae/gmap/GLMapRender;->RENDER_FPS_NAVI:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    sget v1, Lcom/autonavi/ae/gmap/GLMapRender;->RENDER_FPS_NORMAL:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->ak:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->al:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->am:Lcom/amap/api/col/ar;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->am:Lcom/amap/api/col/ar;

    invoke-interface {v2}, Lcom/amap/api/col/ar;->b()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/a;->am:Lcom/amap/api/col/ar;

    invoke-interface {v3}, Lcom/amap/api/col/ar;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    new-instance v4, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    invoke-virtual {p0, v0, v1, v4}, Lcom/amap/api/mapcore/a;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    add-double/2addr v6, v8

    iget-wide v8, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    iget-wide v8, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double/2addr v4, v8

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double v2, v4, v2

    invoke-direct {v0, v6, v7, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->al:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->D:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->D:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->al:Lcom/amap/api/maps/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDrag(Lcom/amap/api/maps/model/Marker;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/a;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/mapcore/a;->b(IIZ)V

    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/amap/api/mapcore/a;->ar:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v2, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->canStopMapRender(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapHeight()I

    move-result v3

    invoke-static {v1, v1, v2, v3}, Lcom/amap/api/col/ch;->a(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    const/16 v4, 0xf

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iput v0, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iput-boolean v1, p0, Lcom/amap/api/mapcore/a;->ar:Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    return v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/a;->aq:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore/a;I)I
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/a;->az:I

    return p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnCameraChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->F:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    return-object v0
.end method

.method private b(III)Lcom/amap/api/maps/model/Poi;
    .locals 10

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-nez v0, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amap/api/mapcore/a;->a(IIII)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;

    move-object v8, v0

    :goto_1
    if-eqz v8, :cond_1

    iget v0, v8, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->pixel20X:I

    int-to-long v0, v0

    iget v2, v8, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->pixel20Y:I

    int-to-long v2, v2

    const/16 v4, 0x14

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v4

    new-instance v0, Lcom/amap/api/maps/model/Poi;

    iget-object v9, v8, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->name:Ljava/lang/String;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget-object v2, v8, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->poiid:Ljava/lang/String;

    invoke-direct {v0, v9, v1, v2}, Lcom/amap/api/maps/model/Poi;-><init>(Ljava/lang/String;Lcom/amap/api/maps/model/LatLng;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_0

    :cond_1
    move-object v0, v7

    goto :goto_0

    :cond_2
    move-object v8, v7

    goto :goto_1
.end method

.method private b(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->setSrvViewStateBoolValue(IIZ)V

    :cond_0
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore/a$9;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/a$9;-><init>(Lcom/amap/api/mapcore/a;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(II)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getSrvViewStateBoolValue(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/a;->R:Z

    return p1
.end method

.method static synthetic c(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnMapLoadedListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->E:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    return-object v0
.end method

.method private c(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->ae:Z

    iput-boolean v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->isUseAnchor:Z

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->ae:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/a;->ag:I

    iput v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->anchorX:I

    iget v0, p0, Lcom/amap/api/mapcore/a;->ah:I

    iput v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->anchorY:I

    :cond_0
    iget v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->width:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapWidth()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->width:I

    :cond_1
    iget v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->height:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapHeight()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->height:I

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    iput-object v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->mapConfig:Lcom/autonavi/amap/mapcore/MapConfig;

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->C:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore/a;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/i;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/i;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/col/at;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->C:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    new-instance v2, Lcom/amap/api/maps/model/Polyline;

    check-cast v0, Lcom/amap/api/col/aw;

    invoke-direct {v2, v0}, Lcom/amap/api/maps/model/Polyline;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolyline;)V

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnPolylineClickListener;->onPolylineClick(Lcom/amap/api/maps/model/Polyline;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnMapTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->H:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    return-object v0
.end method

.method private d(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->e:Lcom/amap/api/mapcore/p;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/p;->b(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->e:Lcom/amap/api/mapcore/p;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/p;->d()Lcom/amap/api/col/ar;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Lcom/amap/api/col/ar;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v1, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v1, v7}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->B:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->B:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    invoke-interface {v2, v1}, Lcom/amap/api/maps/AMap$OnMarkerClickListener;->onMarkerClick(Lcom/amap/api/maps/model/Marker;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->e:Lcom/amap/api/mapcore/p;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/p;->b()I

    move-result v1

    if-gtz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->e:Lcom/amap/api/mapcore/p;

    invoke-virtual {v1, v7}, Lcom/amap/api/mapcore/p;->b(Lcom/amap/api/col/au;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "onMarkerTap"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/amap/api/mapcore/a;->a(Lcom/amap/api/col/ar;)V

    invoke-interface {v7}, Lcom/amap/api/col/ar;->g()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v7}, Lcom/amap/api/col/ar;->b()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore/a;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {v6}, Lcom/amap/api/col/d;->a(Landroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    :cond_5
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->e:Lcom/amap/api/mapcore/p;

    invoke-virtual {v1, v7}, Lcom/amap/api/mapcore/p;->b(Lcom/amap/api/col/au;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->O:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    return-object v0
.end method

.method private e(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->a:Lcom/amap/api/col/aq;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->a:Lcom/amap/api/col/aq;

    invoke-interface {v1, p1}, Lcom/amap/api/col/aq;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->K:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->e:Lcom/amap/api/mapcore/p;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/p;->d()Lcom/amap/api/col/ar;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/col/ar;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v2, v1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->K:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/amap/api/maps/model/Marker;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/amap/api/mapcore/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->P:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    return-object v0
.end method

.method private h(IZ)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x7dc

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v1, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    return-void

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method static synthetic h(Lcom/amap/api/mapcore/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aq:Z

    return v0
.end method

.method static synthetic i(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$CancelableCallback;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->Q:Lcom/amap/api/maps/AMap$CancelableCallback;

    return-object v0
.end method

.method static synthetic j(Lcom/amap/api/mapcore/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->R:Z

    return v0
.end method

.method static synthetic k(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapEngine;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    return-object v0
.end method

.method static synthetic l(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnPOIClickListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->I:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    return-object v0
.end method

.method static synthetic m(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnMapClickListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->G:Lcom/amap/api/maps/AMap$OnMapClickListener;

    return-object v0
.end method

.method static synthetic n(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aa:Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

    return-object v0
.end method

.method static synthetic o(Lcom/amap/api/mapcore/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->ac:Z

    return v0
.end method

.method static synthetic p(Lcom/amap/api/mapcore/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    return v0
.end method

.method static synthetic q(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapRender;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    return-object v0
.end method

.method static synthetic r(Lcom/amap/api/mapcore/a;)Lcom/autonavi/amap/mapcore/MapConfig;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    return-object v0
.end method

.method static synthetic s(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/model/MyTrafficStyle;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->au:Lcom/amap/api/maps/model/MyTrafficStyle;

    return-object v0
.end method

.method static synthetic t(Lcom/amap/api/mapcore/a;)Lcom/amap/api/mapcore/a$b;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aU:Lcom/amap/api/mapcore/a$b;

    return-object v0
.end method

.method private t(I)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->j:Lcom/amap/api/mapcore/h;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/h;->a()V

    iput-boolean v1, p0, Lcom/amap/api/mapcore/a;->aE:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/a;->aJ:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->stopAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/amap/api/mapcore/a$6;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/a$6;-><init>(Lcom/amap/api/mapcore/a;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic u(Lcom/amap/api/mapcore/a;)Lcom/amap/api/col/g;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bh:Lcom/amap/api/col/g;

    return-object v0
.end method

.method private u()Lcom/amap/api/maps/model/LatLng;
    .locals 7

    const/16 v4, 0x14

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapGeoCenter()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-long v2, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    goto :goto_0
.end method

.method private u(I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/a;->aE:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/a;->aJ:Z

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->ao:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/amap/api/mapcore/a;->ao:Z

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->an:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/amap/api/mapcore/a;->an:Z

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->ap:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/amap/api/mapcore/a;->ap:Z

    :cond_2
    iput-boolean v1, p0, Lcom/amap/api/mapcore/a;->ak:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->D:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->al:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->D:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->al:Lcom/amap/api/maps/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/amap/api/maps/model/Marker;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->al:Lcom/amap/api/maps/model/Marker;

    :cond_3
    new-instance v0, Lcom/amap/api/mapcore/a$7;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/a$7;-><init>(Lcom/amap/api/mapcore/a;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->W:Lcom/amap/api/mapcore/l;

    new-instance v1, Lcom/amap/api/mapcore/a$8;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/a$8;-><init>(Lcom/amap/api/mapcore/a;)V

    const-wide/16 v2, 0x12c

    invoke-interface {v0, v1, v2, v3}, Lcom/amap/api/mapcore/l;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "OnMarkerDragListener.onMarkerDragEnd"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic v(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->L:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    return-object v0
.end method

.method private declared-synchronized v()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aA:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/r;->a()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aA:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private v(I)V
    .locals 8

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1, v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapModeState(IZ)[I

    move-result-object v0

    if-eqz v0, :cond_0

    aget v2, v0, v4

    const/4 v1, 0x1

    aget v3, v0, v1

    aget v4, v0, v5

    :goto_0
    invoke-direct {p0, p1, v5}, Lcom/amap/api/mapcore/a;->b(II)Z

    move-result v5

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v6, p0, Lcom/amap/api/mapcore/a;->k:I

    iget v7, p0, Lcom/amap/api/mapcore/a;->l:I

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->loadStartResource(IIIIZII)V

    return-void

    :cond_0
    move v3, v4

    move v2, v4

    goto :goto_0
.end method

.method static synthetic w(Lcom/amap/api/mapcore/a;)Lcom/amap/api/mapcore/v;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->V:Lcom/amap/api/mapcore/v;

    return-object v0
.end method

.method private w()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-static {p0, v2}, Lcom/amap/api/col/ch;->a(Lcom/amap/api/mapcore/k;Z)[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapRect([Lcom/autonavi/amap/mapcore/FPoint;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getPixel20Bound(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Rectangle;->updateRect(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method static synthetic x(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/listener/MapWidgetListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ab:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    return-object v0
.end method

.method private x()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0}, Lcom/amap/api/col/cm;->c()Lcom/amap/api/col/ci;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/col/ci;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/mapcore/a;->af:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->af:Z

    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore/a;->g(Z)V

    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    new-instance v2, Lcom/amap/api/mapcore/a$12;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/mapcore/a$12;-><init>(Lcom/amap/api/mapcore/a;Lcom/amap/api/col/ci;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private y()V
    .locals 2

    sget-boolean v0, Lcom/amap/api/mapcore/a;->aw:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->av:Ljava/lang/Thread;

    const-string v1, "AuthThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->av:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/mapcore/a;->aw:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private z()V
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitLatLngBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/autonavi/ae/gmap/GLMapState;

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapEnginePtr()J

    move-result-wide v2

    invoke-direct {v1, v8, v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;-><init>(IJ)V

    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget-object v3, v0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v3, v0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v2}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    new-instance v3, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget-object v4, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v0, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v3}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/amap/mapcore/IPoint;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    aput-object v3, v0, v8

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V

    invoke-direct {p0}, Lcom/amap/api/mapcore/a;->A()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitZoomLevel(F)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)F
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapZoomer(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILandroid/graphics/Rect;II)I
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_2

    if-ltz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getEngineIDWithType(I)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v2, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->isEngineCreated(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v2, v1, p2, p3, p4}, Lcom/autonavi/ae/gmap/GLMapEngine;->createEngineWithFrame(ILandroid/graphics/Rect;II)V

    new-instance v2, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;

    invoke-direct {v2, v1, p0}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;-><init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    iget-object v3, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v3, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->setOvelayBundle(ILcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;)V

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore/a;->a(IIZ)V

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/a;->v(I)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapAngle(IF)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapZoom(IF)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapCenter(III)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->setCameraDegree(IF)V

    :goto_0
    return v1

    :cond_1
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v0, p0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore/a;->a(IIIIIII)V

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/BitmapDescriptor;)I
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aA:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aA:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/r;->a()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/mapcore/r;->b()I

    move-result v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getEngineIDWithGestureInfo(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/amap/api/maps/model/LatLng;FFF)Lcom/amap/api/maps/model/LatLngBounds;
    .locals 12

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapHeight()I

    move-result v7

    if-lez v0, :cond_0

    if-lez v7, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-static {v1, p2}, Lcom/amap/api/col/ch;->a(Lcom/autonavi/amap/mapcore/MapConfig;F)F

    move-result v1

    new-instance v9, Lcom/autonavi/ae/gmap/GLMapState;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapEnginePtr()J

    move-result-wide v4

    invoke-direct {v9, v2, v4, v5}, Lcom/autonavi/ae/gmap/GLMapState;-><init>(IJ)V

    if-eqz p1, :cond_2

    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v10, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v10, v11, v2}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/autonavi/ae/gmap/GLMapState;->setCameraDegree(F)V

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/autonavi/ae/gmap/GLMapState;->setMapAngle(F)V

    iget v3, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v9, v3, v2}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    invoke-virtual {v9, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    invoke-virtual {v9}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    :cond_2
    new-instance v8, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v9, v1, v2, v8}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v8, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v8, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {p0, v9, v0, v7, v8}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v8, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v8, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {v9}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V

    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lcom/autonavi/ae/gmap/GLMapEngine;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    return-object v0
.end method

.method public a(IIII)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/autonavi/ae/gmap/GLMapEngine;->getLabelBuffer(IIII)[B

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v5, v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v0

    const/4 v3, 0x4

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    move v4, v1

    :goto_2
    if-ge v4, v0, :cond_8

    new-instance v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;

    invoke-direct {v6}, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;-><init>()V

    invoke-static {v5, v3}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v1

    add-int/lit8 v3, v3, 0x4

    invoke-static {v5, v3}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v7

    add-int/lit8 v3, v3, 0x4

    iput v1, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->x:I

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->W:Lcom/amap/api/mapcore/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/l;->getHeight()I

    move-result v1

    sub-int/2addr v1, v7

    iput v1, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->y:I

    invoke-static {v5, v3}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v1

    iput v1, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->pixel20X:I

    add-int/lit8 v1, v3, 0x4

    invoke-static {v5, v1}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v3

    iput v3, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->pixel20Y:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v5, v1}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v3

    iput v3, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->type:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v5, v1}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v3

    iput v3, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->mSublayerId:I

    add-int/lit8 v3, v1, 0x4

    aget-byte v1, v5, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->mIsFouces:Z

    add-int/lit8 v7, v3, 0x1

    aget-byte v1, v5, v7

    if-nez v1, :cond_4

    const/4 v1, 0x0

    iput-object v1, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->poiid:Ljava/lang/String;

    :goto_4
    add-int/lit8 v1, v7, 0x14

    add-int/lit8 v3, v1, 0x1

    aget-byte v7, v5, v1

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v7, :cond_7

    invoke-static {v5, v3}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getShort([BI)S

    move-result v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const-string v3, ""

    const/4 v1, 0x0

    :goto_6
    const/16 v8, 0x14

    if-ge v1, v8, :cond_5

    add-int v8, v1, v7

    aget-byte v8, v5, v8

    if-nez v8, :cond_6

    :cond_5
    iput-object v3, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->poiid:Ljava/lang/String;

    goto :goto_4

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v8, v1, v7

    aget-byte v8, v5, v8

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_2

    :cond_8
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public a(DDLcom/autonavi/amap/mapcore/FPoint;)V
    .locals 5

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    invoke-static {p1, p2, p3, p4, v0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->LatLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0, p5}, Lcom/autonavi/ae/gmap/GLMapEngine;->p20ToMapPoint(IIILandroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public a(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 1

    invoke-static {p3, p4, p1, p2, p5}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    return-void
.end method

.method public a(FFLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->mapToP20Point(IFFLandroid/graphics/Point;)V

    return-void
.end method

.method public a(IF)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/col/cm;->a(IF)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/a;->aT:I

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Lcom/amap/api/mapcore/a;->aT:I

    goto :goto_0
.end method

.method public a(IIIIIII)V
    .locals 9

    new-instance v0, Lcom/amap/api/mapcore/a$25;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/amap/api/mapcore/a$25;-><init>(Lcom/amap/api/mapcore/a;IIIIIII)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized a(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x805

    const/4 v6, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x7dd

    const/4 v6, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aO:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->b:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amap/api/mapcore/a$14;

    move-object v1, p0

    move v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/amap/api/mapcore/a$14;-><init>(Lcom/amap/api/mapcore/a;ZIIIIZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aX:Lcom/amap/api/mapcore/a$a;

    iput p1, v0, Lcom/amap/api/mapcore/a$a;->g:I

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aX:Lcom/amap/api/mapcore/a$a;

    iput p2, v0, Lcom/amap/api/mapcore/a$a;->d:I

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aX:Lcom/amap/api/mapcore/a$a;

    iput p3, v0, Lcom/amap/api/mapcore/a$a;->e:I

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aX:Lcom/amap/api/mapcore/a$a;

    iput p4, v0, Lcom/amap/api/mapcore/a$a;->f:I

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aX:Lcom/amap/api/mapcore/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/a$a;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(IILandroid/graphics/PointF;)V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->p20ToScreenPoint(IIILandroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public a(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    return-void
.end method

.method public a(IILcom/autonavi/amap/mapcore/FPoint;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->p20ToMapPoint(IIILandroid/graphics/PointF;)V

    return-void
.end method

.method public a(IILcom/autonavi/amap/mapcore/IPoint;)V
    .locals 4

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->screenToP20Point(IFFLandroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public a(IIZ)V
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore/a$23;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amap/api/mapcore/a$23;-><init>(Lcom/amap/api/mapcore/a;IIZ)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILandroid/view/MotionEvent;)V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/a;->an:Z

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/a;->m(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->e:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0, p2}, Lcom/amap/api/mapcore/p;->a(Landroid/view/MotionEvent;)Lcom/amap/api/col/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->am:Lcom/amap/api/col/ar;

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->am:Lcom/amap/api/col/ar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->am:Lcom/amap/api/col/ar;

    invoke-interface {v0}, Lcom/amap/api/col/ar;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->am:Lcom/amap/api/col/ar;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->al:Lcom/amap/api/maps/model/Marker;

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->al:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->am:Lcom/amap/api/col/ar;

    invoke-interface {v1}, Lcom/amap/api/col/ar;->b()Lcom/amap/api/maps/model/LatLng;

    move-result-object v7

    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget-wide v2, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore/a;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    add-int/lit8 v1, v1, -0x3c

    iput v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    new-instance v1, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    iget v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p0, v2, v3, v1}, Lcom/amap/api/mapcore/a;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    add-double/2addr v4, v8

    iget-wide v8, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v8

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v0, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double/2addr v0, v8

    iget-wide v6, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v0, v6

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->al:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->e:Lcom/amap/api/mapcore/p;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->am:Lcom/amap/api/col/ar;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/p;->b(Lcom/amap/api/col/au;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->D:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->D:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->al:Lcom/amap/api/maps/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/amap/api/maps/model/Marker;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/a;->ak:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->J:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore/a;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->J:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnMapLongClickListener;->onMapLongClick(Lcom/amap/api/maps/model/LatLng;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/a;->ao:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "onLongPress"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V
    .locals 6

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->ae:Z

    iput-boolean v0, p2, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->isUseAnchor:Z

    iget v0, p0, Lcom/amap/api/mapcore/a;->ag:I

    iput v0, p2, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->anchorX:I

    iget v0, p0, Lcom/amap/api/mapcore/a;->ah:I

    iput v0, p2, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->anchorY:I

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->V:Lcom/amap/api/mapcore/v;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/v;->isGestureScaleByMapCenter()Z

    move-result v3

    iget v4, p0, Lcom/amap/api/mapcore/a;->ag:I

    iget v5, p0, Lcom/amap/api/mapcore/a;->ah:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/ae/gmap/GLMapEngine;->addGestureMessage(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(ILjavax/microedition/khronos/opengles/GL10;II)V
    .locals 10

    const/4 v0, 0x3

    const/4 v6, 0x2

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/amap/api/mapcore/a;->aR:Z

    iput p3, p0, Lcom/amap/api/mapcore/a;->k:I

    iput p4, p0, Lcom/amap/api/mapcore/a;->l:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v9, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/amap/api/mapcore/a;->as:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/amap/api/mapcore/a;->a(ILjavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_0
    iget-boolean v1, p0, Lcom/amap/api/mapcore/a;->aO:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v3, 0x64

    const/16 v2, 0x78

    if-gt v1, v2, :cond_f

    move v6, v8

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x803

    mul-float v1, v5, v7

    float-to-int v4, v1

    mul-float v1, v5, v7

    float-to-int v5, v1

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    int-to-float v0, v3

    div-float/2addr v0, v7

    iput v0, p0, Lcom/amap/api/mapcore/a;->aG:F

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v1, p0, Lcom/amap/api/mapcore/a;->aG:F

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapZoomScale(F)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x3e9

    move v1, p1

    move v3, v8

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aH:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x76c

    const/16 v4, 0xf

    move v1, p1

    move v3, v8

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :goto_1
    const/16 v0, 0x12

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x3fd

    move v1, p1

    move v3, v8

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x3fe

    move v1, p1

    move v3, v8

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x3ff

    move v1, p1

    move v3, v8

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x402

    move v1, v8

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x7da

    move v1, p1

    move v3, v8

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x405

    const/16 v3, 0x11

    move v1, p1

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    invoke-direct {p0, p1, v9}, Lcom/amap/api/mapcore/a;->h(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    move v1, p1

    move v2, v9

    move v3, v9

    move v4, p3

    move v5, p4

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->changeSurface(IIIIIII)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/a;->aO:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    shr-int/lit8 v3, p3, 0x1

    shr-int/lit8 v4, p4, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x44c

    move v1, p1

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iput-boolean v8, p0, Lcom/amap/api/mapcore/a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aZ:Lcom/amap/api/mapcore/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aZ:Lcom/amap/api/mapcore/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/a$a;->run()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aX:Lcom/amap/api/mapcore/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aX:Lcom/amap/api/mapcore/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/a$a;->run()V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aW:Lcom/amap/api/mapcore/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aW:Lcom/amap/api/mapcore/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/a$a;->run()V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aY:Lcom/amap/api/mapcore/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aY:Lcom/amap/api/mapcore/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/a$a;->run()V

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aV:Lcom/amap/api/mapcore/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aV:Lcom/amap/api/mapcore/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/a$a;->run()V

    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ba:Lcom/amap/api/mapcore/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ba:Lcom/amap/api/mapcore/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/a$a;->run()V

    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bb:Lcom/amap/api/mapcore/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bb:Lcom/amap/api/mapcore/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/a$a;->run()V

    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bc:Lcom/amap/api/mapcore/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bc:Lcom/amap/api/mapcore/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/a$a;->run()V

    :cond_a
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bf:Lcom/amap/api/mapcore/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bf:Lcom/amap/api/mapcore/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/a$a;->run()V

    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bd:Lcom/amap/api/mapcore/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bd:Lcom/amap/api/mapcore/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/a$a;->run()V

    :cond_c
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->h:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->h:Lcom/amap/api/maps/CustomRenderer;

    invoke-interface {v0, p2, p3, p4}, Lcom/amap/api/maps/CustomRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_d
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->be:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void

    :cond_f
    const/16 v2, 0xa0

    if-gt v1, v2, :cond_11

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_10

    const/16 v0, 0x78

    :goto_4
    move v6, v8

    move v3, v0

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x64

    goto :goto_4

    :cond_11
    const/16 v2, 0xf0

    if-gt v1, v2, :cond_13

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_12

    const/16 v3, 0x3c

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0x46

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0x140

    if-gt v1, v2, :cond_14

    const/16 v3, 0x32

    move v6, v0

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0x1e0

    if-gt v1, v2, :cond_15

    const/16 v3, 0x32

    move v6, v0

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x28

    const/4 v6, 0x4

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x76c

    move v1, p1

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    goto/16 :goto_1

    :cond_17
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x3fd

    move v1, p1

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x3fe

    move v1, p1

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    goto/16 :goto_2

    :cond_18
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x7da

    move v1, p1

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(ILjavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/amap/api/mapcore/a;->aM:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/a;->aO:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->W:Lcom/amap/api/mapcore/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/l;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/a;->k:I

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->W:Lcom/amap/api/mapcore/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/l;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/a;->l:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/a;->aR:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->initConnectionManager()V

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/a;->v(I)V

    new-instance v0, Lcom/amap/api/mapcore/a$22;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/a$22;-><init>(Lcom/amap/api/mapcore/a;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x1f01

    :try_start_1
    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->p:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapAngle(F)V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setCameraDegree(F)V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapState(ILcom/autonavi/ae/gmap/GLMapState;Z)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/a;->C()V

    invoke-direct {p0}, Lcom/amap/api/mapcore/a;->y()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->h:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->h:Lcom/amap/api/maps/CustomRenderer;

    invoke-interface {v0, p2, p3}, Lcom/amap/api/maps/CustomRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_0
    invoke-static {}, Lcom/amap/api/col/az;->r()V

    invoke-static {}, Lcom/amap/api/col/bf;->b()V

    invoke-static {}, Lcom/amap/api/col/bg;->c()V

    invoke-static {}, Lcom/amap/api/col/br;->a()V

    invoke-static {}, Lcom/amap/api/col/am;->e()V

    invoke-static {}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineInit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/a;->b(II)Z

    move-result v0

    if-ne v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aO:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->b:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amap/api/mapcore/a$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/mapcore/a$5;-><init>(Lcom/amap/api/mapcore/a;IZ)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aW:Lcom/amap/api/mapcore/a$a;

    iput-boolean p2, v0, Lcom/amap/api/mapcore/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aW:Lcom/amap/api/mapcore/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aW:Lcom/amap/api/mapcore/a$a;

    iput p1, v0, Lcom/amap/api/mapcore/a$a;->g:I

    goto :goto_0
.end method

.method public a(Landroid/location/Location;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->X:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    invoke-virtual {v0}, Lcom/amap/api/col/ba;->b()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "showMyLocationOverlay"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    if-nez v0, :cond_4

    new-instance v0, Lcom/amap/api/col/ba;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/ba;-><init>(Lcom/amap/api/mapcore/k;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/ba;->a(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->M:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->M:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V

    :cond_5
    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/col/ar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/amap/api/col/ar;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/amap/api/col/ar;->getSnippet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->a:Lcom/amap/api/col/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->a:Lcom/amap/api/col/aq;

    invoke-interface {v0, p1}, Lcom/amap/api/col/aq;->a(Lcom/amap/api/col/ar;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/r;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/mapcore/r;->b()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aA:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected a(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 5

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {p1, v1, v2, v0}, Lcom/autonavi/ae/gmap/GLMapState;->screenToP20Point(FFLandroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-long v2, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-long v0, v0

    const/16 v4, 0x14

    invoke-static {v2, v3, v0, v1, v4}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iput-wide v2, p4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v0, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iput-wide v0, p4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    :cond_0
    return-void
.end method

.method public a(Lcom/autonavi/ae/gmap/listener/MapWidgetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->ab:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    return-void
.end method

.method public a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->ac:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateMessageCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Lcom/amap/api/col/d;->c()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeGeoCenterZoomTiltBearing:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->geoPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bearing:F

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->tilt:F

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->addMessage(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateMessageCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateMessage()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->mergeCameraUpdateDelegate(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    goto :goto_1

    :cond_3
    move-object p1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->clearAnimations(IZ)V

    iput-boolean v4, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->isChangeFinished:Z

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/a;->c(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->addMessage(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    goto :goto_0
.end method

.method public a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 4

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->ac:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapHeight()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapWidth()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->isInMapAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->Q:Lcom/amap/api/maps/AMap$CancelableCallback;

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->Q:Lcom/amap/api/maps/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$CancelableCallback;->onCancel()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    if-eqz p4, :cond_5

    iput-object p4, p0, Lcom/amap/api/mapcore/a;->Q:Lcom/amap/api/maps/AMap$CancelableCallback;

    :cond_5
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/a;->c(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->clearAnimations(IZ)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    long-to-int v1, p2

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->generateMapAnimation(Lcom/autonavi/ae/gmap/GLMapEngine;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "CancelableCallback.onCancel"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->W:Lcom/amap/api/mapcore/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->W:Lcom/amap/api/mapcore/l;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/l;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/cm;->b(Z)V

    :cond_0
    return-void
.end method

.method protected a(ZLcom/amap/api/maps/model/CameraPosition;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangedCounter()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->resetChangedCounter()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->S:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->S:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-interface {v0}, Lcom/amap/api/maps/model/AMapGestureListener;->onMapStable()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->F:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->W:Lcom/amap/api/mapcore/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/l;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_3

    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p2

    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->F:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    invoke-interface {v0, p2}, Lcom/amap/api/maps/AMap$OnCameraChangeListener;->onCameraChangeFinish(Lcom/amap/api/maps/model/CameraPosition;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "AMapDelegateImp"

    const-string v2, "cameraChangeFinish"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public a(III)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/a;->b(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v2, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMaxZoomLevel(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->V:Lcom/amap/api/mapcore/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/v;->isZoomInByScreenCenter()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->n:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->n:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->n:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/amap/api/col/d;->a(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->n:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->n:Landroid/graphics/Point;

    iput p3, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "onDoubleTap"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/i;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/i;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addArc(Lcom/amap/api/maps/model/ArcOptions;)Lcom/amap/api/maps/model/Arc;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/i;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/i;->a(Lcom/amap/api/maps/model/ArcOptions;)Lcom/amap/api/col/an;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/Arc;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Arc;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IArc;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addCircle(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/maps/model/Circle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/i;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/i;->a(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/col/ao;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/Circle;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Circle;-><init>(Lcom/autonavi/amap/mapcore/interfaces/ICircle;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addCrossVector(Lcom/amap/api/maps/model/CrossOverlayOptions;)Lcom/amap/api/maps/model/CrossOverlay;
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CrossOverlayOptions;->getRes()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->s()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v2, v0, p0}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;-><init>(ILandroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CrossOverlayOptions;->getAttribute()Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->setAttribute(Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getOvelayBundle(I)Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->addOverlay(Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CrossOverlayOptions;->getRes()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->resumeMarker(Landroid/graphics/Bitmap;)V

    :cond_3
    new-instance v0, Lcom/amap/api/maps/model/CrossOverlay;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/maps/model/CrossOverlay;-><init>(Lcom/amap/api/maps/model/CrossOverlayOptions;Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;)V

    goto :goto_0
.end method

.method public addGroundOverlay(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/amap/api/maps/model/GroundOverlay;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/i;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/i;->a(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/amap/api/col/ap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/GroundOverlay;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/GroundOverlay;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->e:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/p;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    return-object v0
.end method

.method public addMarkers(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/MarkerOptions;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->e:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/p;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public addNavigateArrow(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/maps/model/NavigateArrow;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/i;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/i;->a(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/col/as;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/NavigateArrow;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/NavigateArrow;-><init>(Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addOverlayTexture(ILcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;)V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->addOverlayTexture(ILcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getOvelayBundle(I)Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object v0

    iget v1, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mId:I

    iget v2, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mAnchor:I

    iget v3, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mXRatio:F

    iget v4, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mYRatio:F

    iget-object v5, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->addOverlayTextureItem(IIFFII)Z

    :cond_0
    return-void
.end method

.method public addPolygon(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/maps/model/Polygon;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/i;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/i;->a(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/col/av;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/Polygon;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Polygon;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolygon;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/i;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/i;->a(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/col/aw;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/Polyline;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Polyline;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolyline;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addText(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->e:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/p;->a(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;

    move-result-object v0

    return-object v0
.end method

.method public addTileOverlay(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->d:Lcom/amap/api/mapcore/u;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/u;->a(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;

    move-result-object v0

    return-object v0
.end method

.method public afterDrawFrame(ILcom/autonavi/ae/gmap/GLMapState;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->isInMapAction(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->isInMapAnimation(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aR:Z

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/amap/api/mapcore/a;->aR:Z

    new-instance v0, Lcom/amap/api/mapcore/a$34;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/a$34;-><init>(Lcom/amap/api/mapcore/a;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/amap/api/mapcore/a;->aH:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    sget v2, Lcom/autonavi/ae/gmap/GLMapRender;->RENDER_FPS_NAVI:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    :goto_1
    iget v1, p0, Lcom/amap/api/mapcore/a;->aL:I

    if-ne v1, v3, :cond_3

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/mapcore/a;->aL:I

    :cond_3
    iget v1, p0, Lcom/amap/api/mapcore/a;->aF:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/amap/api/mapcore/a;->aF:F

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    sget v2, Lcom/autonavi/ae/gmap/GLMapRender;->RENDER_FPS_NORMAL:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    goto :goto_1
.end method

.method public afterDrawLabel(ILcom/autonavi/ae/gmap/GLMapState;)V
    .locals 3

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->n()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->pushRendererState()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/i;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/i;->a(ZI)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->e:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->c()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->popRendererState()V

    :cond_1
    return-void
.end method

.method public animateCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-void
.end method

.method public animateCameraWithCallback(Lcom/amap/api/maps/CameraUpdate;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/amap/api/mapcore/a;->animateCameraWithDurationAndCallback(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    return-void
.end method

.method public animateCameraWithDurationAndCallback(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2

    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    return-void
.end method

.method public b(I)F
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapZoomer(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/autonavi/ae/gmap/GLMapState;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/i;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 7

    const/4 v6, 0x1

    const v5, -0x39e3c000    # -10000.0f

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    invoke-static {p1, p2, p3, p4, v0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->LatLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object v0

    new-instance v1, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v6, v3, v4, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->p20ToScreenPoint(IIILandroid/graphics/PointF;)V

    iget v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    iget v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v2, v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->getNewMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;->setCameraDegree(F)V

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->p20ToScreenPoint(IILandroid/graphics/PointF;)V

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V

    :cond_0
    iget v0, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-int v0, v0

    iput v0, p5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-int v0, v0

    iput v0, p5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    :cond_1
    return-void
.end method

.method public declared-synchronized b(IIII)V
    .locals 8

    monitor-enter p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore/a;->a(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(IILandroid/graphics/PointF;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->screenToMapGPoint(IFFLandroid/graphics/PointF;)V

    return-void
.end method

.method public b(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 5

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->screenToP20Point(IFFLandroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-long v2, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-long v0, v0

    const/16 v4, 0x14

    invoke-static {v2, v3, v0, v1, v4}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iput-wide v2, p3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v0, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iput-wide v0, p3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    :cond_0
    return-void
.end method

.method public b(IZ)V
    .locals 7

    const/16 v2, 0x400

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v3, 0x1

    move v1, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    move v1, p1

    move v3, v4

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    goto :goto_0
.end method

.method public b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0xfa

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/cm;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(ILandroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amap/api/mapcore/a;->a(III)Z

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/a;->x:I

    return v0
.end method

.method public c(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/a;->b(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMinZoomLevel(I)I

    move-result v1

    if-le v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/d;->b()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "onDoubleTap"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public c(IZ)V
    .locals 2

    const/16 v0, 0x12

    invoke-direct {p0, p1, v0, p2}, Lcom/amap/api/mapcore/a;->b(IIZ)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aO:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    new-instance v0, Lcom/amap/api/mapcore/a$17;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/mapcore/a$17;-><init>(Lcom/amap/api/mapcore/a;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aZ:Lcom/amap/api/mapcore/a$a;

    iput-boolean p2, v0, Lcom/amap/api/mapcore/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aZ:Lcom/amap/api/mapcore/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aZ:Lcom/amap/api/mapcore/a$a;

    iput p1, v0, Lcom/amap/api/mapcore/a$a;->g:I

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/cm;->c(Z)V

    :cond_0
    return-void
.end method

.method public c(ILandroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/a;->e(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/a;->d(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/a;->c(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/a;->b(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AMapDelegateImp"

    const-string v3, "onSingleTapUp"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public calculateZoomToSpanLevel(IIIILcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/amap/api/maps/model/LatLng;",
            "Lcom/amap/api/maps/model/LatLng;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    invoke-virtual {v1, p5}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-virtual {v1, p6}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    new-instance v8, Lcom/autonavi/ae/gmap/GLMapState;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapEnginePtr()J

    move-result-wide v4

    invoke-direct {v8, v2, v4, v5}, Lcom/autonavi/ae/gmap/GLMapState;-><init>(IJ)V

    invoke-virtual {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapHeight()I

    move-result v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Lcom/amap/api/col/ch;->a(Lcom/autonavi/amap/mapcore/MapConfig;IIIILcom/amap/api/maps/model/LatLngBounds;II)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v8}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V

    if-eqz v1, :cond_0

    new-instance v2, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v3, v0, v2}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v0, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v1

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public canStopMapRender()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->canStopMapRender(I)Z

    :cond_0
    return v1
.end method

.method public changeSurface(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amap/api/mapcore/a;->a(ILjavax/microedition/khronos/opengles/GL10;II)V

    return-void
.end method

.method public checkMapState(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitLatLngBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitIPoints()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget-object v0, v1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v0, v1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v8, v9, v2}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    new-instance v3, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget-object v0, v1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v0, v1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v0, v1, v3}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/amap/mapcore/IPoint;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V

    :cond_2
    move-object v8, v0

    new-instance v9, Lcom/autonavi/ae/gmap/GLMapState;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapEnginePtr()J

    move-result-wide v2

    invoke-direct {v9, v0, v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;-><init>(IJ)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v1, 0x0

    aget-object v1, v8, v1

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    const/4 v2, 0x0

    aget-object v2, v8, v2

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    const/4 v3, 0x1

    aget-object v3, v8, v3

    iget v3, v3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    const/4 v4, 0x1

    aget-object v4, v8, v4

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapHeight()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/amap/api/col/ch;->a(Lcom/autonavi/amap/mapcore/MapConfig;IIIIII)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v9}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapConfig;->setMinZoomLevel(F)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitZoomLevel(F)V

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-lez v1, :cond_a

    cmpg-float v1, v0, v2

    if-gez v1, :cond_a

    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_3

    :goto_2
    invoke-virtual {p1, v0}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    invoke-virtual {p1, v0}, Lcom/autonavi/ae/gmap/GLMapState;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    const/4 v2, 0x0

    invoke-static {p0, v2, p1}, Lcom/amap/api/col/ch;->a(Lcom/autonavi/amap/mapcore/interfaces/IAMap;ZLcom/autonavi/ae/gmap/GLMapState;)[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v3

    array-length v2, v3

    new-array v4, v2, [Lcom/autonavi/amap/mapcore/IPoint;

    move v2, v7

    :goto_3
    array-length v5, v3

    if-ge v2, v5, :cond_4

    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    aget-object v6, v3, v2

    iget v6, v6, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aget-object v7, v3, v2

    iget v7, v7, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {p1, v6, v7, v5}, Lcom/autonavi/ae/gmap/GLMapState;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    cmpg-float v0, v2, v1

    if-gez v0, :cond_9

    move v0, v1

    goto :goto_2

    :cond_4
    invoke-static {v8, v4, v1, v0}, Lcom/amap/api/col/ch;->a([Lcom/autonavi/amap/mapcore/IPoint;[Lcom/autonavi/amap/mapcore/IPoint;II)[Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v3, v2

    if-ne v3, v10, :cond_5

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_5
    invoke-virtual {p1, v1, v0}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_7

    :goto_4
    invoke-virtual {p1, v0}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_7
    cmpg-float v0, v2, v1

    if-gez v0, :cond_8

    move v0, v1

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v2

    goto/16 :goto_2

    :cond_a
    move v2, v0

    goto/16 :goto_1
.end method

.method public clear()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->clear(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "clear"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public clear(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->h()V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    invoke-virtual {v0}, Lcom/amap/api/col/ba;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    invoke-virtual {v0}, Lcom/amap/api/col/ba;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/i;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/i;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->d:Lcom/amap/api/mapcore/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/u;->c()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->e:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/p;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0}, Lcom/amap/api/col/cm;->j()V

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    invoke-virtual {v1}, Lcom/amap/api/col/ba;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "clear"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public clearException(I)V
    .locals 0

    return-void
.end method

.method public createGLOverlay()J
    .locals 3

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    sget-object v2, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_VECTOR:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->createOverlay(II)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public createSurface(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/amap/api/mapcore/a;->a(ILjavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/a;->y:I

    return v0
.end method

.method public d(IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aO:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    new-instance v0, Lcom/amap/api/mapcore/a$18;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/mapcore/a$18;-><init>(Lcom/amap/api/mapcore/a;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ba:Lcom/amap/api/mapcore/a$a;

    iput-boolean p2, v0, Lcom/amap/api/mapcore/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ba:Lcom/amap/api/mapcore/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ba:Lcom/amap/api/mapcore/a$a;

    iput p1, v0, Lcom/amap/api/mapcore/a$a;->g:I

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/cm;->d(Z)V

    :cond_0
    return-void
.end method

.method public d(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destorySurface(I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aS:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->destorySurface()V

    invoke-static {}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getInstance()Lcom/autonavi/ae/gmap/maploader/VMapDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->reset()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aa:Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aa:Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

    invoke-interface {v0, p1}, Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;->onSurfaceDestroy(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->aM:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/a;->aO:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/a;->aR:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aS:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aS:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aS:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->aU:Lcom/amap/api/mapcore/a$b;

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->renderPause()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->A:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->A:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->z:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/i;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/i;->b()V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->e:Lcom/amap/api/mapcore/p;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->e:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->e()V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->d:Lcom/amap/api/mapcore/u;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->d:Lcom/amap/api/mapcore/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/u;->f()V

    :cond_6
    invoke-direct {p0}, Lcom/amap/api/mapcore/a;->v()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->av:Ljava/lang/Thread;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->av:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->av:Ljava/lang/Thread;

    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/amap/api/mapcore/a$32;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a$32;-><init>(Lcom/amap/api/mapcore/a;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0}, Lcom/amap/api/col/cm;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    invoke-virtual {v0}, Lcom/amap/api/col/ba;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    invoke-direct {p0}, Lcom/amap/api/mapcore/a;->B()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->au:Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-static {}, Lcom/amap/api/col/ew;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/amap/api/mapcore/a;->a(ILjavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->drawFrame()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->pushRendererState()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->d:Lcom/amap/api/mapcore/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/u;->b()V

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/a;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/a;->x()V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aQ:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/amap/api/mapcore/a;->aQ:Z

    new-instance v0, Lcom/amap/api/mapcore/a$10;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a$10;-><init>(Lcom/amap/api/mapcore/a;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->h:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->h:Lcom/amap/api/maps/CustomRenderer;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/CustomRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->popRendererState()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->f:Lcom/amap/api/mapcore/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/i;->c()V

    return-void
.end method

.method public e(IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aO:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    new-instance v0, Lcom/amap/api/mapcore/a$19;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/mapcore/a$19;-><init>(Lcom/amap/api/mapcore/a;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bb:Lcom/amap/api/mapcore/a$a;

    iput-boolean p2, v0, Lcom/amap/api/mapcore/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bb:Lcom/amap/api/mapcore/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bb:Lcom/amap/api/mapcore/a$a;

    iput p1, v0, Lcom/amap/api/mapcore/a$a;->g:I

    goto :goto_0
.end method

.method public e(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/cm;->e(Z)V

    :cond_0
    return-void
.end method

.method public e(I)Z
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/a;->b(II)Z

    move-result v0

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/a;->Y:I

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->b(I)F

    move-result v0

    return v0
.end method

.method public f(Z)Lcom/amap/api/maps/model/CameraPosition;
    .locals 8

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->ac:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    iget v1, p0, Lcom/amap/api/mapcore/a;->ag:I

    iget v2, p0, Lcom/amap/api/mapcore/a;->ah:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore/a;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    :goto_0
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapAngle(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getCameraDegree(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapZoomer(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/a;->u()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore/a;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public f(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/cm;->a(I)V

    :cond_0
    return-void
.end method

.method public f(IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aO:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    new-instance v0, Lcom/amap/api/mapcore/a$20;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/mapcore/a$20;-><init>(Lcom/amap/api/mapcore/a;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bc:Lcom/amap/api/mapcore/a$a;

    iput-boolean p2, v0, Lcom/amap/api/mapcore/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bc:Lcom/amap/api/mapcore/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bc:Lcom/amap/api/mapcore/a$a;

    iput p1, v0, Lcom/amap/api/mapcore/a$a;->g:I

    goto :goto_0
.end method

.method public g(I)F
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapState;->getGLUnitWithWin(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lcom/amap/api/mapcore/n;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->V:Lcom/amap/api/mapcore/v;

    return-object v0
.end method

.method public g(IZ)V
    .locals 2

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0, p2}, Lcom/amap/api/mapcore/a;->b(IIZ)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aO:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    new-instance v0, Lcom/amap/api/mapcore/a$21;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/mapcore/a$21;-><init>(Lcom/amap/api/mapcore/a;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bf:Lcom/amap/api/mapcore/a$a;

    iput-boolean p2, v0, Lcom/amap/api/mapcore/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bf:Lcom/amap/api/mapcore/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bf:Lcom/amap/api/mapcore/a$a;

    iput p1, v0, Lcom/amap/api/mapcore/a$a;->g:I

    goto :goto_0
.end method

.method g(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    const/16 v3, 0x11

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getAMapProjection()Lcom/amap/api/maps/Projection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/maps/Projection;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->U:Lcom/amap/api/mapcore/m;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/Projection;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IProjection;)V

    return-object v0
.end method

.method public getAMapUiSettings()Lcom/amap/api/maps/UiSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/maps/UiSettings;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->V:Lcom/amap/api/mapcore/v;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/UiSettings;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;)V

    return-object v0
.end method

.method public getCamerInfo()Lcom/amap/api/maps/model/AMapCameraInfo;
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->b()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapAngle()F

    move-result v3

    iget v1, p0, Lcom/amap/api/mapcore/a;->k:I

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/mapcore/a;->l:I

    int-to-float v2, v2

    div-float v2, v1, v2

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getFov()F

    move-result v1

    const/4 v4, 0x3

    new-array v6, v4, [I

    invoke-virtual {v0, v6}, Lcom/autonavi/ae/gmap/GLMapState;->getCameraPosition([I)V

    new-instance v0, Lcom/amap/api/maps/model/AMapCameraInfo;

    const/4 v4, 0x0

    aget v4, v6, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v5, v6, v5

    int-to-float v5, v5

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/maps/model/AMapCameraInfo;-><init>(FFFFFF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCameraAngle()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/a;->Y:I

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->p(I)F

    move-result v0

    return v0
.end method

.method public getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->ae:Z

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->f(Z)Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public getGlOverlayMgrPtr()J
    .locals 3

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getGlOverlayMgrPtr(I)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getInfoWindowAnimationManager()Lcom/amap/api/maps/InfoWindowAnimationManager;
    .locals 2

    new-instance v0, Lcom/amap/api/maps/InfoWindowAnimationManager;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->T:Lcom/amap/api/col/be;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/InfoWindowAnimationManager;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;)V

    return-object v0
.end method

.method public getLatLngRect([Lcom/autonavi/amap/mapcore/DPoint;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Rectangle;->getClipRect()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    aget-object v3, v1, v0

    iget v3, v3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    aget-object v4, p1, v0

    invoke-static {v2, v3, v4}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    return-object v0
.end method

.method public getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    return-object v0
.end method

.method public getMapHeight()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/a;->l:I

    return v0
.end method

.method public getMapPrintScreen(Lcom/amap/api/maps/AMap$onMapPrintScreenListener;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->O:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/a;->ar:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    return-void
.end method

.method public getMapScreenMarkers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amap/api/col/ch;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->e:Lcom/amap/api/mapcore/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/p;->f()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMapScreenShot(Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->P:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/a;->ar:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    return-void
.end method

.method public getMapTextZIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/a;->ax:I

    return v0
.end method

.method public getMapType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/a;->at:I

    return v0
.end method

.method public getMapWidth()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/a;->k:I

    return v0
.end method

.method public getMaxZoomLevel()F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41980000    # 19.0f

    goto :goto_0
.end method

.method public getMinZoomLevel()F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_0
.end method

.method public getMyLocation()Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->N:Lcom/amap/api/mapcore/e;

    iget-object v0, v0, Lcom/amap/api/mapcore/e;->a:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMyLocationStyle()Lcom/amap/api/maps/model/MyLocationStyle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    invoke-virtual {v0}, Lcom/amap/api/col/ba;->a()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProjectionMatrix()[F
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->s:[F

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getProjectionMatrix([F)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->s:[F

    return-object v0
.end method

.method public getRenderMode()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->W:Lcom/amap/api/mapcore/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/l;->getRenderMode()I

    move-result v0

    return v0
.end method

.method public getScalePerPixel()F
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->f()F

    move-result v1

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    mul-double/2addr v2, v8

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    mul-double/2addr v2, v8

    const-wide v4, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    float-to-double v0, v1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v4

    div-double v0, v2, v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->r()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "getScalePerPixel"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    return-object v0
.end method

.method public getViewMatrix()[F
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->r:[F

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getViewMatrix([F)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->r:[F

    return-object v0
.end method

.method public getZoomToSpanLevel(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v2, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-nez v2, :cond_1

    new-instance v2, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {v2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-virtual {v2, p2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    new-instance v8, Lcom/autonavi/ae/gmap/GLMapState;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapEnginePtr()J

    move-result-wide v4

    invoke-direct {v8, v3, v4, v5}, Lcom/autonavi/ae/gmap/GLMapState;-><init>(IJ)V

    invoke-virtual {v2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->getMapHeight()I

    move-result v7

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-static/range {v0 .. v7}, Lcom/amap/api/col/ch;->a(Lcom/autonavi/amap/mapcore/MapConfig;IIIILcom/amap/api/maps/model/LatLngBounds;II)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v8}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v8}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->a:Lcom/amap/api/col/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->a:Lcom/amap/api/col/aq;

    invoke-interface {v0}, Lcom/amap/api/col/aq;->b()V

    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aA:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/r;->b()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->aA:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public h(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/cm;->f(Z)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/cm;->b(I)V

    :cond_0
    return-void
.end method

.method public isIndoorEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isIndoorEnable()Z

    move-result v0

    return v0
.end method

.method public isMaploaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->af:Z

    return v0
.end method

.method public isMyLocationEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->X:Z

    return v0
.end method

.method public isTrafficEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isTrafficEnabled()Z

    move-result v0

    return v0
.end method

.method public j()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0}, Lcom/amap/api/col/cm;->a()Landroid/graphics/Point;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public j(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/cm;->c(I)V

    :cond_0
    return-void
.end method

.method public k()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->W:Lcom/amap/api/mapcore/l;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->W:Lcom/amap/api/mapcore/l;

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/cm;->d(I)V

    :cond_0
    return-void
.end method

.method public l(I)F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/cm;->e(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapZoomer(I)F

    move-result v1

    const/high16 v2, 0x41880000    # 17.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    iget-object v1, v1, Lcom/amap/api/col/g;->g:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    iget-object v2, v2, Lcom/amap/api/col/g;->g:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    iget-object v3, v3, Lcom/amap/api/col/g;->g:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v3, v1}, Lcom/amap/api/mapcore/a;->a(IILandroid/graphics/PointF;)V

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->as:Landroid/graphics/Rect;

    iget v3, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-int v3, v3

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-int v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/a;->az:I

    return v0
.end method

.method public m(I)V
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore/a$13;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/a$13;-><init>(Lcom/amap/api/mapcore/a;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public moveCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    goto :goto_0
.end method

.method public n(I)F
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapAngle(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore/a;->w()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v8}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapGeoCenter()Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_x(I)V

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_y(I)V

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_z(F)V

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getCameraDegree()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_c(F)V

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapAngle()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_r(F)V

    iget v2, p0, Lcom/amap/api/mapcore/a;->i:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    iget v3, p0, Lcom/amap/api/mapcore/a;->i:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->isMapStateChange()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_2

    invoke-virtual {v0, v8}, Lcom/autonavi/ae/gmap/GLMapState;->getGLUnitWithWin(I)F

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapPerPixelUnitLength(F)V

    :cond_2
    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-long v2, v0

    iget v0, v1, Landroid/graphics/Point;->y:I

    int-to-long v0, v0

    const/16 v4, 0x14

    invoke-static {v2, v3, v0, v1, v4}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    new-instance v7, Lcom/amap/api/maps/model/CameraPosition;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v3

    invoke-direct {v7, v1, v0, v2, v3}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v8, p0, Lcom/amap/api/mapcore/a;->aK:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->i()V

    invoke-direct {p0}, Lcom/amap/api/mapcore/a;->w()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->V:Lcom/amap/api/mapcore/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/v;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ab:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateZoomController(F)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangeGridRatio()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->g(Z)V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->V:Lcom/amap/api/mapcore/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/v;->isCompassEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isTiltChanged()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isBearingChanged()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ab:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    invoke-interface {v0}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateCompassView()V

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->V:Lcom/amap/api/mapcore/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/v;->isScaleControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ab:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    invoke-interface {v0}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateScaleView()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    return-void

    :cond_8
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getAnimateionsCount()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    sget v3, Lcom/autonavi/ae/gmap/GLMapRender;->RENDER_FPS_NORMAL:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_9
    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aK:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aJ:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getAnimateionsCount()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateMessageCount()I

    move-result v0

    if-nez v0, :cond_7

    iput-boolean v6, p0, Lcom/amap/api/mapcore/a;->aK:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->onChangeFinish()V

    goto :goto_1
.end method

.method public o(I)Landroid/graphics/Point;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapCenter(I)Landroid/graphics/Point;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method public onActivityPause()V
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/a;->Y:I

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->q(I)V

    return-void
.end method

.method public onActivityResume()V
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/a;->Y:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getEngineIDWithType(I)I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->r(I)V

    return-void
.end method

.method public onChangeFinish()V
    .locals 2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onException(II)V
    .locals 0

    return-void
.end method

.method public onFling()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->d:Lcom/amap/api/mapcore/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->d:Lcom/amap/api/mapcore/u;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/u;->b(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/a;->aq:Z

    return-void
.end method

.method public onIndoorBuildingActivity(I[B)V
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    new-instance v1, Lcom/amap/api/col/g;

    invoke-direct {v1}, Lcom/amap/api/col/g;-><init>()V

    const/4 v0, 0x0

    const/4 v3, 0x1

    aget-byte v0, p2, v0

    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, p2, v3, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v1, Lcom/amap/api/col/g;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, p2, v3, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v1, Lcom/amap/api/col/g;->b:Ljava/lang/String;

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, p2, v3, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v1, Lcom/amap/api/col/g;->activeFloorName:Ljava/lang/String;

    add-int/2addr v0, v3

    invoke-static {p2, v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v3

    iput v3, v1, Lcom/amap/api/col/g;->activeFloorIndex:I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, p2, v3, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v1, Lcom/amap/api/col/g;->poiid:Ljava/lang/String;

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, p2, v3, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v1, Lcom/amap/api/col/g;->h:Ljava/lang/String;

    add-int/2addr v0, v3

    invoke-static {p2, v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v3

    iput v3, v1, Lcom/amap/api/col/g;->c:I

    add-int/lit8 v0, v0, 0x4

    iget v3, v1, Lcom/amap/api/col/g;->c:I

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/amap/api/col/g;->floor_indexs:[I

    iget v3, v1, Lcom/amap/api/col/g;->c:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/amap/api/col/g;->floor_names:[Ljava/lang/String;

    iget v3, v1, Lcom/amap/api/col/g;->c:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/amap/api/col/g;->d:[Ljava/lang/String;

    move v4, v2

    :goto_0
    iget v3, v1, Lcom/amap/api/col/g;->c:I

    if-ge v4, v3, :cond_1

    iget-object v3, v1, Lcom/amap/api/col/g;->floor_indexs:[I

    invoke-static {p2, v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v3, v0, 0x4

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p2, v3

    if-lez v3, :cond_4

    iget-object v5, v1, Lcom/amap/api/col/g;->floor_names:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-direct {v6, p2, v0, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v4

    add-int/2addr v0, v3

    move v3, v0

    :goto_1
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p2, v3

    if-lez v3, :cond_0

    iget-object v5, v1, Lcom/amap/api/col/g;->d:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-direct {v6, p2, v0, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v4

    add-int/2addr v0, v3

    :cond_0
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_1
    invoke-static {p2, v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v3

    iput v3, v1, Lcom/amap/api/col/g;->e:I

    add-int/lit8 v0, v0, 0x4

    iget v3, v1, Lcom/amap/api/col/g;->e:I

    if-lez v3, :cond_2

    iget v3, v1, Lcom/amap/api/col/g;->e:I

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/amap/api/col/g;->f:[I

    move v8, v2

    move v2, v0

    move v0, v8

    :goto_2
    iget v3, v1, Lcom/amap/api/col/g;->e:I

    if-ge v0, v3, :cond_2

    iget-object v3, v1, Lcom/amap/api/col/g;->f:[I

    invoke-static {p2, v2}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v1

    :cond_3
    iput-object v0, p0, Lcom/amap/api/mapcore/a;->bh:Lcom/amap/api/col/g;

    new-instance v0, Lcom/amap/api/mapcore/a$31;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a$31;-><init>(Lcom/amap/api/mapcore/a;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_4
    move v3, v0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/16 v6, 0xe

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/amap/api/mapcore/a;->aI:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/amap/api/mapcore/a;->bg:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v3, 0x3

    iput v3, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->bg:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/16 v3, 0x8

    iput v3, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->bg:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    new-array v3, v5, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v3, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v3, v0

    iput-object v3, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->bg:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/a;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->p()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_3

    iget-boolean v1, p0, Lcom/amap/api/mapcore/a;->ak:Z

    if-eqz v1, :cond_3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/a;->a(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AMapDelegateImp"

    const-string v3, "onDragMarker"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->q()V

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/a;->t(I)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/a;->u(I)V

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/amap/api/mapcore/a;->aE:Z

    if-eqz v1, :cond_4

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->j:Lcom/amap/api/mapcore/h;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/h;->a(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->H:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v6, v1, Landroid/os/Message;->what:I

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public p(I)F
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getCameraDegree(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method public postOnUIThread(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postQueueEvent(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q()V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->isRenderPause()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->requestRender()V

    :cond_0
    return-void
.end method

.method public q(I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->renderPause()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/a;->s(I)V

    invoke-static {}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->getInstance()Lcom/autonavi/ae/gmap/maploader/NetworkState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->setNetWorkChangeListener(Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;)V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->W:Lcom/amap/api/mapcore/l;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/l;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public r()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/a;->aG:F

    return v0
.end method

.method public r(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/a;->s(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->renderResume()V

    :cond_0
    invoke-static {}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->getInstance()Lcom/autonavi/ae/gmap/maploader/NetworkState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->setNetWorkChangeListener(Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;)V

    return-void
.end method

.method public reloadMap()V
    .locals 0

    return-void
.end method

.method public removeGLOverlay(Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getOvelayBundle(I)Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->removeOverlay(Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;)V

    :cond_0
    return-void
.end method

.method public removecache()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->removecache(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V

    return-void
.end method

.method public removecache(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    const/16 v2, 0xa29

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    new-instance v0, Lcom/amap/api/mapcore/a$d;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/amap/api/mapcore/a$d;-><init>(Lcom/amap/api/mapcore/a;Landroid/content/Context;Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "removecache"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public renderSurface(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/a;->drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->isRenderPause()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->W:Lcom/amap/api/mapcore/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/l;->requestRender()V

    :cond_0
    return-void
.end method

.method public resetMinMaxZoomPreference()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->resetMinMaxZoomPreference()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->V:Lcom/amap/api/mapcore/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/v;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ab:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateZoomController(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resetRenderTime(Z)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    goto :goto_0
.end method

.method public resetRenderTimeLong()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method public resetRenderTimeLongLong()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aD:Lcom/autonavi/ae/gmap/GLMapRender;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method public s()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    return-object v0
.end method

.method public s(I)V
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore/a$15;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/a$15;-><init>(Lcom/amap/api/mapcore/a;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public set3DBuildingEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->q(I)V

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/mapcore/a;->d(IZ)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->r(I)V

    return-void
.end method

.method public setAMapGestureListener(Lcom/amap/api/maps/model/AMapGestureListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->j:Lcom/amap/api/mapcore/h;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->S:Lcom/amap/api/maps/model/AMapGestureListener;

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->j:Lcom/amap/api/mapcore/h;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/h;->a(Lcom/amap/api/maps/model/AMapGestureListener;)V

    :cond_0
    return-void
.end method

.method public setCenterToPixel(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/a;->ae:Z

    iput p1, p0, Lcom/amap/api/mapcore/a;->ag:I

    iput p2, p0, Lcom/amap/api/mapcore/a;->ah:I

    return-void
.end method

.method public setCustomMapStylePath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomStylePath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCustomRenderer(Lcom/amap/api/maps/CustomRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->h:Lcom/amap/api/maps/CustomRenderer;

    return-void
.end method

.method public setCustomTextureResourcePath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomTextureResourcePath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amap/api/col/g;

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->g:Lcom/amap/api/col/g;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    new-instance v0, Lcom/amap/api/mapcore/a$29;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/a$29;-><init>(Lcom/amap/api/mapcore/a;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setIndoorEnabled(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v2, 0x402

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setIndoorEnable(Z)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    move v3, v1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->V:Lcom/amap/api/mapcore/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/v;->isIndoorSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->m:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/mapcore/a$27;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/a$27;-><init>(Lcom/amap/api/mapcore/a;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    move v3, v4

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v0

    :goto_2
    iput v0, v1, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->V:Lcom/amap/api/mapcore/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/v;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ab:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateZoomController(F)V

    goto :goto_0

    :cond_3
    const/high16 v0, 0x41980000    # 19.0f

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bd:Lcom/amap/api/mapcore/a$a;

    iput-boolean p1, v0, Lcom/amap/api/mapcore/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bd:Lcom/amap/api/mapcore/a$a;

    iput-boolean v1, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->bd:Lcom/amap/api/mapcore/a$a;

    iput v1, v0, Lcom/amap/api/mapcore/a$a;->g:I

    goto :goto_1
.end method

.method public setInfoWindowAdapter(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->a:Lcom/amap/api/col/aq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->a:Lcom/amap/api/col/aq;

    invoke-interface {v0}, Lcom/amap/api/col/aq;->b()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->T:Lcom/amap/api/col/be;

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->a:Lcom/amap/api/col/aq;

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->T:Lcom/amap/api/col/be;

    check-cast p1, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/be;->a(Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->T:Lcom/amap/api/col/be;

    invoke-virtual {v0}, Lcom/amap/api/col/be;->destroy()V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->a:Lcom/amap/api/col/aq;

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/cm;->a(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V

    goto :goto_0
.end method

.method public setLoadOfflineData(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/mapcore/a$28;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/a$28;-><init>(Lcom/amap/api/mapcore/a;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLocationSource(Lcom/amap/api/maps/LocationSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    instance-of v0, v0, Lcom/amap/api/col/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V

    :cond_1
    iput-object p1, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0}, Lcom/amap/api/col/cm;->f()Lcom/amap/api/col/cl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cl;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "setLocationSource"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0}, Lcom/amap/api/col/cm;->f()Lcom/amap/api/col/cl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cl;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setMapCustomEnable(Z)V
    .locals 8

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomStyleEnable(Z)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/a;->g(IZ)V

    new-instance v0, Lcom/amap/api/col/bj;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/bj;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bj;->a(Ljava/lang/String;)[Lcom/autonavi/ae/gmap/style/StyleItem;

    move-result-object v7

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/amap/api/col/bj;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomBackgroundColor(I)V

    if-eqz v7, :cond_0

    array-length v0, v7

    if-lez v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore/a;->a(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/a;->g(IZ)V

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapStyleMode()I

    move-result v2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapStyleTime()I

    move-result v3

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapStyleState()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore/a;->a(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aY:Lcom/amap/api/mapcore/a$a;

    iput-boolean v1, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aY:Lcom/amap/api/mapcore/a$a;

    iput-boolean p1, v0, Lcom/amap/api/mapcore/a$a;->c:Z

    goto :goto_0
.end method

.method public setMapStatusLimits(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/a;->z()V

    return-void
.end method

.method public setMapTextEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->q(I)V

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/mapcore/a;->b(IZ)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->r(I)V

    return-void
.end method

.method public setMapTextZIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore/a;->ax:I

    return-void
.end method

.method public setMapType(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput p1, p0, Lcom/amap/api/mapcore/a;->at:I

    if-ne p1, v3, :cond_0

    move v3, v4

    move v2, v4

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapStyleMode(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapStyleTime(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, v4}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapStyleState(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore/a;->a(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomStyleEnable(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    :goto_2
    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    move v2, v3

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    move v2, v4

    move v4, v0

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    move v3, v4

    move v2, v4

    move v4, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/a;->at:I

    move v3, v4

    move v2, v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/amap/api/mapcore/a;->b(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "setMaptype"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public setMaskLayerParams(IIIIIJ)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ay:Lcom/amap/api/mapcore/q;

    if-eqz v0, :cond_1

    int-to-float v0, p4

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v1, v0, v1

    const/4 v0, -0x1

    if-ne p5, v0, :cond_2

    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/amap/api/mapcore/a$30;

    invoke-direct {v1, p0, p5}, Lcom/amap/api/mapcore/a$30;-><init>(Lcom/amap/api/mapcore/a;I)V

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    :cond_0
    :goto_0
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p6, p7}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ay:Lcom/amap/api/mapcore/q;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/amap/api/mapcore/q;->a(IIII)V

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->ay:Lcom/amap/api/mapcore/q;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/q;->a(Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput p5, p0, Lcom/amap/api/mapcore/a;->az:I

    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;-><init>(FF)V

    float-to-double v2, v1

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v1}, Lcom/amap/api/col/cm;->h()Lcom/amap/api/col/co;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/amap/api/col/co;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v1}, Lcom/amap/api/col/cm;->h()Lcom/amap/api/col/co;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/col/co;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setMaxZoomLevel(F)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMaxZoomLevel(F)V

    return-void
.end method

.method public setMinZoomLevel(F)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ad:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMinZoomLevel(F)V

    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0}, Lcom/amap/api/col/cm;->f()Lcom/amap/api/col/cl;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->N:Lcom/amap/api/mapcore/e;

    invoke-interface {v1, v2}, Lcom/amap/api/maps/LocationSource;->activate(Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cl;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/col/ba;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/ba;-><init>(Lcom/amap/api/mapcore/k;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->V:Lcom/amap/api/mapcore/v;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/v;->setMyLocationButtonEnabled(Z)V

    :cond_2
    iput-boolean p1, p0, Lcom/amap/api/mapcore/a;->X:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "setMyLocationEnabled"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    invoke-virtual {v0}, Lcom/amap/api/col/ba;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cl;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setMyLocationRotateAngle(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/ba;->a(F)V

    :cond_0
    return-void
.end method

.method public setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v2, 0x3e8

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/col/ba;

    iget-object v1, p0, Lcom/amap/api/mapcore/a;->aB:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/ba;-><init>(Lcom/amap/api/mapcore/k;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getInterval()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    invoke-virtual {p1, v2, v3}, Lcom/amap/api/maps/model/MyLocationStyle;->interval(J)Lcom/amap/api/maps/model/MyLocationStyle;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    instance-of v0, v0, Lcom/amap/api/col/h;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    check-cast v0, Lcom/amap/api/col/h;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/col/h;->a(J)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aj:Lcom/amap/api/maps/LocationSource;

    check-cast v0, Lcom/amap/api/col/h;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/h;->a(I)V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/ba;->a(Lcom/amap/api/maps/model/MyLocationStyle;)V

    goto :goto_0
.end method

.method public setMyLocationType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->ai:Lcom/amap/api/col/ba;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/ba;->a(I)V

    :cond_0
    return-void
.end method

.method public setMyTrafficStyle(Lcom/amap/api/maps/model/MyTrafficStyle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/amap/api/mapcore/a;->au:Lcom/amap/api/maps/model/MyTrafficStyle;

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x899

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x89a

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSmoothColor()I

    move-result v3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSlowColor()I

    move-result v4

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getCongestedColor()I

    move-result v5

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSeriousCongestedColor()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x89b

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getRatio()F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v4, 0xa

    move v5, v7

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    goto :goto_0
.end method

.method public setOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->F:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    return-void
.end method

.method public setOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->L:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    return-void
.end method

.method public setOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->K:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    return-void
.end method

.method public setOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->G:Lcom/amap/api/maps/AMap$OnMapClickListener;

    return-void
.end method

.method public setOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->J:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    return-void
.end method

.method public setOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->H:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    return-void
.end method

.method public setOnMaploadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->E:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    return-void
.end method

.method public setOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->B:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    return-void
.end method

.method public setOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->D:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    return-void
.end method

.method public setOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->M:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    return-void
.end method

.method public setOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->I:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    return-void
.end method

.method public setOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/a;->C:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    return-void
.end method

.method public setRenderFps(I)V
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0x28

    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/a;->i:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setRunLowFrame(Z)V
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->q()V

    goto :goto_0
.end method

.method public setTrafficEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->aN:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/a;->Z:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/a$26;

    invoke-direct {v0, p0, p1, p1}, Lcom/amap/api/mapcore/a$26;-><init>(Lcom/amap/api/mapcore/a;ZZ)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/a;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aV:Lcom/amap/api/mapcore/a$a;

    iput-boolean p1, v0, Lcom/amap/api/mapcore/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aV:Lcom/amap/api/mapcore/a$a;

    iput-boolean v1, v0, Lcom/amap/api/mapcore/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aV:Lcom/amap/api/mapcore/a$a;

    iput v1, v0, Lcom/amap/api/mapcore/a$a;->g:I

    goto :goto_0
.end method

.method public setVisibilityEx(I)V
    .locals 0

    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setZoomScaleParam(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/a;->aG:F

    return-void
.end method

.method public stopAnimation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getAnimateionsCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/amap/api/mapcore/a;->a(ZLcom/amap/api/maps/model/CameraPosition;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->clearAnimations(IZ)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->Q:Lcom/amap/api/maps/AMap$CancelableCallback;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->Q:Lcom/amap/api/maps/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$CancelableCallback;->onCancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lcom/amap/api/mapcore/a;->Q:Lcom/amap/api/maps/AMap$CancelableCallback;

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/a;->o()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "CancelableCallback.onCancel"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public t()[F
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->aC:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->r:[F

    invoke-virtual {v0, v2}, Lcom/autonavi/ae/gmap/GLMapState;->getViewMatrix([F)V

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->s:[F

    invoke-virtual {v0, v2}, Lcom/autonavi/ae/gmap/GLMapState;->getProjectionMatrix([F)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->r:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/a;->s:[F

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->q:[F

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->q:[F

    iget-object v2, p0, Lcom/amap/api/mapcore/a;->s:[F

    iget-object v4, p0, Lcom/amap/api/mapcore/a;->r:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a;->q:[F

    goto :goto_0
.end method
