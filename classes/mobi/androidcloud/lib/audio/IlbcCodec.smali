.class public Lmobi/androidcloud/lib/audio/IlbcCodec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile go:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lmobi/androidcloud/lib/audio/IlbcCodec;->go:Z

    .line 17
    invoke-static {}, Lmobi/androidcloud/lib/audio/IlbcCodec;->ia()V

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a([B[SI)V
    .registers 5

    .prologue
    .line 42
    const-class v1, Lmobi/androidcloud/lib/audio/IlbcCodec;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lmobi/androidcloud/lib/audio/IlbcCodec;->go:Z

    if-eqz v0, :cond_a

    .line 43
    invoke-static {p0, p1, p2}, Lmobi/androidcloud/lib/audio/IlbcCodec;->decode([B[SI)I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 44
    :cond_a
    monitor-exit v1

    return-void

    .line 42
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a([SI[BI)V
    .registers 6

    .prologue
    .line 48
    const-class v1, Lmobi/androidcloud/lib/audio/IlbcCodec;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lmobi/androidcloud/lib/audio/IlbcCodec;->go:Z

    if-eqz v0, :cond_a

    .line 49
    invoke-static {p0, p1, p2, p3}, Lmobi/androidcloud/lib/audio/IlbcCodec;->encode([SI[BI)I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 50
    :cond_a
    monitor-exit v1

    return-void

    .line 48
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native decode([B[SI)I
.end method

.method private static native encode([SI[BI)I
.end method

.method private static ia()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 23
    const/4 v0, 0x0

    :try_start_2
    sput-boolean v0, Lmobi/androidcloud/lib/audio/IlbcCodec;->go:Z

    .line 24
    const-string v0, "talkraytwo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    const/16 v0, 0x14

    invoke-static {v0}, Lmobi/androidcloud/lib/audio/IlbcCodec;->open(I)I

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lmobi/androidcloud/lib/audio/IlbcCodec;->go:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    .line 34
    :goto_11
    return-void

    .line 32
    :catch_12
    move-exception v0

    sput-boolean v1, Lmobi/androidcloud/lib/audio/IlbcCodec;->go:Z

    goto :goto_11
.end method

.method private static native open(I)I
.end method
