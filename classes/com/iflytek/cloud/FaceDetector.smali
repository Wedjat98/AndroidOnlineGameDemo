.class public Lcom/iflytek/cloud/FaceDetector;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iflytek/cloud/FaceDetector;


# instance fields
.field private b:Lcom/iflytek/cloud/thirdparty/ai;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ai;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/iflytek/cloud/thirdparty/ai;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/FaceDetector;->b:Lcom/iflytek/cloud/thirdparty/ai;

    return-void
.end method

.method public static declared-synchronized createDetector(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/cloud/FaceDetector;
    .registers 4

    const-class v1, Lcom/iflytek/cloud/FaceDetector;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/iflytek/cloud/FaceDetector;->a:Lcom/iflytek/cloud/FaceDetector;

    if-nez v0, :cond_e

    new-instance v0, Lcom/iflytek/cloud/FaceDetector;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/FaceDetector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/cloud/FaceDetector;->a:Lcom/iflytek/cloud/FaceDetector;

    :cond_e
    sget-object v0, Lcom/iflytek/cloud/FaceDetector;->a:Lcom/iflytek/cloud/FaceDetector;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getDetector()Lcom/iflytek/cloud/FaceDetector;
    .registers 2

    const-class v0, Lcom/iflytek/cloud/FaceDetector;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/iflytek/cloud/FaceDetector;->a:Lcom/iflytek/cloud/FaceDetector;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/iflytek/cloud/FaceDetector;->a:Lcom/iflytek/cloud/FaceDetector;

    iget-object v0, p0, Lcom/iflytek/cloud/FaceDetector;->b:Lcom/iflytek/cloud/thirdparty/ai;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ai;->a()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized detectARGB(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/FaceDetector;->b:Lcom/iflytek/cloud/thirdparty/ai;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/ai;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized detectGray(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/FaceDetector;->b:Lcom/iflytek/cloud/thirdparty/ai;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/ai;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trackNV21([BIIII)Ljava/lang/String;
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/FaceDetector;->b:Lcom/iflytek/cloud/thirdparty/ai;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/ai;->a([BIIII)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
