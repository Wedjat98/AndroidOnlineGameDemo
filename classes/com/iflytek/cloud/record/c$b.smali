.class Lcom/iflytek/cloud/record/c$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/record/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/record/c;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/iflytek/cloud/record/c;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->c(Lcom/iflytek/cloud/record/c;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/record/c$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/record/c$b;-><init>(Lcom/iflytek/cloud/record/c;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/record/c$b;->b:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/iflytek/cloud/record/c$b;->b:I

    return-void
.end method

.method public run()V
    .registers 10

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x0

    :try_start_5
    const-string v0, "PcmPlayer"

    const-string v1, "start player"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PcmPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAudioFocus= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->d(Lcom/iflytek/cloud/record/c;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->d(Lcom/iflytek/cloud/record/c;)Z

    move-result v0

    if-eqz v0, :cond_173

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->e(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    iget-object v2, v2, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/S;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    :goto_49
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->g(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/b;->c()V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->h(Lcom/iflytek/cloud/record/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_59} :catch_10a
    .catchall {:try_start_5 .. :try_end_59} :catchall_189

    :try_start_59
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->i(Lcom/iflytek/cloud/record/c;)I

    move-result v0

    if-eq v0, v5, :cond_6f

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->i(Lcom/iflytek/cloud/record/c;)I

    move-result v0

    if-eq v0, v8, :cond_6f

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;I)I

    :cond_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_59 .. :try_end_70} :catchall_1da

    :cond_70
    :goto_70
    :try_start_70
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->i(Lcom/iflytek/cloud/record/c;)I

    move-result v0

    if-eq v0, v5, :cond_202

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->j(Lcom/iflytek/cloud/record/c;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->i(Lcom/iflytek/cloud/record/c;)I

    move-result v0

    if-eq v0, v6, :cond_8d

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->i(Lcom/iflytek/cloud/record/c;)I

    move-result v0

    if-ne v0, v7, :cond_285

    :cond_8d
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->g(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1dd

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;II)Z

    move-result v0

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->k(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_b1
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->g(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/b;->d()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->g(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/cloud/record/b;->e()Lcom/iflytek/cloud/record/b$a;

    move-result-object v1

    if-eqz v1, :cond_de

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    iget v3, v1, Lcom/iflytek/cloud/record/b$a;->d:I

    invoke-static {v2, v3}, Lcom/iflytek/cloud/record/c;->b(Lcom/iflytek/cloud/record/c;I)I

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->k(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    iget v1, v1, Lcom/iflytek/cloud/record/b$a;->c:I

    invoke-static {v2, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_de
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-eq v0, v8, :cond_f3

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_f3
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->g(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->m(Lcom/iflytek/cloud/record/c;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/record/b;->a(Landroid/media/AudioTrack;I)V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_108} :catch_10a
    .catchall {:try_start_70 .. :try_end_108} :catchall_189

    goto/16 :goto_70

    :catch_10a
    move-exception v0

    :try_start_10b
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->k(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/iflytek/cloud/SpeechError;

    const/16 v3, 0x4e2b

    invoke-direct {v2, v3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_123
    .catchall {:try_start_10b .. :try_end_123} :catchall_189

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->h(Lcom/iflytek/cloud/record/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_12a
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;I)I

    monitor-exit v1
    :try_end_131
    .catchall {:try_start_12a .. :try_end_131} :catchall_2c1

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0, v4}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    :cond_147
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->d(Lcom/iflytek/cloud/record/c;)Z

    move-result v0

    if-eqz v0, :cond_2c4

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->e(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    iget-object v2, v2, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/S;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    :goto_166
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0, v4}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$b;)Lcom/iflytek/cloud/record/c$b;

    const-string v0, "PcmPlayer"

    const-string v1, "player stopped"

    :goto_16f
    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_173
    :try_start_173
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->e(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/S;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_187} :catch_10a
    .catchall {:try_start_173 .. :try_end_187} :catchall_189

    goto/16 :goto_49

    :catchall_189
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->h(Lcom/iflytek/cloud/record/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_191
    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;I)I

    monitor-exit v1
    :try_end_198
    .catchall {:try_start_191 .. :try_end_198} :catchall_2a9

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v1

    if-eqz v1, :cond_1ae

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1, v4}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    :cond_1ae
    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->d(Lcom/iflytek/cloud/record/c;)Z

    move-result v1

    if-eqz v1, :cond_2ac

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->e(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    iget-object v3, v3, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/S;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    :goto_1cd
    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1, v4}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$b;)Lcom/iflytek/cloud/record/c$b;

    const-string v1, "PcmPlayer"

    const-string v2, "player stopped"

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catchall_1da
    move-exception v0

    :try_start_1db
    monitor-exit v1
    :try_end_1dc
    .catchall {:try_start_1db .. :try_end_1dc} :catchall_1da

    :try_start_1dc
    throw v0

    :cond_1dd
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->g(Lcom/iflytek/cloud/record/c;)Lcom/iflytek/cloud/record/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/b;->f()Z

    move-result v0

    if-eqz v0, :cond_261

    const-string v0, "play stoped"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;I)I

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->k(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_202
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_213

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_213
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_213} :catch_10a
    .catchall {:try_start_1dc .. :try_end_213} :catchall_189

    :cond_213
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->h(Lcom/iflytek/cloud/record/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_21a
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;I)I

    monitor-exit v1
    :try_end_221
    .catchall {:try_start_21a .. :try_end_221} :catchall_2d9

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_237

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0, v4}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    :cond_237
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->d(Lcom/iflytek/cloud/record/c;)Z

    move-result v0

    if-eqz v0, :cond_2dc

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->e(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    iget-object v2, v2, Lcom/iflytek/cloud/record/c;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/S;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    :goto_256
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0, v4}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;Lcom/iflytek/cloud/record/c$b;)Lcom/iflytek/cloud/record/c$b;

    const-string v0, "PcmPlayer"

    const-string v1, "player stopped"

    goto/16 :goto_16f

    :cond_261
    :try_start_261
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/c;II)Z

    move-result v0

    if-eqz v0, :cond_27e

    const-string v0, "play onpaused!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->k(Lcom/iflytek/cloud/record/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_27e
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Lcom/iflytek/cloud/record/c$b;->sleep(J)V

    goto/16 :goto_70

    :cond_285
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->i(Lcom/iflytek/cloud/record/c;)I

    move-result v0

    if-ne v0, v8, :cond_70

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-eq v6, v0, :cond_2a2

    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->l(Lcom/iflytek/cloud/record/c;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_2a2
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Lcom/iflytek/cloud/record/c$b;->sleep(J)V
    :try_end_2a7
    .catch Ljava/lang/Exception; {:try_start_261 .. :try_end_2a7} :catch_10a
    .catchall {:try_start_261 .. :try_end_2a7} :catchall_189

    goto/16 :goto_70

    :catchall_2a9
    move-exception v0

    :try_start_2aa
    monitor-exit v1
    :try_end_2ab
    .catchall {:try_start_2aa .. :try_end_2ab} :catchall_2a9

    throw v0

    :cond_2ac
    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->e(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v2}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/S;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    goto/16 :goto_1cd

    :catchall_2c1
    move-exception v0

    :try_start_2c2
    monitor-exit v1
    :try_end_2c3
    .catchall {:try_start_2c2 .. :try_end_2c3} :catchall_2c1

    throw v0

    :cond_2c4
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->e(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/iflytek/cloud/thirdparty/S;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    goto/16 :goto_166

    :catchall_2d9
    move-exception v0

    :try_start_2da
    monitor-exit v1
    :try_end_2db
    .catchall {:try_start_2da .. :try_end_2db} :catchall_2d9

    throw v0

    :cond_2dc
    iget-object v0, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v0}, Lcom/iflytek/cloud/record/c;->e(Lcom/iflytek/cloud/record/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/c$b;->a:Lcom/iflytek/cloud/record/c;

    invoke-static {v1}, Lcom/iflytek/cloud/record/c;->f(Lcom/iflytek/cloud/record/c;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/iflytek/cloud/thirdparty/S;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    goto/16 :goto_256
.end method
