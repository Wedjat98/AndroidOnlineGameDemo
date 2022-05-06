.class public Lcom/iflytek/cloud/thirdparty/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/w$a;,
        Lcom/iflytek/cloud/thirdparty/w$b;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/Object;

.field private static final s:Ljava/lang/Object;

.field private static t:Lcom/iflytek/cloud/thirdparty/w;


# instance fields
.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/reflect/Method;

.field private h:Ljava/lang/reflect/Method;

.field private i:Ljava/lang/reflect/Method;

.field private j:Ljava/lang/reflect/Method;

.field private k:Ljava/lang/reflect/Method;

.field private l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/reflect/Method;

.field private n:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/reflect/Method;

.field private p:Ljava/lang/Object;

.field private final q:Lcom/iflytek/cloud/thirdparty/w$a;

.field private r:Ljava/lang/Object;

.field private u:Lcom/iflytek/cloud/thirdparty/w$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/cloud/thirdparty/w;->a:[Ljava/lang/Class;

    sput-object v1, Lcom/iflytek/cloud/thirdparty/w;->b:[Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/w;->s:Ljava/lang/Object;

    sput-object v1, Lcom/iflytek/cloud/thirdparty/w;->t:Lcom/iflytek/cloud/thirdparty/w;

    return-void
.end method

.method private constructor <init>(III)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->c:Ljava/lang/Class;

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->d:Ljava/lang/reflect/Method;

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->e:Ljava/lang/reflect/Method;

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->f:Ljava/lang/reflect/Method;

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->g:Ljava/lang/reflect/Method;

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->h:Ljava/lang/reflect/Method;

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Ljava/lang/reflect/Method;

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->j:Ljava/lang/reflect/Method;

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->k:Ljava/lang/reflect/Method;

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->l:Ljava/lang/Class;

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->m:Ljava/lang/reflect/Method;

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->n:Ljava/lang/Class;

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->o:Ljava/lang/reflect/Method;

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->p:Ljava/lang/Object;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/w$a;

    invoke-direct {v0, p0, v4}, Lcom/iflytek/cloud/thirdparty/w$a;-><init>(Lcom/iflytek/cloud/thirdparty/w;Lcom/iflytek/cloud/thirdparty/w$1;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->q:Lcom/iflytek/cloud/thirdparty/w$a;

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->r:Ljava/lang/Object;

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->u:Lcom/iflytek/cloud/thirdparty/w$b;

    const-string v0, "com.iflytek.alsa.AlsaRecorder$PcmListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->l:Ljava/lang/Class;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->l:Ljava/lang/Class;

    const-string v1, "onPcmData"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, [B

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->m:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->l:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Class;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/w;->l:Ljava/lang/Class;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/w;->q:Lcom/iflytek/cloud/thirdparty/w$a;

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->r:Ljava/lang/Object;

    const-string v0, "com.iflytek.alsa.AlsaRecorder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->c:Ljava/lang/Class;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->c:Ljava/lang/Class;

    const-string v1, "createInstance"

    new-array v2, v8, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->p:Ljava/lang/Object;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->p:Ljava/lang/Object;

    if-nez v0, :cond_a8

    const-string v0, "Recorder create alsa failed!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Recorder create alsa failed!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a8
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->c:Ljava/lang/Class;

    const-string v1, "startRecording"

    new-array v2, v6, [Ljava/lang/Class;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/w;->l:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->d:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->c:Ljava/lang/Class;

    const-string v1, "stopRecording"

    sget-object v2, Lcom/iflytek/cloud/thirdparty/w;->a:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->e:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->c:Ljava/lang/Class;

    const-string v1, "destroy"

    sget-object v2, Lcom/iflytek/cloud/thirdparty/w;->a:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->k:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->c:Ljava/lang/Class;

    const-string v1, "getCardDevId"

    sget-object v2, Lcom/iflytek/cloud/thirdparty/w;->a:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->g:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->c:Ljava/lang/Class;

    const-string v1, "getListener"

    sget-object v2, Lcom/iflytek/cloud/thirdparty/w;->a:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->j:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->c:Ljava/lang/Class;

    const-string v1, "getPeriodSize"

    sget-object v2, Lcom/iflytek/cloud/thirdparty/w;->a:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->c:Ljava/lang/Class;

    const-string v1, "getSampleRate"

    sget-object v2, Lcom/iflytek/cloud/thirdparty/w;->a:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->h:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->c:Ljava/lang/Class;

    const-string v1, "isRecording"

    sget-object v2, Lcom/iflytek/cloud/thirdparty/w;->a:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->f:Ljava/lang/reflect/Method;

    const-string v0, "com.iflytek.alsa.jni.AlsaJni"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->n:Ljava/lang/Class;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->n:Ljava/lang/Class;

    const-string v1, "showJniLog"

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->o:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static a()Lcom/iflytek/cloud/thirdparty/w;
    .registers 2

    sget-object v1, Lcom/iflytek/cloud/thirdparty/w;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/iflytek/cloud/thirdparty/w;->t:Lcom/iflytek/cloud/thirdparty/w;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static a(III)Lcom/iflytek/cloud/thirdparty/w;
    .registers 5

    sget-object v1, Lcom/iflytek/cloud/thirdparty/w;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/iflytek/cloud/thirdparty/w;->t:Lcom/iflytek/cloud/thirdparty/w;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-nez v0, :cond_e

    :try_start_7
    new-instance v0, Lcom/iflytek/cloud/thirdparty/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/w;-><init>(III)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/w;->t:Lcom/iflytek/cloud/thirdparty/w;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_12
    .catchall {:try_start_7 .. :try_end_e} :catchall_17

    :cond_e
    :goto_e
    :try_start_e
    sget-object v0, Lcom/iflytek/cloud/thirdparty/w;->t:Lcom/iflytek/cloud/thirdparty/w;

    monitor-exit v1

    return-object v0

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_e

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_17

    throw v0
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/w;)Ljava/lang/reflect/Method;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->m:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/w;)Lcom/iflytek/cloud/thirdparty/w$b;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->u:Lcom/iflytek/cloud/thirdparty/w$b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/thirdparty/w$b;)I
    .registers 8

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/w;->u:Lcom/iflytek/cloud/thirdparty/w$b;

    :try_start_2
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->d:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/w;->p:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/w;->l:Ljava/lang/Class;

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/w;->r:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1d} :catch_1f

    move-result v0

    :goto_1e
    return v0

    :catch_1f
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x5207

    goto :goto_1e
.end method

.method public a(Z)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->o:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public b()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/w;->p:Ljava/lang/Object;

    sget-object v2, Lcom/iflytek/cloud/thirdparty/w;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_11

    move-result v0

    :goto_10
    return v0

    :catch_11
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_10
.end method

.method public c()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/w;->p:Ljava/lang/Object;

    sget-object v2, Lcom/iflytek/cloud/thirdparty/w;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public d()I
    .registers 5

    const/4 v1, -0x1

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->g:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/w;->p:Ljava/lang/Object;

    sget-object v3, Lcom/iflytek/cloud/thirdparty/w;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_12

    move-result v0

    :goto_11
    return v0

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_11
.end method

.method public e()I
    .registers 5

    const/4 v1, -0x1

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->h:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/w;->p:Ljava/lang/Object;

    sget-object v3, Lcom/iflytek/cloud/thirdparty/w;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_12

    move-result v0

    :goto_11
    return v0

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_11
.end method

.method public f()I
    .registers 5

    const/4 v1, -0x1

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->i:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/w;->p:Ljava/lang/Object;

    sget-object v3, Lcom/iflytek/cloud/thirdparty/w;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_12

    move-result v0

    :goto_11
    return v0

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_11
.end method

.method public g()Lcom/iflytek/cloud/thirdparty/w$b;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/w;->u:Lcom/iflytek/cloud/thirdparty/w$b;

    :try_start_3
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/w;->j:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/w;->p:Ljava/lang/Object;

    sget-object v4, Lcom/iflytek/cloud/thirdparty/w;->b:[Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/w;->r:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recorder getListener alsa listener unequal to current object: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2b} :catch_2c

    :goto_2b
    return-object v0

    :catch_2c
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_2b

    :cond_31
    move-object v0, v1

    goto :goto_2b
.end method

.method public h()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w;->k:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/w;->p:Ljava/lang/Object;

    sget-object v2, Lcom/iflytek/cloud/thirdparty/w;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_11

    :goto_9
    sget-object v1, Lcom/iflytek/cloud/thirdparty/w;->s:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_d
    sput-object v0, Lcom/iflytek/cloud/thirdparty/w;->t:Lcom/iflytek/cloud/thirdparty/w;

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_16

    return-void

    :catch_11
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_9

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method
