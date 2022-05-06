.class public Lcom/games37/riversdk/common/utils/EasyBlur;
.super Ljava/lang/Object;
.source "EasyBlur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;
    }
.end annotation


# static fields
.field private static final SCALE:F = 0.125f

.field private static final TAG:Ljava/lang/String; = "EasyBlur"

.field private static volatile singleton:Lcom/games37/riversdk/common/utils/EasyBlur;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mPolicy:Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

.field private mRadius:I

.field private mScale:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/games37/riversdk/common/utils/EasyBlur;->singleton:Lcom/games37/riversdk/common/utils/EasyBlur;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mRadius:I

    .line 27
    const/high16 v0, 0x3e000000    # 0.125f

    iput v0, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mScale:F

    .line 33
    sget-object v0, Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;->RS_BLUR:Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    iput-object v0, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mPolicy:Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private static fastBlur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .registers 48
    .param p0, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F
    .param p2, "radius"    # I

    .prologue
    .line 201
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v38

    .line 202
    .local v38, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v22

    .line 203
    .local v22, "height":I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v22

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 207
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    move/from16 v0, p2

    if-ge v0, v5, :cond_33

    .line 208
    const/4 v3, 0x0

    .line 403
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :goto_32
    return-object v3

    .line 211
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_33
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 212
    .local v6, "w":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 214
    .local v10, "h":I
    mul-int v5, v6, v10

    new-array v4, v5, [I

    .line 215
    .local v4, "pix":[I
    const-string v5, "pix"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 218
    add-int/lit8 v39, v6, -0x1

    .line 219
    .local v39, "wm":I
    add-int/lit8 v23, v10, -0x1

    .line 220
    .local v23, "hm":I
    mul-int v37, v6, v10

    .line 221
    .local v37, "wh":I
    add-int v5, p2, p2

    add-int/lit8 v15, v5, 0x1

    .line 223
    .local v15, "div":I
    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v26, v0

    .line 224
    .local v26, "r":[I
    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 225
    .local v18, "g":[I
    move/from16 v0, v37

    new-array v11, v0, [I

    .line 227
    .local v11, "b":[I
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v36, v0

    .line 229
    .local v36, "vmin":[I
    add-int/lit8 v5, v15, 0x1

    shr-int/lit8 v16, v5, 0x1

    .line 230
    .local v16, "divsum":I
    mul-int v16, v16, v16

    .line 231
    move/from16 v0, v16

    mul-int/lit16 v5, v0, 0x100

    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 232
    .local v17, "dv":[I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_9f
    move/from16 v0, v16

    mul-int/lit16 v5, v0, 0x100

    move/from16 v0, v24

    if-ge v0, v5, :cond_ae

    .line 233
    div-int v5, v24, v16

    aput v5, v17, v24

    .line 232
    add-int/lit8 v24, v24, 0x1

    goto :goto_9f

    .line 236
    :cond_ae
    const/16 v42, 0x0

    .local v42, "yi":I
    move/from16 v44, v42

    .line 238
    .local v44, "yw":I
    const/4 v5, 0x3

    filled-new-array {v15, v5}, [I

    move-result-object v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [[I

    .line 243
    .local v33, "stack":[[I
    add-int/lit8 v27, p2, 0x1

    .line 247
    .local v27, "r1":I
    const/16 v41, 0x0

    .local v41, "y":I
    :goto_c3
    move/from16 v0, v41

    if-ge v0, v10, :cond_1ec

    .line 248
    const/4 v14, 0x0

    .local v14, "bsum":I
    move/from16 v21, v14

    .local v21, "gsum":I
    move/from16 v31, v14

    .local v31, "rsum":I
    move v13, v14

    .local v13, "boutsum":I
    move/from16 v20, v14

    .local v20, "goutsum":I
    move/from16 v30, v14

    .local v30, "routsum":I
    move v12, v14

    .local v12, "binsum":I
    move/from16 v19, v14

    .local v19, "ginsum":I
    move/from16 v29, v14

    .line 249
    .local v29, "rinsum":I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v24, v0

    :goto_db
    move/from16 v0, v24

    move/from16 v1, p2

    if-gt v0, v1, :cond_14c

    .line 250
    const/4 v5, 0x0

    move/from16 v0, v24

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v0, v39

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v5, v5, v42

    aget v25, v4, v5

    .line 251
    .local v25, "p":I
    add-int v5, v24, p2

    aget-object v32, v33, v5

    .line 252
    .local v32, "sir":[I
    const/4 v5, 0x0

    const/high16 v7, 0xff0000

    and-int v7, v7, v25

    shr-int/lit8 v7, v7, 0x10

    aput v7, v32, v5

    .line 253
    const/4 v5, 0x1

    const v7, 0xff00

    and-int v7, v7, v25

    shr-int/lit8 v7, v7, 0x8

    aput v7, v32, v5

    .line 254
    const/4 v5, 0x2

    move/from16 v0, v25

    and-int/lit16 v7, v0, 0xff

    aput v7, v32, v5

    .line 255
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v28, v27, v5

    .line 256
    .local v28, "rbs":I
    const/4 v5, 0x0

    aget v5, v32, v5

    mul-int v5, v5, v28

    add-int v31, v31, v5

    .line 257
    const/4 v5, 0x1

    aget v5, v32, v5

    mul-int v5, v5, v28

    add-int v21, v21, v5

    .line 258
    const/4 v5, 0x2

    aget v5, v32, v5

    mul-int v5, v5, v28

    add-int/2addr v14, v5

    .line 259
    if-lez v24, :cond_13d

    .line 260
    const/4 v5, 0x0

    aget v5, v32, v5

    add-int v29, v29, v5

    .line 261
    const/4 v5, 0x1

    aget v5, v32, v5

    add-int v19, v19, v5

    .line 262
    const/4 v5, 0x2

    aget v5, v32, v5

    add-int/2addr v12, v5

    .line 249
    :goto_13a
    add-int/lit8 v24, v24, 0x1

    goto :goto_db

    .line 264
    :cond_13d
    const/4 v5, 0x0

    aget v5, v32, v5

    add-int v30, v30, v5

    .line 265
    const/4 v5, 0x1

    aget v5, v32, v5

    add-int v20, v20, v5

    .line 266
    const/4 v5, 0x2

    aget v5, v32, v5

    add-int/2addr v13, v5

    goto :goto_13a

    .line 269
    .end local v25    # "p":I
    .end local v28    # "rbs":I
    .end local v32    # "sir":[I
    :cond_14c
    move/from16 v34, p2

    .line 271
    .local v34, "stackpointer":I
    const/16 v40, 0x0

    .local v40, "x":I
    :goto_150
    move/from16 v0, v40

    if-ge v0, v6, :cond_1e6

    .line 273
    aget v5, v17, v31

    aput v5, v26, v42

    .line 274
    aget v5, v17, v21

    aput v5, v18, v42

    .line 275
    aget v5, v17, v14

    aput v5, v11, v42

    .line 277
    sub-int v31, v31, v30

    .line 278
    sub-int v21, v21, v20

    .line 279
    sub-int/2addr v14, v13

    .line 281
    sub-int v5, v34, p2

    add-int v35, v5, v15

    .line 282
    .local v35, "stackstart":I
    rem-int v5, v35, v15

    aget-object v32, v33, v5

    .line 284
    .restart local v32    # "sir":[I
    const/4 v5, 0x0

    aget v5, v32, v5

    sub-int v30, v30, v5

    .line 285
    const/4 v5, 0x1

    aget v5, v32, v5

    sub-int v20, v20, v5

    .line 286
    const/4 v5, 0x2

    aget v5, v32, v5

    sub-int/2addr v13, v5

    .line 288
    if-nez v41, :cond_189

    .line 289
    add-int v5, v40, p2

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v39

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v36, v40

    .line 291
    :cond_189
    aget v5, v36, v40

    add-int v5, v5, v44

    aget v25, v4, v5

    .line 293
    .restart local v25    # "p":I
    const/4 v5, 0x0

    const/high16 v7, 0xff0000

    and-int v7, v7, v25

    shr-int/lit8 v7, v7, 0x10

    aput v7, v32, v5

    .line 294
    const/4 v5, 0x1

    const v7, 0xff00

    and-int v7, v7, v25

    shr-int/lit8 v7, v7, 0x8

    aput v7, v32, v5

    .line 295
    const/4 v5, 0x2

    move/from16 v0, v25

    and-int/lit16 v7, v0, 0xff

    aput v7, v32, v5

    .line 297
    const/4 v5, 0x0

    aget v5, v32, v5

    add-int v29, v29, v5

    .line 298
    const/4 v5, 0x1

    aget v5, v32, v5

    add-int v19, v19, v5

    .line 299
    const/4 v5, 0x2

    aget v5, v32, v5

    add-int/2addr v12, v5

    .line 301
    add-int v31, v31, v29

    .line 302
    add-int v21, v21, v19

    .line 303
    add-int/2addr v14, v12

    .line 305
    add-int/lit8 v5, v34, 0x1

    rem-int v34, v5, v15

    .line 306
    rem-int v5, v34, v15

    aget-object v32, v33, v5

    .line 308
    const/4 v5, 0x0

    aget v5, v32, v5

    add-int v30, v30, v5

    .line 309
    const/4 v5, 0x1

    aget v5, v32, v5

    add-int v20, v20, v5

    .line 310
    const/4 v5, 0x2

    aget v5, v32, v5

    add-int/2addr v13, v5

    .line 312
    const/4 v5, 0x0

    aget v5, v32, v5

    sub-int v29, v29, v5

    .line 313
    const/4 v5, 0x1

    aget v5, v32, v5

    sub-int v19, v19, v5

    .line 314
    const/4 v5, 0x2

    aget v5, v32, v5

    sub-int/2addr v12, v5

    .line 316
    add-int/lit8 v42, v42, 0x1

    .line 271
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_150

    .line 318
    .end local v25    # "p":I
    .end local v32    # "sir":[I
    .end local v35    # "stackstart":I
    :cond_1e6
    add-int v44, v44, v6

    .line 247
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_c3

    .line 320
    .end local v12    # "binsum":I
    .end local v13    # "boutsum":I
    .end local v14    # "bsum":I
    .end local v19    # "ginsum":I
    .end local v20    # "goutsum":I
    .end local v21    # "gsum":I
    .end local v29    # "rinsum":I
    .end local v30    # "routsum":I
    .end local v31    # "rsum":I
    .end local v34    # "stackpointer":I
    .end local v40    # "x":I
    :cond_1ec
    const/16 v40, 0x0

    .restart local v40    # "x":I
    :goto_1ee
    move/from16 v0, v40

    if-ge v0, v6, :cond_306

    .line 321
    const/4 v14, 0x0

    .restart local v14    # "bsum":I
    move/from16 v21, v14

    .restart local v21    # "gsum":I
    move/from16 v31, v14

    .restart local v31    # "rsum":I
    move v13, v14

    .restart local v13    # "boutsum":I
    move/from16 v20, v14

    .restart local v20    # "goutsum":I
    move/from16 v30, v14

    .restart local v30    # "routsum":I
    move v12, v14

    .restart local v12    # "binsum":I
    move/from16 v19, v14

    .restart local v19    # "ginsum":I
    move/from16 v29, v14

    .line 322
    .restart local v29    # "rinsum":I
    move/from16 v0, p2

    neg-int v5, v0

    mul-int v43, v5, v6

    .line 323
    .local v43, "yp":I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v24, v0

    :goto_20b
    move/from16 v0, v24

    move/from16 v1, p2

    if-gt v0, v1, :cond_26e

    .line 324
    const/4 v5, 0x0

    move/from16 v0, v43

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v42, v5, v40

    .line 326
    add-int v5, v24, p2

    aget-object v32, v33, v5

    .line 328
    .restart local v32    # "sir":[I
    const/4 v5, 0x0

    aget v7, v26, v42

    aput v7, v32, v5

    .line 329
    const/4 v5, 0x1

    aget v7, v18, v42

    aput v7, v32, v5

    .line 330
    const/4 v5, 0x2

    aget v7, v11, v42

    aput v7, v32, v5

    .line 332
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v28, v27, v5

    .line 334
    .restart local v28    # "rbs":I
    aget v5, v26, v42

    mul-int v5, v5, v28

    add-int v31, v31, v5

    .line 335
    aget v5, v18, v42

    mul-int v5, v5, v28

    add-int v21, v21, v5

    .line 336
    aget v5, v11, v42

    mul-int v5, v5, v28

    add-int/2addr v14, v5

    .line 338
    if-lez v24, :cond_25f

    .line 339
    const/4 v5, 0x0

    aget v5, v32, v5

    add-int v29, v29, v5

    .line 340
    const/4 v5, 0x1

    aget v5, v32, v5

    add-int v19, v19, v5

    .line 341
    const/4 v5, 0x2

    aget v5, v32, v5

    add-int/2addr v12, v5

    .line 348
    :goto_254
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_25c

    .line 349
    add-int v43, v43, v6

    .line 323
    :cond_25c
    add-int/lit8 v24, v24, 0x1

    goto :goto_20b

    .line 343
    :cond_25f
    const/4 v5, 0x0

    aget v5, v32, v5

    add-int v30, v30, v5

    .line 344
    const/4 v5, 0x1

    aget v5, v32, v5

    add-int v20, v20, v5

    .line 345
    const/4 v5, 0x2

    aget v5, v32, v5

    add-int/2addr v13, v5

    goto :goto_254

    .line 352
    .end local v28    # "rbs":I
    .end local v32    # "sir":[I
    :cond_26e
    move/from16 v42, v40

    .line 353
    move/from16 v34, p2

    .line 354
    .restart local v34    # "stackpointer":I
    const/16 v41, 0x0

    :goto_274
    move/from16 v0, v41

    if-ge v0, v10, :cond_302

    .line 356
    const/high16 v5, -0x1000000

    aget v7, v4, v42

    and-int/2addr v5, v7

    aget v7, v17, v31

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    aget v7, v17, v21

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    aget v7, v17, v14

    or-int/2addr v5, v7

    aput v5, v4, v42

    .line 358
    sub-int v31, v31, v30

    .line 359
    sub-int v21, v21, v20

    .line 360
    sub-int/2addr v14, v13

    .line 362
    sub-int v5, v34, p2

    add-int v35, v5, v15

    .line 363
    .restart local v35    # "stackstart":I
    rem-int v5, v35, v15

    aget-object v32, v33, v5

    .line 365
    .restart local v32    # "sir":[I
    const/4 v5, 0x0

    aget v5, v32, v5

    sub-int v30, v30, v5

    .line 366
    const/4 v5, 0x1

    aget v5, v32, v5

    sub-int v20, v20, v5

    .line 367
    const/4 v5, 0x2

    aget v5, v32, v5

    sub-int/2addr v13, v5

    .line 369
    if-nez v40, :cond_2b4

    .line 370
    add-int v5, v41, v27

    move/from16 v0, v23

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/2addr v5, v6

    aput v5, v36, v41

    .line 372
    :cond_2b4
    aget v5, v36, v41

    add-int v25, v40, v5

    .line 374
    .restart local v25    # "p":I
    const/4 v5, 0x0

    aget v7, v26, v25

    aput v7, v32, v5

    .line 375
    const/4 v5, 0x1

    aget v7, v18, v25

    aput v7, v32, v5

    .line 376
    const/4 v5, 0x2

    aget v7, v11, v25

    aput v7, v32, v5

    .line 378
    const/4 v5, 0x0

    aget v5, v32, v5

    add-int v29, v29, v5

    .line 379
    const/4 v5, 0x1

    aget v5, v32, v5

    add-int v19, v19, v5

    .line 380
    const/4 v5, 0x2

    aget v5, v32, v5

    add-int/2addr v12, v5

    .line 382
    add-int v31, v31, v29

    .line 383
    add-int v21, v21, v19

    .line 384
    add-int/2addr v14, v12

    .line 386
    add-int/lit8 v5, v34, 0x1

    rem-int v34, v5, v15

    .line 387
    aget-object v32, v33, v34

    .line 389
    const/4 v5, 0x0

    aget v5, v32, v5

    add-int v30, v30, v5

    .line 390
    const/4 v5, 0x1

    aget v5, v32, v5

    add-int v20, v20, v5

    .line 391
    const/4 v5, 0x2

    aget v5, v32, v5

    add-int/2addr v13, v5

    .line 393
    const/4 v5, 0x0

    aget v5, v32, v5

    sub-int v29, v29, v5

    .line 394
    const/4 v5, 0x1

    aget v5, v32, v5

    sub-int v19, v19, v5

    .line 395
    const/4 v5, 0x2

    aget v5, v32, v5

    sub-int/2addr v12, v5

    .line 397
    add-int v42, v42, v6

    .line 354
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_274

    .line 320
    .end local v25    # "p":I
    .end local v32    # "sir":[I
    .end local v35    # "stackstart":I
    :cond_302
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_1ee

    .line 401
    .end local v12    # "binsum":I
    .end local v13    # "boutsum":I
    .end local v14    # "bsum":I
    .end local v19    # "ginsum":I
    .end local v20    # "goutsum":I
    .end local v21    # "gsum":I
    .end local v29    # "rinsum":I
    .end local v30    # "routsum":I
    .end local v31    # "rsum":I
    .end local v34    # "stackpointer":I
    .end local v43    # "yp":I
    :cond_306
    const-string v5, "pix"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_32
.end method

.method private static rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I
    .param p3, "scale"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 137
    const-string v7, "EasyBlur"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "origin size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 139
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 141
    .local v0, "height":I
    const/4 v7, 0x0

    invoke-static {p1, v6, v0, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 143
    .local v2, "inputBmp":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v4

    .line 145
    .local v4, "renderScript":Landroid/renderscript/RenderScript;
    const-string v7, "EasyBlur"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scale size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {v4, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 150
    .local v1, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 153
    .local v3, "output":Landroid/renderscript/Allocation;
    invoke-static {v4}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v5

    .line 154
    .local v5, "scriptIntrinsicBlur":Landroid/renderscript/ScriptIntrinsicBlur;
    invoke-virtual {v5, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 157
    int-to-float v7, p2

    invoke-virtual {v5, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 160
    invoke-virtual {v5, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 163
    invoke-virtual {v3, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 166
    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->destroy()V

    .line 168
    return-object v2
.end method

.method public static with(Landroid/content/Context;)Lcom/games37/riversdk/common/utils/EasyBlur;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-object v0, Lcom/games37/riversdk/common/utils/EasyBlur;->singleton:Lcom/games37/riversdk/common/utils/EasyBlur;

    if-nez v0, :cond_13

    .line 48
    const-class v1, Lcom/games37/riversdk/common/utils/EasyBlur;

    monitor-enter v1

    .line 49
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/common/utils/EasyBlur;->singleton:Lcom/games37/riversdk/common/utils/EasyBlur;

    if-nez v0, :cond_12

    .line 50
    new-instance v0, Lcom/games37/riversdk/common/utils/EasyBlur;

    invoke-direct {v0, p0}, Lcom/games37/riversdk/common/utils/EasyBlur;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/games37/riversdk/common/utils/EasyBlur;->singleton:Lcom/games37/riversdk/common/utils/EasyBlur;

    .line 52
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 54
    :cond_13
    sget-object v0, Lcom/games37/riversdk/common/utils/EasyBlur;->singleton:Lcom/games37/riversdk/common/utils/EasyBlur;

    return-object v0

    .line 52
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public bitmap(Landroid/graphics/Bitmap;)Lcom/games37/riversdk/common/utils/EasyBlur;
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mBitmap:Landroid/graphics/Bitmap;

    .line 103
    return-object p0
.end method

.method public blur()Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 62
    iget-object v0, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bitmap can not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_c
    iget v0, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mRadius:I

    if-nez v0, :cond_18

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "radius must > 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_4a

    .line 70
    iget-object v0, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mPolicy:Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    sget-object v1, Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;->FAST_BLUR:Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    if-ne v0, v1, :cond_36

    .line 71
    const-string v0, "EasyBlur"

    const-string v1, "blur fast algorithm"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mScale:F

    iget v2, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mRadius:I

    invoke-static {v0, v1, v2}, Lcom/games37/riversdk/common/utils/EasyBlur;->fastBlur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    :goto_35
    return-object v0

    .line 74
    :cond_36
    const-string v0, "EasyBlur"

    const-string v1, "blur render script  algorithm"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mRadius:I

    iget v3, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mScale:F

    invoke-static {v0, v1, v2, v3}, Lcom/games37/riversdk/common/utils/EasyBlur;->rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_35

    .line 79
    :cond_4a
    const-string v0, "EasyBlur"

    const-string v1, "blur fast algorithm"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mScale:F

    iget v2, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mRadius:I

    invoke-static {v0, v1, v2}, Lcom/games37/riversdk/common/utils/EasyBlur;->fastBlur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_35
.end method

.method public policy(Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;)Lcom/games37/riversdk/common/utils/EasyBlur;
    .registers 2
    .param p1, "policy"    # Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mPolicy:Lcom/games37/riversdk/common/utils/EasyBlur$BlurPolicy;

    .line 92
    return-object p0
.end method

.method public radius(I)Lcom/games37/riversdk/common/utils/EasyBlur;
    .registers 2
    .param p1, "radius"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mRadius:I

    .line 125
    return-object p0
.end method

.method public scale(I)Lcom/games37/riversdk/common/utils/EasyBlur;
    .registers 4
    .param p1, "scale"    # I

    .prologue
    .line 113
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/games37/riversdk/common/utils/EasyBlur;->mScale:F

    .line 114
    return-object p0
.end method
