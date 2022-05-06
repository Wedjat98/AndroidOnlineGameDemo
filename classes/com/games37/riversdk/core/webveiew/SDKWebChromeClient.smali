.class public Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SDKWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$OnCancelListener;
    }
.end annotation


# static fields
.field protected static final CONTENT_PHOTOS_URI_PREFIX:Ljava/lang/String; = "content://com.google.android.apps.photos.contentprovider"

.field protected static final REQUEST_CODE_IMAGE_CAPTURE:I = 0x1

.field protected static final REQUEST_CODE_PICK_IMAGE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SDKWebChromeClient"


# instance fields
.field protected compressPath:Ljava/lang/String;

.field protected mActivity:Landroid/app/Activity;

.field private mPhotoUri:Landroid/net/Uri;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field protected mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

.field protected mSourceIntent:Landroid/content/Intent;

.field protected mUploadMsg:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public mUploadMsgForAndroid5:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->compressPath:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mProgressBar:Landroid/widget/ProgressBar;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ProgressBar;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "progressBar"    # Landroid/widget/ProgressBar;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->compressPath:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    .line 76
    iput-object p2, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mProgressBar:Landroid/widget/ProgressBar;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mPhotoUri:Landroid/net/Uri;

    return-object p1
.end method

.method private handleUri(Landroid/net/Uri;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v2, 0x15

    .line 274
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_16

    .line 275
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mUploadMsg:Landroid/webkit/ValueCallback;

    if-nez v1, :cond_b

    .line 288
    :cond_a
    :goto_a
    return-void

    .line 278
    :cond_b
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mUploadMsg:Landroid/webkit/ValueCallback;

    invoke-interface {v1, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    goto :goto_a

    .line 285
    :catch_11
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_16
    :try_start_16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_a

    .line 280
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mUploadMsgForAndroid5:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_a

    .line 283
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mUploadMsgForAndroid5:Landroid/webkit/ValueCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_29} :catch_11

    goto :goto_a
.end method

.method public static hasExternalStoragePermission(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, "perm":I
    if-nez v0, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method


# virtual methods
.method protected afterChosePic(Landroid/content/Intent;)Landroid/net/Uri;
    .registers 12
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 295
    const/4 v4, 0x0

    .line 296
    .local v4, "path":Ljava/lang/String;
    if-eqz p1, :cond_1f

    .line 297
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 298
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_1b

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "content://com.google.android.apps.photos.contentprovider"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 299
    iget-object v7, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v7, v6}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->getImageUrlWithAuthority(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 301
    :cond_1b
    invoke-virtual {p0, v6}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->getRealFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 303
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_1f
    iget-object v7, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mSourceIntent:Landroid/content/Intent;

    if-eqz v7, :cond_41

    .line 304
    iget-object v7, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mSourceIntent:Landroid/content/Intent;

    const-string v8, "output"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 305
    .restart local v6    # "uri":Landroid/net/Uri;
    if-eqz v6, :cond_41

    .line 306
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "scheme":Ljava/lang/String;
    if-eqz v5, :cond_41

    const-string v7, "file"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 308
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 312
    .end local v5    # "scheme":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_41
    if-nez v4, :cond_45

    .line 313
    const/4 v7, 0x0

    .line 329
    :goto_44
    return-object v7

    .line 315
    :cond_45
    const-string v7, "\\."

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 317
    .local v1, "endName":Ljava/lang/String;
    if-eqz v2, :cond_53

    .line 318
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    aget-object v1, v2, v7

    .line 320
    :cond_53
    if-eqz v1, :cond_79

    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->compressPath:Ljava/lang/String;

    const-string v9, "\\."

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->compressPath:Ljava/lang/String;

    .line 325
    :cond_79
    :try_start_79
    iget-object v7, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->compressPath:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/games37/riversdk/common/utils/BitmapUtil;->compressBitmap(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7e} :catch_84

    move-result-object v3

    .line 329
    .local v3, "newFile":Ljava/io/File;
    :goto_7f
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_44

    .line 326
    .end local v3    # "newFile":Ljava/io/File;
    :catch_84
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3    # "newFile":Ljava/io/File;
    goto :goto_7f
.end method

.method protected destroyUploadMsg()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mUploadMsg:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_c

    .line 221
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mUploadMsg:Landroid/webkit/ValueCallback;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 222
    iput-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mUploadMsg:Landroid/webkit/ValueCallback;

    .line 224
    :cond_c
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mUploadMsgForAndroid5:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_17

    .line 225
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mUploadMsgForAndroid5:Landroid/webkit/ValueCallback;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 226
    iput-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mUploadMsgForAndroid5:Landroid/webkit/ValueCallback;

    .line 228
    :cond_17
    return-void
.end method

.method public getImageUrlWithAuthority(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 335
    const/4 v2, 0x0

    .line 336
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 338
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 339
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1, v0}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->writeToTempImageAndGetPathUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_16} :catch_20
    .catchall {:try_start_7 .. :try_end_16} :catchall_2e

    move-result-object v3

    .line 345
    :try_start_17
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 351
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :goto_1a
    return-object v3

    .line 346
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_1b
    move-exception v1

    .line 347
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    .line 341
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_20
    move-exception v1

    .line 342
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_21
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2e

    .line 345
    :try_start_24
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_29

    .line 351
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_27
    :goto_27
    const/4 v3, 0x0

    goto :goto_1a

    .line 346
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_29
    move-exception v1

    .line 347
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    .line 344
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_2e
    move-exception v3

    .line 345
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    .line 348
    :goto_32
    throw v3

    .line 346
    :catch_33
    move-exception v1

    .line 347
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32
.end method

.method public getRealFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 365
    if-nez p1, :cond_4

    .line 387
    :goto_3
    return-object v3

    .line 368
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 369
    .local v9, "scheme":Ljava/lang/String;
    const/4 v7, 0x0

    .line 370
    .local v7, "data":Ljava/lang/String;
    if-nez v9, :cond_11

    .line 371
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    :cond_f
    :goto_f
    move-object v3, v7

    .line 387
    goto :goto_3

    .line 372
    :cond_11
    const-string v0, "file"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 373
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    .line 374
    :cond_1e
    const-string v0, "content"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 375
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 377
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_f

    .line 378
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 379
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 380
    .local v8, "index":I
    const/4 v0, -0x1

    if-le v8, v0, :cond_54

    .line 381
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 384
    .end local v8    # "index":I
    :cond_54
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_f
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 235
    const/4 v1, -0x1

    if-eq p3, v1, :cond_17

    .line 236
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mUploadMsg:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_d

    .line 237
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mUploadMsg:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 240
    :cond_d
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mUploadMsgForAndroid5:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_16

    .line 241
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mUploadMsgForAndroid5:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 266
    :cond_16
    :goto_16
    return-void

    .line 246
    :cond_17
    const/4 v0, 0x0

    .line 247
    .local v0, "uri":Landroid/net/Uri;
    packed-switch p2, :pswitch_data_36

    goto :goto_16

    .line 260
    :pswitch_1c
    invoke-virtual {p0, p4}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->afterChosePic(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    .line 261
    invoke-direct {p0, v0}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->handleUri(Landroid/net/Uri;)V

    goto :goto_16

    .line 251
    :pswitch_24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_30

    .line 252
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mPhotoUri:Landroid/net/Uri;

    .line 256
    :goto_2c
    invoke-direct {p0, v0}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->handleUri(Landroid/net/Uri;)V

    goto :goto_16

    .line 254
    :cond_30
    invoke-virtual {p0, p4}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->afterChosePic(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2c

    .line 247
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method public onDestory()V
    .registers 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 392
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 394
    :cond_b
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 81
    invoke-virtual {p0, p2}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->showProgressBar(I)V

    .line 82
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 83
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 6
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    iput-object p2, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mUploadMsgForAndroid5:Landroid/webkit/ValueCallback;

    .line 138
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->hasExternalStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 139
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->selectImage()V

    .line 140
    const/4 v0, 0x1

    .line 146
    :goto_16
    return v0

    .line 142
    :cond_17
    const-string v0, "SDKWebChromeClient"

    const-string v1, "No \'android.permission.WRITE_EXTERNAL_STORAGE\' Permissions!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 144
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    const-string v1, "No Permissions!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    :cond_2d
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .registers 3
    .param p2, "acceptType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    if-eqz p1, :cond_3

    .line 124
    :goto_2
    return-void

    .line 122
    :cond_3
    iput-object p1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mUploadMsg:Landroid/webkit/ValueCallback;

    .line 123
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->selectImage()V

    goto :goto_2
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method protected selectImage()V
    .registers 10

    .prologue
    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/RiverSDK/temp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->compressPath:Ljava/lang/String;

    .line 161
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->compressPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2d

    .line 163
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 165
    :cond_2d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->compressPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/games37/riversdk/common/utils/CommonUtils;->getSystemTimeMillis()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_compress.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->compressPath:Ljava/lang/String;

    .line 166
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->compressPath:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v4, "image":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_62

    .line 168
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 171
    :cond_62
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    .local v1, "alertDialog":Landroid/app/AlertDialog$Builder;
    new-instance v6, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$OnCancelListener;

    invoke-direct {v6, p0}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$OnCancelListener;-><init>(Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    iget-object v6, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    const-string v8, "r1_select_pic"

    invoke-static {v7, v8}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    const-string v8, "r1_album_string"

    invoke-static {v7, v8}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "album":Ljava/lang/String;
    iget-object v6, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    const-string v8, "r1_camera_string"

    invoke-static {v7, v8}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "camera":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 180
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    new-instance v7, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;

    invoke-direct {v7, p0, v4}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;-><init>(Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;Ljava/io/File;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 216
    return-void
.end method

.method public setSDKWebView(Lcom/games37/riversdk/core/webveiew/SDKWebView;)V
    .registers 2
    .param p1, "sdkWebView"    # Lcom/games37/riversdk/core/webveiew/SDKWebView;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    .line 87
    return-void
.end method

.method protected showProgressBar(I)V
    .registers 4
    .param p1, "newProgress"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_17

    .line 96
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 98
    const/16 v0, 0x64

    if-ne p1, v0, :cond_18

    .line 99
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 109
    :cond_17
    :goto_17
    return-void

    .line 102
    :cond_18
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_26

    .line 103
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 105
    :cond_26
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_17
.end method

.method public writeToTempImageAndGetPathUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .registers 8
    .param p1, "inContext"    # Landroid/content/Context;
    .param p2, "inImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 355
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 356
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "Title"

    const/4 v4, 0x0

    invoke-static {v2, p2, v3, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method
