.class Lcom/iflytek/cloud/thirdparty/v$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/msc/AIMIC$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/iflytek/cloud/thirdparty/u$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/iflytek/cloud/thirdparty/u$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Lcom/iflytek/cloud/thirdparty/x;

.field private final j:I

.field private k:Z

.field private l:I


# direct methods
.method private constructor <init>()V
    .registers 10

    const v8, 0x1f400

    const/16 v3, 0x200

    const/4 v7, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->d:Ljava/lang/Object;

    const/16 v0, 0x20

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->e:I

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->f:I

    iput v8, p0, Lcom/iflytek/cloud/thirdparty/v$a;->g:I

    iput v3, p0, Lcom/iflytek/cloud/thirdparty/v$a;->h:I

    new-instance v0, Lcom/iflytek/cloud/thirdparty/x;

    const-wide/32 v1, 0x1f400

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/x;-><init>(JIJZZ)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    iput v7, p0, Lcom/iflytek/cloud/thirdparty/v$a;->j:I

    iput-boolean v7, p0, Lcom/iflytek/cloud/thirdparty/v$a;->k:Z

    iput v8, p0, Lcom/iflytek/cloud/thirdparty/v$a;->l:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/cloud/thirdparty/v$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    mul-int/lit8 v0, p1, 0x20

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->l:I

    return-void
.end method

.method public a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 6

    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/u$b;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/iflytek/cloud/thirdparty/u$b;->a(I)V

    goto :goto_c

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_20

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_27
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/u$a;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/iflytek/cloud/thirdparty/u$a;->a(I)V

    goto :goto_2d

    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_41

    throw v0

    :cond_44
    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_41

    return-void
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/u$a;)V
    .registers 4

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_b
    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/u$b;)V
    .registers 4

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_b
    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public b(Lcom/iflytek/cloud/thirdparty/u$a;)V
    .registers 4

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_b
    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public b(Lcom/iflytek/cloud/thirdparty/u$b;)V
    .registers 4

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_b
    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public onRecogAudio([BIILjava/lang/Object;)V
    .registers 13

    const/4 v0, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/v$a;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_5c

    :try_start_4
    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->k:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->k:Z

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->k:Z

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->b()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v2, v0

    iget v5, p0, Lcom/iflytek/cloud/thirdparty/v$a;->l:I

    int-to-long v6, v5

    cmp-long v2, v2, v6

    if-lez v2, :cond_52

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " matched max buffering len: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", will be clean"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->k:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->d()V

    :cond_50
    :goto_50
    monitor-exit v4

    :goto_51
    return-void

    :cond_52
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/iflytek/cloud/thirdparty/x;->a([BII)V

    goto :goto_50

    :catchall_59
    move-exception v0

    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_4 .. :try_end_5b} :catchall_59

    :try_start_5b
    throw v0
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5c} :catch_5c

    :catch_5c
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x5207

    invoke-direct {v1, v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/v$a;->a(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_51

    :cond_6b
    :try_start_6b
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_71
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/u$a;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x;->e()Z

    move-result v1

    if-nez v1, :cond_b5

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x;->f()Lcom/iflytek/cloud/thirdparty/x$a;

    move-result-object v1

    move-object v3, v1

    :goto_8c
    if-eqz v3, :cond_b0

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/x$a;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v0, v1, v2, v6, v7}, Lcom/iflytek/cloud/thirdparty/u$a;->b([BIILjava/lang/Object;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v1, v3}, Lcom/iflytek/cloud/thirdparty/x;->a(Lcom/iflytek/cloud/thirdparty/x$a;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x;->f()Lcom/iflytek/cloud/thirdparty/x$a;

    move-result-object v1

    move-object v3, v1

    goto :goto_8c

    :cond_b0
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x;->d()V

    :cond_b5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/cloud/thirdparty/u$a;->b([BIILjava/lang/Object;)V
    :try_end_b8
    .catchall {:try_start_6b .. :try_end_b8} :catchall_59

    goto :goto_71
.end method

.method public onWakeupAudio([BIILjava/lang/Object;)V
    .registers 8

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_1c

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/u$b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/cloud/thirdparty/u$b;->a([BIILjava/lang/Object;)V

    goto :goto_9

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v0
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1c} :catch_1c

    :catch_1c
    move-exception v0

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x5207

    invoke-direct {v1, v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/v$a;->a(Lcom/iflytek/cloud/SpeechError;)V

    :goto_27
    return-void

    :cond_28
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_19

    goto :goto_27
.end method

.method public onWakeupMsg(III[BI[BI[BI)V
    .registers 22

    :try_start_0
    const-string v0, "onWakeupMsg enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_13

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_3e

    :try_start_b
    iget v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->l:I

    if-lez v0, :cond_4d

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->k:Z

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_4f

    :cond_13
    :try_start_13
    iget-object v10, p0, Lcom/iflytek/cloud/thirdparty/v$a;->c:Ljava/lang/Object;

    monitor-enter v10
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_16} :catch_3e

    :try_start_16
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/u$b;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/iflytek/cloud/thirdparty/u$b;->a(III[BI[BI[BI)V

    goto :goto_1c

    :catchall_3b
    move-exception v0

    monitor-exit v10
    :try_end_3d
    .catchall {:try_start_16 .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v0
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3e} :catch_3e

    :catch_3e
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x5207

    invoke-direct {v1, v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/v$a;->a(Lcom/iflytek/cloud/SpeechError;)V

    :goto_4c
    return-void

    :cond_4d
    const/4 v0, 0x0

    goto :goto_10

    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    throw v0
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_52} :catch_3e

    :cond_52
    :try_start_52
    monitor-exit v10
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_3b

    :try_start_53
    const-string v0, "onWakeupMsg leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_58} :catch_3e

    goto :goto_4c
.end method
