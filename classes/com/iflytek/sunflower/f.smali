.class public Lcom/iflytek/sunflower/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/iflytek/sunflower/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/sunflower/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/Object;

.field private static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/sunflower/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/sunflower/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/sunflower/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/sunflower/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/sunflower/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iflytek/sunflower/f;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iflytek/sunflower/f;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iflytek/sunflower/f;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iflytek/sunflower/f;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iflytek/sunflower/f;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/iflytek/sunflower/f;->a:Ljava/util/Stack;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iflytek/sunflower/f;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iflytek/sunflower/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/sunflower/a/d;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iflytek/sunflower/f;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a(Lcom/iflytek/sunflower/a/a;)V
    .registers 2

    sget-object v0, Lcom/iflytek/sunflower/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/iflytek/sunflower/a/b;)V
    .registers 2

    sget-object v0, Lcom/iflytek/sunflower/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/iflytek/sunflower/a/c;)V
    .registers 2

    sget-object v0, Lcom/iflytek/sunflower/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/iflytek/sunflower/a/d;)V
    .registers 3

    sget-object v0, Lcom/iflytek/sunflower/f;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/iflytek/sunflower/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/iflytek/sunflower/a/e;)V
    .registers 2

    sget-object v0, Lcom/iflytek/sunflower/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/sunflower/a/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iflytek/sunflower/f;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static b(Lcom/iflytek/sunflower/a/d;)V
    .registers 7

    sget-object v0, Lcom/iflytek/sunflower/f;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/iflytek/sunflower/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/iflytek/sunflower/f;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/iflytek/sunflower/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/sunflower/a/d;

    iget-wide v2, p0, Lcom/iflytek/sunflower/a/d;->f:J

    iget-wide v4, v0, Lcom/iflytek/sunflower/a/d;->f:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/iflytek/sunflower/a/d;->e:J

    invoke-static {v0}, Lcom/iflytek/sunflower/f;->c(Lcom/iflytek/sunflower/a/d;)V

    sget-object v0, Lcom/iflytek/sunflower/f;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/iflytek/sunflower/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_25
    return-void

    :cond_26
    const-string v0, "Collector"

    const-string v1, "Call onEventEnd before onEventBegin"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method public static c()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/sunflower/a/a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iflytek/sunflower/f;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static c(Lcom/iflytek/sunflower/a/d;)V
    .registers 5

    sget-object v1, Lcom/iflytek/sunflower/f;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string v0, "Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add an event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/iflytek/sunflower/e;->a(Lcom/iflytek/sunflower/a/d;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/sunflower/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_23} :catch_2a
    .catchall {:try_start_3 .. :try_end_23} :catchall_33

    :goto_23
    :try_start_23
    sget-object v0, Lcom/iflytek/sunflower/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catch_2a
    move-exception v0

    const-string v2, "Collector"

    const-string v3, "Add an event error"

    invoke-static {v2, v3, v0}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public static d()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/sunflower/a/b;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iflytek/sunflower/f;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static e()V
    .registers 2

    sget-object v1, Lcom/iflytek/sunflower/f;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/iflytek/sunflower/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static f()V
    .registers 1

    sget-object v0, Lcom/iflytek/sunflower/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static g()V
    .registers 1

    sget-object v0, Lcom/iflytek/sunflower/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static h()V
    .registers 1

    sget-object v0, Lcom/iflytek/sunflower/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static i()V
    .registers 1

    sget-object v0, Lcom/iflytek/sunflower/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static j()V
    .registers 0

    invoke-static {}, Lcom/iflytek/sunflower/f;->e()V

    invoke-static {}, Lcom/iflytek/sunflower/f;->f()V

    invoke-static {}, Lcom/iflytek/sunflower/f;->h()V

    invoke-static {}, Lcom/iflytek/sunflower/f;->i()V

    return-void
.end method

.method public static k()I
    .registers 2

    const/4 v0, 0x0

    sget-object v1, Lcom/iflytek/sunflower/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/iflytek/sunflower/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/iflytek/sunflower/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/iflytek/sunflower/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
