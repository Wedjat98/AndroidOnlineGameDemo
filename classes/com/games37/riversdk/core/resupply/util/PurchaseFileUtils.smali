.class public Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils;
.super Ljava/lang/Object;
.source "PurchaseFileUtils.java"


# static fields
.field public static final FILE_PATH:Ljava/lang/String; = "resupply_purchase"

.field public static final TAG:Ljava/lang/String; = "PurchaseFileUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils;->getDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "filePath":Ljava/lang/String;
    const-string v1, "PurchaseFileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile filePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public static getAllPurchaseInfo(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    const-string v5, "PurchaseFileUtils"

    const-string v6, "getAllPurchaseInfo"

    invoke-static {v5, v6}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v4, "purchaseInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;>;"
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils;->getDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 167
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_39

    .line 168
    array-length v6, v2

    const/4 v5, 0x0

    :goto_29
    if-ge v5, v6, :cond_39

    aget-object v1, v2, v5

    .line 170
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils;->getPurchaseInfo(Ljava/io/File;)Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    move-result-object v3

    .line 171
    .local v3, "purchaseInfo":Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;
    if-eqz v3, :cond_36

    .line 173
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 178
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "purchaseInfo":Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;
    :cond_39
    return-object v4
.end method

.method private static getDirPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resupply_purchase"

    invoke-static {p0, v1}, Lcom/games37/riversdk/common/utils/FileUtil;->getCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPurchaseInfo(Ljava/io/File;)Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;
    .registers 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 127
    const-string v6, "PurchaseFileUtils"

    const-string v7, "getPurchaseInfo"

    invoke-static {v6, v7}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {p0}, Lcom/games37/riversdk/common/utils/FileUtil;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "data":Ljava/lang/String;
    const-string v6, "PurchaseFileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPurchaseInfo data="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    move-object v4, v5

    .line 149
    :goto_2b
    return-object v4

    .line 135
    :cond_2c
    :try_start_2c
    invoke-static {v0}, Lcom/games37/riversdk/common/encrypt/AESUtils;->aesDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "decryptData":Ljava/lang/String;
    const-string v6, "PurchaseFileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPurchaseInfo decryptData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v6, Lcom/google/gson/GsonBuilder;

    invoke-direct {v6}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 139
    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    move-result-object v6

    .line 140
    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 141
    .local v3, "gson":Lcom/google/gson/Gson;
    const-class v6, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    invoke-virtual {v3, v1, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 142
    .local v4, "object":Ljava/lang/Object;
    if-nez v4, :cond_5f

    move-object v4, v5

    .line 143
    goto :goto_2b

    .line 145
    :cond_5f
    check-cast v4, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_61} :catch_62

    goto :goto_2b

    .line 147
    .end local v1    # "decryptData":Ljava/lang/String;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "object":Ljava/lang/Object;
    :catch_62
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "PurchaseFileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPurchaseInfo error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 149
    goto :goto_2b
.end method

.method public static getPurchaseInfo(Ljava/lang/String;)Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;
    .registers 10
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-static {p0}, Lcom/games37/riversdk/common/utils/FileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object v4, v5

    .line 116
    :goto_c
    return-object v4

    .line 103
    :cond_d
    :try_start_d
    invoke-static {v0}, Lcom/games37/riversdk/common/encrypt/AESUtils;->aesDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "decryptData":Ljava/lang/String;
    new-instance v6, Lcom/google/gson/GsonBuilder;

    invoke-direct {v6}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 106
    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    move-result-object v6

    .line 107
    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 108
    .local v3, "gson":Lcom/google/gson/Gson;
    const-class v6, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    invoke-virtual {v3, v1, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 109
    .local v4, "object":Ljava/lang/Object;
    if-eqz v4, :cond_28

    move-object v4, v5

    .line 110
    goto :goto_c

    .line 112
    :cond_28
    check-cast v4, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2a} :catch_2b

    goto :goto_c

    .line 114
    .end local v1    # "decryptData":Ljava/lang/String;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "object":Ljava/lang/Object;
    :catch_2b
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "PurchaseFileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPurchaseInfo error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 116
    goto :goto_c
.end method

.method public static saveDataInFile(Landroid/content/Context;Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "purchaseInfo"    # Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    .prologue
    .line 53
    if-eqz p1, :cond_6b

    .line 54
    const-string v2, ""

    .line 56
    .local v2, "encryptData":Ljava/lang/String;
    :try_start_4
    new-instance v5, Lcom/google/gson/GsonBuilder;

    invoke-direct {v5}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 57
    invoke-virtual {v5}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    move-result-object v5

    .line 58
    invoke-virtual {v5}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    .line 59
    .local v4, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "data":Ljava/lang/String;
    const-string v5, "PurchaseFileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveDataInFile data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v0}, Lcom/games37/riversdk/common/encrypt/AESUtils;->aesEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    const-string v5, "PurchaseFileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveDataInFile encryptData="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_49} :catch_6c

    .line 67
    .end local v0    # "data":Ljava/lang/String;
    .end local v4    # "gson":Lcom/google/gson/Gson;
    :goto_49
    invoke-static {v2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils;->getDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils;->writeDataInThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local v2    # "encryptData":Ljava/lang/String;
    .end local v3    # "filePath":Ljava/lang/String;
    :cond_6b
    return-void

    .line 64
    .restart local v2    # "encryptData":Ljava/lang/String;
    :catch_6c
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "PurchaseFileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveDataInFile error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49
.end method

.method private static writeDataInThread(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/games37/riversdk/core/resupply/util/PurchaseFileUtils$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    return-void
.end method
