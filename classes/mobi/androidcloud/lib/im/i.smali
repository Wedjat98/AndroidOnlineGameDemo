.class public final Lmobi/androidcloud/lib/im/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 22
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public static af(I)Z
    .registers 2

    .prologue
    .line 125
    const/16 v0, 0xa

    if-eq p0, v0, :cond_8

    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static ag(I)Z
    .registers 2

    .prologue
    .line 133
    const/16 v0, 0x14

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static ah(I)Z
    .registers 2

    .prologue
    .line 141
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static ai(I)Z
    .registers 2

    .prologue
    .line 149
    invoke-static {p0}, Lmobi/androidcloud/lib/im/i;->ag(I)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lmobi/androidcloud/lib/im/i;->ah(I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static aj(I)Z
    .registers 2

    .prologue
    .line 157
    const/16 v0, 0x28

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static c(Lmobi/androidcloud/lib/net/k;)Z
    .registers 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/k;->jr()I

    move-result v0

    invoke-static {v0}, Lmobi/androidcloud/lib/im/i;->af(I)Z

    move-result v0

    return v0
.end method

.method public static d(Lmobi/androidcloud/lib/net/k;)Z
    .registers 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/k;->jr()I

    move-result v0

    invoke-static {v0}, Lmobi/androidcloud/lib/im/i;->ai(I)Z

    move-result v0

    return v0
.end method

.method public static e(Lmobi/androidcloud/lib/net/k;)Z
    .registers 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/k;->jr()I

    move-result v0

    invoke-static {v0}, Lmobi/androidcloud/lib/im/i;->aj(I)Z

    move-result v0

    return v0
.end method
