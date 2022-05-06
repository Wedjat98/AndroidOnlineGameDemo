.class public Lcom/iflytek/cloud/thirdparty/v;
.super Lcom/iflytek/cloud/thirdparty/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/v$b;,
        Lcom/iflytek/cloud/thirdparty/v$a;,
        Lcom/iflytek/cloud/thirdparty/v$c;
    }
.end annotation


# static fields
.field private static d:Lcom/iflytek/cloud/thirdparty/v;

.field private static final e:Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final f:Ljava/lang/Object;

.field private g:Z

.field private final h:[B

.field private final i:Lcom/iflytek/cloud/thirdparty/x;

.field private final j:Lcom/iflytek/cloud/thirdparty/v$c;

.field private k:I

.field private final l:Lcom/iflytek/cloud/thirdparty/v$a;

.field private m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private q:Lcom/iflytek/cloud/thirdparty/w;

.field private final r:Lcom/iflytek/cloud/thirdparty/v$b;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/v;->d:Lcom/iflytek/cloud/thirdparty/v;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/v;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/Throwable;
        }
    .end annotation

    const/16 v11, 0x3e80

    const/16 v10, 0x600

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/u;-><init>()V

    const v0, 0xc000

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v;->a:I

    const v0, 0x78000

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v;->b:I

    const/high16 v0, 0xf0000

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v;->c:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    iput-boolean v6, p0, Lcom/iflytek/cloud/thirdparty/v;->g:Z

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->h:[B

    new-instance v0, Lcom/iflytek/cloud/thirdparty/x;

    const-wide/32 v1, 0x78000

    const v3, 0xc000

    const-wide/32 v4, 0x3c000

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/x;-><init>(JIJZZ)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/v$c;

    const-string v1, "AIMicAudioWritingThread"

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/v$c;-><init>(Lcom/iflytek/cloud/thirdparty/v;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    iput v9, p0, Lcom/iflytek/cloud/thirdparty/v;->k:I

    new-instance v0, Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-direct {v0, v8}, Lcom/iflytek/cloud/thirdparty/v$a;-><init>(Lcom/iflytek/cloud/thirdparty/v$1;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v;->m:I

    iput v11, p0, Lcom/iflytek/cloud/thirdparty/v;->n:I

    iput v9, p0, Lcom/iflytek/cloud/thirdparty/v;->o:I

    iput v10, p0, Lcom/iflytek/cloud/thirdparty/v;->p:I

    iput-object v8, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-direct {v0, p0, v8}, Lcom/iflytek/cloud/thirdparty/v$b;-><init>(Lcom/iflytek/cloud/thirdparty/v;Lcom/iflytek/cloud/thirdparty/v$1;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->r:Lcom/iflytek/cloud/thirdparty/v$b;

    iput v11, p0, Lcom/iflytek/cloud/thirdparty/v;->s:I

    iput v9, p0, Lcom/iflytek/cloud/thirdparty/v;->t:I

    iput v10, p0, Lcom/iflytek/cloud/thirdparty/v;->u:I

    const/4 v0, -0x3

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v;->v:I

    iput-boolean v6, p0, Lcom/iflytek/cloud/thirdparty/v;->w:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic constructor enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8c

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8c
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_b9

    if-eqz p1, :cond_123

    const-string v0, "lib_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_123

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_123

    const/16 v0, 0x2c

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_ae

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_ae
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-object v0, v1

    :goto_b6
    invoke-static {v0}, Lcom/iflytek/msc/AIMIC;->loadLibrary(Ljava/lang/String;)V

    :cond_b9
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->isValid()Z

    move-result v0

    if-nez v0, :cond_ec

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/O;->b(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-static {v0, v1}, Lcom/iflytek/msc/AIMIC;->AIMICNew([BLcom/iflytek/msc/AIMIC$Listener;)I

    move-result v6

    if-eqz v6, :cond_ec

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AIMICNew return error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/iflytek/msc/AIMIC;->AIMICDestroy(J)I

    :cond_ec
    if-eqz v6, :cond_f4

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v6}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_f4
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/v$c;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v;->g:Z

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/v;->k:I

    if-eqz v0, :cond_104

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/v;->k:I

    if-ne v9, v0, :cond_10c

    :cond_104
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    const-wide/32 v2, 0x78000

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/x;->a(J)V

    :cond_10c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic constructor leave: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :cond_123
    move-object v0, v8

    goto :goto_b6
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/x;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    return-object v0
.end method

.method private b([BII)I
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/x;->a([BII)V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    monitor-enter v2
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_9} :catch_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_4d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9} :catch_54
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_5b

    :try_start_9
    sget-object v0, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/v$c;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    if-ne v0, v3, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_2b

    :try_start_19
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/v$c;->a()Lcom/iflytek/cloud/SpeechError;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/v$c;->b()V
    :try_end_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_2a} :catch_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_2a} :catch_4d
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_2a} :catch_54
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_2a} :catch_5b

    :goto_2a
    return v0

    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v0
    :try_end_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2d .. :try_end_2e} :catch_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_2e} :catch_4d
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_2e} :catch_54
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2e} :catch_5b

    :catch_2e
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x2

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/v;->k:I

    if-ne v0, v2, :cond_45

    const-string v0, "write audio too soon, current audios  in buffer will be ignored!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->d()V

    :goto_41
    move v0, v1

    goto :goto_2a

    :cond_43
    move v0, v1

    goto :goto_2a

    :cond_45
    const-string v0, "write audio too soon, please wait for a second, and try again!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    const/16 v1, 0x659e

    goto :goto_41

    :catch_4d
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x659d

    goto :goto_2a

    :catch_54
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x6596

    goto :goto_2a

    :catch_5b
    move-exception v0

    const-string v1, "write audio too soon, please wait for a second, and try again!"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x5207

    goto :goto_2a
.end method

.method public static b(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/v;
    .registers 4

    const-string v0, "aimic createAIMic enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/v;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    sget-object v0, Lcom/iflytek/cloud/thirdparty/v;->d:Lcom/iflytek/cloud/thirdparty/v;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_32

    if-nez v0, :cond_13

    :try_start_c
    new-instance v0, Lcom/iflytek/cloud/thirdparty/v;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/v;->d:Lcom/iflytek/cloud/thirdparty/v;
    :try_end_13
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_c .. :try_end_13} :catch_2d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c .. :try_end_13} :catch_35
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_13} :catch_3a
    .catchall {:try_start_c .. :try_end_13} :catchall_32

    :cond_13
    :goto_13
    :try_start_13
    sget-object v0, Lcom/iflytek/cloud/thirdparty/v;->d:Lcom/iflytek/cloud/thirdparty/v;

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic createAIMic leave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-object v0

    :catch_2d
    move-exception v0

    :try_start_2e
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_13

    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    throw v0

    :catch_35
    move-exception v0

    :try_start_36
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_13

    :catch_3a
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_32

    goto :goto_13
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/v;)Z
    .registers 2

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/v$a;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_14

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static synthetic d(Lcom/iflytek/cloud/thirdparty/v;)I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/v;->k:I

    return v0
.end method

.method public static e()Lcom/iflytek/cloud/thirdparty/v;
    .registers 3

    const-string v0, "aimic getAIMic enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/v;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    sget-object v0, Lcom/iflytek/cloud/thirdparty/v;->d:Lcom/iflytek/cloud/thirdparty/v;

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic getAIMic leave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-object v0

    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method private f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v;->g:Z

    return v0
.end method

.method private g()I
    .registers 5

    const/4 v1, 0x0

    const/16 v0, 0x6598

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->f()Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/w;->a()Lcom/iflytek/cloud/thirdparty/w;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->d()I

    move-result v0

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/v;->t:I

    if-ne v0, v2, :cond_31

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->e()I

    move-result v0

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/v;->s:I

    if-ne v0, v2, :cond_31

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->f()I

    move-result v0

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/v;->u:I

    if-eq v0, v2, :cond_53

    :cond_31
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->c()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    :cond_42
    const-string v0, "create new audio recorder"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/v;->t:I

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/v;->s:I

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/v;->u:I

    invoke-static {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/w;->a(III)Lcom/iflytek/cloud/thirdparty/w;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    :cond_53
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->b()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->r:Lcom/iflytek/cloud/thirdparty/v$b;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/w;->g()Lcom/iflytek/cloud/thirdparty/w$b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "Current record listener is not this, recorder will be stoped."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->c()V

    :cond_77
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_a9

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ac$a;->b:Lcom/iflytek/cloud/thirdparty/ac$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ac$a;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ac;->b()Lcom/iflytek/cloud/thirdparty/ac$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/ac$a;->ordinal()I

    move-result v3

    if-lt v0, v3, :cond_a9

    const/4 v0, 0x1

    :goto_90
    invoke-virtual {v2, v0}, Lcom/iflytek/cloud/thirdparty/w;->a(Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->b()Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "start audio recording."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->r:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/w;->a(Lcom/iflytek/cloud/thirdparty/w$b;)I

    move-result v1

    :goto_a8
    return v1

    :cond_a9
    move v0, v1

    goto :goto_90

    :cond_ab
    const-string v0, "audio recorder is recording."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    goto :goto_a8

    :cond_b1
    const/16 v1, 0x6595

    goto :goto_a8

    :cond_b4
    move v1, v0

    goto :goto_a8
.end method

.method private h()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v0, :cond_16

    const-string v0, "stop audio record"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->c()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->r:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/v$b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    :cond_16
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    const/16 v1, 0x6598

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic  setParameter enter key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_23
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v2
    :try_end_26
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_23 .. :try_end_26} :catch_6a
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_122

    :try_start_26
    const-string v3, "aimic  setParameter sync"

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const-string v3, "aimic_asr_buffer_time"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/v;->m:I

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/v;->m:I

    invoke-virtual {v1, v3}, Lcom/iflytek/cloud/thirdparty/v$a;->a(I)V

    :goto_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_67

    :goto_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic  setParameter leave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return v0

    :cond_58
    :try_start_58
    const-string v3, "alsa_rate"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/v;->s:I

    goto :goto_40

    :catchall_67
    move-exception v0

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_58 .. :try_end_69} :catchall_67

    :try_start_69
    throw v0
    :try_end_6a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_69 .. :try_end_6a} :catch_6a
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6a} :catch_122

    :catch_6a
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x4e35

    goto :goto_41

    :cond_71
    :try_start_71
    const-string v3, "alsa_card"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/v;->t:I

    goto :goto_40

    :cond_80
    const-string v3, "alsa_per_size"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/v;->u:I

    goto :goto_40

    :cond_8f
    const-string v3, "alsa_save"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a1

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->r:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-direct {p0, p2}, Lcom/iflytek/cloud/thirdparty/v;->c(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/iflytek/cloud/thirdparty/v$b;->a(Z)V

    goto :goto_40

    :cond_a1
    const-string v3, "audio_source"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/v;->v:I

    goto :goto_40

    :cond_b0
    const-string v0, "buf_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_102

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v;->k:I

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/v;->k:I

    packed-switch v0, :pswitch_data_12a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    const-wide/32 v4, 0xf0000

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/x;->a()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/iflytek/cloud/thirdparty/x;->a(J)V

    :goto_d2
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->f()Z

    move-result v0

    if-eqz v0, :cond_ff

    const-string v0, "aimic  setParameter Native"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v0

    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/O;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {p2}, Lcom/iflytek/cloud/thirdparty/O;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/iflytek/msc/AIMIC;->AIMICSetParam(J[B[B)I

    move-result v0

    goto/16 :goto_40

    :pswitch_ef
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    const-wide/32 v4, 0x78000

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/x;->a()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/iflytek/cloud/thirdparty/x;->a(J)V

    goto :goto_d2

    :cond_ff
    move v0, v1

    goto/16 :goto_40

    :cond_102
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->f()Z

    move-result v0

    if-eqz v0, :cond_11f

    const-string v0, "aimic  setParameter Native"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v0

    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/O;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {p2}, Lcom/iflytek/cloud/thirdparty/O;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/iflytek/msc/AIMIC;->AIMICSetParam(J[B[B)I
    :try_end_11c
    .catchall {:try_start_71 .. :try_end_11c} :catchall_67

    move-result v0

    goto/16 :goto_40

    :cond_11f
    move v0, v1

    goto/16 :goto_40

    :catch_122
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x5207

    goto/16 :goto_41

    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_ef
    .end packed-switch
.end method

.method public a([BII)I
    .registers 7

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/v;->b([BII)I

    move-result v0

    :goto_d
    monitor-exit v1

    return v0

    :cond_f
    const/16 v0, 0x6598

    const-string v2, "write audio while not init!"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    goto :goto_d

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/u$a;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic  registerListener enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_19
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/v$a;->a(Lcom/iflytek/cloud/thirdparty/u$a;)V

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_25

    const-string v0, "aimic  registerListener leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/u$b;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic  registerListener enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_19
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/v$a;->a(Lcom/iflytek/cloud/thirdparty/u$b;)V

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_25

    const-string v0, "aimic  setParameter leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public a(ZI)V
    .registers 6

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Z)V

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ac$a;->values()[Lcom/iflytek/cloud/thirdparty/ac$a;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Lcom/iflytek/cloud/thirdparty/ac$a;)V

    invoke-static {p1, p2}, Lcom/iflytek/msc/AIMIC;->AIMICDebugLog(ZI)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v0, :cond_26

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz p1, :cond_28

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ac$a;->b:Lcom/iflytek/cloud/thirdparty/ac$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ac$a;->ordinal()I

    move-result v0

    if-lt v0, p2, :cond_28

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {v2, v0}, Lcom/iflytek/cloud/thirdparty/w;->a(Z)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_26} :catch_2a
    .catchall {:try_start_3 .. :try_end_26} :catchall_2f

    :cond_26
    :goto_26
    :try_start_26
    monitor-exit v1

    return-void

    :cond_28
    const/4 v0, 0x0

    goto :goto_23

    :catch_2a
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_26

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public b()I
    .registers 5

    const-string v0, "aimic  reset enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->f()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/iflytek/msc/AIMIC;->AIMICResetEng(J)I
    :try_end_15
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_8 .. :try_end_15} :catch_31
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_15} :catch_3a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_15} :catch_41
    .catchall {:try_start_8 .. :try_end_15} :catchall_48

    move-result v0

    :goto_16
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_48

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic  reset leave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return v0

    :cond_2e
    const/16 v0, 0x6598

    goto :goto_16

    :catch_31
    move-exception v0

    :try_start_32
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    goto :goto_16

    :catch_3a
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x4e35

    goto :goto_16

    :catch_41
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x5207

    goto :goto_16

    :catchall_48
    move-exception v0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public b(Lcom/iflytek/cloud/thirdparty/u$a;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic  unregisterListener enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_19
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/v$a;->b(Lcom/iflytek/cloud/thirdparty/u$a;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/v;->d()V

    :cond_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_30

    const-string v0, "aimic  unregisterListener leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public b(Lcom/iflytek/cloud/thirdparty/u$b;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic  unregisterListener enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_19
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/v$a;->b(Lcom/iflytek/cloud/thirdparty/u$b;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/v;->d()V

    :cond_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_30

    const-string v0, "aimic  unregisterListener leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public c()I
    .registers 6

    const/4 v0, 0x0

    const-string v1, "aimic  startListening enter"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/16 v1, 0x6598

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/v;->w:Z

    if-nez v3, :cond_19

    const-string v3, "aimic  startListening clear old datas."

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/x;->d()V

    :cond_19
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->f()Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v1, -0x3

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/v;->v:I

    if-ne v1, v3, :cond_45

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->g()I

    move-result v1

    :cond_28
    :goto_28
    if-nez v1, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v;->w:Z

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_56

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic  startListening leave: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return v1

    :cond_45
    const/4 v1, -0x1

    :try_start_46
    iget v3, p0, Lcom/iflytek/cloud/thirdparty/v;->v:I

    if-ne v1, v3, :cond_5b

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v1, :cond_59

    const/16 v1, 0x659e

    const-string v3, "startListening failed, current internal recorder is not stoped!"

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    goto :goto_28

    :catchall_56
    move-exception v0

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_46 .. :try_end_58} :catchall_56

    throw v0

    :cond_59
    move v1, v0

    goto :goto_28

    :cond_5b
    const/16 v1, 0x659c

    :try_start_5d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startListening failed, invalid audio source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/v;->v:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_5d .. :try_end_75} :catchall_56

    goto :goto_28
.end method

.method public d()V
    .registers 3

    const-string v0, "aimic  stopListening enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_14
    const-string v0, "AIMic Listener is empty, audio recorder will stop recording."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v;->w:Z

    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_26

    const-string v0, "aimic  stopListening leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method
