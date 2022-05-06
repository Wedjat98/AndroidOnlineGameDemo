.class final Lcom/yunding/analysis/sdk/YundingKeyData$5;
.super Lcom/ydnetwork/net/toolbox/StringRequest;


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


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;Ljava/lang/String;)V
    .registers 6

    iput-object p5, p0, Lcom/yunding/analysis/sdk/YundingKeyData$5;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ydnetwork/net/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getBody()[B
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/yunding/analysis/sdk/YundingKeyData$5;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yunding/analysis/sdk/YundingKeyData$5;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_a
.end method
