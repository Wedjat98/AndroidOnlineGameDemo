.class public final Lcom/qiniu/android/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 95
    if-eqz p0, :cond_a

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 30
    if-nez p0, :cond_5

    .line 31
    const/4 v5, 0x0

    .line 51
    :goto_4
    return-object v5

    .line 34
    :cond_5
    array-length v0, p0

    .line 35
    .local v0, "arraySize":I
    const/4 v4, 0x0

    .line 36
    .local v4, "sepSize":I
    if-eqz p1, :cond_15

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 40
    :cond_15
    if-nez v0, :cond_30

    .line 41
    .local v2, "bufSize":I
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v0, :cond_41

    .line 44
    if-lez v3, :cond_24

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_24
    aget-object v5, p0, v3

    if-eqz v5, :cond_2d

    .line 48
    aget-object v5, p0, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 40
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "bufSize":I
    .end local v3    # "i":I
    :cond_30
    aget-object v5, p0, v2

    if-nez v5, :cond_3a

    const/16 v5, 0x10

    :goto_36
    add-int/2addr v5, v4

    mul-int v2, v5, v0

    goto :goto_17

    :cond_3a
    aget-object v5, p0, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_36

    .line 51
    .restart local v1    # "buf":Ljava/lang/StringBuilder;
    .restart local v2    # "bufSize":I
    .restart local v3    # "i":I
    :cond_41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method

.method public static jsonJoin([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    const/16 v5, 0x22

    .line 71
    array-length v0, p0

    .line 72
    .local v0, "arraySize":I
    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    mul-int v2, v0, v4

    .line 73
    .local v2, "bufSize":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 74
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v0, :cond_2b

    .line 75
    if-lez v3, :cond_1d

    .line 76
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    :cond_1d
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 83
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length":I
    :goto_a
    if-ge v2, v3, :cond_1e

    .line 101
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 102
    .local v1, "c":C
    const/16 v4, 0x1f

    if-le v1, v4, :cond_1b

    const/16 v4, 0x7f

    if-ge v1, v4, :cond_1b

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 106
    .end local v1    # "c":C
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static utf8Bytes(Ljava/lang/String;)[B
    .registers 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 88
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 89
    :catch_7
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
