.class final Lcom/facebook/internal/FileLruCache$StreamHeader;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamHeader"
.end annotation


# static fields
.field private static final HEADER_VERSION:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readHeader(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .registers 18
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v12

    .line 419
    .local v12, "version":I
    if-eqz v12, :cond_8

    .line 420
    const/4 v4, 0x0

    .line 468
    :goto_7
    return-object v4

    .line 423
    :cond_8
    const/4 v6, 0x0

    .line 424
    .local v6, "headerSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_a
    const/4 v13, 0x3

    if-lt v8, v13, :cond_45

    .line 435
    new-array v5, v6, [B

    .line 436
    .local v5, "headerBytes":[B
    const/4 v2, 0x0

    .line 437
    .local v2, "count":I
    :goto_10
    array-length v13, v5

    if-lt v2, v13, :cond_5f

    .line 450
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    .line 452
    .local v7, "headerString":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONTokener;

    invoke-direct {v11, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 454
    .local v11, "tokener":Lorg/json/JSONTokener;
    :try_start_1d
    invoke-virtual {v11}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v9

    .line 455
    .local v9, "parsed":Ljava/lang/Object;
    instance-of v13, v9, Lorg/json/JSONObject;

    if-nez v13, :cond_97

    .line 457
    sget-object v13, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 458
    sget-object v14, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    .line 459
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "readHeader: expected JSONObject, got "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 459
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 456
    invoke-static {v13, v14, v15}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_43} :catch_9d

    .line 461
    const/4 v4, 0x0

    goto :goto_7

    .line 425
    .end local v2    # "count":I
    .end local v5    # "headerBytes":[B
    .end local v7    # "headerString":Ljava/lang/String;
    .end local v9    # "parsed":Ljava/lang/Object;
    .end local v11    # "tokener":Lorg/json/JSONTokener;
    :cond_45
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 426
    .local v1, "b":I
    const/4 v13, -0x1

    if-ne v1, v13, :cond_57

    .line 427
    sget-object v13, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v14, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    .line 428
    const-string v15, "readHeader: stream.read returned -1 while reading header size"

    .line 427
    invoke-static {v13, v14, v15}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/4 v4, 0x0

    goto :goto_7

    .line 431
    :cond_57
    shl-int/lit8 v6, v6, 0x8

    .line 432
    and-int/lit16 v13, v1, 0xff

    add-int/2addr v6, v13

    .line 424
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 438
    .end local v1    # "b":I
    .restart local v2    # "count":I
    .restart local v5    # "headerBytes":[B
    :cond_5f
    array-length v13, v5

    sub-int/2addr v13, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    .line 439
    .local v10, "readCount":I
    const/4 v13, 0x1

    if-ge v10, v13, :cond_94

    .line 441
    sget-object v13, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 442
    sget-object v14, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    .line 443
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "readHeader: stream.read stopped at "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 444
    const-string v16, " when expected "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v5

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 443
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 440
    invoke-static {v13, v14, v15}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 447
    :cond_94
    add-int/2addr v2, v10

    goto/16 :goto_10

    .line 463
    .end local v10    # "readCount":I
    .restart local v7    # "headerString":Ljava/lang/String;
    .restart local v9    # "parsed":Ljava/lang/Object;
    .restart local v11    # "tokener":Lorg/json/JSONTokener;
    :cond_97
    :try_start_97
    move-object v0, v9

    check-cast v0, Lorg/json/JSONObject;

    move-object v4, v0
    :try_end_9b
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_9b} :catch_9d

    .local v4, "header":Lorg/json/JSONObject;
    goto/16 :goto_7

    .line 464
    .end local v4    # "header":Lorg/json/JSONObject;
    .end local v9    # "parsed":Ljava/lang/Object;
    :catch_9d
    move-exception v3

    .line 465
    .local v3, "e":Lorg/json/JSONException;
    new-instance v13, Ljava/io/IOException;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method static writeHeader(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    .registers 5
    .param p0, "stream"    # Ljava/io/OutputStream;
    .param p1, "header"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "headerString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 409
    .local v0, "headerBytes":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 410
    array-length v2, v0

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 411
    array-length v2, v0

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 412
    array-length v2, v0

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 414
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 415
    return-void
.end method
