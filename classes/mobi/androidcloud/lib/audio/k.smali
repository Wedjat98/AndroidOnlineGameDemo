.class public final Lmobi/androidcloud/lib/audio/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile gZ:Lmobi/androidcloud/lib/audio/k;


# instance fields
.field private gY:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lmobi/androidcloud/lib/audio/k;->gZ:Lmobi/androidcloud/lib/audio/k;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private ae(I)V
    .registers 5

    .prologue
    const/4 v2, 0x3

    .line 110
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/k;->gY:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 123
    :goto_5
    return-void

    .line 117
    :cond_6
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/k;->gY:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 119
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 121
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    goto :goto_5
.end method

.method public static io()Lmobi/androidcloud/lib/audio/k;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lmobi/androidcloud/lib/audio/k;->gZ:Lmobi/androidcloud/lib/audio/k;

    if-nez v0, :cond_b

    .line 59
    new-instance v0, Lmobi/androidcloud/lib/audio/k;

    invoke-direct {v0}, Lmobi/androidcloud/lib/audio/k;-><init>()V

    sput-object v0, Lmobi/androidcloud/lib/audio/k;->gZ:Lmobi/androidcloud/lib/audio/k;

    .line 61
    :cond_b
    sget-object v0, Lmobi/androidcloud/lib/audio/k;->gZ:Lmobi/androidcloud/lib/audio/k;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 67
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/k;->gY:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 107
    :goto_4
    return-void

    .line 70
    :cond_5
    iput-object p1, p0, Lmobi/androidcloud/lib/audio/k;->gY:Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_4
.end method

.method public declared-synchronized ip()V
    .registers 1

    .prologue
    .line 135
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public iq()V
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/audio/k;->ae(I)V

    .line 162
    return-void
.end method

.method public ir()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 174
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/k;->gY:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 187
    :goto_5
    return-void

    .line 181
    :cond_6
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/k;->gY:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 183
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 185
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    goto :goto_5
.end method

.method public is()V
    .registers 2

    .prologue
    .line 199
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/audio/k;->ae(I)V

    .line 200
    return-void
.end method

.method public it()V
    .registers 2

    .prologue
    .line 203
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/audio/k;->ae(I)V

    .line 204
    return-void
.end method

.method public iu()V
    .registers 2

    .prologue
    .line 207
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/audio/k;->ae(I)V

    .line 208
    return-void
.end method

.method public iv()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method
