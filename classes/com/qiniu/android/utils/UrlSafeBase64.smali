.class public final Lcom/qiniu/android/utils/UrlSafeBase64;
.super Ljava/lang/Object;
.source "UrlSafeBase64.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 47
    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 22
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString([B)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 27
    :goto_a
    return-object v1

    .line 23
    :catch_b
    move-exception v0

    .line 25
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 27
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static encodeToString([B)Ljava/lang/String;
    .registers 2
    .param p0, "data"    # [B

    .prologue
    .line 37
    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
