.class Lcom/iflytek/sunflower/task/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/sunflower/b/a$a;


# instance fields
.field final synthetic a:Lcom/iflytek/sunflower/task/e;


# direct methods
.method constructor <init>(Lcom/iflytek/sunflower/task/e;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/sunflower/task/f;->a:Lcom/iflytek/sunflower/task/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/sunflower/b/a;[B)V
    .registers 5

    if-eqz p2, :cond_16

    :try_start_2
    invoke-static {p2}, Lcom/iflytek/sunflower/c/c;->b([B)[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/sunflower/task/f;->a:Lcom/iflytek/sunflower/task/e;

    invoke-virtual {v0, v1}, Lcom/iflytek/sunflower/task/e;->a(Lorg/json/JSONObject;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/iflytek/sunflower/task/f;->a(Ljava/lang/Exception;)V

    goto :goto_16
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 5

    const-string v0, "Collector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get online config error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a([B)V
    .registers 2

    return-void
.end method
