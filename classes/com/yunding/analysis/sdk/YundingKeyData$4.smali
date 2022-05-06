.class final Lcom/yunding/analysis/sdk/YundingKeyData$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ydnetwork/net/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunding/analysis/sdk/YundingKeyData;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/yunding/analysis/sdk/YundingKeyData$4;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yunding/analysis/sdk/YundingKeyData$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yunding/analysis/sdk/YundingKeyData$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/ydnetwork/net/VolleyError;)V
    .registers 5

    invoke-static {}, Lcom/yunding/analysis/sdk/YundingKeyData;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yunding/analysis/sdk/YundingKeyData$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :try_start_9
    sget-object v1, Lcom/yunding/analysis/sdk/YundingKeyData;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/yunding/analysis/sdk/YundingKeyData$4;->b:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\nurl:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yunding/analysis/sdk/YundingKeyData$4;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\nerror:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p1, Lcom/ydnetwork/net/VolleyError;->networkResponse:Lcom/ydnetwork/net/NetworkResponse;

    if-eqz v0, :cond_39

    iget-object v0, p1, Lcom/ydnetwork/net/VolleyError;->networkResponse:Lcom/ydnetwork/net/NetworkResponse;

    iget v0, v0, Lcom/ydnetwork/net/NetworkResponse;->statusCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_31
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yunding/analysis/b/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    return-void

    :cond_39
    invoke-virtual {p1}, Lcom/ydnetwork/net/VolleyError;->toString()Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3c} :catch_3e

    move-result-object v0

    goto :goto_31

    :catch_3e
    move-exception v0

    sget-object v0, Lcom/yunding/analysis/sdk/YundingKeyData;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/yunding/analysis/sdk/YundingKeyData$4;->b:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\nurl:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yunding/analysis/sdk/YundingKeyData$4;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " error message catch failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yunding/analysis/b/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method
