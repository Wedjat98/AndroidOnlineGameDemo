.class Lcom/iflytek/sunflower/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/sunflower/b/a$a;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/iflytek/sunflower/b/b;


# direct methods
.method constructor <init>(Lcom/iflytek/sunflower/b/b;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/sunflower/b/c;->b:Lcom/iflytek/sunflower/b/b;

    iput-object p2, p0, Lcom/iflytek/sunflower/b/c;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/sunflower/b/a;[B)V
    .registers 5

    if-eqz p2, :cond_1a

    :try_start_2
    invoke-static {p2}, Lcom/iflytek/sunflower/c/c;->b([B)[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/sunflower/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p0, v0}, Lcom/iflytek/sunflower/b/c;->a(Ljava/lang/Exception;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/sunflower/b/c;->a(Ljava/lang/Exception;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_20

    goto :goto_1a

    :catch_20
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/iflytek/sunflower/b/c;->a(Ljava/lang/Exception;)V

    goto :goto_1a
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 6

    const/4 v1, 0x1

    if-eqz p1, :cond_2a

    iget-object v0, p0, Lcom/iflytek/sunflower/b/c;->b:Lcom/iflytek/sunflower/b/b;

    invoke-static {v0}, Lcom/iflytek/sunflower/b/b;->a(Lcom/iflytek/sunflower/b/b;)I

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "Collector"

    const-string v1, "upload error. please check net state"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/iflytek/sunflower/b/c;->b:Lcom/iflytek/sunflower/b/b;

    iget-object v1, p0, Lcom/iflytek/sunflower/b/c;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/b/b;->a(Lcom/iflytek/sunflower/b/b;Lorg/json/JSONObject;)V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/iflytek/sunflower/b/c;->b:Lcom/iflytek/sunflower/b/b;

    invoke-static {v0}, Lcom/iflytek/sunflower/b/b;->a(Lcom/iflytek/sunflower/b/b;)I

    move-result v0

    if-ne v0, v1, :cond_12

    const-string v0, "Collector"

    const-string v1, "upload error. please check net state"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_2a
    iget-object v0, p0, Lcom/iflytek/sunflower/b/c;->b:Lcom/iflytek/sunflower/b/b;

    invoke-static {v0}, Lcom/iflytek/sunflower/b/b;->a(Lcom/iflytek/sunflower/b/b;)I

    move-result v0

    if-nez v0, :cond_66

    const-string v0, "Collector"

    const-string v1, "upload success"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    :goto_39
    :try_start_39
    iget-object v0, p0, Lcom/iflytek/sunflower/b/c;->b:Lcom/iflytek/sunflower/b/b;

    invoke-static {v0}, Lcom/iflytek/sunflower/b/b;->b(Lcom/iflytek/sunflower/b/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dntr"

    sget-object v2, Lcom/iflytek/sunflower/c/a;->a:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "uptr"

    sget-object v2, Lcom/iflytek/sunflower/c/a;->a:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/iflytek/sunflower/b/c;->b:Lcom/iflytek/sunflower/b/b;

    invoke-static {v0}, Lcom/iflytek/sunflower/b/b;->c(Lcom/iflytek/sunflower/b/b;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_63} :catch_64

    goto :goto_19

    :catch_64
    move-exception v0

    goto :goto_19

    :cond_66
    iget-object v0, p0, Lcom/iflytek/sunflower/b/c;->b:Lcom/iflytek/sunflower/b/b;

    invoke-static {v0}, Lcom/iflytek/sunflower/b/b;->a(Lcom/iflytek/sunflower/b/b;)I

    move-result v0

    if-ne v0, v1, :cond_39

    const-string v0, "Collector"

    const-string v1, "upload success"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39
.end method

.method public a([B)V
    .registers 2

    return-void
.end method
