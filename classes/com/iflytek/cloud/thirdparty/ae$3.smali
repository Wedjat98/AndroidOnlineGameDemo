.class Lcom/iflytek/cloud/thirdparty/ae$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/thirdparty/U$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/ae;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/ae;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ae$3;->a:Lcom/iflytek/cloud/thirdparty/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae$3;->a:Lcom/iflytek/cloud/thirdparty/ae;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ae;->b(Lcom/iflytek/cloud/thirdparty/ae;Z)Z

    const-string v0, "CollectInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/U;[B)V
    .registers 11

    const-wide v6, 0x40ac200000000000L    # 3600.0

    const/4 v4, 0x0

    if-eqz p2, :cond_b1

    :try_start_8
    invoke-static {p2}, Lcom/iflytek/cloud/thirdparty/P;->c([B)[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "CollectInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b56\u7565\u8bf7\u6c42\u7ed3\u679c\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "yes"

    const-string v2, "is_collect"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae$3;->a:Lcom/iflytek/cloud/thirdparty/ae;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/ae;->a(Lcom/iflytek/cloud/thirdparty/ae;Z)Z

    :goto_47
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae$3;->a:Lcom/iflytek/cloud/thirdparty/ae;

    const-string v2, "ti_request"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ae;->a(Lcom/iflytek/cloud/thirdparty/ae;J)J

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae$3;->a:Lcom/iflytek/cloud/thirdparty/ae;

    const-string v2, "ti_app_list"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ae;->b(Lcom/iflytek/cloud/thirdparty/ae;J)J

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae$3;->a:Lcom/iflytek/cloud/thirdparty/ae;

    const-string v2, "ti_app_active"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ae;->c(Lcom/iflytek/cloud/thirdparty/ae;J)J

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ae;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_collect"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ae$3;->a:Lcom/iflytek/cloud/thirdparty/ae;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ae;->c(Lcom/iflytek/cloud/thirdparty/ae;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ti_request"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ae$3;->a:Lcom/iflytek/cloud/thirdparty/ae;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ae;->d(Lcom/iflytek/cloud/thirdparty/ae;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ti_app_list"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ae$3;->a:Lcom/iflytek/cloud/thirdparty/ae;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ae;->e(Lcom/iflytek/cloud/thirdparty/ae;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ti_app_active"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ae$3;->a:Lcom/iflytek/cloud/thirdparty/ae;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ae;->f(Lcom/iflytek/cloud/thirdparty/ae;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b1} :catch_be
    .catchall {:try_start_8 .. :try_end_b1} :catchall_c5

    :cond_b1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae$3;->a:Lcom/iflytek/cloud/thirdparty/ae;

    :goto_b3
    invoke-static {v0, v4}, Lcom/iflytek/cloud/thirdparty/ae;->b(Lcom/iflytek/cloud/thirdparty/ae;Z)Z

    return-void

    :cond_b7
    :try_start_b7
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae$3;->a:Lcom/iflytek/cloud/thirdparty/ae;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/ae;->a(Lcom/iflytek/cloud/thirdparty/ae;Z)Z
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_bd} :catch_be
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_c5

    goto :goto_47

    :catch_be
    move-exception v0

    :try_start_bf
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/Throwable;)V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ae$3;->a:Lcom/iflytek/cloud/thirdparty/ae;

    goto :goto_b3

    :catchall_c5
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ae$3;->a:Lcom/iflytek/cloud/thirdparty/ae;

    invoke-static {v1, v4}, Lcom/iflytek/cloud/thirdparty/ae;->b(Lcom/iflytek/cloud/thirdparty/ae;Z)Z

    throw v0
.end method
