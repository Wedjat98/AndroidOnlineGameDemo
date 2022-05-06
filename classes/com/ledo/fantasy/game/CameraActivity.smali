.class public Lcom/ledo/fantasy/game/CameraActivity;
.super Landroid/app/Activity;
.source "CameraActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# static fields
.field private static final CAPTURE_IMAGE_ACTIVITY_REQUEST_CODE:I = 0x64

.field private static final CAPTURE_PHOTO_ACTIVITY_REQUEST_CODE:I = 0xc8

.field private static final CROP_IMAGE_ACTIVITY_REQUEST_CODE:I = 0x12c

.field private static final LOG_TAG:Ljava/lang/String; = "bxzw_Camera"

.field public static final MEDIA_TYPE_IMAGE:I = 0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x2

.field public static final TAKEPHOTO:I = 0x2

.field public static final TAKEPICTURE:I = 0x1

.field private static fileUri:Landroid/net/Uri;

.field private static selectFunc:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x1

    sput v0, Lcom/ledo/fantasy/game/CameraActivity;->selectFunc:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private CheckHasPermission(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ledo/fantasy/game/GameApp;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, "perm":I
    if-nez v0, :cond_10

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_f
.end method

.method static synthetic access$0()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/ledo/fantasy/game/CameraActivity;->fileUri:Landroid/net/Uri;

    return-object v0
.end method

.method private clipNewPhoto(Landroid/net/Uri;)V
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v5, 0x100

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    const-string v1, "outputFormat"

    const-string v2, "PNG"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 348
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ledo/fantasy/game/CameraActivity;->getOutputMediaFileUri(ILjava/lang/Boolean;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/ledo/fantasy/game/CameraActivity;->fileUri:Landroid/net/Uri;

    .line 350
    const-string v1, "output"

    sget-object v2, Lcom/ledo/fantasy/game/CameraActivity;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 351
    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/ledo/fantasy/game/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 352
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/ledo/fantasy/game/CameraActivity;->finishActivity(I)V

    .line 353
    return-void
.end method

.method private clipPhoto(Landroid/net/Uri;)V
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v5, 0x100

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 322
    sget-object v1, Lcom/ledo/fantasy/game/CameraActivity;->fileUri:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    const-string v1, "outputFormat"

    const-string v2, "PNG"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 330
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 331
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ledo/fantasy/game/CameraActivity;->getOutputMediaFileUri(ILjava/lang/Boolean;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/ledo/fantasy/game/CameraActivity;->fileUri:Landroid/net/Uri;

    .line 332
    const-string v1, "output"

    sget-object v2, Lcom/ledo/fantasy/game/CameraActivity;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 333
    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/ledo/fantasy/game/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 334
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/ledo/fantasy/game/CameraActivity;->finishActivity(I)V

    .line 335
    return-void
.end method

.method private static getOutputMediaFile(I)Ljava/io/File;
    .registers 9
    .param p0, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 138
    const/4 v2, 0x0

    .line 145
    .local v2, "mediaStorageDir":Ljava/io/File;
    :try_start_2
    new-instance v3, Ljava/io/File;

    .line 147
    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 148
    const-string v6, "MyCameraApp"

    .line 145
    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_38

    .line 150
    .end local v2    # "mediaStorageDir":Ljava/io/File;
    .local v3, "mediaStorageDir":Ljava/io/File;
    :try_start_f
    const-string v5, "bxzw_Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Successfully created mediaStorageDir: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 150
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_23} :catch_c2

    move-object v2, v3

    .line 162
    .end local v3    # "mediaStorageDir":Ljava/io/File;
    .restart local v2    # "mediaStorageDir":Ljava/io/File;
    :goto_24
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_51

    .line 164
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_51

    .line 169
    const-string v5, "bxzw_Camera"

    .line 170
    const-string v6, "failed to create directory, check if you have the WRITE_EXTERNAL_STORAGE permission"

    .line 169
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_37
    :goto_37
    return-object v1

    .line 154
    :catch_38
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    :goto_39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    const-string v5, "bxzw_Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error in Creating mediaStorageDir: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 157
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_51
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd_HHmmss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 177
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "timeStamp":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne p0, v5, :cond_91

    .line 181
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 182
    const-string v6, "IMG_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "mediaFile":Ljava/io/File;
    goto :goto_37

    .line 184
    .end local v1    # "mediaFile":Ljava/io/File;
    :cond_91
    const/4 v5, 0x2

    if-ne p0, v5, :cond_37

    .line 186
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 187
    const-string v6, "VID_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v1    # "mediaFile":Ljava/io/File;
    goto/16 :goto_37

    .line 154
    .end local v1    # "mediaFile":Ljava/io/File;
    .end local v2    # "mediaStorageDir":Ljava/io/File;
    .end local v4    # "timeStamp":Ljava/lang/String;
    .restart local v3    # "mediaStorageDir":Ljava/io/File;
    :catch_c2
    move-exception v0

    move-object v2, v3

    .end local v3    # "mediaStorageDir":Ljava/io/File;
    .restart local v2    # "mediaStorageDir":Ljava/io/File;
    goto/16 :goto_39
.end method

.method private static getOutputMediaFileUri(ILjava/lang/Boolean;)Landroid/net/Uri;
    .registers 6
    .param p0, "type"    # I
    .param p1, "useFileProvider"    # Ljava/lang/Boolean;

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 121
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v2

    sget v3, Lcom/ledo/fantasy/game/R$string;->ledo_fantasy_original_packname:I

    invoke-virtual {v2, v3}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "strOriginalPackName":Ljava/lang/String;
    if-eqz v0, :cond_1a

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 123
    :cond_1a
    const-string v0, "com.ledo.fantasy"

    .line 125
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "strPathFileProvider":Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v2

    invoke-static {p0}, Lcom/ledo/fantasy/game/CameraActivity;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 128
    .end local v0    # "strOriginalPackName":Ljava/lang/String;
    .end local v1    # "strPathFileProvider":Ljava/lang/String;
    :goto_3b
    return-object v2

    :cond_3c
    invoke-static {p0}, Lcom/ledo/fantasy/game/CameraActivity;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_3b
.end method

.method private onClipPhotoFinished(ILandroid/content/Intent;)V
    .registers 5
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 359
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/CameraActivity$3;

    invoke-direct {v1, p0}, Lcom/ledo/fantasy/game/CameraActivity$3;-><init>(Lcom/ledo/fantasy/game/CameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 366
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/CameraActivity;->finish()V

    .line 367
    return-void
.end method

.method public static setSelectProperty(I)V
    .registers 1
    .param p0, "flag"    # I

    .prologue
    .line 114
    sput p0, Lcom/ledo/fantasy/game/CameraActivity;->selectFunc:I

    .line 115
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 19
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 200
    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 201
    const-string v1, "bxzw_Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onActivityResult: requestCode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 202
    const-string v5, ", resultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/16 v1, 0x64

    move/from16 v0, p1

    if-ne v1, v0, :cond_58

    .line 206
    const-string v1, "bxzw_Camera"

    const-string v4, "CAPTURE_IMAGE"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v1, v0, :cond_b8

    .line 210
    const-string v1, "bxzw_Camera"

    const-string v4, "RESULT_OK"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-eqz p3, :cond_ab

    .line 216
    const-string v1, "bxzw_Camera"

    .line 217
    const-string v4, "data is NOT null, file on default position."

    .line 216
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v1, Lcom/ledo/fantasy/game/CameraActivity;->fileUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/ledo/fantasy/game/CameraActivity;->clipPhoto(Landroid/net/Uri;)V

    .line 248
    :cond_58
    :goto_58
    const/16 v1, 0x12c

    move/from16 v0, p1

    if-ne v0, v1, :cond_6a

    .line 250
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_cc

    .line 252
    const/16 v1, 0x12c

    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0}, Lcom/ledo/fantasy/game/CameraActivity;->onClipPhotoFinished(ILandroid/content/Intent;)V

    .line 262
    :cond_6a
    :goto_6a
    const/16 v1, 0xc8

    move/from16 v0, p1

    if-ne v0, v1, :cond_aa

    .line 264
    const-string v1, "bxzw_Camera"

    const-string v4, "CAPTURE_VIDEO"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_110

    .line 269
    :try_start_7c
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 270
    .local v2, "originalUri":Landroid/net/Uri;
    if-nez v2, :cond_9b

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 273
    .local v10, "extras":Landroid/os/Bundle;
    const-string v1, "src_uri"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 274
    .local v13, "src_uri":Ljava/lang/String;
    if-nez v13, :cond_d0

    .line 276
    const-string v1, "Image capture failed!"

    const/4 v4, 0x1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 277
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/CameraActivity;->finish()V

    .line 284
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v13    # "src_uri":Ljava/lang/String;
    :cond_9b
    :goto_9b
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v4, "file"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 286
    invoke-direct {p0, v2}, Lcom/ledo/fantasy/game/CameraActivity;->clipNewPhoto(Landroid/net/Uri;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_aa} :catch_102

    .line 316
    .end local v2    # "originalUri":Landroid/net/Uri;
    :cond_aa
    :goto_aa
    return-void

    .line 229
    :cond_ab
    const-string v1, "bxzw_Camera"

    .line 230
    const-string v4, "data IS null, file saved on target position."

    .line 229
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v1, Lcom/ledo/fantasy/game/CameraActivity;->fileUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/ledo/fantasy/game/CameraActivity;->clipPhoto(Landroid/net/Uri;)V

    goto :goto_58

    .line 235
    :cond_b8
    if-nez p2, :cond_be

    .line 238
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/CameraActivity;->finish()V

    goto :goto_58

    .line 243
    :cond_be
    const-string v1, "Image capture failed!"

    const/4 v4, 0x1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 244
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/CameraActivity;->finish()V

    goto :goto_58

    .line 257
    :cond_cc
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/CameraActivity;->finish()V

    goto :goto_6a

    .line 280
    .restart local v2    # "originalUri":Landroid/net/Uri;
    .restart local v10    # "extras":Landroid/os/Bundle;
    .restart local v13    # "src_uri":Ljava/lang/String;
    :cond_d0
    :try_start_d0
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_9b

    .line 289
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v13    # "src_uri":Ljava/lang/String;
    :cond_d5
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v3, v1

    .line 290
    .local v3, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 291
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 292
    .local v7, "column_index":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 293
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 294
    .local v12, "path":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v11, "file":Ljava/io/File;
    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    .line 296
    .local v14, "uri":Landroid/net/Uri;
    invoke-direct {p0, v14}, Lcom/ledo/fantasy/game/CameraActivity;->clipNewPhoto(Landroid/net/Uri;)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_101} :catch_102

    goto :goto_aa

    .line 297
    .end local v2    # "originalUri":Landroid/net/Uri;
    .end local v3    # "proj":[Ljava/lang/String;
    .end local v7    # "column_index":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "path":Ljava/lang/String;
    .end local v14    # "uri":Landroid/net/Uri;
    :catch_102
    move-exception v9

    .line 298
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "bxzw_Camera"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/CameraActivity;->finish()V

    goto :goto_aa

    .line 306
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_110
    if-nez p2, :cond_aa

    .line 309
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/CameraActivity;->finish()V

    goto :goto_aa
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 381
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    const-string v0, "bxzw_Camera"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v0, Lcom/ledo/fantasy/game/CameraActivity;->selectFunc:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 47
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/CameraActivity;->takePicture()V

    .line 53
    :cond_12
    :goto_12
    return-void

    .line 49
    :cond_13
    sget v0, Lcom/ledo/fantasy/game/CameraActivity;->selectFunc:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 51
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/CameraActivity;->takePhoto()V

    goto :goto_12
.end method

.method public saveBitmapToLocality()V
    .registers 4

    .prologue
    .line 371
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/aaaaaa/"

    const-string v2, "asdf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .local v0, "f":Ljava/io/File;
    return-void
.end method

.method public takePhoto()V
    .registers 5

    .prologue
    const/16 v3, 0x100

    .line 88
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v1}, Lcom/ledo/fantasy/game/CameraActivity;->CheckHasPermission(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 89
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    new-instance v2, Lcom/ledo/fantasy/game/CameraActivity$2;

    invoke-direct {v2, p0}, Lcom/ledo/fantasy/game/CameraActivity$2;-><init>(Lcom/ledo/fantasy/game/CameraActivity;)V

    invoke-virtual {v1, v2}, Lcom/ledo/fantasy/game/GameApp;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    :goto_1a
    return-void

    .line 100
    :cond_1b
    const-string v1, "bxzw_Camera"

    const-string v2, "Take Photo Button Click"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "aspectX"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v1, "aspectY"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string v1, "return-data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/ledo/fantasy/game/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1a
.end method

.method public takePicture()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 64
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v1}, Lcom/ledo/fantasy/game/CameraActivity;->CheckHasPermission(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 65
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    new-instance v2, Lcom/ledo/fantasy/game/CameraActivity$1;

    invoke-direct {v2, p0}, Lcom/ledo/fantasy/game/CameraActivity$1;-><init>(Lcom/ledo/fantasy/game/CameraActivity;)V

    invoke-virtual {v1, v2}, Lcom/ledo/fantasy/game/GameApp;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    :goto_19
    return-void

    .line 76
    :cond_1a
    const-string v1, "bxzw_Camera"

    const-string v2, "Take Picture Button Click"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ledo/fantasy/game/CameraActivity;->getOutputMediaFileUri(ILjava/lang/Boolean;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/ledo/fantasy/game/CameraActivity;->fileUri:Landroid/net/Uri;

    .line 81
    const-string v1, "output"

    sget-object v2, Lcom/ledo/fantasy/game/CameraActivity;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/ledo/fantasy/game/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_19
.end method
