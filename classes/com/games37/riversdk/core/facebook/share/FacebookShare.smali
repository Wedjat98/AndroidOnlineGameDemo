.class public Lcom/games37/riversdk/core/facebook/share/FacebookShare;
.super Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil;
.source "FacebookShare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FacebookShare"

.field private static volatile instance:Lcom/games37/riversdk/core/facebook/share/FacebookShare;


# instance fields
.field private mFBSocialAppHost:Ljava/lang/String;

.field private mImagePath:Ljava/lang/String;

.field private mSecretKey:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/core/facebook/share/FacebookShare;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/games37/riversdk/core/facebook/share/FacebookShare;Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
    .registers 5
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/share/FacebookShare;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->requestServerUploadFile(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/games37/riversdk/core/facebook/share/FacebookShare;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/share/FacebookShare;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/games37/riversdk/core/facebook/share/FacebookShare;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
    .registers 8
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/share/FacebookShare;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Landroid/os/Bundle;
    .param p7, "x7"    # Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p7}, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->requestFBShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/games37/riversdk/core/facebook/share/FacebookShare;Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
    .registers 5
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/share/FacebookShare;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->requestServerShared(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V

    return-void
.end method

.method public static getInstance()Lcom/games37/riversdk/core/facebook/share/FacebookShare;
    .registers 2

    .prologue
    .line 63
    sget-object v0, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->instance:Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    if-nez v0, :cond_13

    .line 64
    const-class v1, Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    monitor-enter v1

    .line 65
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->instance:Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    if-nez v0, :cond_12

    .line 66
    new-instance v0, Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    invoke-direct {v0}, Lcom/games37/riversdk/core/facebook/share/FacebookShare;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->instance:Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    .line 68
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 71
    :cond_13
    sget-object v0, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->instance:Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    return-object v0

    .line 68
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private getServerTimestamp(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "callback"    # Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->mFBSocialAppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "common/time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->mSecretKey:Ljava/lang/String;

    new-instance v5, Lcom/games37/riversdk/core/facebook/share/FacebookShare$1;

    invoke-direct {v5, p0, p2, p1, p3}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$1;-><init>(Lcom/games37/riversdk/core/facebook/share/FacebookShare;Landroid/os/Bundle;Landroid/app/Activity;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->requestServerTimestamp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 202
    return-void
.end method

.method private requestFBShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
    .registers 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "contentUrl"    # Ljava/lang/String;
    .param p6, "params"    # Landroid/os/Bundle;
    .param p7, "callback"    # Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    .prologue
    .line 285
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->getInstance()Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    move-result-object v0

    new-instance v6, Lcom/games37/riversdk/core/facebook/share/FacebookShare$3;

    invoke-direct {v6, p0, p1, p6, p7}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$3;-><init>(Lcom/games37/riversdk/core/facebook/share/FacebookShare;Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->facebookShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    .line 312
    return-void
.end method

.method private requestServerShared(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
    .registers 19
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "postId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "callback"    # Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    .prologue
    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->mFBSocialAppHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ingame/get_share_reward"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, "url":Ljava/lang/String;
    new-instance v5, Lcom/games37/riversdk/core/model/RequestEntity;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 331
    .local v5, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long v8, v2, v6

    .line 333
    .local v8, "currentTimeMillis":J
    const-string v2, "difference"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 335
    .local v10, "diff":J
    add-long v2, v8, v10

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    .line 337
    .local v13, "timestamp":Ljava/lang/String;
    const-string v2, "timestamp"

    invoke-virtual {v5, v2, v13}, Lcom/games37/riversdk/core/model/RequestEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->mSecretKey:Ljava/lang/String;

    invoke-virtual {p0, v5, v2}, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->getSignature(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 341
    .local v12, "sign":Ljava/lang/String;
    const-string v2, "sign"

    invoke-virtual {v5, v2, v12}, Lcom/games37/riversdk/core/model/RequestEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-static/range {p2 .. p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 345
    const-string v2, "postId"

    move-object/from16 v0, p2

    invoke-virtual {v5, v2, v0}, Lcom/games37/riversdk/core/model/RequestEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_4f
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v2

    const/4 v6, 0x1

    new-instance v7, Lcom/games37/riversdk/core/facebook/share/FacebookShare$4;

    move-object/from16 v0, p4

    invoke-direct {v7, p0, v0}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$4;-><init>(Lcom/games37/riversdk/core/facebook/share/FacebookShare;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V

    move-object v3, p1

    .line 349
    invoke-virtual/range {v2 .. v7}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 372
    return-void
.end method

.method private requestServerUploadFile(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
    .registers 23
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "imagePath"    # Ljava/lang/String;
    .param p3, "requestBundle"    # Landroid/os/Bundle;
    .param p4, "callback"    # Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    .prologue
    .line 217
    new-instance v9, Lcom/games37/riversdk/core/model/RequestEntity;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 218
    .local v9, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->mFBSocialAppHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ingame/get_share_content"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, "url":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long v12, v4, v10

    .line 223
    .local v12, "currentTimeMillis":J
    const-string v4, "difference"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 226
    .local v14, "diff":J
    add-long v4, v12, v14

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    .line 227
    .local v17, "timestamp":Ljava/lang/String;
    const-string v4, "timestamp"

    move-object/from16 v0, v17

    invoke-virtual {v9, v4, v0}, Lcom/games37/riversdk/core/model/RequestEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->mSecretKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v4}, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->getSignature(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 231
    .local v16, "sign":Ljava/lang/String;
    const-string v4, "sign"

    move-object/from16 v0, v16

    invoke-virtual {v9, v4, v0}, Lcom/games37/riversdk/core/model/RequestEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static/range {p2 .. p2}, Lcom/games37/riversdk/common/utils/BitmapUtil;->imageCompress(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v4

    const-string v7, "pic"

    const/4 v10, 0x1

    new-instance v11, Lcom/games37/riversdk/core/facebook/share/FacebookShare$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$2;-><init>(Lcom/games37/riversdk/core/facebook/share/FacebookShare;Landroid/os/Bundle;Landroid/app/Activity;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    .line 237
    invoke-virtual/range {v4 .. v11}, Lcom/games37/riversdk/core/net/DoRequestUtil;->uploadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 264
    return-void
.end method


# virtual methods
.method public facebookShareWithImage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
    .registers 26
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "achievementId"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "roleId"    # Ljava/lang/String;
    .param p5, "roleName"    # Ljava/lang/String;
    .param p6, "imagePath"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    .prologue
    .line 106
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p6

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_42

    .line 109
    const-string v14, "FacebookShare"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "facebookShareWithImage "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p6

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is not exists!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v14, 0x0

    const-string v15, "r1_sdk_file_not_exists"

    .line 111
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    .line 110
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p7

    invoke-interface {v0, v14, v15}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;->onFinished(ILjava/lang/String;)V

    .line 162
    :cond_41
    :goto_41
    return-void

    .line 115
    :cond_42
    const/4 v10, 0x0

    .line 117
    .local v10, "inputStream":Ljava/io/FileInputStream;
    const/4 v9, 0x1

    .line 119
    .local v9, "hasPermission":Z
    :try_start_44
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_49} :catch_ca
    .catchall {:try_start_44 .. :try_end_49} :catchall_e0

    .line 125
    .end local v10    # "inputStream":Ljava/io/FileInputStream;
    .local v11, "inputStream":Ljava/io/FileInputStream;
    if-eqz v11, :cond_e9

    .line 127
    :try_start_4b
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_c7

    move-object v10, v11

    .line 134
    .end local v11    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStream":Ljava/io/FileInputStream;
    :cond_4f
    :goto_4f
    if-eqz v9, :cond_41

    .line 139
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v14

    invoke-virtual {v14}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v14

    const-string v15, "FACEBOOK_APP_ID"

    .line 140
    invoke-virtual {v14, v15}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, "fbAppId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v14

    invoke-virtual {v14}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v14

    const-string v15, "PRODUCTID"

    .line 143
    invoke-virtual {v14, v15}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v14

    invoke-virtual {v14}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v12

    .line 147
    .local v12, "loginAccount":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    .line 149
    .local v13, "timestamp":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v14, "achievementId"

    move-object/from16 v0, p2

    invoke-virtual {v4, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v14, "serverId"

    move-object/from16 v0, p3

    invoke-virtual {v4, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v14, "roleId"

    move-object/from16 v0, p4

    invoke-virtual {v4, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v14, "roleName"

    move-object/from16 v0, p5

    invoke-virtual {v4, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v14, "appId"

    invoke-virtual {v4, v14, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v14, "gameId"

    invoke-virtual {v4, v14, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v14, "timestamp"

    invoke-virtual {v4, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v14, "loginAccount"

    invoke-virtual {v4, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->mImagePath:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v4, v2}, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->getServerTimestamp(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V

    goto/16 :goto_41

    .line 128
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v6    # "fbAppId":Ljava/lang/String;
    .end local v8    # "gameId":Ljava/lang/String;
    .end local v10    # "inputStream":Ljava/io/FileInputStream;
    .end local v12    # "loginAccount":Ljava/lang/String;
    .end local v13    # "timestamp":Ljava/lang/String;
    .restart local v11    # "inputStream":Ljava/io/FileInputStream;
    :catch_c7
    move-exception v14

    move-object v10, v11

    .line 129
    .end local v11    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_4f

    .line 120
    :catch_ca
    move-exception v5

    .line 122
    .local v5, "e":Ljava/io/FileNotFoundException;
    const/4 v9, 0x0

    .line 123
    const/4 v14, 0x0

    :try_start_cd
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p7

    invoke-interface {v0, v14, v15}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;->onFinished(ILjava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_cd .. :try_end_d6} :catchall_e0

    .line 125
    if-eqz v10, :cond_4f

    .line 127
    :try_start_d8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_db} :catch_dd

    goto/16 :goto_4f

    .line 128
    :catch_dd
    move-exception v14

    goto/16 :goto_4f

    .line 125
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catchall_e0
    move-exception v14

    if-eqz v10, :cond_e6

    .line 127
    :try_start_e3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_e7

    .line 129
    :cond_e6
    :goto_e6
    throw v14

    .line 128
    :catch_e7
    move-exception v15

    goto :goto_e6

    .end local v10    # "inputStream":Ljava/io/FileInputStream;
    .restart local v11    # "inputStream":Ljava/io/FileInputStream;
    :cond_e9
    move-object v10, v11

    .end local v11    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStream":Ljava/io/FileInputStream;
    goto/16 :goto_4f
.end method

.method public init(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "paramsBundle"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const-string v0, "FBSOCIAL_APP_HOST"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->mFBSocialAppHost:Ljava/lang/String;

    .line 81
    const-string v0, "SECRETKEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->mSecretKey:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->mFBSocialAppHost:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->mSecretKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 83
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_28
    return-void
.end method
