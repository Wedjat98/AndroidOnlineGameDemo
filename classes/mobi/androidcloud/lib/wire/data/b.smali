.class public abstract Lmobi/androidcloud/lib/wire/data/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/androidcloud/lib/wire/data/b$a;
    }
.end annotation


# instance fields
.field private gd:[B

.field private ld:[B

.field private le:I


# direct methods
.method public constructor <init>(ILmobi/androidcloud/lib/wire/data/b$a;S[BIS)V
    .registers 10

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0xfaa

    new-array v0, v0, [B

    iput-object v0, p0, Lmobi/androidcloud/lib/wire/data/b;->gd:[B

    .line 28
    if-gez p1, :cond_20

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid negative session id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_20
    add-int/lit8 v0, p6, 0xa

    iput v0, p0, Lmobi/androidcloud/lib/wire/data/b;->le:I

    .line 38
    iget v0, p0, Lmobi/androidcloud/lib/wire/data/b;->le:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmobi/androidcloud/lib/wire/data/b;->ld:[B

    .line 41
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/data/b;->ld:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lmobi/androidcloud/lib/wire/data/b;->h([BII)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 46
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/data/b;->ld:[B

    invoke-static {p2}, Lmobi/androidcloud/lib/wire/data/b$a;->a(Lmobi/androidcloud/lib/wire/data/b$a;)S

    move-result v2

    invoke-static {v1, v0, v2}, Lmobi/androidcloud/lib/wire/data/b;->a([BIS)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/data/b;->ld:[B

    invoke-static {v1, v0, p3}, Lmobi/androidcloud/lib/wire/data/b;->a([BIS)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/data/b;->ld:[B

    invoke-static {v1, v0, p6}, Lmobi/androidcloud/lib/wire/data/b;->a([BIS)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/data/b;->ld:[B

    invoke-static {p4, p5, v1, v0, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    return-void
.end method

.method static a([BIS)I
    .registers 5

    .prologue
    .line 104
    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 105
    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 106
    const/4 v0, 0x2

    return v0
.end method

.method static d([BI)S
    .registers 4

    .prologue
    .line 129
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    .line 130
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    int-to-short v1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    .line 131
    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 132
    return v0
.end method

.method public static h([BII)I
    .registers 5

    .prologue
    .line 96
    shr-int/lit8 v0, p2, 0x18

    aput-byte v0, p0, p1

    .line 97
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 98
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 99
    add-int/lit8 v0, p1, 0x3

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 100
    const/4 v0, 0x4

    return v0
.end method

.method public static o([B)S
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lmobi/androidcloud/lib/wire/data/b;->d([BI)S

    move-result v0

    return v0
.end method

.method public static p([B)Z
    .registers 2

    .prologue
    .line 209
    const/4 v0, 0x4

    aget-byte v0, p0, v0

    if-nez v0, :cond_c

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static q([B)Z
    .registers 3

    .prologue
    .line 213
    const/4 v0, 0x4

    aget-byte v0, p0, v0

    if-nez v0, :cond_e

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static r([B)Z
    .registers 3

    .prologue
    .line 217
    const/4 v0, 0x4

    aget-byte v0, p0, v0

    if-nez v0, :cond_e

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static s([B)Z
    .registers 3

    .prologue
    .line 221
    const/4 v0, 0x4

    aget-byte v0, p0, v0

    if-nez v0, :cond_e

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a(ILmobi/androidcloud/lib/wire/data/b$a;S[BIS)V
    .registers 10

    .prologue
    .line 60
    if-gez p1, :cond_17

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid negative session id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_17
    add-int/lit8 v0, p6, 0xa

    iput v0, p0, Lmobi/androidcloud/lib/wire/data/b;->le:I

    .line 65
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/data/b;->gd:[B

    iput-object v0, p0, Lmobi/androidcloud/lib/wire/data/b;->ld:[B

    .line 68
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/data/b;->ld:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lmobi/androidcloud/lib/wire/data/b;->h([BII)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 73
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/data/b;->ld:[B

    invoke-static {p2}, Lmobi/androidcloud/lib/wire/data/b$a;->a(Lmobi/androidcloud/lib/wire/data/b$a;)S

    move-result v2

    invoke-static {v1, v0, v2}, Lmobi/androidcloud/lib/wire/data/b;->a([BIS)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/data/b;->ld:[B

    invoke-static {v1, v0, p3}, Lmobi/androidcloud/lib/wire/data/b;->a([BIS)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/data/b;->ld:[B

    invoke-static {v1, v0, p6}, Lmobi/androidcloud/lib/wire/data/b;->a([BIS)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/data/b;->ld:[B

    invoke-static {p4, p5, v1, v0, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    return-void
.end method

.method public getTotalSize()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lmobi/androidcloud/lib/wire/data/b;->le:I

    return v0
.end method

.method public kr()[B
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/data/b;->ld:[B

    return-object v0
.end method
