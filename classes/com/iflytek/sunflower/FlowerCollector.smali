.class public Lcom/iflytek/sunflower/FlowerCollector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sunflower/FlowerCollector$1;,
        Lcom/iflytek/sunflower/FlowerCollector$Gender;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flush(Landroid/content/Context;)V
    .registers 3

    const-string v0, "Collector"

    const-string v1, "flush"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_11

    const-string v0, "Collector"

    const-string v1, "context is null in flush"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    return-void

    :cond_11
    invoke-static {p0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sunflower/a;->c()V

    goto :goto_10
.end method

.method public static getOnlineParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_c

    const-string v0, "Collector"

    const-string v1, "unexpected null context in getOnlineParams"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0}, Lcom/iflytek/sunflower/d;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static onError(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_a

    const-string v0, "Collector"

    const-string v1, "context is null in onError"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/sunflower/a;->a(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    const-string v0, "Collector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent id:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_23

    const-string v0, "Collector"

    const-string v1, "context is null in onEvent"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22
    return-void

    :cond_23
    invoke-static {p0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/sunflower/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_22
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-string v0, "Collector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", label:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_2c

    const-string v0, "Collector"

    const-string v1, "context is null in onEvent"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    return-void

    :cond_2c
    invoke-static {p0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/sunflower/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_2b
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Collector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", map:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_2c

    const-string v0, "Collector"

    const-string v1, "context is null in onEvent"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    return-void

    :cond_2c
    invoke-static {p0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/sunflower/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_2b
.end method

.method public static onEventBegin(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    if-nez p0, :cond_b

    const-string v0, "Collector"

    const-string v1, "unexpected null context in onEventBegin"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    invoke-static {p0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/sunflower/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_a
.end method

.method public static onEventBegin(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_a

    const-string v0, "Collector"

    const-string v1, "unexpected null context in onEventBegin"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/sunflower/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_9
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 10

    const/4 v2, 0x0

    if-nez p0, :cond_b

    const-string v0, "Collector"

    const-string v1, "context is null in onEventDuration"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_19

    const-string v0, "Collector"

    const-string v1, "duration is not valid in onEventDuration"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_19
    invoke-static {p0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/sunflower/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_a
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12

    if-nez p0, :cond_a

    const-string v0, "Collector"

    const-string v1, "context is null in onEventDuration"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_18

    const-string v0, "Collector"

    const-string v1, "duration is not valid in onEventDuration"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_18
    invoke-static {p0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/sunflower/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_9
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    if-nez p0, :cond_a

    const-string v0, "Collector"

    const-string v1, "context is null in onEventDuration"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_18

    const-string v0, "Collector"

    const-string v1, "duration is not valid in onEventDuration"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_18
    invoke-static {p0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/sunflower/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_9
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    if-nez p0, :cond_b

    const-string v0, "Collector"

    const-string v1, "unexpected null context in onEventEnd"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    invoke-static {p0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/sunflower/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_a
.end method

.method public static onLog(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Collector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLog businessType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_22

    const-string v0, "Collector"

    const-string v1, "unexpected null context in onEventEnd"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return-void

    :cond_22
    invoke-static {p0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/sunflower/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_21
.end method

.method public static onPageEnd(Ljava/lang/String;)V
    .registers 4

    const-string v0, "Collector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageEnd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    sget v0, Lcom/iflytek/sunflower/config/a;->p:I

    invoke-static {p0, v0}, Lcom/iflytek/sunflower/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "Collector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageName is large than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/iflytek/sunflower/config/a;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_40
    return-void

    :cond_41
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/sunflower/a;->c(Ljava/lang/String;)V

    goto :goto_40

    :cond_4a
    const-string v0, "Collector"

    const-string v1, "pageName is null or empty"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method public static onPageStart(Ljava/lang/String;)V
    .registers 4

    const-string v0, "Collector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    sget v0, Lcom/iflytek/sunflower/config/a;->p:I

    invoke-static {p0, v0}, Lcom/iflytek/sunflower/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "Collector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageName is large than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/iflytek/sunflower/config/a;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_40
    return-void

    :cond_41
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/sunflower/a;->b(Ljava/lang/String;)V

    goto :goto_40

    :cond_4a
    const-string v0, "Collector"

    const-string v1, "pageName is null or empty"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method public static onPause(Landroid/content/Context;)V
    .registers 3

    const-string v0, "Collector"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_11

    const-string v0, "Collector"

    const-string v1, "context is null in onPause"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    return-void

    :cond_11
    invoke-static {p0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sunflower/a;->b()V

    goto :goto_10
.end method

.method public static onResume(Landroid/content/Context;)V
    .registers 3

    const-string v0, "Collector"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_11

    const-string v0, "Collector"

    const-string v1, "context is null in onResume"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    return-void

    :cond_11
    invoke-static {p0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sunflower/a;->a()V

    goto :goto_10
.end method

.method public static openPageMode(Ljava/lang/Boolean;)V
    .registers 1

    sput-object p0, Lcom/iflytek/sunflower/config/a;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public static setAge(Landroid/content/Context;I)V
    .registers 6

    :try_start_0
    invoke-static {p0}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-ltz p1, :cond_a

    const/16 v1, 0xc8

    if-le p1, v1, :cond_12

    :cond_a
    const-string v0, "Collector"

    const-string v1, "input Age is not valid "

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "age"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_11

    :catch_20
    move-exception v0

    const-string v1, "Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input age error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public static setAppid(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/iflytek/sunflower/config/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static setAutoLocation(Z)V
    .registers 2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/iflytek/sunflower/config/a;->n:Ljava/lang/Boolean;

    return-void
.end method

.method public static setCaptureUncaughtException(Ljava/lang/Boolean;)V
    .registers 1

    sput-object p0, Lcom/iflytek/sunflower/config/a;->j:Ljava/lang/Boolean;

    return-void
.end method

.method public static setChannel(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/iflytek/sunflower/config/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static setDebugMode(Z)V
    .registers 1

    invoke-static {p0}, Lcom/iflytek/sunflower/c/g;->a(Z)V

    return-void
.end method

.method public static setGender(Landroid/content/Context;Lcom/iflytek/sunflower/FlowerCollector$Gender;)V
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string v0, "Collector"

    const-string v1, "input Gender is null "

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/iflytek/sunflower/FlowerCollector$1;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/sunflower/FlowerCollector$Gender;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_46

    :goto_1a
    :pswitch_1a
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "gender"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_28

    goto :goto_a

    :catch_28
    move-exception v0

    const-string v1, "Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input Gender error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_42
    const/4 v0, 0x1

    goto :goto_1a

    :pswitch_44
    const/4 v0, 0x2

    goto :goto_1a

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_42
        :pswitch_44
        :pswitch_1a
    .end packed-switch
.end method

.method public static setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/sunflower/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSessionContinueMillis(J)V
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_e

    const-string v0, "Collector"

    const-string v1, "input millis is not valid "

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    sput-wide p0, Lcom/iflytek/sunflower/config/a;->a:J

    goto :goto_d
.end method

.method public static setUserID(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-static {p0}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, "Collector"

    const-string v1, "input userID is null or empty"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    sget v1, Lcom/iflytek/sunflower/config/a;->p:I

    invoke-static {p1, v1}, Lcom/iflytek/sunflower/c/b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v0, "Collector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input userID is large than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/iflytek/sunflower/config/a;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_11

    :catch_35
    move-exception v0

    const-string v1, "Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input userId error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_4f
    :try_start_4f
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5c} :catch_35

    goto :goto_11
.end method

.method public static updateOnlineConfig(Landroid/content/Context;Lcom/iflytek/sunflower/OnlineConfigListener;)V
    .registers 4

    if-nez p0, :cond_a

    const-string v0, "Collector"

    const-string v1, "unexpected null context in updateOnlineConfig"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0}, Lcom/iflytek/sunflower/a;->a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/sunflower/a;->a(Lcom/iflytek/sunflower/OnlineConfigListener;)V

    goto :goto_9
.end method
