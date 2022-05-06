.class Lcom/iflytek/sunflower/task/j;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/sunflower/task/i;


# direct methods
.method constructor <init>(Lcom/iflytek/sunflower/task/i;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/sunflower/task/j;->a:Lcom/iflytek/sunflower/task/i;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/sunflower/task/j;->a:Lcom/iflytek/sunflower/task/i;

    invoke-static {v0}, Lcom/iflytek/sunflower/task/i;->a(Lcom/iflytek/sunflower/task/i;)Lcom/iflytek/sunflower/OnlineConfigListener;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/iflytek/sunflower/task/j;->a:Lcom/iflytek/sunflower/task/i;

    invoke-static {v1}, Lcom/iflytek/sunflower/task/i;->a(Lcom/iflytek/sunflower/task/i;)Lcom/iflytek/sunflower/OnlineConfigListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/iflytek/sunflower/OnlineConfigListener;->onDataReceived(Lorg/json/JSONObject;)V

    :cond_15
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
