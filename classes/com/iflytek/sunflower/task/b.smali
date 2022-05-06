.class public Lcom/iflytek/sunflower/task/b;
.super Ljava/lang/Thread;


# instance fields
.field private a:Lcom/iflytek/sunflower/a/c;


# direct methods
.method public constructor <init>(Lcom/iflytek/sunflower/a/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/iflytek/sunflower/task/b;->a:Lcom/iflytek/sunflower/a/c;

    return-void
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/sunflower/task/b;->a:Lcom/iflytek/sunflower/a/c;

    invoke-static {v0}, Lcom/iflytek/sunflower/f;->a(Lcom/iflytek/sunflower/a/c;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/sunflower/task/b;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string v1, "Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call onError error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
