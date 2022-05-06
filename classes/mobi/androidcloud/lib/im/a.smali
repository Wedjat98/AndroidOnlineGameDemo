.class public final Lmobi/androidcloud/lib/im/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static hf:I

.field private static hg:Lmobi/androidcloud/lib/im/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lmobi/androidcloud/lib/im/a;->hg:Lmobi/androidcloud/lib/im/k;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;)V
    .registers 3

    .prologue
    .line 22
    if-nez p0, :cond_a

    .line 23
    if-eqz p1, :cond_9

    .line 24
    sget-object v0, Lcom/talkray/arcvoice/ArcError;->INVALID_FILE:Lcom/talkray/arcvoice/ArcError;

    invoke-interface {p1, p0, v0}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;->onAudioPlaybackFailed(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V

    .line 54
    :cond_9
    :goto_9
    return-void

    .line 28
    :cond_a
    :try_start_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_30

    .line 36
    invoke-static {}, Lmobi/androidcloud/lib/im/a;->iw()V

    .line 40
    :try_start_12
    new-instance v0, Lmobi/androidcloud/lib/im/k;

    invoke-direct {v0, p0}, Lmobi/androidcloud/lib/im/k;-><init>(Ljava/lang/String;)V

    .line 41
    sput-object v0, Lmobi/androidcloud/lib/im/a;->hg:Lmobi/androidcloud/lib/im/k;

    invoke-virtual {v0, p1}, Lmobi/androidcloud/lib/im/k;->c(Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;)V

    .line 42
    sget-object v0, Lmobi/androidcloud/lib/im/a;->hg:Lmobi/androidcloud/lib/im/k;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/im/k;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    shl-int/lit8 v0, v0, 0x1

    sput v0, Lmobi/androidcloud/lib/im/a;->hf:I

    .line 44
    sget v0, Lmobi/androidcloud/lib/im/a;->hf:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_2d} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2d} :catch_39

    goto :goto_9

    .line 49
    :catch_2e
    move-exception v0

    goto :goto_9

    .line 30
    :catch_30
    move-exception v0

    if-eqz p1, :cond_9

    .line 31
    sget-object v0, Lcom/talkray/arcvoice/ArcError;->INVALID_FILE:Lcom/talkray/arcvoice/ArcError;

    invoke-interface {p1, p0, v0}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;->onAudioPlaybackFailed(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V

    goto :goto_9

    .line 53
    :catch_39
    move-exception v0

    goto :goto_9

    .line 51
    :catch_3b
    move-exception v0

    goto :goto_9
.end method

.method public static d(D)V
    .registers 8

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 65
    cmpg-double v0, p0, v2

    if-gez v0, :cond_c

    .line 66
    invoke-static {v2, v3}, Lmobi/androidcloud/lib/audio/j;->d(D)V

    .line 72
    :goto_b
    return-void

    .line 67
    :cond_c
    cmpl-double v0, p0, v4

    if-lez v0, :cond_14

    .line 68
    invoke-static {v4, v5}, Lmobi/androidcloud/lib/audio/j;->d(D)V

    goto :goto_b

    .line 70
    :cond_14
    invoke-static {p0, p1}, Lmobi/androidcloud/lib/audio/j;->d(D)V

    goto :goto_b
.end method

.method public static iw()V
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lmobi/androidcloud/lib/im/a;->hg:Lmobi/androidcloud/lib/im/k;

    if-eqz v0, :cond_9

    .line 59
    sget-object v0, Lmobi/androidcloud/lib/im/a;->hg:Lmobi/androidcloud/lib/im/k;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/im/k;->iw()V

    .line 60
    :cond_9
    const/4 v0, 0x0

    sput-object v0, Lmobi/androidcloud/lib/im/a;->hg:Lmobi/androidcloud/lib/im/k;

    .line 61
    return-void
.end method
