.class final Lcom/appsflyer/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ʼ:Ljava/util/BitSet;

.field private static volatile ॱॱ:Lcom/appsflyer/j;

.field private static final ᐝ:Landroid/os/Handler;


# instance fields
.field private final ʻ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/appsflyer/g;",
            "Lcom/appsflyer/g;",
            ">;"
        }
    .end annotation
.end field

.field final ʽ:Ljava/lang/Runnable;

.field final ˊ:Ljava/lang/Object;

.field private final ˊॱ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/appsflyer/g;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final ˋ:Landroid/os/Handler;

.field final ˎ:Ljava/lang/Runnable;

.field final ˏ:Ljava/lang/Runnable;

.field private ͺ:Z

.field ॱ:Z

.field private final ॱˊ:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/appsflyer/j;->ʼ:Ljava/util/BitSet;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/appsflyer/j;->ᐝ:Landroid/os/Handler;

    .line 31
    sget-object v0, Lcom/appsflyer/j;->ʼ:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 32
    sget-object v0, Lcom/appsflyer/j;->ʼ:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 33
    sget-object v0, Lcom/appsflyer/j;->ʼ:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/hardware/SensorManager;Landroid/os/Handler;)V
    .registers 5
    .param p1    # Landroid/hardware/SensorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/j;->ˊ:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/appsflyer/j;->ʼ:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/j;->ʻ:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/appsflyer/j;->ʼ:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/j;->ˊॱ:Ljava/util/Map;

    .line 43
    new-instance v0, Lcom/appsflyer/j$1;

    invoke-direct {v0, p0}, Lcom/appsflyer/j$1;-><init>(Lcom/appsflyer/j;)V

    iput-object v0, p0, Lcom/appsflyer/j;->ˎ:Ljava/lang/Runnable;

    .line 52
    new-instance v0, Lcom/appsflyer/j$2;

    invoke-direct {v0, p0}, Lcom/appsflyer/j$2;-><init>(Lcom/appsflyer/j;)V

    iput-object v0, p0, Lcom/appsflyer/j;->ˏ:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Lcom/appsflyer/j$5;

    invoke-direct {v0, p0}, Lcom/appsflyer/j$5;-><init>(Lcom/appsflyer/j;)V

    iput-object v0, p0, Lcom/appsflyer/j;->ʽ:Ljava/lang/Runnable;

    .line 79
    iput-object p1, p0, Lcom/appsflyer/j;->ॱˊ:Landroid/hardware/SensorManager;

    .line 80
    iput-object p2, p0, Lcom/appsflyer/j;->ˋ:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method static ˊ(Landroid/content/Context;)Lcom/appsflyer/j;
    .registers 3

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 89
    sget-object v1, Lcom/appsflyer/j;->ᐝ:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/appsflyer/j;->ˊ(Landroid/hardware/SensorManager;Landroid/os/Handler;)Lcom/appsflyer/j;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ(Landroid/hardware/SensorManager;Landroid/os/Handler;)Lcom/appsflyer/j;
    .registers 4

    .prologue
    .line 98
    sget-object v0, Lcom/appsflyer/j;->ॱॱ:Lcom/appsflyer/j;

    if-nez v0, :cond_13

    .line 99
    const-class v1, Lcom/appsflyer/j;

    monitor-enter v1

    .line 100
    :try_start_7
    sget-object v0, Lcom/appsflyer/j;->ॱॱ:Lcom/appsflyer/j;

    if-nez v0, :cond_12

    .line 3109
    new-instance v0, Lcom/appsflyer/j;

    invoke-direct {v0, p0, p1}, Lcom/appsflyer/j;-><init>(Landroid/hardware/SensorManager;Landroid/os/Handler;)V

    .line 101
    sput-object v0, Lcom/appsflyer/j;->ॱॱ:Lcom/appsflyer/j;

    .line 103
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 105
    :cond_13
    sget-object v0, Lcom/appsflyer/j;->ॱॱ:Lcom/appsflyer/j;

    return-object v0

    .line 103
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final ˋ()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 145
    :try_start_2
    iget-object v0, p0, Lcom/appsflyer/j;->ॱˊ:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 148
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 3119
    if-ltz v1, :cond_4e

    sget-object v5, Lcom/appsflyer/j;->ʼ:Ljava/util/BitSet;

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    move v1, v2

    .line 148
    :goto_28
    if-eqz v1, :cond_d

    .line 149
    invoke-static {v0}, Lcom/appsflyer/g;->ॱ(Landroid/hardware/Sensor;)Lcom/appsflyer/g;

    move-result-object v1

    .line 150
    iget-object v5, p0, Lcom/appsflyer/j;->ʻ:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 151
    iget-object v5, p0, Lcom/appsflyer/j;->ʻ:Ljava/util/Map;

    invoke-interface {v5, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_3b
    iget-object v5, p0, Lcom/appsflyer/j;->ʻ:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorEventListener;

    .line 154
    iget-object v5, p0, Lcom/appsflyer/j;->ॱˊ:Landroid/hardware/SensorManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v0, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_49} :catch_4a

    goto :goto_d

    :catch_4a
    move-exception v0

    .line 160
    :cond_4b
    iput-boolean v2, p0, Lcom/appsflyer/j;->ͺ:Z

    .line 161
    return-void

    :cond_4e
    move v1, v3

    .line 3119
    goto :goto_28
.end method

.method final ˎ()Ljava/util/List;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v1, p0, Lcom/appsflyer/j;->ˊ:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_3
    iget-object v0, p0, Lcom/appsflyer/j;->ʻ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/appsflyer/j;->ͺ:Z

    if-eqz v0, :cond_2e

    .line 192
    iget-object v0, p0, Lcom/appsflyer/j;->ʻ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/g;

    .line 193
    iget-object v3, p0, Lcom/appsflyer/j;->ˊॱ:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/appsflyer/g;->ˋ(Ljava/util/Map;)V
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    goto :goto_19

    .line 200
    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 196
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/appsflyer/j;->ˊॱ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    .line 199
    :goto_3b
    return-object v0

    :cond_3c
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/appsflyer/j;->ˊॱ:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_2e .. :try_end_48} :catchall_2b

    goto :goto_3b
.end method

.method final ॱ()V
    .registers 4

    .prologue
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/j;->ʻ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 171
    iget-object v0, p0, Lcom/appsflyer/j;->ʻ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/g;

    .line 172
    iget-object v2, p0, Lcom/appsflyer/j;->ॱˊ:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 173
    iget-object v2, p0, Lcom/appsflyer/j;->ˊॱ:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/appsflyer/g;->ˊ(Ljava/util/Map;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_12

    :catch_29
    move-exception v0

    .line 179
    :cond_2a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsflyer/j;->ͺ:Z

    .line 180
    return-void
.end method
