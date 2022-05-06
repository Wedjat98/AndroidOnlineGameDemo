.class public final Lmobi/androidcloud/lib/audio/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private gq:[B

.field private gr:I

.field private gs:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lmobi/androidcloud/lib/audio/g;->gr:I

    .line 14
    const/16 v0, 0x26

    new-array v0, v0, [B

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/g;->gs:[B

    .line 19
    :try_start_c
    invoke-static {}, Lmobi/androidcloud/lib/audio/k;->io()Lmobi/androidcloud/lib/audio/k;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/androidcloud/lib/audio/k;->iv()Ljava/io/InputStream;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 22
    iput-object v1, p0, Lmobi/androidcloud/lib/audio/g;->gq:[B

    .line 23
    iget-object v1, p0, Lmobi/androidcloud/lib/audio/g;->gq:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 24
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_24} :catch_25

    .line 29
    :goto_24
    return-void

    .line 26
    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method


# virtual methods
.method public ic()[B
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 34
    iget v0, p0, Lmobi/androidcloud/lib/audio/g;->gr:I

    iget-object v1, p0, Lmobi/androidcloud/lib/audio/g;->gq:[B

    array-length v1, v1

    if-lt v0, v1, :cond_a

    .line 35
    iput v4, p0, Lmobi/androidcloud/lib/audio/g;->gr:I

    .line 36
    :cond_a
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/g;->gq:[B

    iget v1, p0, Lmobi/androidcloud/lib/audio/g;->gr:I

    iget-object v2, p0, Lmobi/androidcloud/lib/audio/g;->gs:[B

    const/16 v3, 0x26

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget v0, p0, Lmobi/androidcloud/lib/audio/g;->gr:I

    add-int/lit8 v0, v0, 0x26

    iput v0, p0, Lmobi/androidcloud/lib/audio/g;->gr:I

    .line 38
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/g;->gs:[B

    return-object v0
.end method
