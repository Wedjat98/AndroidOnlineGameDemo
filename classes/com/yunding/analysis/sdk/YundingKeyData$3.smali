.class final Lcom/yunding/analysis/sdk/YundingKeyData$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ydnetwork/net/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunding/analysis/sdk/YundingKeyData;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ydnetwork/net/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/yunding/analysis/sdk/YundingKeyData$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yunding/analysis/sdk/YundingKeyData$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yunding/analysis/sdk/YundingKeyData$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/yunding/analysis/sdk/YundingKeyData;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yunding/analysis/sdk/YundingKeyData$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/yunding/analysis/sdk/YundingKeyData;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/yunding/analysis/sdk/YundingKeyData$3;->b:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\nurl:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yunding/analysis/sdk/YundingKeyData$3;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\nrespone:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yunding/analysis/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_41

    iget-object v0, p0, Lcom/yunding/analysis/sdk/YundingKeyData$3;->a:Ljava/lang/String;

    const-string v1, "yes"

    invoke-static {v0, v1}, Lcom/yunding/analysis/b/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_41} :catch_42

    :cond_41
    :goto_41
    return-void

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yunding/analysis/sdk/YundingKeyData$3;->a(Ljava/lang/String;)V

    return-void
.end method
