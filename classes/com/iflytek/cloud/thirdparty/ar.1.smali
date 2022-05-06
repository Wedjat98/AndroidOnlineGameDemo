.class public Lcom/iflytek/cloud/thirdparty/ar;
.super Lcom/iflytek/cloud/thirdparty/E;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/ar$b;,
        Lcom/iflytek/cloud/thirdparty/ar$a;,
        Lcom/iflytek/cloud/thirdparty/ar$c;
    }
.end annotation


# static fields
.field private static n:Ljava/lang/String;


# instance fields
.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private o:Lcom/iflytek/cloud/thirdparty/t;

.field private p:Lcom/iflytek/cloud/thirdparty/M;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "respath"

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ar;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/E;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->f:Z

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->l:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->m:Z

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->o:Lcom/iflytek/cloud/thirdparty/t;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->p:Lcom/iflytek/cloud/thirdparty/M;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/M;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/M;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->p:Lcom/iflytek/cloud/thirdparty/M;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/ar;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/ar;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restart wake ,isError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->c:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_2b

    const/4 v0, 0x0

    :try_start_1c
    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/s;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/s;->j()Lcom/iflytek/cloud/WakeuperListener;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/ar;->b(Lcom/iflytek/cloud/WakeuperListener;)I

    :cond_29
    :goto_29
    monitor-exit v1

    return-void

    :cond_2b
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->d:Lcom/iflytek/cloud/thirdparty/A;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/A;->u()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->a:Landroid/content/Context;

    sget-object v2, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->path:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ar;->p:Lcom/iflytek/cloud/thirdparty/M;

    const-string v4, "ivw_config_path"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/M;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/iflytek/cloud/util/ResourceUtil;->generateResourcePath(Landroid/content/Context;Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->p:Lcom/iflytek/cloud/thirdparty/M;

    const-string v2, "cfg_threshold"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/M;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/s;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/s;->j()Lcom/iflytek/cloud/WakeuperListener;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/ar;->b(Lcom/iflytek/cloud/WakeuperListener;)I

    goto :goto_29

    :catchall_5d
    move-exception v0

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_1c .. :try_end_5f} :catchall_5d

    throw v0
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/ar;)Z
    .registers 2

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/ar;->h()Z

    move-result v0

    return v0
.end method

.method private b(Lcom/iflytek/cloud/WakeuperListener;)I
    .registers 8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ar;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/ar;->h()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/ar;->i()Z

    move-result v0

    if-eqz v0, :cond_a5

    const-string v0, "ivw use resource from server"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->k:Ljava/lang/String;

    :goto_1f
    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ar;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v4, "ivw_res_path"

    invoke-virtual {v3, v4, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v3, "ivw_threshold"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/ar;->b(Z)V

    :goto_32
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v3, "request_audio_focus"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->f:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->d:Lcom/iflytek/cloud/thirdparty/A;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->d:Lcom/iflytek/cloud/thirdparty/A;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/A;->u()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/s;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/thirdparty/s;->b(Z)V

    :cond_51
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v3, "ivw_channel_num"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c7

    new-instance v0, Lcom/iflytek/cloud/thirdparty/s;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ar;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ar;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v5, "wakeuper"

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/thirdparty/ar;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/s;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->d:Lcom/iflytek/cloud/thirdparty/A;

    :goto_6d
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/ar;->f:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/S;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/s;

    new-instance v3, Lcom/iflytek/cloud/thirdparty/ar$b;

    invoke-direct {v3, p0, p1}, Lcom/iflytek/cloud/thirdparty/ar$b;-><init>(Lcom/iflytek/cloud/thirdparty/ar;Lcom/iflytek/cloud/WakeuperListener;)V

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/thirdparty/s;->a(Lcom/iflytek/cloud/WakeuperListener;)V
    :try_end_85
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_4 .. :try_end_85} :catch_bd
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_85} :catch_d9
    .catchall {:try_start_4 .. :try_end_85} :catchall_e1

    move v0, v1

    :goto_86
    :try_start_86
    monitor-exit v2
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_e1

    return v0

    :cond_88
    :try_start_88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ar;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ar;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1f

    :cond_a5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v3, "ivw_res_path"

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ar;->g:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v3, "ivw_threshold"

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ar;->j:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/ar;->b(Z)V
    :try_end_bb
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_88 .. :try_end_bb} :catch_bd
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_bb} :catch_d9
    .catchall {:try_start_88 .. :try_end_bb} :catchall_e1

    goto/16 :goto_32

    :catch_bd
    move-exception v0

    :try_start_be
    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V
    :try_end_c5
    .catchall {:try_start_be .. :try_end_c5} :catchall_e1

    move v0, v1

    goto :goto_86

    :cond_c7
    :try_start_c7
    new-instance v0, Lcom/iflytek/cloud/thirdparty/q;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ar;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ar;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v5, "wakeuper"

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/thirdparty/ar;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/q;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->d:Lcom/iflytek/cloud/thirdparty/A;
    :try_end_d8
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_c7 .. :try_end_d8} :catch_bd
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_d8} :catch_d9
    .catchall {:try_start_c7 .. :try_end_d8} :catchall_e1

    goto :goto_6d

    :catch_d9
    move-exception v0

    const/16 v1, 0x5207

    :try_start_dc
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_86

    :catchall_e1
    move-exception v0

    monitor-exit v2
    :try_end_e3
    .catchall {:try_start_dc .. :try_end_e3} :catchall_e1

    throw v0
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/ar;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->a:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized b(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/ar;->m:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/ar;)Lcom/iflytek/cloud/thirdparty/M;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->p:Lcom/iflytek/cloud/thirdparty/M;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/cloud/thirdparty/ar;)Lcom/iflytek/cloud/thirdparty/af;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->b:Lcom/iflytek/cloud/thirdparty/af;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/cloud/thirdparty/ar;)Z
    .registers 2

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/ar;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/iflytek/cloud/thirdparty/ar;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->a:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized g()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->m:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/iflytek/cloud/thirdparty/ar;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->f:Z

    return v0
.end method

.method private h()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v2, "ivw_net_mode"

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v2, v1, :cond_17

    const/4 v2, 0x4

    if-ne v2, v1, :cond_18

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/V;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_17
    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method private i()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :cond_12
    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->k:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/t;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/t;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/t;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    goto :goto_12
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/WakeuperListener;)I
    .registers 14

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ar;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "ivw_res_path"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "ivw_threshold"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->g:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_c3

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_c3

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->g:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->g:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->i:Ljava/lang/String;

    :cond_47
    :goto_47
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/ar;->h()Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->a:Landroid/content/Context;

    sget-object v1, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->path:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ar;->p:Lcom/iflytek/cloud/thirdparty/M;

    const-string v4, "ivw_config_path"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/M;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/iflytek/cloud/util/ResourceUtil;->generateResourcePath(Landroid/content/Context;Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->p:Lcom/iflytek/cloud/thirdparty/M;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v0, "ivw_query_last_time"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v0, v6, v7}, Lcom/iflytek/cloud/thirdparty/M;->b(Ljava/lang/String;J)J

    move-result-wide v6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v3, "ivw_query_period"

    const-wide/32 v8, 0x5265c00

    invoke-virtual {v0, v3, v8, v9}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;J)J

    move-result-wide v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query ivw res period: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    sub-long v10, v4, v6

    cmp-long v0, v10, v8

    if-ltz v0, :cond_d3

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/ar;->i()Z

    move-result v0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->k:Ljava/lang/String;

    :goto_9d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "begin resource query res path: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v3, v6}, Lcom/iflytek/cloud/thirdparty/ar;->a(Ljava/lang/String;ZLcom/iflytek/cloud/RequestListener;)I

    const-string v0, "ivw_query_last_time"

    invoke-virtual {v1, v0, v4, v5}, Lcom/iflytek/cloud/thirdparty/M;->a(Ljava/lang/String;J)V

    :cond_bd
    :goto_bd
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/ar;->b(Lcom/iflytek/cloud/WakeuperListener;)I
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c0} :catch_c8
    .catchall {:try_start_3 .. :try_end_c0} :catchall_dd

    move-result v0

    :goto_c1
    :try_start_c1
    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_dd

    return v0

    :cond_c3
    :try_start_c3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->i:Ljava/lang/String;
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_c7} :catch_c8
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_dd

    goto :goto_47

    :catch_c8
    move-exception v0

    const/16 v1, 0x5207

    :try_start_cb
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_dd

    move v0, v1

    goto :goto_c1

    :cond_d0
    :try_start_d0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->i:Ljava/lang/String;

    goto :goto_9d

    :cond_d3
    cmp-long v0, v4, v6

    if-nez v0, :cond_bd

    const-string v0, "ivw_query_last_time"

    invoke-virtual {v1, v0, v4, v5}, Lcom/iflytek/cloud/thirdparty/M;->a(Ljava/lang/String;J)V
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_d0 .. :try_end_dc} :catch_c8
    .catchall {:try_start_d0 .. :try_end_dc} :catchall_dd

    goto :goto_bd

    :catchall_dd
    move-exception v0

    :try_start_de
    monitor-exit v2
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/cloud/util/FileDownloadListener;)I
    .registers 9

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_15
    const/16 v0, 0x4e2c

    monitor-exit v1

    :goto_18
    return v0

    :cond_19
    const-string v0, "CreateDownload"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->o:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->o:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->o:Lcom/iflytek/cloud/thirdparty/t;

    :cond_2b
    new-instance v0, Lcom/iflytek/cloud/thirdparty/t;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ar;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/iflytek/cloud/thirdparty/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->o:Lcom/iflytek/cloud/thirdparty/t;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->o:Lcom/iflytek/cloud/thirdparty/t;

    new-instance v2, Lcom/iflytek/cloud/thirdparty/ar$a;

    invoke-direct {v2, p0, p4, p5}, Lcom/iflytek/cloud/thirdparty/ar$a;-><init>(Lcom/iflytek/cloud/thirdparty/ar;ZLcom/iflytek/cloud/util/FileDownloadListener;)V

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/iflytek/cloud/thirdparty/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/util/FileDownloadListener;)I

    move-result v0

    monitor-exit v1

    goto :goto_18

    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public a(Ljava/lang/String;ZLcom/iflytek/cloud/RequestListener;)I
    .registers 11

    const/16 v0, 0x6213

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ar;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v1, "respath is null. please set respath before startlisten"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    monitor-exit v2

    :goto_12
    return v0

    :cond_13
    if-nez p2, :cond_26

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->a:Landroid/content/Context;

    sget-object v3, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->path:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ar;->p:Lcom/iflytek/cloud/thirdparty/M;

    const-string v5, "ivw_config_path"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/cloud/thirdparty/M;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/iflytek/cloud/util/ResourceUtil;->generateResourcePath(Landroid/content/Context;Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_26
    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ar;->o:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ar;->o:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/t;->a()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/iflytek/cloud/thirdparty/ar;->o:Lcom/iflytek/cloud/thirdparty/t;

    :cond_32
    new-instance v3, Lcom/iflytek/cloud/thirdparty/t;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ar;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/iflytek/cloud/thirdparty/t;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/cloud/thirdparty/ar;->o:Lcom/iflytek/cloud/thirdparty/t;

    invoke-static {p1, v1}, Lcom/iflytek/cloud/thirdparty/t;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_4b

    const-string v1, "ivw invalid resource"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_12

    :catchall_48
    move-exception v0

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_6 .. :try_end_4a} :catchall_48

    throw v0

    :cond_4b
    :try_start_4b
    sget-object v0, Lcom/iflytek/cloud/thirdparty/ar;->n:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_86

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->p:Lcom/iflytek/cloud/thirdparty/M;

    const-string v3, "cfg_threshold"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/M;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->l:Ljava/lang/String;

    :goto_6c
    const-string v0, "SendRequest"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->o:Lcom/iflytek/cloud/thirdparty/t;

    new-instance v3, Lcom/iflytek/cloud/thirdparty/ar$c;

    invoke-direct {v3, p0, p2, p3}, Lcom/iflytek/cloud/thirdparty/ar$c;-><init>(Lcom/iflytek/cloud/thirdparty/ar;ZLcom/iflytek/cloud/RequestListener;)V

    invoke-virtual {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/t;->a(Lorg/json/JSONObject;Lcom/iflytek/cloud/RequestListener;)I

    move-result v0

    monitor-exit v2

    goto :goto_12

    :cond_86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->p:Lcom/iflytek/cloud/thirdparty/M;

    const-string v3, "ivw_config_path"

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/thirdparty/M;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->p:Lcom/iflytek/cloud/thirdparty/M;

    const-string v3, "cfg_threshold"

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/thirdparty/M;->a(Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_4b .. :try_end_97} :catchall_48

    goto :goto_6c
.end method

.method public a([BII)I
    .registers 8

    const/16 v0, 0x277d

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ar;->d:Lcom/iflytek/cloud/thirdparty/A;

    if-nez v2, :cond_12

    const-string v0, "writeAudio error, no active session."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/16 v0, 0x520c

    monitor-exit v1

    :goto_11
    return v0

    :cond_12
    if-eqz p1, :cond_17

    array-length v2, p1

    if-gtz v2, :cond_21

    :cond_17
    const-string v2, "writeAudio error,buffer is null."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_11

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    :try_start_21
    array-length v2, p1

    add-int v3, p3, p2

    if-ge v2, v3, :cond_2d

    const-string v2, "writeAudio error,buffer length < length."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_11

    :cond_2d
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/s;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/s;->h()I

    move-result v0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_3c

    const/16 v0, 0x277a

    monitor-exit v1

    goto :goto_11

    :cond_3c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/s;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/s;->a([BII)I

    move-result v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_21 .. :try_end_45} :catchall_1e

    goto :goto_11
.end method

.method public cancel(Z)V
    .registers 6

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->o:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->o:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->o:Lcom/iflytek/cloud/thirdparty/t;

    :cond_f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/ar;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/S;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/E;->cancel(Z)V

    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public destroy()Z
    .registers 3

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->o:Lcom/iflytek/cloud/thirdparty/t;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->o:Lcom/iflytek/cloud/thirdparty/t;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/t;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->o:Lcom/iflytek/cloud/thirdparty/t;

    :cond_f
    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/E;->destroy()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public e()V
    .registers 4

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->d:Lcom/iflytek/cloud/thirdparty/A;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/s;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/s;->a(Z)Z

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public f()Z
    .registers 3

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ar;->d()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method
