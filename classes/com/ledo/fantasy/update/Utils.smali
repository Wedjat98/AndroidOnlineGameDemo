.class public Lcom/ledo/fantasy/update/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static currentActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/ledo/fantasy/update/Utils;->currentActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadConfig(Ljava/lang/String;)Ljava/util/Properties;
    .registers 7
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 17
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 20
    .local v2, "properties":Ljava/util/Properties;
    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .local v1, "filedes":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_13

    move-object v2, v4

    .line 33
    .end local v1    # "filedes":Ljava/io/File;
    .end local v2    # "properties":Ljava/util/Properties;
    :goto_12
    return-object v2

    .line 24
    .restart local v1    # "filedes":Ljava/io/File;
    .restart local v2    # "properties":Ljava/util/Properties;
    :cond_13
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 25
    .local v3, "s":Ljava/io/FileInputStream;
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1c

    goto :goto_12

    .line 27
    .end local v1    # "filedes":Ljava/io/File;
    .end local v3    # "s":Ljava/io/FileInputStream;
    :catch_1c
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v4

    .line 30
    goto :goto_12
.end method

.method public static saveConfig(Ljava/lang/String;Ljava/util/Properties;)Z
    .registers 6
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 41
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, "fil":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_e

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 45
    :cond_e
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 46
    .local v2, "s":Ljava/io/FileOutputStream;
    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    .line 55
    const/4 v3, 0x1

    .end local v1    # "fil":Ljava/io/File;
    .end local v2    # "s":Ljava/io/FileOutputStream;
    :goto_1c
    return v3

    .line 49
    :catch_1d
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    const/4 v3, 0x0

    goto :goto_1c
.end method
