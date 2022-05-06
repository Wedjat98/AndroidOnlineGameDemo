.class public Lcom/games37/riversdk/core/util/BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "BitmapWorkerTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private imagePath:Ljava/lang/String;

.field private final imageViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ImageView;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/util/BitmapWorkerTask;->imageViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 88
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/util/BitmapWorkerTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 89
    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 10
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 31
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 34
    .local v2, "height":I
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 35
    .local v4, "width":I
    const/4 v3, 0x1

    .line 36
    .local v3, "inSampleSize":I
    if-gt v2, p3, :cond_9

    if-le v4, p2, :cond_18

    .line 37
    :cond_9
    div-int/lit8 v0, v2, 0x2

    .line 38
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 41
    .local v1, "halfWidth":I
    :goto_d
    div-int v5, v0, v3

    if-le v5, p3, :cond_18

    div-int v5, v1, v3

    if-le v5, p2, :cond_18

    .line 44
    mul-int/lit8 v3, v3, 0x2

    goto :goto_d

    .line 47
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_18
    return v3
.end method

.method private decodeSampledBitmapFromResourse(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 58
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 61
    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 64
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 65
    .local v1, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 67
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 69
    .local v3, "width":I
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 71
    .local v0, "height":I
    invoke-direct {p0, v2, v3, v0}, Lcom/games37/riversdk/core/util/BitmapWorkerTask;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 72
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 73
    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/games37/riversdk/core/util/BitmapWorkerTask;->imagePath:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/games37/riversdk/core/util/BitmapWorkerTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/games37/riversdk/core/util/BitmapWorkerTask;->imagePath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/games37/riversdk/core/util/BitmapWorkerTask;->decodeSampledBitmapFromResourse(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/util/BitmapWorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/games37/riversdk/core/util/BitmapWorkerTask;->imageViewWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_13

    if-eqz p1, :cond_13

    .line 100
    iget-object v1, p0, Lcom/games37/riversdk/core/util/BitmapWorkerTask;->imageViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 101
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_13

    .line 102
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_13
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 18
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/util/BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
