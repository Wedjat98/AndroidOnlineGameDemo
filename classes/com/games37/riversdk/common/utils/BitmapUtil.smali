.class public Lcom/games37/riversdk/common/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BitmapUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressBitmap(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 10
    .param p0, "oldpath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string v5, "BitmapUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compressBitmap oldPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {p0}, Lcom/games37/riversdk/common/utils/BitmapUtil;->readPictureDegree(Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, "degree":I
    const-string v5, "BitmapUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compressBitmap degree = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {p0}, Lcom/games37/riversdk/common/utils/BitmapUtil;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 177
    .local v4, "originBitmap":Landroid/graphics/Bitmap;
    invoke-static {v4, p0}, Lcom/games37/riversdk/common/utils/BitmapUtil;->saveBitmapToSD(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 179
    .local v2, "newFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/games37/riversdk/common/utils/BitmapUtil;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 181
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    invoke-static {v1, v0}, Lcom/games37/riversdk/common/utils/BitmapUtil;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 182
    .local v3, "normalBitmap":Landroid/graphics/Bitmap;
    invoke-static {v3, p1}, Lcom/games37/riversdk/common/utils/BitmapUtil;->saveBitmapToSD(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    return-object v5
.end method

.method public static compressImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "srcPath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 78
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 80
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p0, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 81
    const/16 v4, 0x64

    .line 83
    .local v4, "options":I
    :goto_f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    div-int/lit16 v6, v6, 0x400

    const/16 v7, 0x400

    if-le v6, v7, :cond_25

    .line 84
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 86
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v6, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 88
    add-int/lit8 v4, v4, -0xa

    goto :goto_f

    .line 91
    :cond_25
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 93
    .local v3, "isBm":Ljava/io/ByteArrayInputStream;
    invoke-static {v3, v8, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 95
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_32
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 96
    .local v5, "out":Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5a

    invoke-virtual {v1, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3e} :catch_5b

    .line 100
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :goto_3e
    const-string v6, "BitmapUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bitmap size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/games37/riversdk/common/utils/BitmapUtil;->getBitmapsize(Landroid/graphics/Bitmap;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-object v1

    .line 97
    :catch_5b
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e
.end method

.method public static compressImage(Ljava/lang/String;)Z
    .registers 13
    .param p0, "srcPath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 112
    const-string v9, "BitmapUtil"

    const-string v10, "compressImage"

    invoke-static {v9, v10}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 114
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 115
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 116
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 118
    .local v3, "image":Landroid/graphics/Bitmap;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v3, v9, v10, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 119
    const/16 v7, 0x64

    .line 121
    .local v7, "quality":I
    :goto_22
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    array-length v9, v9

    div-int/lit16 v9, v9, 0x400

    const/16 v10, 0x3e8

    if-le v9, v10, :cond_38

    .line 123
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 125
    add-int/lit8 v7, v7, -0xa

    .line 127
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v9, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_22

    .line 131
    :cond_38
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 133
    .local v4, "isBm":Ljava/io/ByteArrayInputStream;
    invoke-static {v4, v11, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 135
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_45
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 136
    .local v6, "out":Ljava/io/FileOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x5a

    invoke-virtual {v1, v9, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_51} :catch_53

    .line 141
    const/4 v8, 0x1

    .end local v6    # "out":Ljava/io/FileOutputStream;
    :goto_52
    return v8

    .line 137
    :catch_53
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_52
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xc8

    const/high16 v7, 0x43480000    # 200.0f

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 260
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 261
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 263
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 265
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 267
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 268
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 269
    const/16 v0, 0xc8

    .line 270
    .local v0, "REQUIRED_SIZE":I
    const/4 v4, 0x1

    .line 271
    .local v4, "scale":I
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v6, v9, :cond_21

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v6, v9, :cond_34

    .line 272
    :cond_21
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 274
    .local v2, "heightRatio":I
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 276
    .local v5, "widthRatio":I
    if-ge v2, v5, :cond_43

    move v4, v2

    .line 278
    .end local v2    # "heightRatio":I
    .end local v5    # "widthRatio":I
    :cond_34
    :goto_34
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 279
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 280
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 281
    .local v1, "bm":Landroid/graphics/Bitmap;
    return-object v1

    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "heightRatio":I
    .restart local v5    # "widthRatio":I
    :cond_43
    move v4, v5

    .line 276
    goto :goto_34
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 323
    const-string v2, "BitmapUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmap filePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {p0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 332
    :goto_1f
    return-object v0

    .line 328
    :cond_20
    :try_start_20
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_25

    move-result-object v0

    .line 329
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1f

    .line 330
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_25
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BitmapUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmap error e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public static getBitmapsize(Landroid/graphics/Bitmap;)J
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 151
    if-nez p0, :cond_5

    .line 152
    const-wide/16 v0, 0x0

    .line 158
    :goto_4
    return-wide v0

    .line 154
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_11

    .line 155
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    int-to-long v0, v0

    goto :goto_4

    .line 158
    :cond_11
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_4
.end method

.method public static imageCompress(Ljava/lang/String;)V
    .registers 9
    .param p0, "srcPath"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 38
    .local v4, "newOpts":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 40
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 42
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 43
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 44
    .local v5, "w":I
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 47
    .local v2, "h":I
    const/high16 v3, 0x44a00000    # 1280.0f

    .line 49
    .local v3, "hh":F
    const/high16 v6, 0x44340000    # 720.0f

    .line 51
    .local v6, "ww":F
    const/4 v0, 0x1

    .line 52
    .local v0, "be":I
    if-le v5, v2, :cond_31

    int-to-float v7, v5

    cmpl-float v7, v7, v6

    if-lez v7, :cond_31

    .line 54
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    float-to-int v0, v7

    .line 59
    :cond_24
    :goto_24
    if-gtz v0, :cond_27

    .line 60
    const/4 v0, 0x1

    .line 63
    :cond_27
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 65
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 67
    invoke-static {v1, p0}, Lcom/games37/riversdk/common/utils/BitmapUtil;->compressImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 68
    return-void

    .line 55
    :cond_31
    if-ge v5, v2, :cond_24

    int-to-float v7, v2

    cmpl-float v7, v7, v3

    if-lez v7, :cond_24

    .line 57
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v7, v7

    div-float/2addr v7, v3

    float-to-int v0, v7

    goto :goto_24
.end method

.method private static ratingImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {p0}, Lcom/games37/riversdk/common/utils/BitmapUtil;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/games37/riversdk/common/utils/BitmapUtil;->readPictureDegree(Ljava/lang/String;)I

    move-result v1

    .line 194
    .local v1, "degree":I
    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/BitmapUtil;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static readPictureDegree(Ljava/lang/String;)I
    .registers 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "degree":I
    :try_start_1
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 229
    .local v2, "exifInterface":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    const/4 v5, 0x1

    .line 230
    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_1b

    move-result v3

    .line 231
    .local v3, "orientation":I
    packed-switch v3, :pswitch_data_3a

    .line 242
    :pswitch_10
    const/4 v0, 0x0

    .line 248
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :goto_11
    return v0

    .line 233
    .restart local v2    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v3    # "orientation":I
    :pswitch_12
    const/16 v0, 0x5a

    .line 234
    goto :goto_11

    .line 236
    :pswitch_15
    const/16 v0, 0xb4

    .line 237
    goto :goto_11

    .line 239
    :pswitch_18
    const/16 v0, 0x10e

    .line 240
    goto :goto_11

    .line 245
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :catch_1b
    move-exception v1

    .line 246
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "BitmapUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readPictureDegree error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 231
    nop

    :pswitch_data_3a
    .packed-switch 0x3
        :pswitch_15
        :pswitch_10
        :pswitch_10
        :pswitch_12
        :pswitch_10
        :pswitch_18
    .end packed-switch
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "size"    # F

    .prologue
    const/4 v1, 0x0

    .line 344
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 346
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 347
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 348
    .local v7, "resizeBmp":Landroid/graphics/Bitmap;
    return-object v7
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/4 v1, 0x0

    .line 205
    if-eqz p1, :cond_5

    if-nez p0, :cond_7

    :cond_5
    move-object v7, p0

    .line 216
    :cond_6
    :goto_6
    return-object v7

    .line 208
    :cond_7
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 209
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 210
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 212
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 213
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public static saveBitmapToSD(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 292
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 294
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 296
    :cond_f
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 298
    .local v2, "fos":Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 300
    if-eqz p0, :cond_27

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_27

    .line 301
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 302
    const/4 p0, 0x0

    .line 304
    :cond_27
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 305
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2d} :catch_34

    .line 312
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_2d
    return-object v1

    .line 307
    :catch_2e
    move-exception v0

    .line 308
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v1, v3

    .line 309
    goto :goto_2d

    .line 310
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_34
    move-exception v0

    .line 311
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v3

    .line 312
    goto :goto_2d
.end method
