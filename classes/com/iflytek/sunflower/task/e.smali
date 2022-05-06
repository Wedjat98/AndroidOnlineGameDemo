.class public Lcom/iflytek/sunflower/task/e;
.super Ljava/lang/Thread;


# instance fields
.field a:Lcom/iflytek/sunflower/b/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/sunflower/OnlineConfigListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/iflytek/sunflower/task/f;

    invoke-direct {v0, p0}, Lcom/iflytek/sunflower/task/f;-><init>(Lcom/iflytek/sunflower/task/e;)V

    iput-object v0, p0, Lcom/iflytek/sunflower/task/e;->a:Lcom/iflytek/sunflower/b/a$a;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method

.method public run()V
    .registers 1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-virtual {p0}, Lcom/iflytek/sunflower/task/e;->a()V

    return-void
.end method
