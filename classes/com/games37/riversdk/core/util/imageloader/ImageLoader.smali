.class public Lcom/games37/riversdk/core/util/imageloader/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;
    }
.end annotation


# static fields
.field public static final DEF_KEY:Ljava/lang/String; = "http"

.field public static final LOAD_FAILE:I = 0x222

.field public static final LOAD_ING:I = 0x333

.field public static final LOAD_SUCCESS:I = 0x111

.field public static final TAG:Ljava/lang/String;

.field private static defThreadCount:I

.field private static loader:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

.field public static mType:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;


# instance fields
.field private caCheName:Ljava/lang/String;

.field private helper:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;

.field private isNeedAnim:Z

.field private loadConfig:Landroid/graphics/Bitmap$Config;

.field private loadListener:Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDisPlayHandler:Landroid/os/Handler;

.field private mPoolSemaphore:Ljava/util/concurrent/Semaphore;

.field private mPoolThreadHandler:Landroid/os/Handler;

.field private mSemapHore:Ljava/util/concurrent/Semaphore;

.field private mTask:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Ljava/lang/Thread;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mTimeOut:I

.field private saveLocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const/4 v0, 0x3

    sput v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->defThreadCount:I

    .line 70
    sget-object v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;->LIFO:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    sput-object v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mType:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    .line 149
    const-class v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mSemapHore:Ljava/util/concurrent/Semaphore;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->isNeedAnim:Z

    .line 130
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->loadConfig:Landroid/graphics/Bitmap$Config;

    .line 140
    const-string v0, "picCaChe"

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->caCheName:Ljava/lang/String;

    .line 145
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mTimeOut:I

    .line 198
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadCount"    # I
    .param p3, "type"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mSemapHore:Ljava/util/concurrent/Semaphore;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->isNeedAnim:Z

    .line 130
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->loadConfig:Landroid/graphics/Bitmap$Config;

    .line 140
    const-string v0, "picCaChe"

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->caCheName:Ljava/lang/String;

    .line 145
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mTimeOut:I

    .line 201
    invoke-direct {p0, p1, p2, p3}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->init(Landroid/content/Context;ILcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;)V

    .line 202
    return-void
.end method

.method static synthetic access$002(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mPoolThreadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->getTask()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/ImageView;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->decodeSampledBitmapFromLocal(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;)Ljava/util/concurrent/Semaphore;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mPoolSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$400(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;)Ljava/util/concurrent/Semaphore;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mSemapHore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$500(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;ILcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->sendMsg(ILcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->urlIsNetWork(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/ImageView;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->decodeSampledBitmapFromDisk(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/ImageView;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->decodeSampledBitmapFromResource(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/ImageView;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->decodeSampledBitmapFromNetWork(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized addTask(Ljava/lang/String;Landroid/view/View;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 362
    monitor-enter p0

    :try_start_1
    new-instance v1, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$4;-><init>(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;Landroid/view/View;Ljava/lang/String;)V

    .line 400
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mPoolThreadHandler:Landroid/os/Handler;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_27

    if-nez v2, :cond_f

    .line 402
    :try_start_a
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mSemapHore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_22
    .catchall {:try_start_a .. :try_end_f} :catchall_27

    .line 407
    :cond_f
    :goto_f
    :try_start_f
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mTask:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mPoolThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 409
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mPoolSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_27

    .line 410
    monitor-exit p0

    return-void

    .line 403
    :catch_22
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_23
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_f

    .line 362
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 11
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 701
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 702
    .local v3, "width":I
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 703
    .local v0, "height":I
    const/4 v2, 0x1

    .line 705
    .local v2, "inSampleSize":I
    if-le v3, p2, :cond_1b

    if-le v0, p3, :cond_1b

    .line 707
    int-to-float v5, v3

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 708
    .local v4, "widthRatio":I
    int-to-float v5, v3

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 709
    .local v1, "heightRatio":I
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 711
    .end local v1    # "heightRatio":I
    .end local v4    # "widthRatio":I
    :cond_1b
    return v2
.end method

.method private decodeSampledBitmapFromDisk(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "pathNmae"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v7, 0x0

    .line 619
    iget-object v6, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->helper:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;

    invoke-virtual {v6, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->getAsBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 620
    .local v1, "data":[B
    if-nez v1, :cond_b

    .line 621
    const/4 v0, 0x0

    .line 633
    :goto_a
    return-object v0

    .line 622
    :cond_b
    invoke-direct {p0, p2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->getImageViewWidth(Landroid/widget/ImageView;)Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;

    move-result-object v2

    .line 623
    .local v2, "imageSize":Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;
    iget v5, v2, Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;->width:I

    .line 624
    .local v5, "reqWidth":I
    iget v4, v2, Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;->height:I

    .line 625
    .local v4, "reqHeight":I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 626
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v6, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->loadConfig:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 627
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 628
    array-length v6, v1

    invoke-static {v1, v7, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 629
    invoke-direct {p0, v3, v5, v4}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 631
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 632
    array-length v6, v1

    invoke-static {v1, v7, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 633
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_a
.end method

.method private decodeSampledBitmapFromLocal(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .registers 15
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "imageview"    # Landroid/widget/ImageView;

    .prologue
    const/4 v10, 0x0

    .line 531
    invoke-direct {p0, p2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->getImageViewWidth(Landroid/widget/ImageView;)Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;

    move-result-object v4

    .line 532
    .local v4, "imageSize":Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;
    iget v8, v4, Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;->width:I

    .line 533
    .local v8, "reqWidth":I
    iget v7, v4, Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;->height:I

    .line 535
    .local v7, "reqHeight":I
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 536
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v9, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->loadConfig:Landroid/graphics/Bitmap$Config;

    iput-object v9, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 537
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 539
    const/4 v1, 0x0

    .line 541
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const-string v9, "assets"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 543
    :try_start_1e
    iget-object v9, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 545
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 546
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 547
    .local v5, "in":Ljava/io/InputStream;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 549
    invoke-direct {p0, v6, v8, v7}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v9

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 552
    const/4 v9, 0x0

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 553
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 555
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3f} :catch_40

    .line 589
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v5    # "in":Ljava/io/InputStream;
    :cond_3f
    :goto_3f
    return-object v1

    .line 556
    :catch_40
    move-exception v2

    .line 557
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decodeSampledBitmapFromLocal error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v1, 0x0

    .line 559
    goto :goto_3f

    .line 560
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5f
    const-string v9, "drawable"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ab

    .line 562
    :try_start_67
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 564
    .local v3, "id":I
    iget-object v9, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 566
    invoke-direct {p0, v6, v8, v7}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v9

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 569
    const/4 v9, 0x0

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 571
    iget-object v9, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_8a} :catch_8c

    move-result-object v1

    goto :goto_3f

    .line 573
    .end local v3    # "id":I
    :catch_8c
    move-exception v2

    .line 574
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v9, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decodeSampledBitmapFromLocal error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v1, 0x0

    .line 576
    goto :goto_3f

    .line 577
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_ab
    const-string v9, "file"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 579
    invoke-static {p1, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 581
    invoke-direct {p0, v6, v8, v7}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v9

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 584
    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 585
    invoke-static {p1, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_3f
.end method

.method private decodeSampledBitmapFromNetWork(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->getNetWork2Save(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 648
    invoke-direct {p0, v1, p2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->decodeSampledBitmapFromDisk(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 650
    :cond_b
    return-object v0
.end method

.method private decodeSampledBitmapFromResource(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "imageview"    # Landroid/widget/ImageView;

    .prologue
    .line 506
    invoke-direct {p0, p2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->getImageViewWidth(Landroid/widget/ImageView;)Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;

    move-result-object v1

    .line 507
    .local v1, "imageSize":Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;
    iget v4, v1, Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;->width:I

    .line 508
    .local v4, "reqWidth":I
    iget v3, v1, Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;->height:I

    .line 510
    .local v3, "reqHeight":I
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 511
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v5, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->loadConfig:Landroid/graphics/Bitmap$Config;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 512
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 513
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 515
    invoke-direct {p0, v2, v4, v3}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 518
    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 519
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 520
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private static getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 484
    const/4 v2, 0x0

    .line 486
    .local v2, "value":I
    :try_start_1
    const-class v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 487
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 488
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_1e

    move-result v1

    .line 489
    .local v1, "fieldValue":I
    if-lez v1, :cond_1d

    const v3, 0x7fffffff

    if-ge v1, v3, :cond_1d

    .line 490
    move v2, v1

    .line 494
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "fieldValue":I
    :cond_1d
    :goto_1d
    return v2

    .line 492
    :catch_1e
    move-exception v3

    goto :goto_1d
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;
    .registers 9
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x2

    .line 444
    new-instance v2, Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;

    invoke-direct {v2}, Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;-><init>()V

    .line 445
    .local v2, "imageSize":Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 446
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 447
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 449
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v5, v6, :cond_45

    move v4, v1

    .line 451
    .local v4, "width":I
    :goto_1c
    if-gtz v4, :cond_20

    .line 452
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 453
    :cond_20
    if-gtz v4, :cond_28

    .line 454
    const-string v5, "mMaxWidth"

    invoke-static {p1, v5}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    .line 457
    :cond_28
    if-gtz v4, :cond_2c

    .line 458
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 459
    :cond_2c
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v6, :cond_4a

    .line 461
    .local v1, "height":I
    :goto_30
    if-gtz v1, :cond_34

    .line 462
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 463
    :cond_34
    if-gtz v1, :cond_3c

    .line 464
    const-string v5, "mMaxHeight"

    invoke-static {p1, v5}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 467
    :cond_3c
    if-gtz v1, :cond_40

    .line 468
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 469
    :cond_40
    iput v4, v2, Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;->width:I

    .line 470
    iput v1, v2, Lcom/games37/riversdk/core/util/imageloader/bean/ImageSize;->height:I

    .line 471
    return-object v2

    .line 450
    .end local v1    # "height":I
    .end local v4    # "width":I
    :cond_45
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    goto :goto_1c

    .line 460
    .restart local v4    # "width":I
    :cond_4a
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    goto :goto_30
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/games37/riversdk/core/util/imageloader/ImageLoader;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    sget-object v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->loader:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    if-nez v0, :cond_17

    .line 249
    const-class v1, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    monitor-enter v1

    .line 250
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->loader:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    if-nez v0, :cond_16

    .line 251
    new-instance v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    sget v2, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->defThreadCount:I

    sget-object v3, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mType:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    invoke-direct {v0, p0, v2, v3}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;-><init>(Landroid/content/Context;ILcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;)V

    sput-object v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->loader:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    .line 253
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1a

    .line 255
    :cond_17
    sget-object v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->loader:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    return-object v0

    .line 253
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;ILcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;)Lcom/games37/riversdk/core/util/imageloader/ImageLoader;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadCount"    # I
    .param p2, "type"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    .prologue
    .line 259
    sget-object v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->loader:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    if-nez v0, :cond_13

    .line 260
    const-class v1, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    monitor-enter v1

    .line 261
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->loader:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    if-nez v0, :cond_12

    .line 262
    new-instance v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    invoke-direct {v0, p0, p1, p2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;-><init>(Landroid/content/Context;ILcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;)V

    sput-object v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->loader:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    .line 264
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 266
    :cond_13
    sget-object v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->loader:Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    return-object v0

    .line 264
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private getNetWork2Save(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 661
    const/4 v2, 0x0

    .line 662
    .local v2, "imgUrl":Ljava/net/URL;
    const/4 v0, 0x0

    .line 664
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_3
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_8} :catch_3d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_43

    .line 666
    .end local v2    # "imgUrl":Ljava/net/URL;
    .local v3, "imgUrl":Ljava/net/URL;
    :try_start_8
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 667
    .local v5, "urlConn":Ljava/net/HttpURLConnection;
    iget v7, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mTimeOut:I

    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 668
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 669
    const/16 v7, 0xc8

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    if-ne v7, v8, :cond_49

    .line 671
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 672
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 673
    iget-object v7, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->helper:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;

    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->put(Ljava/lang/String;[B)V

    .line 674
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 675
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_3b

    .line 676
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3b
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_3b} :catch_4f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3b} :catch_4c

    :cond_3b
    move-object v2, v3

    .line 686
    .end local v3    # "imgUrl":Ljava/net/URL;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "urlConn":Ljava/net/HttpURLConnection;
    .end local p1    # "urlString":Ljava/lang/String;
    .restart local v2    # "imgUrl":Ljava/net/URL;
    :goto_3c
    return-object p1

    .line 679
    .restart local p1    # "urlString":Ljava/lang/String;
    :catch_3d
    move-exception v1

    .line 680
    .local v1, "e":Ljava/net/MalformedURLException;
    :goto_3e
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object p1, v6

    .line 681
    goto :goto_3c

    .line 682
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_43
    move-exception v1

    .line 683
    .local v1, "e":Ljava/io/IOException;
    :goto_44
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, v6

    .line 684
    goto :goto_3c

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "imgUrl":Ljava/net/URL;
    .restart local v3    # "imgUrl":Ljava/net/URL;
    .restart local v5    # "urlConn":Ljava/net/HttpURLConnection;
    :cond_49
    move-object v2, v3

    .end local v3    # "imgUrl":Ljava/net/URL;
    .restart local v2    # "imgUrl":Ljava/net/URL;
    move-object p1, v6

    .line 686
    goto :goto_3c

    .line 682
    .end local v2    # "imgUrl":Ljava/net/URL;
    .end local v5    # "urlConn":Ljava/net/HttpURLConnection;
    .restart local v3    # "imgUrl":Ljava/net/URL;
    :catch_4c
    move-exception v1

    move-object v2, v3

    .end local v3    # "imgUrl":Ljava/net/URL;
    .restart local v2    # "imgUrl":Ljava/net/URL;
    goto :goto_44

    .line 679
    .end local v2    # "imgUrl":Ljava/net/URL;
    .restart local v3    # "imgUrl":Ljava/net/URL;
    :catch_4f
    move-exception v1

    move-object v2, v3

    .end local v3    # "imgUrl":Ljava/net/URL;
    .restart local v2    # "imgUrl":Ljava/net/URL;
    goto :goto_3e
.end method

.method private declared-synchronized getTask()Ljava/lang/Runnable;
    .registers 3

    .prologue
    .line 721
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mTask:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 722
    sget-object v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mType:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    sget-object v1, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;->LIFO:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    if-ne v0, v1, :cond_19

    .line 723
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mTask:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_24

    .line 727
    :goto_17
    monitor-exit p0

    return-object v0

    .line 725
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mTask:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_24

    goto :goto_17

    .line 727
    :cond_22
    const/4 v0, 0x0

    goto :goto_17

    .line 721
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private init(Landroid/content/Context;ILcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadCount"    # I
    .param p3, "type"    # Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    .prologue
    .line 206
    new-instance v1, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;

    invoke-direct {v1, p0}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$1;-><init>(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;)V

    iput-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mThread:Ljava/lang/Thread;

    .line 225
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 227
    invoke-static {p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 229
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mPoolSemaphore:Ljava/util/concurrent/Semaphore;

    .line 231
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mTask:Ljava/util/LinkedList;

    .line 233
    if-nez p3, :cond_24

    sget-object p3, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;->LIFO:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    .end local p3    # "type":Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;
    :cond_24
    sput-object p3, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mType:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    .line 235
    if-eqz p1, :cond_3d

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->saveLocation:Ljava/lang/String;

    .line 239
    :try_start_32
    new-instance v1, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;

    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->caCheName:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->helper:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3b} :catch_3e

    .line 243
    :goto_3b
    iput-object p1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mContext:Landroid/content/Context;

    .line 245
    :cond_3d
    return-void

    .line 240
    :catch_3e
    move-exception v0

    .line 241
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b
.end method

.method private sendMsg(ILcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;)V
    .registers 5
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p2, "holder":Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder;, "Lcom/games37/riversdk/core/util/imageloader/bean/ViewBeanHolder<Landroid/view/View;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 419
    .local v0, "message":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 420
    iput p1, v0, Landroid/os/Message;->what:I

    .line 421
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mDisPlayHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 422
    return-void
.end method

.method private urlIsNetWork(Ljava/lang/String;)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 430
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 431
    const/4 v0, 0x1

    .line 433
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 600
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 601
    .local v1, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 603
    .local v0, "end":I
    if-eq v1, v3, :cond_16

    if-eq v0, v3, :cond_16

    .line 604
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 606
    :goto_15
    return-object v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public load(Ljava/lang/String;Landroid/view/View;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 277
    if-nez p1, :cond_a

    .line 278
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "this path is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_a
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mDisPlayHandler:Landroid/os/Handler;

    if-nez v0, :cond_18

    .line 283
    new-instance v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$2;

    invoke-direct {v0, p0}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$2;-><init>(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mDisPlayHandler:Landroid/os/Handler;

    .line 298
    :cond_18
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->addTask(Ljava/lang/String;Landroid/view/View;)V

    .line 300
    return-void
.end method

.method public load(Ljava/lang/String;Landroid/view/View;Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p3, "loadListener":Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener;, "Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener<Landroid/view/View;>;"
    if-nez p1, :cond_a

    .line 312
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "this path is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_a
    if-nez p3, :cond_14

    .line 315
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "this loadListener is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_14
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mDisPlayHandler:Landroid/os/Handler;

    if-nez v0, :cond_22

    .line 320
    new-instance v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$3;

    invoke-direct {v0, p0, p3}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$3;-><init>(Lcom/games37/riversdk/core/util/imageloader/ImageLoader;Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mDisPlayHandler:Landroid/os/Handler;

    .line 350
    :cond_22
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->addTask(Ljava/lang/String;Landroid/view/View;)V

    .line 352
    return-void
.end method

.method public setCaCheName(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->caCheName:Ljava/lang/String;

    .line 737
    return-void
.end method

.method public setLoadConfig(Landroid/graphics/Bitmap$Config;)V
    .registers 2
    .param p1, "loadConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->loadConfig:Landroid/graphics/Bitmap$Config;

    .line 174
    return-void
.end method

.method public setLoadListener(Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "loadListener":Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener;, "Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->loadListener:Lcom/games37/riversdk/core/util/imageloader/listener/LoadListener;

    .line 192
    return-void
.end method

.method public setNeedAnim(Z)V
    .registers 2
    .param p1, "isneed"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->isNeedAnim:Z

    .line 183
    return-void
.end method

.method public setTimeOut(I)V
    .registers 2
    .param p1, "mTimeOut"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->mTimeOut:I

    .line 165
    return-void
.end method
