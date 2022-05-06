.class public final Lmobi/androidcloud/lib/im/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static hA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

.field private static hz:Z


# instance fields
.field private fw:Ljava/lang/String;

.field private hx:Ljava/io/File;

.field private hy:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lmobi/androidcloud/lib/im/k;->hz:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/androidcloud/lib/im/k;->hy:Z

    .line 31
    iput-object p1, p0, Lmobi/androidcloud/lib/im/k;->fw:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/androidcloud/lib/im/k;->hx:Ljava/io/File;

    .line 33
    return-void
.end method

.method static synthetic a(Lmobi/androidcloud/lib/im/k;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lmobi/androidcloud/lib/im/k;->fw:Ljava/lang/String;

    return-object v0
.end method

.method public static iF()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 64
    sput-boolean v0, Lmobi/androidcloud/lib/im/k;->hz:Z

    .line 65
    sput-boolean v0, Lmobi/androidcloud/lib/im/k;->hz:Z

    .line 67
    const-wide/16 v0, 0x64

    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    .line 74
    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method static synthetic iG()Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lmobi/androidcloud/lib/im/k;->hA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    return-object v0
.end method

.method private p(Z)V
    .registers 4

    .prologue
    .line 169
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 170
    new-instance v1, Lmobi/androidcloud/lib/im/l;

    invoke-direct {v1, p0, p1}, Lmobi/androidcloud/lib/im/l;-><init>(Lmobi/androidcloud/lib/im/k;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method


# virtual methods
.method public c(Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 42
    sput-object p1, Lmobi/androidcloud/lib/im/k;->hA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    .line 44
    iget-boolean v0, p0, Lmobi/androidcloud/lib/im/k;->hy:Z

    if-ne v0, v1, :cond_8

    .line 57
    :goto_7
    return-void

    .line 50
    :cond_8
    invoke-static {}, Lmobi/androidcloud/lib/im/k;->iF()V

    .line 51
    sput-boolean v1, Lmobi/androidcloud/lib/im/k;->hz:Z

    .line 53
    iput-boolean v1, p0, Lmobi/androidcloud/lib/im/k;->hy:Z

    .line 55
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_7
.end method

.method public getDuration()I
    .registers 5

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lmobi/androidcloud/lib/im/k;->hx:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x26

    div-long/2addr v0, v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_e

    .line 88
    const-wide/16 v2, 0x14

    mul-long/2addr v0, v2

    long-to-int v0, v0

    .line 94
    :goto_d
    return v0

    :catch_e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public iw()V
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/androidcloud/lib/im/k;->hy:Z

    .line 81
    return-void
.end method

.method public run()V
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 101
    const/16 v0, 0x26

    new-array v4, v0, [B

    .line 103
    new-instance v5, Lmobi/androidcloud/lib/audio/j;

    invoke-direct {v5}, Lmobi/androidcloud/lib/audio/j;-><init>()V

    .line 111
    :try_start_b
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lmobi/androidcloud/lib/im/k;->hx:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 113
    iget-object v0, p0, Lmobi/androidcloud/lib/im/k;->hx:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x26

    div-long/2addr v8, v10

    long-to-int v2, v8

    .line 115
    invoke-virtual {v5}, Lmobi/androidcloud/lib/audio/j;->ij()V

    move v0, v3

    .line 116
    :cond_25
    :goto_25
    iget-boolean v7, p0, Lmobi/androidcloud/lib/im/k;->hy:Z

    if-eqz v7, :cond_44

    sget-boolean v7, Lmobi/androidcloud/lib/im/k;->hz:Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2b} :catch_61
    .catchall {:try_start_b .. :try_end_2b} :catchall_71

    if-eqz v7, :cond_44

    .line 121
    :try_start_2d
    invoke-virtual {v6, v4}, Ljava/io/BufferedInputStream;->read([B)I

    .line 122
    invoke-virtual {v5, v4}, Lmobi/androidcloud/lib/audio/j;->j([B)V

    .line 123
    add-int/lit8 v2, v2, -0x1

    .line 124
    if-nez v2, :cond_25

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/androidcloud/lib/im/k;->hy:Z
    :try_end_3a
    .catch Ljava/io/EOFException; {:try_start_2d .. :try_end_3a} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3a} :catch_61
    .catchall {:try_start_2d .. :try_end_3a} :catchall_71

    move v0, v1

    .line 126
    goto :goto_25

    .line 131
    :catch_3c
    move-exception v0

    move v0, v2

    const/4 v2, 0x0

    :try_start_3f
    iput-boolean v2, p0, Lmobi/androidcloud/lib/im/k;->hy:Z

    move v2, v0

    move v0, v1

    .line 133
    goto :goto_25

    :cond_44
    move v1, v3

    .line 140
    :goto_45
    const/16 v2, 0x14

    if-ge v1, v2, :cond_55

    .line 142
    sget-boolean v2, Lmobi/androidcloud/lib/im/k;->hz:Z

    if-eqz v2, :cond_52

    .line 143
    const-wide/16 v8, 0x19

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 140
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 146
    :cond_55
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 148
    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/im/k;->p(Z)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5b} :catch_61
    .catchall {:try_start_3f .. :try_end_5b} :catchall_71

    .line 156
    invoke-virtual {v5}, Lmobi/androidcloud/lib/audio/j;->ii()V

    .line 157
    iput-boolean v3, p0, Lmobi/androidcloud/lib/im/k;->hy:Z

    .line 160
    :goto_60
    return-void

    .line 153
    :catch_61
    move-exception v0

    :try_start_62
    sget-object v0, Lmobi/androidcloud/lib/im/k;->hA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    iget-object v1, p0, Lmobi/androidcloud/lib/im/k;->fw:Ljava/lang/String;

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->RECORDING_PLAYBACK_FAILURE:Lcom/talkray/arcvoice/ArcError;

    invoke-interface {v0, v1, v2}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;->onAudioPlaybackFailed(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_71

    .line 156
    invoke-virtual {v5}, Lmobi/androidcloud/lib/audio/j;->ii()V

    .line 157
    iput-boolean v3, p0, Lmobi/androidcloud/lib/im/k;->hy:Z

    goto :goto_60

    .line 156
    :catchall_71
    move-exception v0

    invoke-virtual {v5}, Lmobi/androidcloud/lib/audio/j;->ii()V

    .line 157
    iput-boolean v3, p0, Lmobi/androidcloud/lib/im/k;->hy:Z

    .line 160
    throw v0
.end method
