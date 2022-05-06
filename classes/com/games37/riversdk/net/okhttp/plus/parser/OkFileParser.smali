.class public Lcom/games37/riversdk/net/okhttp/plus/parser/OkFileParser;
.super Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;
.source "OkFileParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private mDestFileDir:Ljava/lang/String;

.field private mDestFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "destFileDir"    # Ljava/lang/String;
    .param p2, "destFileName"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/parser/OkFileParser;->mDestFileDir:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/games37/riversdk/net/okhttp/plus/parser/OkFileParser;->mDestFileName:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method protected parse(Lokhttp3/Response;)Ljava/io/File;
    .registers 3
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/net/okhttp/plus/parser/OkFileParser;->saveFile(Lokhttp3/Response;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parse(Lokhttp3/Response;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/net/okhttp/plus/parser/OkFileParser;->parse(Lokhttp3/Response;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public saveFile(Lokhttp3/Response;)Ljava/io/File;
    .registers 11
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v5, 0x0

    .line 31
    .local v5, "is":Ljava/io/InputStream;
    const/16 v7, 0x800

    new-array v0, v7, [B

    .line 33
    .local v0, "buf":[B
    const/4 v3, 0x0

    .line 35
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5

    .line 36
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/games37/riversdk/net/okhttp/plus/parser/OkFileParser;->mDestFileDir:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1e

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 40
    :cond_1e
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/games37/riversdk/net/okhttp/plus/parser/OkFileParser;->mDestFileName:Ljava/lang/String;

    invoke-direct {v2, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_59

    .line 42
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :goto_2a
    :try_start_2a
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_43

    .line 43
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_36

    goto :goto_2a

    .line 48
    .end local v6    # "len":I
    :catchall_36
    move-exception v7

    move-object v3, v4

    .line 49
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_38
    if-eqz v5, :cond_3d

    :try_start_3a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_55

    .line 53
    :cond_3d
    :goto_3d
    if-eqz v3, :cond_42

    :try_start_3f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_57

    .line 55
    :cond_42
    :goto_42
    throw v7

    .line 45
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    :cond_43
    :try_start_43
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_36

    .line 49
    if-eqz v5, :cond_4b

    :try_start_48
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_51

    .line 53
    :cond_4b
    :goto_4b
    if-eqz v4, :cond_50

    :try_start_4d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_53

    .line 46
    :cond_50
    :goto_50
    return-object v2

    .line 50
    :catch_51
    move-exception v7

    goto :goto_4b

    .line 54
    :catch_53
    move-exception v7

    goto :goto_50

    .line 50
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "len":I
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_55
    move-exception v8

    goto :goto_3d

    .line 54
    :catch_57
    move-exception v8

    goto :goto_42

    .line 48
    :catchall_59
    move-exception v7

    goto :goto_38
.end method
