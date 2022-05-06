.class public Lcom/iflytek/cloud/record/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/record/c$a;,
        Lcom/iflytek/cloud/record/c$b;
    }
.end annotation


# instance fields
.field a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private b:Landroid/media/AudioTrack;

.field private c:Lcom/iflytek/cloud/record/b;

.field private d:Landroid/content/Context;

.field private e:Lcom/iflytek/cloud/record/c$b;

.field private f:Lcom/iflytek/cloud/record/c$a;

.field private volatile g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private o:I

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->b:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->c:Lcom/iflytek/cloud/record/b;

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->e:Lcom/iflytek/cloud/record/c$b;

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->f:Lcom/iflytek/cloud/record/c$a;

    iput v1, p0, Lcom/iflytek/cloud/record/c;->g:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/cloud/record/c;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/record/c;->i:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/record/c;->k:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/record/c;->l:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->m:Ljava/lang/Object;

    iput-object p0, p0, Lcom/iflytek/cloud/record/c;->n:Ljava/lang/Object;

    new-instance v0, Lcom/iflytek/cloud/record/c$1;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/record/c$1;-><init>(Lcom/iflytek/cloud/record/c;)V

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput v1, p0, Lcom/iflytek/cloud/record/c;->o:I

    new-instance v0, Lcom/iflytek/cloud/record/c$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/record/c$2;-><init>(Lcom/iflytek/cloud/record/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->p:Landroid/os/Handler;

    iput-object p1, p0, Lcom/iflytek/cloud/record/c;->d:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->b:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->c:Lcom/iflytek/cloud/record/b;

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->e:Lcom/iflytek/cloud/record/c$b;

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->f:Lcom/iflytek/cloud/record/c$a;

    iput v1, p0, Lcom/iflytek/cloud/record/c;->g:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/cloud/record/c;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/record/c;->i:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/record/c;->k:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/record/c;->l:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->m:Ljava/lang/Object;

    iput-object p0, p0, Lcom/iflytek/cloud/record/c;->n:Ljava/lang/Object;

    new-instance v0, Lcom/iflytek/cloud/record/c$1;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/record/c$1;-><init>(Lcom/iflytek/cloud/record/c;)V

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput v1, p0, Lcom/iflytek/cloud/record/c;->o:I

    new-instance v0, Lcom/iflytek/cloud/record/c$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/record/c$2;-><init>(Lcom/iflytek/cloud/record/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->p:Landroid/os/Handler;

    iput-object p1, p0, Lcom/iflytek/cloud/record/c;->d:Landroid/content/Context;

    iput p2, p0, Lcom/iflytek/cloud/record/c;->h:I

    iput-boolean p3, p0, Lcom/iflytek/cloud/record/c;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/record/c;I)I
    .registers 2

    iput p1, p0, Lcom/iflytek/cloud/record/c;->g:I

    return p1
.end method

.method static synthetic a(Lcom/iflytek/cloud/record/c;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/record/c;->b:Landroid/media/AudioTrack;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/c$a;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->f:Lcom/iflytek/cloud/record/c$a;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$a;)Lcom/iflytek/cloud/record/c$a;
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/record/c;->f:Lcom/iflytek/cloud/record/c$a;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$b;)Lcom/iflytek/cloud/record/c$b;
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/record/c;->e:Lcom/iflytek/cloud/record/c$b;

    return-object p1
.end method

.method private a(II)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget v2, p0, Lcom/iflytek/cloud/record/c;->g:I

    if-ne p1, v2, :cond_b

    iput p2, p0, Lcom/iflytek/cloud/record/c;->g:I

    const/4 v0, 0x1

    :cond_b
    monitor-exit v1

    return v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method static synthetic a(Lcom/iflytek/cloud/record/c;II)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/iflytek/cloud/record/c;->a(II)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/iflytek/cloud/record/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/iflytek/cloud/record/c;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/cloud/record/c;I)I
    .registers 2

    iput p1, p0, Lcom/iflytek/cloud/record/c;->o:I

    return p1
.end method

.method static synthetic b(Lcom/iflytek/cloud/record/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/record/c;->l:Z

    return v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/record/c;)I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/record/c;->h:I

    return v0
.end method

.method static synthetic d(Lcom/iflytek/cloud/record/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/record/c;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->d:Landroid/content/Context;

    return-object v0
.end method

.method private f()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x2

    const-string v0, "PcmPlayer"

    const-string v1, "createAudio start"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->c:Lcom/iflytek/cloud/record/b;

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/b;->a()I

    move-result v2

    invoke-static {v2, v3, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/record/c;->j:I

    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/iflytek/cloud/record/c;->b()V

    :cond_1b
    const-string v0, "PcmPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAudio || mStreamType = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/iflytek/cloud/record/c;->h:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/iflytek/cloud/record/c;->h:I

    iget v4, p0, Lcom/iflytek/cloud/record/c;->j:I

    mul-int/lit8 v5, v4, 0x2

    const/4 v6, 0x1

    move v4, v3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->b:Landroid/media/AudioTrack;

    iget v0, p0, Lcom/iflytek/cloud/record/c;->j:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_4e

    iget v0, p0, Lcom/iflytek/cloud/record/c;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_54

    :cond_4e
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_54
    const-string v0, "PcmPlayer"

    const-string v1, "createAudio end"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/iflytek/cloud/record/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/record/c;->k:Z

    return v0
.end method

.method static synthetic g(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->c:Lcom/iflytek/cloud/record/b;

    return-object v0
.end method

.method private g()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->e:Lcom/iflytek/cloud/record/c$b;

    iget-object v1, p0, Lcom/iflytek/cloud/record/c;->b:Landroid/media/AudioTrack;

    if-eqz v1, :cond_10

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c$b;->a()I

    move-result v1

    iget v2, p0, Lcom/iflytek/cloud/record/c;->h:I

    if-eq v1, v2, :cond_21

    :cond_10
    const-string v1, "PcmPlayer"

    const-string v2, "prepAudioPlayer || audiotrack is null or stream type is change."

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/record/c;->f()V

    if-eqz v0, :cond_21

    iget v1, p0, Lcom/iflytek/cloud/record/c;->h:I

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/c$b;->a(I)V

    :cond_21
    return-void
.end method

.method static synthetic h(Lcom/iflytek/cloud/record/c;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->n:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i(Lcom/iflytek/cloud/record/c;)I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/record/c;->g:I

    return v0
.end method

.method static synthetic j(Lcom/iflytek/cloud/record/c;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/iflytek/cloud/record/c;->g()V

    return-void
.end method

.method static synthetic k(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->b:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic m(Lcom/iflytek/cloud/record/c;)I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/record/c;->j:I

    return v0
.end method

.method static synthetic n(Lcom/iflytek/cloud/record/c;)I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/record/c;->o:I

    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/record/c;->g:I

    return v0
.end method

.method public a(Lcom/iflytek/cloud/record/b;Lcom/iflytek/cloud/record/c$a;)Z
    .registers 7

    const-string v0, "PcmPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play mPlaytate= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/cloud/record/c;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mAudioFocus= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/cloud/record/c;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/record/c;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2a
    iget v2, p0, Lcom/iflytek/cloud/record/c;->g:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3f

    iget v2, p0, Lcom/iflytek/cloud/record/c;->g:I

    if-eqz v2, :cond_3f

    iget v2, p0, Lcom/iflytek/cloud/record/c;->g:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3f

    iget-object v2, p0, Lcom/iflytek/cloud/record/c;->e:Lcom/iflytek/cloud/record/c$b;

    if-eqz v2, :cond_3f

    const/4 v0, 0x0

    :goto_3d
    monitor-exit v1

    return v0

    :cond_3f
    iput-object p1, p0, Lcom/iflytek/cloud/record/c;->c:Lcom/iflytek/cloud/record/b;

    iput-object p2, p0, Lcom/iflytek/cloud/record/c;->f:Lcom/iflytek/cloud/record/c$a;

    new-instance v2, Lcom/iflytek/cloud/record/c$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/iflytek/cloud/record/c$b;-><init>(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$1;)V

    iput-object v2, p0, Lcom/iflytek/cloud/record/c;->e:Lcom/iflytek/cloud/record/c$b;

    iget-object v2, p0, Lcom/iflytek/cloud/record/c;->e:Lcom/iflytek/cloud/record/c$b;

    invoke-virtual {v2}, Lcom/iflytek/cloud/record/c$b;->start()V

    goto :goto_3d

    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_2a .. :try_end_53} :catchall_51

    throw v0
.end method

.method public b()V
    .registers 4

    iget-object v1, p0, Lcom/iflytek/cloud/record/c;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_15
    iget-object v0, p0, Lcom/iflytek/cloud/record/c;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/record/c;->b:Landroid/media/AudioTrack;

    :cond_1d
    const-string v0, "PcmPlayer"

    const-string v2, "mAudioTrack released"

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public c()Z
    .registers 4

    const/4 v2, 0x3

    iget v0, p0, Lcom/iflytek/cloud/record/c;->g:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/iflytek/cloud/record/c;->g:I

    if-ne v0, v2, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    iput v2, p0, Lcom/iflytek/cloud/record/c;->g:I

    const/4 v0, 0x1

    goto :goto_b
.end method

.method public d()Z
    .registers 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/iflytek/cloud/record/c;->a(II)Z

    move-result v0

    return v0
.end method

.method public e()V
    .registers 3

    iget-object v1, p0, Lcom/iflytek/cloud/record/c;->n:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_4
    iput v0, p0, Lcom/iflytek/cloud/record/c;->g:I

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method
